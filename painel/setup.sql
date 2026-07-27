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

-- Ativa o Row Level Security nas duas tabelas
alter table portfolio_events enable row level security;
alter table portfolio_leads enable row level security;

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

-- =====================================================================
-- IMPORTANTE: nao criamos policy de INSERT para o papel "anon" aqui de
-- proposito. A escrita desses eventos (quando alguem visita o site ou
-- envia um formulario) deve ser feita pelo lado do servidor do seu
-- portfolio, usando a chave de servico (service_role), nunca pela chave
-- anon exposta no navegador. Isso evita que qualquer pessoa consiga
-- inserir ou forjar dados direto pelo navegador dela.
-- =====================================================================
