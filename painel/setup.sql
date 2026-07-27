-- =====================================================================
-- SETUP DO BANCO (rode isso uma vez no SQL Editor do seu projeto Supabase)
-- =====================================================================

-- Tabela de eventos do site: visitas, cliques em botoes e visualizacoes de video
create table if not exists portfolio_events (
  id uuid primary key default gen_random_uuid(),
  event_type text not null,   -- 'page_view' | 'button_click' | 'video_view'
  event_name text,            -- ex: 'contact_whatsapp', o id do video no YouTube, etc.
  session_id text,            -- identifica um visitante ao longo da sessao
  page_path text,
  metadata jsonb,             -- pode conter { title, brand, category, ... }
  created_at timestamptz not null default now()
);

-- Tabela de mensagens recebidas pelos formularios do site (contato e pop-up)
create table if not exists portfolio_leads (
  id uuid primary key default gen_random_uuid(),
  name text,
  email text,
  phone text,
  brand text,
  budget text,
  message text,
  source text,                -- 'contact' | 'popup'
  created_at timestamptz not null default now()
);

-- Tabela da sua agenda pessoal (aba "Minha Rotina" do painel): entregas,
-- eventos e pendencias que voce mesma cadastra pelo painel.
create table if not exists painel_agenda (
  id uuid primary key default gen_random_uuid(),
  titulo text not null,
  tipo text not null default 'evento',   -- 'evento' | 'entrega' | 'pendencia'
  data date not null,                    -- o dia do compromisso
  dia_todo boolean not null default true,
  horario time,                          -- preenchido so quando dia_todo = false
  concluido boolean not null default false,
  created_at timestamptz not null default now()
);

-- Tabela financeira (aba "Financeiro" do painel): suas receitas e despesas.
-- Cada linha pertence a um usuario (user_id) e so ele consegue ve-la.
create table if not exists public.financeiro (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  type text not null check (type in ('receita','despesa')),
  fonte text not null,
  description text,
  value numeric not null,
  date date not null default current_date,
  status text not null default 'concluido',
  cliente text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Tabela de clientes (aba "Clientes" do painel): cadastro das marcas/pessoas
-- com quem voce trabalha. Tambem e por usuario.
create table if not exists public.clientes (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  nome text not null,
  empresa text,
  email text,
  telefone text,
  instagram text,
  observacoes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Ativa o Row Level Security em todas as tabelas
alter table portfolio_events enable row level security;
alter table portfolio_leads enable row level security;
alter table painel_agenda enable row level security;
alter table public.financeiro enable row level security;
alter table public.clientes enable row level security;

-- Permite que usuarios autenticados (voce, logada no painel) leiam os dados
create policy "Permitir leitura para usuarios autenticados"
  on portfolio_events
  for select
  to authenticated
  using (true);

create policy "Permitir leitura para usuarios autenticados"
  on portfolio_leads
  for select
  to authenticated
  using (true);

-- A agenda e sua, escrita direto pelo painel: usuarios autenticados podem
-- ler, criar, editar e apagar os proprios itens.
create policy "Permitir tudo para usuarios autenticados"
  on painel_agenda
  for all
  to authenticated
  using (true)
  with check (true);

-- Financeiro e clientes sao dados privados de cada usuario: cada pessoa so
-- consegue ver, criar, editar e apagar as proprias linhas (comparando
-- auth.uid() com user_id).
create policy "usuario_gerencia_proprio_financeiro"
  on public.financeiro for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

create policy "usuario_gerencia_proprios_clientes"
  on public.clientes for all
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);

-- =====================================================================
-- IMPORTANTE: nao criamos policy de INSERT para o papel "anon" aqui de
-- proposito. A escrita desses eventos (quando alguem visita o site ou
-- envia um formulario) deve ser feita pelo lado do servidor do seu
-- portfolio, usando a chave de servico (service_role), nunca pela chave
-- anon exposta no navegador. Isso evita que qualquer pessoa consiga
-- inserir ou forjar dados direto pelo navegador dela.
-- =====================================================================
