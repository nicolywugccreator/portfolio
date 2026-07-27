// =====================================================================
// AUTENTICACAO COMPARTILHADA (Supabase)
// Este arquivo cria o cliente do Supabase uma unica vez e expõe
// window.Auth com as funções usadas por login.html e painel.html.
// =====================================================================

const SUPABASE_URL = "https://ozzzhazgslrnuuzxwwez.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im96enpoYXpnc2xybnV1enh3d2V6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODQ4OTc5NzksImV4cCI6MjEwMDQ3Mzk3OX0.rtGSesuIMZmcDNYFqorUjxiiKZwtgpGP5Zeis8Q3TGI";

const sb = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

window.Auth = {
  // Cliente do Supabase, exposto para o painel poder consultar as tabelas.
  sb,

  // Faz login com e-mail e senha. Lança um erro com mensagem amigável
  // quando as credenciais estão erradas.
  async login(email, senha) {
    const { data, error } = await sb.auth.signInWithPassword({
      email,
      password: senha
    });

    if (error) {
      if (error.message === "Invalid login credentials") {
        throw new Error("E-mail ou senha incorretos.");
      }
      throw error;
    }

    return data.user;
  },

  // Verifica se existe uma sessão ativa. Se não houver, redireciona
  // para login.html (na raiz do site) e retorna null. Deve rodar no
  // topo de painel.html.
  async checkAuth() {
    const { data } = await sb.auth.getSession();

    if (!data.session) {
      window.location.href = "/login/";
      return null;
    }

    return data.session.user;
  },

  // Encerra a sessão e volta para a tela de login.
  async logout() {
    await sb.auth.signOut();
    window.location.href = "/login/";
  },

  // Envia o e-mail de recuperação de senha do Supabase.
  async recuperarSenha(email) {
    const { error } = await sb.auth.resetPasswordForEmail(email);
    if (error) throw error;
  }
};
