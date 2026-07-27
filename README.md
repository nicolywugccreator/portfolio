# meu.painel

Painel administrativo simples (HTML, CSS e JavaScript puro, sem build) que mostra os numeros do seu portfolio, usando Supabase para login e para ler os dados.

## Como publicar em 6 passos

1. **Rode o banco**: no seu projeto Supabase, abra o SQL Editor e execute o conteudo de `setup.sql`. Isso cria as tabelas `portfolio_events` e `portfolio_leads` e as permissoes de leitura.
2. **Crie seu usuario**: no Supabase, va em `Authentication > Users > Add user`, informe seu e-mail e uma senha. Esse sera o seu login no painel.
3. **Teste localmente**: abra `login.html` direto no navegador (duplo clique) e entre com o e-mail e a senha do passo 2.
4. **Publique a pasta**: suba os arquivos `login.html`, `painel.html`, `js/auth.js`, `setup.sql` e `README.md` para o GitHub Pages ou a Vercel, como site estatico (sem configuracao de build).
5. **Acesse pelo link publicado**: entre em `SEUSITE/login.html`.
6. **Pronto**: os numeros aparecem no painel assim que existirem dados nas tabelas `portfolio_events` e `portfolio_leads` (enquanto nao houver eventos registrados, o painel mostra mensagens de "nenhum dado ainda" em vez de ficar quebrado).

## Observacao importante

As chaves do Supabase (URL e chave anon) ja estao configuradas em `js/auth.js`. A chave anon e publica por natureza (usada no navegador para login), mas a **escrita** de eventos e leads no banco deve vir do lado do servidor do seu site de portfolio, usando a chave de servico (service_role), nunca pela chave anon exposta aqui. Veja o comentario no final do `setup.sql`.
