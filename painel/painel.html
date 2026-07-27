<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="noindex">
<title>Painel | meu.painel</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Caveat:wght@500;700&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --preto:#111111;
    --azul:#2b6fff;
    --laranja:#ff6a2b;
    --limao:#c3f53a;
    --magenta:#ff3da6;
    --papel:#f7f2e6;
    --branco:#ffffff;
    --texto-suave:rgba(17,17,17,.6);
    --sucesso:#2D7A4F;
    --erro:#C4453C;
    --sombra-dura:5px 5px 0 var(--preto);
    --sombra-dura-lg:8px 8px 0 var(--preto);
  }
  *{box-sizing:border-box;}
  body{
    margin:0;
    background-color:var(--papel);
    background-image:
      linear-gradient(rgba(17,17,17,0.06) 1px, transparent 1px),
      linear-gradient(90deg, rgba(17,17,17,0.06) 1px, transparent 1px);
    background-size:38px 38px;
    color:var(--preto);
    font-family:'Poppins', sans-serif;
    visibility:hidden;
  }
  body.autenticado{visibility:visible;}
  h1,h2,h3{font-family:'Archivo Black', sans-serif;text-transform:uppercase;margin:0;}
  a{color:inherit;}

  /* ===================== LAYOUT ===================== */
  .app{display:flex;min-height:100vh;}

  .sidebar{
    width:240px;flex-shrink:0;
    background:var(--papel);
    border-right:4px solid var(--preto);
    display:flex;flex-direction:column;
    padding:1.5rem 1.2rem;
    position:fixed;top:0;left:0;bottom:0;
    z-index:200;
    transition:transform .25s ease;
  }
  .sidebar-logo{
    font-family:'Archivo Black', sans-serif;
    font-size:1.1rem;
    margin-bottom:2rem;
  }
  .sidebar-logo span{color:var(--magenta);}
  .nav-lista{list-style:none;margin:0;padding:0;display:flex;flex-direction:column;gap:.5rem;}
  .nav-item{
    display:flex;align-items:center;gap:.7rem;
    width:100%;
    background:var(--branco);border:2px solid var(--preto);border-radius:10px;
    padding:.65rem .8rem;
    font-family:'Poppins', sans-serif;font-size:.92rem;font-weight:600;
    color:var(--preto);
    cursor:pointer;text-align:left;
    box-shadow:3px 3px 0 var(--preto);
    transition:transform .15s ease;
  }
  .nav-item svg{flex-shrink:0;}
  .nav-item:hover{transform:translate(-2px,-2px);}
  .nav-item.ativo{background:var(--laranja);}
  .sidebar-rodape{
    margin-top:auto;
    padding-top:1rem;
    border-top:3px solid var(--preto);
  }
  .sidebar-email{
    font-size:.75rem;color:var(--texto-suave);
    margin:0 0 .6rem;word-break:break-all;
  }
  .botao-sair{
    width:100%;
    font-family:'Poppins', sans-serif;font-weight:700;font-size:.85rem;
    background:var(--branco);border:2px solid var(--preto);border-radius:8px;
    padding:.55rem;cursor:pointer;color:var(--preto);
    box-shadow:2px 2px 0 var(--preto);
  }
  .botao-sair:hover{background:var(--erro);color:var(--branco);}

  .overlay-sidebar{
    display:none;
    position:fixed;inset:0;background:rgba(17,17,17,.5);z-index:150;
  }

  .conteudo{flex:1;margin-left:240px;padding:2rem 2.5rem 3rem;}

  .botao-menu-mobile{
    display:none;
    background:var(--branco);border:2px solid var(--preto);border-radius:8px;
    padding:.5rem;cursor:pointer;margin-bottom:1rem;
    box-shadow:2px 2px 0 var(--preto);
  }

  @media (max-width:860px){
    .sidebar{transform:translateX(-100%);}
    .sidebar.aberta{transform:translateX(0);}
    .overlay-sidebar:not([hidden]){display:block;}
    .conteudo{margin-left:0;padding:1.3rem 1.2rem 2.5rem;}
    .botao-menu-mobile{display:inline-flex;}
  }

  /* ===================== HEADER ===================== */
  .cabecalho{
    display:flex;align-items:center;justify-content:space-between;
    flex-wrap:wrap;gap:1rem;margin-bottom:1.6rem;
  }
  .cabecalho h1{font-size:1.5rem;}
  .filtro-periodo{display:flex;gap:.5rem;flex-wrap:wrap;}
  .botao-periodo{
    font-family:'Poppins', sans-serif;font-size:.85rem;font-weight:700;
    background:var(--branco);border:2px solid var(--preto);border-radius:999px;
    padding:.5rem 1rem;cursor:pointer;color:var(--preto);
    box-shadow:2px 2px 0 var(--preto);
    transition:transform .15s ease;
  }
  .botao-periodo:hover{transform:translate(-1px,-1px);}
  .botao-periodo.ativo{background:var(--magenta);color:var(--branco);}

  /* ===================== CARTOES GENERICOS ===================== */
  .cartao{
    background:var(--branco);
    border:3px solid var(--preto);
    border-radius:16px;
    padding:1.5rem;
    box-shadow:var(--sombra-dura);
  }
  .texto-vazio{color:var(--texto-suave);font-size:.9rem;margin:0;}
  .cartao-erro{
    background:var(--branco);
    border:3px solid var(--erro);
    color:var(--erro);
    border-radius:16px;
    padding:1.3rem;
    font-weight:600;
  }

  /* ===================== ABA: MENU PRINCIPAL ===================== */
  .grid-cartoes{
    display:grid;grid-template-columns:repeat(auto-fit, minmax(170px, 1fr));
    gap:1rem;margin-bottom:1.2rem;
  }
  .cartao-numero{
    background:var(--branco);border:3px solid var(--preto);border-radius:14px;
    padding:1.2rem;box-shadow:var(--sombra-dura);
  }
  .cartao-numero.destaque{background:var(--laranja);}
  .cartao-numero .numero{
    font-family:'Archivo Black', sans-serif;font-size:2rem;
    display:block;line-height:1.1;
  }
  .cartao-numero .rotulo{font-size:.83rem;color:var(--texto-suave);font-weight:600;}
  .cartao-numero.destaque .rotulo{color:var(--preto);opacity:.75;}

  .cartao-contato{margin-bottom:1.2rem;}
  .cartao-contato .numero{
    font-family:'Archivo Black', sans-serif;font-size:2.3rem;color:var(--magenta);
    display:block;
  }
  .cartao-contato .rotulo{font-weight:700;margin:.2rem 0 .3rem;}
  .cartao-contato .explicacao{font-size:.82rem;color:var(--texto-suave);margin:0;}

  .grafico-card h3{font-size:1.05rem;margin-bottom:.2rem;}
  .grafico-subtitulo{font-size:.82rem;color:var(--texto-suave);margin:0 0 1rem;}
  .grafico-barras{display:flex;align-items:flex-end;gap:.5rem;height:160px;}
  .coluna-dia{display:flex;flex-direction:column;align-items:center;justify-content:flex-end;flex:1;gap:.4rem;height:100%;}
  .barra-dia{width:100%;background:var(--azul);border:2px solid var(--preto);border-radius:6px 6px 2px 2px;min-height:2px;cursor:default;transition:background .15s ease;}
  .barra-dia:hover{background:var(--magenta);}
  .rotulo-dia{font-size:.68rem;color:var(--texto-suave);white-space:nowrap;}

  /* ===================== ABA: PORTFOLIO ===================== */
  .pilha-blocos{display:flex;flex-direction:column;gap:1.2rem;}
  .bloco-cartao h3{font-size:1.05rem;margin-bottom:1rem;}

  .item-video{
    display:flex;align-items:center;gap:.9rem;
    padding:.6rem 0;border-bottom:2px solid var(--papel);
    text-decoration:none;color:var(--preto);
  }
  .item-video:last-child{border-bottom:none;}
  .item-video img{width:72px;height:40px;object-fit:cover;border-radius:6px;border:2px solid var(--preto);flex-shrink:0;background:var(--papel);}
  .item-video-info{flex:1;min-width:0;}
  .item-video-titulo{
    font-size:.88rem;font-weight:600;margin:0 0 .35rem;
    white-space:nowrap;overflow:hidden;text-overflow:ellipsis;
  }
  .item-video-contagem{font-weight:700;font-size:.9rem;flex-shrink:0;}

  .barra-horizontal{background:var(--papel);border:1px solid var(--preto);border-radius:999px;height:9px;overflow:hidden;}
  .barra-horizontal-preenchida{background:var(--limao);height:100%;border-radius:999px;}

  .item-barra{display:flex;align-items:center;gap:.8rem;padding:.5rem 0;}
  .item-barra-nome{font-size:.85rem;font-weight:600;width:130px;flex-shrink:0;}
  .item-barra .barra-horizontal{flex:1;}
  .item-barra-contagem{font-weight:700;font-size:.85rem;width:28px;text-align:right;flex-shrink:0;}

  .item-contato{
    display:flex;align-items:center;justify-content:space-between;
    padding:.6rem 0;border-bottom:2px solid var(--papel);font-size:.9rem;font-weight:600;
  }
  .item-contato:last-child{border-bottom:none;}

  .cartao-mensagem{
    border:2px solid var(--preto);border-radius:12px;
    padding:.9rem 1rem;margin-bottom:.7rem;
  }
  .cartao-mensagem:last-child{margin-bottom:0;}
  .cartao-mensagem summary{
    cursor:pointer;display:flex;align-items:center;gap:.7rem;flex-wrap:wrap;
    list-style:none;
  }
  .cartao-mensagem summary::-webkit-details-marker{display:none;}
  .selo-origem{
    font-size:.68rem;font-weight:700;text-transform:uppercase;letter-spacing:.3px;
    background:var(--azul);color:var(--branco);
    border-radius:999px;padding:.25rem .6rem;
  }
  .mensagem-nome{font-weight:700;font-size:.92rem;}
  .mensagem-data{font-size:.8rem;color:var(--texto-suave);margin-left:auto;}
  .mensagem-corpo{margin-top:.8rem;font-size:.88rem;line-height:1.6;}
  .mensagem-corpo p{margin:0 0 .4rem;}
  .mensagem-texto{background:var(--papel);border-radius:10px;padding:.7rem .9rem;margin-top:.5rem;}
  .mensagem-acoes{display:flex;gap:.6rem;margin-top:.8rem;flex-wrap:wrap;}
  .botao-pequeno{
    display:inline-block;font-size:.82rem;font-weight:700;text-decoration:none;
    background:var(--laranja);color:var(--preto);border:2px solid var(--preto);border-radius:8px;padding:.5rem .9rem;
    box-shadow:2px 2px 0 var(--preto);
  }
  .botao-pequeno.botao-whatsapp{background:var(--limao);}

  /* ===================== ABA: MINHA ROTINA ===================== */
  .grid-rotina{display:grid;grid-template-columns:1.6fr 1fr;gap:1.2rem;margin-bottom:1.2rem;align-items:start;}
  @media (max-width:960px){.grid-rotina{grid-template-columns:1fr;}}

  .calendario-cabecalho{display:flex;align-items:center;justify-content:space-between;margin-bottom:1rem;flex-wrap:wrap;gap:.6rem;}
  .calendario-cabecalho h3{font-size:1.1rem;text-transform:capitalize;}
  .calendario-nav{display:flex;align-items:center;gap:.4rem;}
  .botao-nav-calendario{
    width:34px;height:34px;border-radius:50%;
    background:var(--branco);border:2px solid var(--preto);
    font-size:1.1rem;font-weight:700;cursor:pointer;
    display:flex;align-items:center;justify-content:center;
    box-shadow:2px 2px 0 var(--preto);
  }
  .botao-nav-calendario:hover{transform:translate(-1px,-1px);}

  .calendario-dias-semana{
    display:grid;grid-template-columns:repeat(7,1fr);
    text-align:center;font-size:.7rem;font-weight:700;color:var(--texto-suave);
    margin-bottom:.5rem;
  }
  .calendario-grade{display:grid;grid-template-columns:repeat(7,1fr);gap:.3rem;}
  .dia-celula{
    aspect-ratio:1;display:flex;align-items:center;justify-content:center;
    border-radius:50%;font-size:.85rem;font-weight:600;cursor:pointer;
    background:none;border:2px solid transparent;color:var(--preto);
    position:relative;font-family:'Poppins', sans-serif;
  }
  .dia-celula:hover{border-color:var(--preto);}
  .dia-celula.fora-do-mes{color:var(--texto-suave);opacity:.4;}
  .dia-celula.hoje{background:var(--preto);color:var(--branco);}
  .dia-celula.selecionado:not(.hoje){background:var(--limao);border-color:var(--preto);}
  .dia-celula .ponto-evento{
    width:5px;height:5px;border-radius:50%;background:var(--magenta);
    position:absolute;bottom:5px;
  }
  .dia-celula.hoje .ponto-evento{background:var(--branco);}

  .dia-selecionado-cabecalho{display:flex;align-items:center;gap:.9rem;margin-bottom:1rem;}
  .dia-selecionado-numero{font-family:'Archivo Black', sans-serif;font-size:2.4rem;color:var(--laranja);line-height:1;}
  .dia-selecionado-nome{font-weight:700;margin:0;font-size:.95rem;}
  .dia-selecionado-contagem{font-size:.8rem;color:var(--texto-suave);margin:0;}

  .lista-itens-dia{display:flex;flex-direction:column;gap:.6rem;margin-bottom:1rem;}
  .item-agenda{
    display:flex;align-items:center;gap:.6rem;
    border:2px solid var(--preto);border-radius:10px;padding:.6rem .7rem;
  }
  .item-agenda.concluido{opacity:.5;}
  .item-agenda.concluido .item-agenda-titulo{text-decoration:line-through;}
  .badge-tipo{
    font-size:.62rem;font-weight:700;text-transform:uppercase;
    background:var(--azul);color:var(--branco);border-radius:6px;padding:.2rem .45rem;
    display:inline-block;margin:.15rem 0;
  }
  .badge-tipo.tipo-entrega{background:var(--magenta);}
  .badge-tipo.tipo-pendencia{background:var(--laranja);color:var(--preto);}
  .item-agenda-info{flex:1;min-width:0;display:flex;flex-direction:column;}
  .item-agenda-hora{font-size:.7rem;color:var(--texto-suave);text-transform:uppercase;font-weight:700;}
  .item-agenda-titulo{font-size:.85rem;font-weight:600;margin:0;}
  .item-agenda-acoes{display:flex;gap:.3rem;flex-shrink:0;}
  .botao-icone{
    width:28px;height:28px;border-radius:6px;border:2px solid var(--preto);background:var(--branco);
    cursor:pointer;display:flex;align-items:center;justify-content:center;font-size:.85rem;
  }
  .botao-icone:hover{background:var(--limao);}
  .botao-icone.excluir:hover{background:var(--erro);color:var(--branco);}

  .botao-adicionar-agenda{
    width:100%;font-family:'Poppins', sans-serif;font-weight:700;font-size:.9rem;
    background:var(--preto);color:var(--branco);border:2px solid var(--preto);border-radius:10px;
    padding:.7rem;cursor:pointer;
  }
  .botao-adicionar-agenda:hover{background:var(--magenta);border-color:var(--preto);}

  .form-agenda{margin-top:1rem;display:flex;flex-direction:column;gap:.2rem;}
  .form-agenda label{font-size:.72rem;font-weight:700;text-transform:uppercase;margin-top:.6rem;}
  .form-agenda input, .form-agenda select{
    font-family:'Poppins', sans-serif;padding:.6rem .7rem;border:2px solid var(--preto);
    border-radius:8px;font-size:.9rem;background:var(--branco);color:var(--preto);
  }
  .checkbox-linha{display:flex;align-items:center;gap:.5rem;font-size:.85rem;text-transform:none;font-weight:600;}
  .checkbox-linha input{width:auto;}
  .form-agenda-acoes{display:flex;gap:.6rem;margin-top:.9rem;}
  .form-agenda-acoes .btn{flex:1;padding:.65rem 1rem;font-size:.9rem;}
  .botao-cancelar{
    flex:1;
    background:var(--branco);border:2px solid var(--preto);border-radius:8px;padding:.65rem 1rem;
    font-family:'Poppins', sans-serif;font-weight:700;font-size:.9rem;cursor:pointer;
  }

  .tabela-agenda{margin-top:.8rem;}
  .linha-agenda{
    display:grid;grid-template-columns:65px 75px 100px 1fr;gap:.8rem;align-items:center;
    padding:.6rem 0;border-bottom:2px solid var(--papel);font-size:.85rem;cursor:pointer;
  }
  .linha-agenda:hover{background:var(--papel);}
  .linha-agenda:last-child{border-bottom:none;}
  .linha-agenda-cabecalho{font-weight:700;font-size:.72rem;text-transform:uppercase;color:var(--texto-suave);cursor:default;}
  .linha-agenda-cabecalho:hover{background:none;}
  @media (max-width:600px){
    .linha-agenda{grid-template-columns:50px 60px 1fr;font-size:.8rem;}
    .linha-agenda span:nth-child(3){display:none;}
  }
</style>
</head>
<body>

<div class="app">

  <div class="overlay-sidebar" id="overlay-sidebar" hidden></div>

  <aside class="sidebar" id="sidebar">
    <p class="sidebar-logo">meu<span>.</span>painel</p>
    <ul class="nav-lista">
      <li>
        <button type="button" class="nav-item ativo" data-tab="principal">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 11l9-8 9 8"/><path d="M5 10v10h14V10"/></svg>
          Menu Principal
        </button>
      </li>
      <li>
        <button type="button" class="nav-item" data-tab="portfolio">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="4" y1="20" x2="4" y2="10"/><line x1="12" y1="20" x2="12" y2="4"/><line x1="20" y1="20" x2="20" y2="14"/></svg>
          Portfólio
        </button>
      </li>
      <li>
        <button type="button" class="nav-item" data-tab="rotina">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2"/><line x1="16" y1="2" x2="16" y2="6"/><line x1="8" y1="2" x2="8" y2="6"/><line x1="3" y1="10" x2="21" y2="10"/></svg>
          Minha Rotina
        </button>
      </li>
    </ul>
    <div class="sidebar-rodape">
      <p class="sidebar-email" id="rodape-email">carregando...</p>
      <button type="button" class="botao-sair" id="botao-sair">Sair</button>
    </div>
  </aside>

  <main class="conteudo">
    <button type="button" class="botao-menu-mobile" id="botao-menu-mobile" aria-label="Abrir menu">
      <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
    </button>

    <div id="area-conteudo">
      <div class="cabecalho">
        <h1 id="titulo-pagina">Menu Principal</h1>
        <div class="filtro-periodo" id="filtro-periodo">
          <button type="button" class="botao-periodo ativo" data-periodo="tudo">Tudo</button>
          <button type="button" class="botao-periodo" data-periodo="7d">7d</button>
          <button type="button" class="botao-periodo" data-periodo="30d">30d</button>
          <button type="button" class="botao-periodo" data-periodo="90d">90d</button>
        </div>
      </div>

      <!-- ================= ABA: MENU PRINCIPAL ================= -->
      <section id="aba-principal" class="painel-aba">
        <p style="margin:0 0 1.2rem;color:var(--texto-suave);">Olá! Aqui estão os números do seu portfólio.</p>

        <div class="grid-cartoes">
          <div class="cartao-numero destaque">
            <span class="numero" id="num-visitas">0</span>
            <span class="rotulo">Visitas</span>
          </div>
          <div class="cartao-numero">
            <span class="numero" id="num-visitantes">0</span>
            <span class="rotulo">Visitantes únicos</span>
          </div>
          <div class="cartao-numero">
            <span class="numero" id="num-cliques">0</span>
            <span class="rotulo">Cliques em botões</span>
          </div>
          <div class="cartao-numero">
            <span class="numero" id="num-videos">0</span>
            <span class="rotulo">Vídeos vistos</span>
          </div>
          <div class="cartao-numero">
            <span class="numero" id="num-mensagens">0</span>
            <span class="rotulo">Mensagens</span>
          </div>
        </div>

        <div class="cartao cartao-contato">
          <span class="numero" id="num-contato">0</span>
          <p class="rotulo">Clicaram para entrar em contato</p>
          <p class="explicacao">Conta quem clicou em WhatsApp, e-mail, Instagram ou no botão de enviar o formulário.</p>
        </div>

        <div class="cartao grafico-card">
          <h3>Visitas nos últimos 14 dias</h3>
          <p class="grafico-subtitulo">Passe o mouse em cima de uma barra para ver o dia e a contagem.</p>
          <div class="grafico-barras" id="grafico-barras"></div>
        </div>
      </section>

      <!-- ================= ABA: PORTFOLIO ================= -->
      <section id="aba-portfolio" class="painel-aba" hidden>
        <div class="pilha-blocos">
          <div class="cartao bloco-cartao">
            <h3>Vídeos mais vistos</h3>
            <div id="lista-videos"></div>
          </div>

          <div class="cartao bloco-cartao">
            <h3>Botões mais clicados</h3>
            <div id="lista-botoes"></div>
          </div>

          <div class="cartao bloco-cartao">
            <h3>Cliques para contato</h3>
            <div id="lista-contato"></div>
          </div>

          <div class="cartao bloco-cartao">
            <h3>Mensagens recebidas</h3>
            <div id="lista-mensagens"></div>
          </div>
        </div>
      </section>

      <!-- ================= ABA: MINHA ROTINA ================= -->
      <section id="aba-rotina" class="painel-aba" hidden>
        <div class="grid-rotina">
          <div class="cartao cartao-calendario">
            <div class="calendario-cabecalho">
              <h3 id="calendario-mes-ano">Mês</h3>
              <div class="calendario-nav">
                <button type="button" class="botao-nav-calendario" id="mes-anterior" aria-label="Mês anterior">‹</button>
                <button type="button" class="botao-periodo" id="ir-para-hoje">hoje</button>
                <button type="button" class="botao-nav-calendario" id="mes-seguinte" aria-label="Próximo mês">›</button>
              </div>
            </div>
            <div class="calendario-dias-semana">
              <span>SEG</span><span>TER</span><span>QUA</span><span>QUI</span><span>SEX</span><span>SÁB</span><span>DOM</span>
            </div>
            <div class="calendario-grade" id="calendario-grade"></div>
          </div>

          <div class="cartao cartao-dia-selecionado">
            <div class="dia-selecionado-cabecalho">
              <span class="dia-selecionado-numero" id="dia-sel-numero">1</span>
              <div>
                <p class="dia-selecionado-nome" id="dia-sel-nome">Hoje</p>
                <p class="dia-selecionado-contagem" id="dia-sel-contagem">0 compromissos</p>
              </div>
            </div>
            <div class="lista-itens-dia" id="lista-itens-dia"></div>
            <button type="button" class="botao-adicionar-agenda" id="botao-adicionar-agenda">+ Adicionar na agenda</button>

            <form class="form-agenda" id="form-agenda" hidden novalidate>
              <label for="agenda-titulo">O que é</label>
              <input type="text" id="agenda-titulo" required placeholder="ex: Gravação pra marca X">

              <label for="agenda-tipo">Tipo</label>
              <select id="agenda-tipo">
                <option value="evento">Evento</option>
                <option value="entrega">Entrega</option>
                <option value="pendencia">Pendência</option>
              </select>

              <label class="checkbox-linha"><input type="checkbox" id="agenda-dia-todo" checked> Dia todo</label>

              <label for="agenda-horario" id="rotulo-agenda-horario" hidden>Horário</label>
              <input type="time" id="agenda-horario" hidden>

              <div class="form-agenda-acoes">
                <button type="submit" class="btn btn-primario">Salvar</button>
                <button type="button" class="botao-cancelar" id="agenda-cancelar">Cancelar</button>
              </div>
            </form>
          </div>
        </div>

        <div class="cartao cartao-tudo-marcado">
          <h3>Tudo o que está marcado</h3>
          <p class="grafico-subtitulo" id="contagem-tudo-marcado">0 itens. Clique no dia para abrir ele no calendário.</p>
          <div class="tabela-agenda" id="tabela-agenda"></div>
        </div>
      </section>
    </div>
  </main>
</div>

<script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/dist/umd/supabase.min.js"></script>
<script src="js/auth.js"></script>
<script>
  const estado = {
    eventos: [], leads: [], periodo: "tudo",
    agenda: [], mesVisivel: new Date(), diaSelecionado: new Date()
  };

  // ===================== BUSCA PAGINADA =====================
  // O Supabase devolve no maximo 1000 linhas por consulta. Essa funcao
  // busca em blocos de 1000, em laco, ate nao vir mais nada, e junta tudo.
  async function buscarTudo(tabela){
    const TAMANHO_BLOCO = 1000;
    let inicio = 0;
    let todos = [];

    while(true){
      const { data, error } = await Auth.sb
        .from(tabela)
        .select("*")
        .order("created_at", { ascending: false })
        .range(inicio, inicio + TAMANHO_BLOCO - 1);

      if(error) throw error;

      todos = todos.concat(data);
      if(data.length < TAMANHO_BLOCO) break;
      inicio += TAMANHO_BLOCO;
    }

    return todos;
  }

  function dentroDoPeriodo(dataISO, periodo){
    if(periodo === "tudo") return true;
    const dias = { "7d": 7, "30d": 30, "90d": 90 }[periodo];
    const limite = new Date();
    limite.setDate(limite.getDate() - dias);
    return new Date(dataISO) >= limite;
  }

  function escapeHtml(texto){
    const div = document.createElement("div");
    div.textContent = String(texto);
    return div.innerHTML;
  }

  function formatarNomeEvento(nome){
    return nome.replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase());
  }

  // ===================== INICIALIZACAO =====================
  async function iniciar(){
    const usuario = await Auth.checkAuth();
    if(!usuario) return;

    document.getElementById("rodape-email").textContent = usuario.email;
    document.getElementById("botao-sair").addEventListener("click", () => Auth.logout());

    try {
      const [eventos, leads] = await Promise.all([
        buscarTudo("portfolio_events"),
        buscarTudo("portfolio_leads")
      ]);
      estado.eventos = eventos;
      estado.leads = leads;
    } catch (erro) {
      console.error(erro);
      document.getElementById("area-conteudo").innerHTML =
        '<div class="cartao-erro">Não foi possível carregar os dados agora. Tente recarregar a página em alguns instantes.</div>';
      document.body.classList.add("autenticado");
      return;
    }

    try {
      await carregarAgenda();
    } catch (erro) {
      console.warn("Tabela painel_agenda ainda não configurada:", erro);
      estado.agenda = [];
    }

    configurarAbas();
    configurarFiltroPeriodo();
    configurarSidebarMobile();
    configurarRotina();

    document.body.classList.add("autenticado");
    redesenharTudo();
    renderCalendario();
    renderDiaSelecionado();
    renderTudoMarcado();
  }

  // ===================== ABAS =====================
  function configurarAbas(){
    document.querySelectorAll(".nav-item").forEach(botao => {
      botao.addEventListener("click", () => {
        const aba = botao.dataset.tab;
        document.querySelectorAll(".nav-item").forEach(b => b.classList.toggle("ativo", b === botao));
        document.getElementById("aba-principal").hidden = aba !== "principal";
        document.getElementById("aba-portfolio").hidden = aba !== "portfolio";
        document.getElementById("aba-rotina").hidden = aba !== "rotina";
        document.getElementById("filtro-periodo").hidden = aba === "rotina";
        const titulos = { principal: "Menu Principal", portfolio: "Portfólio", rotina: "Minha Rotina" };
        document.getElementById("titulo-pagina").textContent = titulos[aba];
        fecharSidebarMobile();
      });
    });
  }

  // ===================== FILTRO DE PERIODO =====================
  function configurarFiltroPeriodo(){
    document.querySelectorAll(".botao-periodo").forEach(botao => {
      botao.addEventListener("click", () => {
        estado.periodo = botao.dataset.periodo;
        document.querySelectorAll(".botao-periodo").forEach(b => b.classList.toggle("ativo", b === botao));
        redesenharTudo();
      });
    });
  }

  // ===================== SIDEBAR MOBILE =====================
  function configurarSidebarMobile(){
    document.getElementById("botao-menu-mobile").addEventListener("click", () => {
      document.getElementById("sidebar").classList.add("aberta");
      document.getElementById("overlay-sidebar").hidden = false;
    });
    document.getElementById("overlay-sidebar").addEventListener("click", fecharSidebarMobile);
  }
  function fecharSidebarMobile(){
    document.getElementById("sidebar").classList.remove("aberta");
    document.getElementById("overlay-sidebar").hidden = true;
  }

  // ===================== ABA: MINHA ROTINA (calendario e agenda) =====================
  const NOMES_MES = ["Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"];
  const NOMES_DIA_SEMANA = ["Domingo","Segunda-feira","Terça-feira","Quarta-feira","Quinta-feira","Sexta-feira","Sábado"];

  // Formata uma data local como "AAAA-MM-DD", sem depender de fuso horario
  function dataParaChave(data){
    const ano = data.getFullYear();
    const mes = String(data.getMonth() + 1).padStart(2, "0");
    const dia = String(data.getDate()).padStart(2, "0");
    return `${ano}-${mes}-${dia}`;
  }

  async function carregarAgenda(){
    const { data, error } = await Auth.sb
      .from("painel_agenda")
      .select("*")
      .order("data", { ascending: true });
    if(error) throw error;
    estado.agenda = data;
  }

  function configurarRotina(){
    document.getElementById("mes-anterior").addEventListener("click", () => {
      estado.mesVisivel = new Date(estado.mesVisivel.getFullYear(), estado.mesVisivel.getMonth() - 1, 1);
      renderCalendario();
    });
    document.getElementById("mes-seguinte").addEventListener("click", () => {
      estado.mesVisivel = new Date(estado.mesVisivel.getFullYear(), estado.mesVisivel.getMonth() + 1, 1);
      renderCalendario();
    });
    document.getElementById("ir-para-hoje").addEventListener("click", () => {
      estado.mesVisivel = new Date();
      estado.diaSelecionado = new Date();
      renderCalendario();
      renderDiaSelecionado();
    });

    const formAgenda = document.getElementById("form-agenda");

    document.getElementById("botao-adicionar-agenda").addEventListener("click", () => {
      formAgenda.hidden = !formAgenda.hidden;
    });
    document.getElementById("agenda-cancelar").addEventListener("click", () => {
      formAgenda.reset();
      formAgenda.hidden = true;
      document.getElementById("agenda-horario").hidden = true;
      document.getElementById("rotulo-agenda-horario").hidden = true;
    });
    document.getElementById("agenda-dia-todo").addEventListener("change", (evento) => {
      const mostrarHorario = !evento.target.checked;
      document.getElementById("agenda-horario").hidden = !mostrarHorario;
      document.getElementById("rotulo-agenda-horario").hidden = !mostrarHorario;
    });

    formAgenda.addEventListener("submit", async (evento) => {
      evento.preventDefault();
      const titulo = document.getElementById("agenda-titulo").value.trim();
      if(!titulo) return;

      const diaTodo = document.getElementById("agenda-dia-todo").checked;
      const novoItem = {
        titulo,
        tipo: document.getElementById("agenda-tipo").value,
        data: dataParaChave(estado.diaSelecionado),
        dia_todo: diaTodo,
        horario: diaTodo ? null : (document.getElementById("agenda-horario").value || null),
        concluido: false
      };

      try {
        const { data, error } = await Auth.sb.from("painel_agenda").insert(novoItem).select();
        if(error) throw error;
        estado.agenda.push(data[0]);
        formAgenda.reset();
        formAgenda.hidden = true;
        document.getElementById("agenda-horario").hidden = true;
        document.getElementById("rotulo-agenda-horario").hidden = true;
        renderCalendario();
        renderDiaSelecionado();
        renderTudoMarcado();
      } catch (erro) {
        console.error(erro);
        alert("Não foi possível salvar. Verifique se o setup.sql mais recente já foi rodado no Supabase.");
      }
    });
  }

  function renderCalendario(){
    document.getElementById("calendario-mes-ano").textContent =
      `${NOMES_MES[estado.mesVisivel.getMonth()]} de ${estado.mesVisivel.getFullYear()}`;

    const primeiroDiaMes = new Date(estado.mesVisivel.getFullYear(), estado.mesVisivel.getMonth(), 1);
    const deslocamento = (primeiroDiaMes.getDay() + 6) % 7; // semana comecando na segunda
    const inicioGrade = new Date(primeiroDiaMes);
    inicioGrade.setDate(inicioGrade.getDate() - deslocamento);

    const hojeChave = dataParaChave(new Date());
    const selecionadoChave = dataParaChave(estado.diaSelecionado);
    const chavesComEvento = new Set(estado.agenda.map(item => item.data));

    const grade = document.getElementById("calendario-grade");
    grade.innerHTML = "";

    for(let i = 0; i < 42; i++){
      const dataCelula = new Date(inicioGrade.getFullYear(), inicioGrade.getMonth(), inicioGrade.getDate() + i);
      const chave = dataParaChave(dataCelula);

      const celula = document.createElement("button");
      celula.type = "button";
      celula.className = "dia-celula";
      if(dataCelula.getMonth() !== estado.mesVisivel.getMonth()) celula.classList.add("fora-do-mes");
      if(chave === hojeChave) celula.classList.add("hoje");
      if(chave === selecionadoChave) celula.classList.add("selecionado");

      celula.innerHTML = `${dataCelula.getDate()}${chavesComEvento.has(chave) ? '<span class="ponto-evento"></span>' : ""}`;
      celula.addEventListener("click", () => {
        estado.diaSelecionado = dataCelula;
        if(dataCelula.getMonth() !== estado.mesVisivel.getMonth()){
          estado.mesVisivel = new Date(dataCelula.getFullYear(), dataCelula.getMonth(), 1);
        }
        renderCalendario();
        renderDiaSelecionado();
      });

      grade.appendChild(celula);
    }
  }

  function renderDiaSelecionado(){
    const chave = dataParaChave(estado.diaSelecionado);
    const itensDoDia = estado.agenda
      .filter(item => item.data === chave)
      .sort((a, b) => (a.horario || "").localeCompare(b.horario || ""));

    document.getElementById("dia-sel-numero").textContent = estado.diaSelecionado.getDate();
    document.getElementById("dia-sel-nome").textContent = NOMES_DIA_SEMANA[estado.diaSelecionado.getDay()];
    document.getElementById("dia-sel-contagem").textContent =
      itensDoDia.length === 1 ? "1 compromisso" : `${itensDoDia.length} compromissos`;

    const lista = document.getElementById("lista-itens-dia");
    if(itensDoDia.length === 0){
      lista.innerHTML = '<p class="texto-vazio">Nada marcado para esse dia.</p>';
      return;
    }

    lista.innerHTML = itensDoDia.map(item => `
      <div class="item-agenda ${item.concluido ? "concluido" : ""}">
        <div class="item-agenda-info">
          <span class="item-agenda-hora">${item.dia_todo ? "dia todo" : (item.horario || "")}</span>
          <span class="badge-tipo tipo-${item.tipo}">${item.tipo}</span>
          <p class="item-agenda-titulo">${escapeHtml(item.titulo)}</p>
        </div>
        <div class="item-agenda-acoes">
          <button type="button" class="botao-icone botao-concluir" data-id="${item.id}" aria-label="Marcar como feito">✓</button>
          <button type="button" class="botao-icone excluir" data-id="${item.id}" aria-label="Excluir">✕</button>
        </div>
      </div>
    `).join("");

    lista.querySelectorAll(".botao-concluir").forEach(botao => {
      botao.addEventListener("click", () => alternarConcluido(botao.dataset.id));
    });
    lista.querySelectorAll(".excluir").forEach(botao => {
      botao.addEventListener("click", () => excluirItemAgenda(botao.dataset.id));
    });
  }

  async function alternarConcluido(id){
    const item = estado.agenda.find(i => String(i.id) === String(id));
    if(!item) return;
    const novoValor = !item.concluido;
    try {
      const { error } = await Auth.sb.from("painel_agenda").update({ concluido: novoValor }).eq("id", id);
      if(error) throw error;
      item.concluido = novoValor;
      renderDiaSelecionado();
      renderTudoMarcado();
    } catch (erro) {
      console.error(erro);
    }
  }

  async function excluirItemAgenda(id){
    try {
      const { error } = await Auth.sb.from("painel_agenda").delete().eq("id", id);
      if(error) throw error;
      estado.agenda = estado.agenda.filter(i => String(i.id) !== String(id));
      renderCalendario();
      renderDiaSelecionado();
      renderTudoMarcado();
    } catch (erro) {
      console.error(erro);
    }
  }

  function renderTudoMarcado(){
    const container = document.getElementById("tabela-agenda");
    const contagem = document.getElementById("contagem-tudo-marcado");
    const pendentes = estado.agenda
      .filter(item => !item.concluido)
      .sort((a, b) => a.data.localeCompare(b.data));

    contagem.textContent = `${pendentes.length} ${pendentes.length === 1 ? "item" : "itens"}. Clique no dia para abrir ele no calendário.`;

    if(pendentes.length === 0){
      container.innerHTML = '<p class="texto-vazio">Nenhuma entrega ou pendência marcada ainda.</p>';
      return;
    }

    container.innerHTML = `
      <div class="linha-agenda linha-agenda-cabecalho">
        <span>DIA</span><span>HORA</span><span>TIPO</span><span>O QUE É</span>
      </div>
    ` + pendentes.map(item => {
      const [ano, mes, dia] = item.data.split("-");
      return `
        <div class="linha-agenda" data-data="${item.data}">
          <span>${dia}/${mes}</span>
          <span>${item.dia_todo ? "dia todo" : (item.horario || "-")}</span>
          <span class="badge-tipo tipo-${item.tipo}">${item.tipo}</span>
          <span>${escapeHtml(item.titulo)}</span>
        </div>
      `;
    }).join("");

    container.querySelectorAll(".linha-agenda[data-data]").forEach(linha => {
      linha.addEventListener("click", () => {
        const [ano, mes, dia] = linha.dataset.data.split("-").map(Number);
        estado.diaSelecionado = new Date(ano, mes - 1, dia);
        estado.mesVisivel = new Date(ano, mes - 1, 1);
        renderCalendario();
        renderDiaSelecionado();
      });
    });
  }

  // ===================== REDESENHAR =====================
  function redesenharTudo(){
    const eventosFiltrados = estado.eventos.filter(e => dentroDoPeriodo(e.created_at, estado.periodo));
    const leadsFiltrados = estado.leads.filter(l => dentroDoPeriodo(l.created_at, estado.periodo));

    renderPrincipal(eventosFiltrados, leadsFiltrados);
    renderPortfolio(eventosFiltrados, leadsFiltrados);
  }

  // ===================== ABA: MENU PRINCIPAL =====================
  function renderPrincipal(eventos, leads){
    const pageViews = eventos.filter(e => e.event_type === "page_view");
    const cliques = eventos.filter(e => e.event_type === "button_click");
    const videoViews = eventos.filter(e => e.event_type === "video_view");
    const visitantesUnicos = new Set(pageViews.map(e => e.session_id)).size;
    const contatoCliques = cliques.filter(e => e.event_name && e.event_name.startsWith("contact_")).length;

    document.getElementById("num-visitas").textContent = pageViews.length;
    document.getElementById("num-visitantes").textContent = visitantesUnicos;
    document.getElementById("num-cliques").textContent = cliques.length;
    document.getElementById("num-videos").textContent = videoViews.length;
    document.getElementById("num-mensagens").textContent = leads.length;
    document.getElementById("num-contato").textContent = contatoCliques;

    renderGrafico14Dias();
  }

  function renderGrafico14Dias(){
    const container = document.getElementById("grafico-barras");
    const hoje = new Date();
    const dias = [];
    for(let i = 13; i >= 0; i--){
      const d = new Date(hoje);
      d.setDate(d.getDate() - i);
      dias.push(d);
    }

    const contagensPorDia = dias.map(d => {
      const chave = d.toDateString();
      const contagem = estado.eventos.filter(e =>
        e.event_type === "page_view" && new Date(e.created_at).toDateString() === chave
      ).length;
      return { data: d, contagem };
    });

    if(contagensPorDia.every(c => c.contagem === 0)){
      container.innerHTML = '<p class="texto-vazio">Nenhuma visita registrada ainda.</p>';
      return;
    }

    const maiorValor = Math.max(1, ...contagensPorDia.map(c => c.contagem));

    container.innerHTML = contagensPorDia.map(c => {
      const altura = Math.max(2, Math.round((c.contagem / maiorValor) * 140));
      const rotulo = c.data.toLocaleDateString("pt-BR", { day: "2-digit", month: "2-digit" });
      return `
        <div class="coluna-dia">
          <div class="barra-dia" style="height:${altura}px" title="${rotulo}: ${c.contagem} visitas"></div>
          <span class="rotulo-dia">${rotulo}</span>
        </div>
      `;
    }).join("");
  }

  // ===================== ABA: PORTFOLIO =====================
  function renderPortfolio(eventos, leads){
    renderVideosMaisVistos(eventos);
    renderBotoesMaisClicados(eventos);
    renderCliquesContato(eventos);
    renderMensagens(leads);
  }

  function renderVideosMaisVistos(eventos){
    const container = document.getElementById("lista-videos");
    const videoViews = eventos.filter(e => e.event_type === "video_view" && e.event_name);

    if(videoViews.length === 0){
      container.innerHTML = '<p class="texto-vazio">Nenhum vídeo assistido ainda.</p>';
      return;
    }

    const contagens = {};
    const titulos = {};
    videoViews.forEach(e => {
      contagens[e.event_name] = (contagens[e.event_name] || 0) + 1;
      if(e.metadata && e.metadata.title) titulos[e.event_name] = e.metadata.title;
    });

    const ordenado = Object.entries(contagens).sort((a, b) => b[1] - a[1]);
    const maior = ordenado[0][1];

    container.innerHTML = ordenado.map(([id, contagem]) => {
      const titulo = escapeHtml(titulos[id] || id);
      const largura = Math.max(6, Math.round((contagem / maior) * 100));
      const idCodificado = encodeURIComponent(id);
      return `
        <a class="item-video" href="https://www.youtube.com/watch?v=${idCodificado}" target="_blank" rel="noopener">
          <img src="https://i.ytimg.com/vi/${idCodificado}/mqdefault.jpg" alt="" loading="lazy">
          <div class="item-video-info">
            <p class="item-video-titulo">${titulo}</p>
            <div class="barra-horizontal"><div class="barra-horizontal-preenchida" style="width:${largura}%"></div></div>
          </div>
          <span class="item-video-contagem">${contagem}</span>
        </a>
      `;
    }).join("");
  }

  function renderBotoesMaisClicados(eventos){
    const container = document.getElementById("lista-botoes");
    const cliques = eventos.filter(e => e.event_type === "button_click" && e.event_name);

    if(cliques.length === 0){
      container.innerHTML = '<p class="texto-vazio">Nenhum clique registrado ainda.</p>';
      return;
    }

    const contagens = {};
    cliques.forEach(e => { contagens[e.event_name] = (contagens[e.event_name] || 0) + 1; });
    const ordenado = Object.entries(contagens).sort((a, b) => b[1] - a[1]);
    const maior = ordenado[0][1];

    container.innerHTML = ordenado.map(([nome, contagem]) => {
      const largura = Math.max(6, Math.round((contagem / maior) * 100));
      return `
        <div class="item-barra">
          <span class="item-barra-nome">${escapeHtml(formatarNomeEvento(nome))}</span>
          <div class="barra-horizontal"><div class="barra-horizontal-preenchida" style="width:${largura}%"></div></div>
          <span class="item-barra-contagem">${contagem}</span>
        </div>
      `;
    }).join("");
  }

  function renderCliquesContato(eventos){
    const container = document.getElementById("lista-contato");
    const cliques = eventos.filter(e =>
      e.event_type === "button_click" && e.event_name && e.event_name.startsWith("contact_")
    );

    if(cliques.length === 0){
      container.innerHTML = '<p class="texto-vazio">Nenhum clique de contato ainda.</p>';
      return;
    }

    const contagens = {};
    cliques.forEach(e => { contagens[e.event_name] = (contagens[e.event_name] || 0) + 1; });
    const ordenado = Object.entries(contagens).sort((a, b) => b[1] - a[1]);

    container.innerHTML = ordenado.map(([nome, contagem]) => `
      <div class="item-contato">
        <span>${escapeHtml(formatarNomeEvento(nome.replace("contact_", "")))}</span>
        <strong>${contagem}</strong>
      </div>
    `).join("");
  }

  function renderMensagens(leads){
    const container = document.getElementById("lista-mensagens");

    if(leads.length === 0){
      container.innerHTML = '<p class="texto-vazio">Nenhuma mensagem por enquanto.</p>';
      return;
    }

    const ordenado = [...leads].sort((a, b) => new Date(b.created_at) - new Date(a.created_at));

    container.innerHTML = ordenado.map(lead => {
      const data = new Date(lead.created_at).toLocaleDateString("pt-BR", { day: "2-digit", month: "2-digit", year: "numeric" });
      const origem = lead.source === "popup" ? "Pop-up" : "Contato";
      const nome = escapeHtml(lead.name || "Sem nome");
      const email = escapeHtml(lead.email || "");
      const telefone = lead.phone ? escapeHtml(lead.phone) : "";
      const marca = lead.brand ? escapeHtml(lead.brand) : "";
      const orcamento = lead.budget ? escapeHtml(lead.budget) : "";
      const mensagem = escapeHtml(lead.message || "");
      const digitosTelefone = (lead.phone || "").replace(/\D/g, "");

      return `
        <details class="cartao-mensagem">
          <summary>
            <span class="selo-origem">${origem}</span>
            <span class="mensagem-nome">${nome}</span>
            <span class="mensagem-data">${data}</span>
          </summary>
          <div class="mensagem-corpo">
            <p><strong>E-mail:</strong> ${email}</p>
            ${telefone ? `<p><strong>Telefone:</strong> ${telefone}</p>` : ""}
            ${marca ? `<p><strong>Marca:</strong> ${marca}</p>` : ""}
            ${orcamento ? `<p><strong>Orçamento:</strong> ${orcamento}</p>` : ""}
            <p class="mensagem-texto">${mensagem}</p>
            <div class="mensagem-acoes">
              <a class="botao-pequeno" href="mailto:${email}">Responder por e-mail</a>
              ${digitosTelefone ? `<a class="botao-pequeno botao-whatsapp" href="https://wa.me/${digitosTelefone}" target="_blank" rel="noopener">WhatsApp</a>` : ""}
            </div>
          </div>
        </details>
      `;
    }).join("");
  }

  document.addEventListener("DOMContentLoaded", iniciar);
</script>

</body>
</html>
