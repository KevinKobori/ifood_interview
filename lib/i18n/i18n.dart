import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

class S {
  S();

  static S _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance;
  }

  static S maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Aceitar`
  String get aceitar {
    return Intl.message(
      'Aceitar',
      name: 'aceitar',
      args: [],
    );
  }

  /// `Adicionar endereço`
  String get adicionarEndereo {
    return Intl.message(
      'Adicionar endereço',
      name: 'adicionarEndereo',
      args: [],
    );
  }

  /// `Aeronaves`
  String get aeronaves {
    return Intl.message(
      'Aeronaves',
      name: 'aeronaves',
      args: [],
    );
  }

  /// `Aguardando sua aprovação`
  String get aguardandoSuaAprovao {
    return Intl.message(
      'Aguardando sua aprovação',
      name: 'aguardandoSuaAprovao',
      args: [],
    );
  }

  /// `Aguarde os orçamentos dos técnicos que você selecionou.`
  String get aguardeOsOramentosDosTcnicosQueVocSelecionou {
    return Intl.message(
      'Aguarde os orçamentos dos técnicos que você selecionou.',
      name: 'aguardeOsOramentosDosTcnicosQueVocSelecionou',
      args: [],
    );
  }

  /// `Ainda não existem comentários sobre esse profissional.`
  String get aindaNoExistemComentriosSobreEsseProfissional {
    return Intl.message(
      'Ainda não existem comentários sobre esse profissional.',
      name: 'aindaNoExistemComentriosSobreEsseProfissional',
      args: [],
    );
  }

  /// `Ainda não existem orçamentos para essa solicitação. Talvez em alguns instantes.`
  String get aindaNoExistemOramentosParaEssaSolicitaoTalvezEmAlguns {
    return Intl.message(
      'Ainda não existem orçamentos para essa solicitação. Talvez em alguns instantes.',
      name: 'aindaNoExistemOramentosParaEssaSolicitaoTalvezEmAlguns',
      args: [],
    );
  }

  /// `Alteração de e-mail`
  String get alteraoDeEmail {
    return Intl.message(
      'Alteração de e-mail',
      name: 'alteraoDeEmail',
      args: [],
    );
  }

  /// `Alterar e-mail`
  String get alterarEmail {
    return Intl.message(
      'Alterar e-mail',
      name: 'alterarEmail',
      args: [],
    );
  }

  /// `Anexos`
  String get anexos {
    return Intl.message(
      'Anexos',
      name: 'anexos',
      args: [],
    );
  }

  /// `Aplicar`
  String get aplicar {
    return Intl.message(
      'Aplicar',
      name: 'aplicar',
      args: [],
    );
  }

  /// `Quem Conserta`
  String get appName {
    return Intl.message(
      'WLStore',
      name: 'appName',
      args: [],
    );
  }

  /// `Apto, bloco...`
  String get aptoBloco {
    return Intl.message(
      'Apto, bloco...',
      name: 'aptoBloco',
      args: [],
    );
  }

  /// `Arquivos`
  String get arquivos {
    return Intl.message(
      'Arquivos',
      name: 'arquivos',
      args: [],
    );
  }

  /// `* A senha deve conter caractere maiúsculo, número e caractere especial.`
  String get aSenhaDeveConterAoMenosUmCaractereMaisculoNmero {
    return Intl.message(
      '* A senha deve conter caractere maiúsculo, número e caractere especial.',
      name: 'aSenhaDeveConterAoMenosUmCaractereMaisculoNmero',
      args: [],
    );
  }

  /// `* A senha deve conter no mínimo 6 caracteres.`
  String get aSenhaDeveConterNoMnimo6Caracteres {
    return Intl.message(
      '* A senha deve conter no mínimo 6 caracteres.',
      name: 'aSenhaDeveConterNoMnimo6Caracteres',
      args: [],
    );
  }

  /// `A senha informada não atende aos requisitos de segurança.`
  String get aSenhaInformadaNoAtendeAosRequisitosDeSegurana {
    return Intl.message(
      'A senha informada não atende aos requisitos de segurança.',
      name: 'aSenhaInformadaNoAtendeAosRequisitosDeSegurana',
      args: [],
    );
  }

  /// `A senha não pode ser vazia.`
  String get aSenhaNoPodeSerVazia {
    return Intl.message(
      'A senha não pode ser vazia.',
      name: 'aSenhaNoPodeSerVazia',
      args: [],
    );
  }

  /// `As senhas não coincidem.`
  String get asSenhasNoCoincidem {
    return Intl.message(
      'As senhas não coincidem.',
      name: 'asSenhasNoCoincidem',
      args: [],
    );
  }

  /// `Autorização negada, Tente novamente ou verifique seu login.`
  String get autorizaoNegadaTenteNovamenteOuVerifiqueSeuLogin {
    return Intl.message(
      'Autorização negada, Tente novamente ou verifique seu login.',
      name: 'autorizaoNegadaTenteNovamenteOuVerifiqueSeuLogin',
      args: [],
    );
  }

  /// `Avaliação enviada`
  String get avaliaoEnviada {
    return Intl.message(
      'Avaliação enviada',
      name: 'avaliaoEnviada',
      args: [],
    );
  }

  /// `Avaliar serviço`
  String get avaliarServio {
    return Intl.message(
      'Avaliar serviço',
      name: 'avaliarServio',
      args: [],
    );
  }

  /// `Avançar`
  String get avanar {
    return Intl.message(
      'Avançar',
      name: 'avanar',
      args: [],
    );
  }

  /// `Negócio`
  String get negocio {
    return Intl.message(
      'Negócio',
      name: 'negocio',
      args: [],
    );
  }

  /// `Adicione o endereço do seu\nnegócio/empresa`
  String get adicioneonumerodoseunegocio {
    return Intl.message(
      'Adicione o endereço do seu\nnegócio/empresa',
      name: 'adicioneonumerodoseunegocio',
      args: [],
    );
  }

  /// `Botão outline`
  String get botoOutline {
    return Intl.message(
      'Botão outline',
      name: 'botoOutline',
      args: [],
    );
  }

  /// `Botão pontilhado`
  String get botoPontilhado {
    return Intl.message(
      'Botão pontilhado',
      name: 'botoPontilhado',
      args: [],
    );
  }

  /// `Botão principal`
  String get botoPrincipal {
    return Intl.message(
      'Botão principal',
      name: 'botoPrincipal',
      args: [],
    );
  }

  /// `Buscar técnicos`
  String get buscarTcnicos {
    return Intl.message(
      'Buscar técnicos',
      name: 'buscarTcnicos',
      args: [],
    );
  }

  /// `Cadastrar`
  String get cadastrar {
    return Intl.message(
      'Cadastrar',
      name: 'cadastrar',
      args: [],
    );
  }

  /// `Cadastro`
  String get cadastro {
    return Intl.message(
      'Cadastro',
      name: 'cadastro',
      args: [],
    );
  }

  /// `CADASTRE-SE`
  String get cadastrese {
    return Intl.message(
      'CADASTRE-SE',
      name: 'cadastrese',
      args: [],
    );
  }

  /// `Cadastro realizado com sucesso!`
  String get cadastroRealizadoComSucesso {
    return Intl.message(
      'Cadastro realizado com sucesso!',
      name: 'cadastroRealizadoComSucesso',
      args: [],
    );
  }

  /// `CANCELADO`
  String get cancelado {
    return Intl.message(
      'CANCELADO',
      name: 'cancelado',
      args: [],
    );
  }

  /// `Cancelar Serviço`
  String get cancelarServio {
    return Intl.message(
      'Cancelar Serviço',
      name: 'cancelarServio',
      args: [],
    );
  }

  /// `Carros`
  String get carros {
    return Intl.message(
      'Carros',
      name: 'carros',
      args: [],
    );
  }

  /// `Casa e Eletrodomésticos`
  String get casaEEletrodomsticos {
    return Intl.message(
      'Casa e Eletrodomésticos',
      name: 'casaEEletrodomsticos',
      args: [],
    );
  }

  /// `Casa, Trabalho...`
  String get casaTrabalho {
    return Intl.message(
      'Casa, Trabalho...',
      name: 'casaTrabalho',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      args: [],
    );
  }

  /// `Chat iniciado às {hourAndMinute} - {date}`
  String chatIniciadoAs(Object hourAndMinute, Object date) {
    return Intl.message(
      'Chat iniciado às $hourAndMinute - $date',
      name: 'chatIniciadoAs',
      args: [hourAndMinute, date],
    );
  }

  /// `Câmera`
  String get cmera {
    return Intl.message(
      'Câmera',
      name: 'cmera',
      args: [],
    );
  }

  /// `Comentário...`
  String get comentrio {
    return Intl.message(
      'Comentário...',
      name: 'comentrio',
      args: [],
    );
  }

  /// `Comentários`
  String get comentrios {
    return Intl.message(
      'Comentários',
      name: 'comentrios',
      args: [],
    );
  }

  /// `Como foi o serviço com {name}?`
  String comoFoiOServioCom(Object name) {
    return Intl.message(
      'Como foi o serviço com $name?',
      name: 'comoFoiOServioCom',
      args: [name],
    );
  }

  /// `Complemento`
  String get complemento {
    return Intl.message(
      'Complemento',
      name: 'complemento',
      args: [],
    );
  }

  /// `CONCLUÍDO`
  String get concludo {
    return Intl.message(
      'CONCLUÍDO',
      name: 'concludo',
      args: [],
    );
  }

  /// `CPF`
  String get cpf {
    return Intl.message(
      'CPF',
      name: 'cpf',
      args: [],
    );
  }

  /// `Digite seu CPF`
  String get digiteseucpf {
    return Intl.message(
      'Digite seu CPF',
      name: 'digiteseucpf',
      args: [],
    );
  }

  /// `Configurações`
  String get configuraes {
    return Intl.message(
      'Configurações',
      name: 'configuraes',
      args: [],
    );
  }

  /// `Confira seu e-mail. Enviamos um novo código para você.`
  String get confiraSeuEmailEnviamosUmNovoCdigoParaVoc {
    return Intl.message(
      'Confira seu e-mail. Enviamos um novo código para você.',
      name: 'confiraSeuEmailEnviamosUmNovoCdigoParaVoc',
      args: [],
    );
  }

  /// `Confira seus dados e complemente\nas informações`
  String get confiraSeusDadosComplementeInformacoes {
    return Intl.message(
      'Confira seus dados e complemente\nas informações',
      name: 'confiraSeusDadosComplementeInformacoes',
      args: [],
    );
  }

  /// `Confirmar`
  String get confirmar {
    return Intl.message(
      'Confirmar',
      name: 'confirmar',
      args: [],
    );
  }

  /// `Confirmar novo e-mail`
  String get confirmarNovoEmail {
    return Intl.message(
      'Confirmar novo e-mail',
      name: 'confirmarNovoEmail',
      args: [],
    );
  }

  /// `Confirmar senha`
  String get confirmarSenha {
    return Intl.message(
      'Confirmar senha',
      name: 'confirmarSenha',
      args: [],
    );
  }

  /// `Confirme seu novo e-mail`
  String get confirmeSeuNovoEmail {
    return Intl.message(
      'Confirme seu novo e-mail',
      name: 'confirmeSeuNovoEmail',
      args: [],
    );
  }

  /// `Convide seus amigos agora mesmo`
  String get convideSeusAmigosAgoraMesmo {
    return Intl.message(
      'Convide seus amigos agora mesmo',
      name: 'convideSeusAmigosAgoraMesmo',
      args: [],
    );
  }

  /// `Criado em {date}`
  String createdAt(Object date) {
    return Intl.message(
      'Criado em $date',
      name: 'createdAt',
      args: [date],
    );
  }

  /// `Criado em {date}`
  String criadoEm(Object date) {
    return Intl.message(
      'Criado em $date',
      name: 'criadoEm',
      args: [date],
    );
  }

  /// `Criar orçamento`
  String get criarOrcamento {
    return Intl.message(
      'Criar orçamento',
      name: 'criarOrcamento',
      args: [],
    );
  }

  /// `Crie uma senha`
  String get crieUmaSenha {
    return Intl.message(
      'Crie uma senha',
      name: 'crieUmaSenha',
      args: [],
    );
  }

  /// `R$`
  String get currencySymbol {
    return Intl.message(
      'R\$',
      name: 'currencySymbol',
      args: [],
    );
  }

  /// `dd/MM/yyyy`
  String get datePattern {
    return Intl.message(
      'dd/MM/yyyy',
      name: 'datePattern',
      args: [],
    );
  }

  /// `Deletar minha conta`
  String get deletarMinhaConta {
    return Intl.message(
      'Deletar minha conta',
      name: 'deletarMinhaConta',
      args: [],
    );
  }

  /// `Deletar`
  String get deletar {
    return Intl.message(
      'Deletar',
      name: 'deletar',
      args: [],
    );
  }

  /// `Descreva seu problema ou serviço`
  String get descrevaSeuProblema {
    return Intl.message(
      'Descreva seu problema ou serviço',
      name: 'descrevaSeuProblema',
      args: [],
    );
  }

  /// `Descrição`
  String get descrio {
    return Intl.message(
      'Descrição',
      name: 'descrio',
      args: [],
    );
  }

  /// `Deseja deletar sua conta?`
  String get desejaDeletarSuaConta {
    return Intl.message(
      'Deseja deletar sua conta?',
      name: 'desejaDeletarSuaConta',
      args: [],
    );
  }

  /// `Detalhes`
  String get detalhes {
    return Intl.message(
      'Detalhes',
      name: 'detalhes',
      args: [],
    );
  }

  /// `Detalhes do orçamento`
  String get detalhesDoOramento {
    return Intl.message(
      'Detalhes do orçamento',
      name: 'detalhesDoOramento',
      args: [],
    );
  }

  /// `Detalhes do serviço`
  String get detalhesDoServio {
    return Intl.message(
      'Detalhes do serviço',
      name: 'detalhesDoServio',
      args: [],
    );
  }

  /// `Detalhes do técnico`
  String get detalhesDoTcnico {
    return Intl.message(
      'Detalhes do técnico',
      name: 'detalhesDoTcnico',
      args: [],
    );
  }

  /// `Digite aqui seu endereço`
  String get digiteAquiSeuEndereo {
    return Intl.message(
      'Digite aqui seu endereço',
      name: 'digiteAquiSeuEndereo',
      args: [],
    );
  }

  /// `Digite seu email`
  String get digiteSeuEmail {
    return Intl.message(
      'Digite seu email',
      name: 'digiteSeuEmail',
      args: [],
    );
  }

  /// `Digite seu nome completo`
  String get digiteSeuNomeCompleto {
    return Intl.message(
      'Digite seu nome completo',
      name: 'digiteSeuNomeCompleto',
      args: [],
    );
  }

  /// `Digite sua senha`
  String get digiteSuaSenha {
    return Intl.message(
      'Digite sua senha',
      name: 'digiteSuaSenha',
      args: [],
    );
  }

  /// `Digite um e-mail válido.`
  String get digiteUmEmailVlido {
    return Intl.message(
      'Digite um e-mail válido.',
      name: 'digiteUmEmailVlido',
      args: [],
    );
  }

  /// `{distance}km`
  String distanceValue(Object distance) {
    return Intl.message(
      '$distance km',
      name: 'distanceValue',
      args: [distance],
    );
  }

  /// `Distância`
  String get distncia {
    return Intl.message(
      'Distância',
      name: 'distncia',
      args: [],
    );
  }

  /// `Editar`
  String get editar {
    return Intl.message(
      'Editar',
      name: 'editar',
      args: [],
    );
  }

  /// `Eletrônicos`
  String get eletrnicos {
    return Intl.message(
      'Eletrônicos',
      name: 'eletrnicos',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      args: [],
    );
  }

  /// `criar conta`
  String get criarconta {
    return Intl.message(
      'criar conta',
      name: 'criarconta',
      args: [],
    );
  }

  /// `AGUARDANDO RESPOSTA`
  String get aguardandoResposta {
    return Intl.message(
      'AGUARDANDO RESPOSTA',
      name: 'aguardandoResposta',
      args: [],
    );
  }

  /// `Em andamento`
  String get emAndamento {
    return Intl.message(
      'Em andamento',
      name: 'emAndamento',
      args: [],
    );
  }

  /// `Em cotação`
  String get emCotacao {
    return Intl.message(
      'Em cotação',
      name: 'emCotacao',
      args: [],
    );
  }

  /// `Em breve os serviços finalizados ou cancelados serão listados aqui`
  String get emBreveOsServiosFinalizadosOuCanceladosSeroListadosAqui {
    return Intl.message(
      'Em breve os serviços finalizados ou cancelados serão listados aqui',
      name: 'emBreveOsServiosFinalizadosOuCanceladosSeroListadosAqui',
      args: [],
    );
  }

  /// `Encontramos alguns profissionais que podem te ajudar.`
  String get encontramosAlgunsProfissionaisQuePodemTeAjudar {
    return Intl.message(
      'Encontramos alguns profissionais que podem te ajudar.',
      name: 'encontramosAlgunsProfissionaisQuePodemTeAjudar',
      args: [],
    );
  }

  /// `Endereços`
  String get enderecos {
    return Intl.message(
      'Endereços',
      name: 'enderecos',
      args: [],
    );
  }

  /// `Endereço`
  String get endereo {
    return Intl.message(
      'Endereço',
      name: 'endereo',
      args: [],
    );
  }

  /// `Endereço cadastrado`
  String get endereoCadastrado {
    return Intl.message(
      'Endereço cadastrado',
      name: 'endereoCadastrado',
      args: [],
    );
  }

  /// `Endereço removido com sucesso.`
  String get endereoRemovidoComSucesso {
    return Intl.message(
      'Endereço removido com sucesso.',
      name: 'endereoRemovidoComSucesso',
      args: [],
    );
  }

  /// `Entendi`
  String get entendi {
    return Intl.message(
      'Entendi',
      name: 'entendi',
      args: [],
    );
  }

  /// `Entrar`
  String get entrar {
    return Intl.message(
      'Entrar',
      name: 'entrar',
      args: [],
    );
  }

  /// `Entrar com:`
  String get entrarCom {
    return Intl.message(
      'Entrar com:',
      name: 'entrarCom',
      args: [],
    );
  }

  /// `Entrar com e-mail`
  String get entrarComEmail {
    return Intl.message(
      'Entrar com e-mail',
      name: 'entrarComEmail',
      args: [],
    );
  }

  /// `Entraremos em contato com você em breve.`
  String get entraremosEmContatoComVocEmBreve {
    return Intl.message(
      'Entraremos em contato com você em breve.',
      name: 'entraremosEmContatoComVocEmBreve',
      args: [],
    );
  }

  /// `Entre em contato conosco que vamos te atender da melhor forma possível`
  String get entreEmContatoConoscoQueVamosTeAtenderDaMelhor {
    return Intl.message(
      'Entre em contato conosco que vamos te atender da melhor forma possível',
      name: 'entreEmContatoConoscoQueVamosTeAtenderDaMelhor',
      args: [],
    );
  }

  /// `Enviado por`
  String get enviadoPor {
    return Intl.message(
      'Enviado por',
      name: 'enviadoPor',
      args: [],
    );
  }

  /// `Enviar`
  String get enviar {
    return Intl.message(
      'Enviar',
      name: 'enviar',
      args: [],
    );
  }

  /// `Enviar Avaliação`
  String get enviarAvaliao {
    return Intl.message(
      'Enviar Avaliação',
      name: 'enviarAvaliao',
      args: [],
    );
  }

  /// `Enviar convite`
  String get enviarConvite {
    return Intl.message(
      'Enviar convite',
      name: 'enviarConvite',
      args: [],
    );
  }

  /// `Enviar foto ou vídeo`
  String get enviarFotoOuVdeo {
    return Intl.message(
      'Enviar foto ou vídeo',
      name: 'enviarFotoOuVdeo',
      args: [],
    );
  }

  /// `Enviar mensagem`
  String get enviarMensagem {
    return Intl.message(
      'Enviar mensagem',
      name: 'enviarMensagem',
      args: [],
    );
  }

  /// `Enviar Solicitação`
  String get enviarSolicitao {
    return Intl.message(
      'Enviar Solicitação',
      name: 'enviarSolicitao',
      args: [],
    );
  }

  /// `Erro inesperado`
  String get erroInesperado {
    return Intl.message(
      'Erro inesperado',
      name: 'erroInesperado',
      args: [],
    );
  }

  /// `Erro interno do servidor`
  String get erroInternoDoServidor {
    return Intl.message(
      'Erro interno do servidor',
      name: 'erroInternoDoServidor',
      args: [],
    );
  }

  /// `Erro na requisição, tente novamente`
  String get erroNaRequisioTenteNovamente {
    return Intl.message(
      'Erro na requisição, tente novamente',
      name: 'erroNaRequisioTenteNovamente',
      args: [],
    );
  }

  /// `Escrever mensagem...`
  String get escreverMensagem {
    return Intl.message(
      'Escrever mensagem...',
      name: 'escreverMensagem',
      args: [],
    );
  }

  /// `Especialista`
  String get especialista {
    return Intl.message(
      'Especialista',
      name: 'especialista',
      args: [],
    );
  }

  /// `Especialistas`
  String get especialistas {
    return Intl.message(
      'Especialistas',
      name: 'especialistas',
      args: [],
    );
  }

  /// `Esqueceu a senha?`
  String get esqueceuASenha {
    return Intl.message(
      'Esqueceu a senha?',
      name: 'esqueceuASenha',
      args: [],
    );
  }

  /// `ESQUECEU SUA SENHA`
  String get esqueceuSuaSenha {
    return Intl.message(
      'ESQUECEU SUA SENHA',
      name: 'esqueceuSuaSenha',
      args: [],
    );
  }

  /// `Estamos buscando os melhores profissionais...`
  String get estamosBuscandoOsMelhoresProfissionais {
    return Intl.message(
      'Estamos buscando os melhores profissionais...',
      name: 'estamosBuscandoOsMelhoresProfissionais',
      args: [],
    );
  }

  /// `FACEBOOK`
  String get facebook {
    return Intl.message(
      'FACEBOOK',
      name: 'facebook',
      args: [],
    );
  }

  /// `Fale Conosco`
  String get faleConosco {
    return Intl.message(
      'Fale Conosco',
      name: 'faleConosco',
      args: [],
    );
  }

  /// `Falha de conexão, verifique sua internet`
  String get falhaDeConexoVerifiqueSuaInternet {
    return Intl.message(
      'Falha de conexão, verifique sua internet',
      name: 'falhaDeConexoVerifiqueSuaInternet',
      args: [],
    );
  }

  /// `Filtrar`
  String get filtrar {
    return Intl.message(
      'Filtrar',
      name: 'filtrar',
      args: [],
    );
  }

  /// `Finalizar Serviço`
  String get finalizarServio {
    return Intl.message(
      'Finalizar Serviço',
      name: 'finalizarServio',
      args: [],
    );
  }

  /// `Finalizar Serviço`
  String get finalzarServio {
    return Intl.message(
      'Finalizar Serviço',
      name: 'finalzarServio',
      args: [],
    );
  }

  /// `Fotos`
  String get fotos {
    return Intl.message(
      'Fotos',
      name: 'fotos',
      args: [],
    );
  }

  /// `Galeria`
  String get galeria {
    return Intl.message(
      'Galeria',
      name: 'galeria',
      args: [],
    );
  }

  /// `GOOGLE`
  String get google {
    return Intl.message(
      'GOOGLE',
      name: 'google',
      args: [],
    );
  }

  /// `Gostaria de nos enviar fotos ou vídeos para melhor descrever seu serviço?`
  String get gostariaDeNosEnviarFotosOuVdeosParaMelhorDescrever {
    return Intl.message(
      'Gostaria de nos enviar fotos ou vídeos para melhor descrever seu serviço?',
      name: 'gostariaDeNosEnviarFotosOuVdeosParaMelhorDescrever',
      args: [],
    );
  }

  /// `Habilitar serviços de localização`
  String get habilitarServiosDeLocalizao {
    return Intl.message(
      'Habilitar serviços de localização',
      name: 'habilitarServiosDeLocalizao',
      args: [],
    );
  }

  /// `Histórico`
  String get histrico {
    return Intl.message(
      'Histórico',
      name: 'histrico',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      args: [],
    );
  }

  /// `Imagem`
  String get imagem {
    return Intl.message(
      'Imagem',
      name: 'imagem',
      args: [],
    );
  }

  /// `Informe detalhes sobre o serviço...`
  String get informeDetalhesSobreOProblema {
    return Intl.message(
      'Informe detalhes sobre o serviço...',
      name: 'informeDetalhesSobreOProblema',
      args: [],
    );
  }

  /// `Informe seu novo e-mail`
  String get informeSeuNovoEmail {
    return Intl.message(
      'Informe seu novo e-mail',
      name: 'informeSeuNovoEmail',
      args: [],
    );
  }

  /// `Insira o código enviado para o seu e-mail`
  String get insiraOCdigoEnviadoParaOSeuEmail {
    return Intl.message(
      'Insira o código enviado para o seu e-mail',
      name: 'insiraOCdigoEnviadoParaOSeuEmail',
      args: [],
    );
  }

  // skipped getter for the 'intro.new-key' key

  // skipped getter for the 'intro.not-reviewed-text' key

  // skipped getter for the 'intro.too-long-text' key

  // skipped getter for the 'intro.welcome' key

  /// `Limpar Filtro`
  String get limparFiltro {
    return Intl.message(
      'Limpar Filtro',
      name: 'limparFiltro',
      args: [],
    );
  }

  /// `Conectando novos clientes ao seu negócio.`
  String get loginOptionsScreenMessage {
    return Intl.message(
      'Conectando novos clientes ao seu negócio.',
      name: 'loginOptionsScreenMessage',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      args: [],
    );
  }

  /// `Maior avaliação`
  String get maiorAvaliao {
    return Intl.message(
      'Maior avaliação',
      name: 'maiorAvaliao',
      args: [],
    );
  }

  /// `Maior valor`
  String get maiorValor {
    return Intl.message(
      'Maior valor',
      name: 'maiorValor',
      args: [],
    );
  }

  /// `Mais`
  String get mais {
    return Intl.message(
      'Mais',
      name: 'mais',
      args: [],
    );
  }

  /// `Quantidade`
  String get quantidade {
    return Intl.message(
      'Quantidade',
      name: 'quantidade',
      args: [],
    );
  }

  /// `Valor`
  String get valor {
    return Intl.message(
      'Valor',
      name: 'valor',
      args: [],
    );
  }

  /// `Mais antigo`
  String get maisAntigo {
    return Intl.message(
      'Mais antigo',
      name: 'maisAntigo',
      args: [],
    );
  }

  /// `Mais distante`
  String get maisDistante {
    return Intl.message(
      'Mais distante',
      name: 'maisDistante',
      args: [],
    );
  }

  /// `Mais próximo`
  String get maisPrximo {
    return Intl.message(
      'Mais próximo',
      name: 'maisPrximo',
      args: [],
    );
  }

  /// `Mais recente`
  String get maisRecente {
    return Intl.message(
      'Mais recente',
      name: 'maisRecente',
      args: [],
    );
  }

  /// `Marca do veículo`
  String get marcaDoVeculo {
    return Intl.message(
      'Marca do veículo',
      name: 'marcaDoVeculo',
      args: [],
    );
  }

  /// `Média`
  String get mdia {
    return Intl.message(
      'Média',
      name: 'mdia',
      args: [],
    );
  }

  /// `Menor avaliação`
  String get menorAvaliao {
    return Intl.message(
      'Menor avaliação',
      name: 'menorAvaliao',
      args: [],
    );
  }

  /// `Menor valor`
  String get menorValor {
    return Intl.message(
      'Menor valor',
      name: 'menorValor',
      args: [],
    );
  }

  /// `Mensagem`
  String get mensagem {
    return Intl.message(
      'Mensagem',
      name: 'mensagem',
      args: [],
    );
  }

  /// `Meus dados`
  String get meusDados {
    return Intl.message(
      'Meus dados',
      name: 'meusDados',
      args: [],
    );
  }

  /// `Mostrar`
  String get mostrar {
    return Intl.message(
      'Mostrar',
      name: 'mostrar',
      args: [],
    );
  }

  /// `Motos`
  String get motos {
    return Intl.message(
      'Motos',
      name: 'motos',
      args: [],
    );
  }

  /// `Nada por aqui ainda...`
  String get nadaPorAquiAinda {
    return Intl.message(
      'Nada por aqui ainda...',
      name: 'nadaPorAquiAinda',
      args: [],
    );
  }

  /// `Nenhum endereço cadastrado`
  String get nenhumEndereoCadastrado {
    return Intl.message(
      'Nenhum endereço cadastrado',
      name: 'nenhumEndereoCadastrado',
      args: [],
    );
  }

  /// `Nenhum técnico encontrado, para esse tipo de serviço, em sua região no momento.`
  String get nenhumTcnicoEncontradoNoMomento {
    return Intl.message(
      'Nenhum técnico encontrado, para esse tipo de serviço, em sua região no momento.',
      name: 'nenhumTcnicoEncontradoNoMomento',
      args: [],
    );
  }

  /// `Número`
  String get nmero {
    return Intl.message(
      'Número',
      name: 'nmero',
      args: [],
    );
  }

  /// `Número do seu endereço`
  String get nmeroDoSeuEndereo {
    return Intl.message(
      'Número do seu endereço',
      name: 'nmeroDoSeuEndereo',
      args: [],
    );
  }

  /// `Não`
  String get no {
    return Intl.message(
      'Não',
      name: 'no',
      args: [],
    );
  }

  /// `Não deletar`
  String get noDeletar {
    return Intl.message(
      'Não deletar',
      name: 'noDeletar',
      args: [],
    );
  }

  /// `Não encontrado`
  String get noEncontrado {
    return Intl.message(
      'Não encontrado',
      name: 'noEncontrado',
      args: [],
    );
  }

  /// `Não encontramos o endereço informado...`
  String get noEncontramosOEndereoInformado {
    return Intl.message(
      'Não encontramos o endereço informado...',
      name: 'noEncontramosOEndereoInformado',
      args: [],
    );
  }

  /// `Nome completo`
  String get nomeCompleto {
    return Intl.message(
      'Nome completo',
      name: 'nomeCompleto',
      args: [],
    );
  }

  /// `Nome do endereço`
  String get nomeDoEndereo {
    return Intl.message(
      'Nome do endereço',
      name: 'nomeDoEndereo',
      args: [],
    );
  }

  /// `Não permitir`
  String get noPermitir {
    return Intl.message(
      'Não permitir',
      name: 'noPermitir',
      args: [],
    );
  }

  /// `Não sei`
  String get noSei {
    return Intl.message(
      'Não sei',
      name: 'noSei',
      args: [],
    );
  }

  /// `Nos conte mais sobre o que precisa resolver.`
  String get nosFaleUmPoucoSobreOSeuProblema {
    return Intl.message(
      'Nos conte mais sobre o que precisa resolver.',
      name: 'nosFaleUmPoucoSobreOSeuProblema',
      args: [],
    );
  }

  /// `Nos informe seu email que te enviaremos os passos para criar uma nova senha.`
  String get nosInformeSeuEmailQueTeEnviaremosOsPassosPara {
    return Intl.message(
      'Nos informe seu email que te enviaremos os passos para criar uma nova senha.',
      name: 'nosInformeSeuEmailQueTeEnviaremosOsPassosPara',
      args: [],
    );
  }

  /// `Nos próximos logins, você já pode usar a sua nova senha.`
  String get nosPrximosLoginsVocJPodeUsarASuaNova {
    return Intl.message(
      'Nos próximos logins, você já pode usar a sua nova senha.',
      name: 'nosPrximosLoginsVocJPodeUsarASuaNova',
      args: [],
    );
  }

  /// `Notificações`
  String get notificaes {
    return Intl.message(
      'Notificações',
      name: 'notificaes',
      args: [],
    );
  }

  /// `Nova senha`
  String get novaSenha {
    return Intl.message(
      'Nova senha',
      name: 'novaSenha',
      args: [],
    );
  }

  /// `Novo e-mail`
  String get novoEmail {
    return Intl.message(
      'Novo e-mail',
      name: 'novoEmail',
      args: [],
    );
  }

  /// `Novo endereço`
  String get novoEndereo {
    return Intl.message(
      'Novo endereço',
      name: 'novoEndereo',
      args: [],
    );
  }

  /// `Novo orçamento`
  String get novoOramento {
    return Intl.message(
      'Novo orçamento',
      name: 'novoOramento',
      args: [],
    );
  }

  /// `Obrigado por usar o {appName}. Esperamos que tenha sido uma ótima experiência.`
  String obrigadoPorUsarOAaaEsperamosQueTenhaSidoUma(Object appName) {
    return Intl.message(
      'Obrigado por usar o $appName. Esperamos que tenha sido uma ótima experiência.',
      name: 'obrigadoPorUsarOAaaEsperamosQueTenhaSidoUma',
      args: [appName],
    );
  }

  /// `Obrigado. Sua mensagem foi enviada`
  String get obrigadoSuaMensagemFoiEnviada {
    return Intl.message(
      'Obrigado. Sua mensagem foi enviada',
      name: 'obrigadoSuaMensagemFoiEnviada',
      args: [],
    );
  }

  /// `Obrigatório`
  String get obrigatrio {
    return Intl.message(
      'Obrigatório',
      name: 'obrigatrio',
      args: [],
    );
  }

  /// `Ocorreu um erro inesperado...`
  String get ocorreuUmErroInesperado {
    return Intl.message(
      'Ocorreu um erro inesperado...',
      name: 'ocorreuUmErroInesperado',
      args: [],
    );
  }

  /// `Ocorreu um erro na sua requisição, verifique os dados e tente novamente`
  String get ocorreuUmErroNaSuaRequisioVerifiqueOsDadosE {
    return Intl.message(
      'Ocorreu um erro na sua requisição, verifique os dados e tente novamente',
      name: 'ocorreuUmErroNaSuaRequisioVerifiqueOsDadosE',
      args: [],
    );
  }

  /// `Ocultar`
  String get ocultar {
    return Intl.message(
      'Ocultar',
      name: 'ocultar',
      args: [],
    );
  }

  /// `O e-mail não pode ser vazio.`
  String get oEmailNoPodeSerVazio {
    return Intl.message(
      'O e-mail não pode ser vazio.',
      name: 'oEmailNoPodeSerVazio',
      args: [],
    );
  }

  /// `{howMany, plural, zero{Nenhum orçamento} one{(1) orçamento} other{({howMany}) orçamentos}}`
  String offersCount(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Nenhum orçamento',
      one: '(1) orçamento',
      other: '($howMany) orçamentos',
      name: 'offersCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `+{howMany} orçamentos`
  String offersCountPlus(Object howMany) {
    return Intl.message(
      '+$howMany orçamentos',
      name: 'offersCountPlus',
      args: [howMany],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      args: [],
    );
  }

  /// `Olá, `
  String get ola {
    return Intl.message(
      'Olá, ',
      name: 'ola',
      args: [],
    );
  }

  /// `Olá, {user}`
  // String olaUser(Object user) {
  //   return Intl.message(
  //     'Olá, $user',
  //     name: 'olaUser',
  //     desc: '',
  //     args: [user],
  //   );
  // }

  /// `O nome não pode ser vazio.`
  String get oNomeNaoPodeSerVazio {
    return Intl.message(
      'O nome não pode ser vazio.',
      name: 'oNomeNaoPodeSerVazio',
      args: [],
    );
  }

  /// `Orçamento`
  String get oramento {
    return Intl.message(
      'Orçamento',
      name: 'oramento',
      args: [],
    );
  }

  /// `Orçamento aceito.`
  String get oramentoAceito {
    return Intl.message(
      'Orçamento aceito.',
      name: 'oramentoAceito',
      args: [],
    );
  }

  /// `Orçamento recusado com sucesso.`
  String get oramentoRecusadoComSucesso {
    return Intl.message(
      'Orçamento recusado com sucesso.',
      name: 'oramentoRecusadoComSucesso',
      args: [],
    );
  }

  /// `Orçamentos`
  String get oramentos {
    return Intl.message(
      'Orçamentos',
      name: 'oramentos',
      args: [],
    );
  }

  /// `Ordem alfabética`
  String get ordemAlfabtica {
    return Intl.message(
      'Ordem alfabética',
      name: 'ordemAlfabtica',
      args: [],
    );
  }

  /// `Ordenar`
  String get ordenar {
    return Intl.message(
      'Ordenar',
      name: 'ordenar',
      args: [],
    );
  }

  /// `O servidor está indisponível no momento, tente novamente`
  String get oServidorEstIndisponvelNoMomentoTenteNovamente {
    return Intl.message(
      'O servidor está indisponível no momento, tente novamente',
      name: 'oServidorEstIndisponvelNoMomentoTenteNovamente',
      args: [],
    );
  }

  /// `OU`
  String get ou {
    return Intl.message(
      'OU',
      name: 'ou',
      args: [],
    );
  }

  // skipped getter for the 'page.home.counter' key

  // skipped getter for the 'page.home.title' key

  /// `Para continuar, por favor habilite os serviços de localização do seu dispositivo.`
  String get paraContinuarPorFavorHabiliteOsServiosDeLocalizaoDo {
    return Intl.message(
      'Para continuar, por favor habilite os serviços de localização do seu dispositivo.',
      name: 'paraContinuarPorFavorHabiliteOsServiosDeLocalizaoDo',
      args: [],
    );
  }

  /// `Para uma melhor experiência precisamos que você forneça permissões para acesso a sua localização.`
  String get paraUmaMelhorExperinciaPrecisamosQueVocForneaPermissesPara {
    return Intl.message(
      'Para uma melhor experiência precisamos que você forneça permissões para acesso a sua localização.',
      name: 'paraUmaMelhorExperinciaPrecisamosQueVocForneaPermissesPara',
      args: [],
    );
  }

  /// `Perfil`
  String get perfil {
    return Intl.message(
      'Perfil',
      name: 'perfil',
      args: [],
    );
  }

  /// `Perfil verificado`
  String get perfilVerificado {
    return Intl.message(
      'Perfil verificado',
      name: 'perfilVerificado',
      args: [],
    );
  }

  /// `Permitir`
  String get permitir {
    return Intl.message(
      'Permitir',
      name: 'permitir',
      args: [],
    );
  }

  /// `Permitir notificações`
  String get permitirNotificaes {
    return Intl.message(
      'Permitir notificações',
      name: 'permitirNotificaes',
      args: [],
    );
  }

  /// `Permitir uso da sua localização`
  String get permitirUsoDaSuaLocalizao {
    return Intl.message(
      'Permitir uso da sua localização',
      name: 'permitirUsoDaSuaLocalizao',
      args: [],
    );
  }

  /// `Política de privacidade`
  String get polticaDePrivacidade {
    return Intl.message(
      'Política de privacidade',
      name: 'polticaDePrivacidade',
      args: [],
    );
  }

  /// `Por favor, informe sua senha.`
  String get porFavorInformeSuaSenha {
    return Intl.message(
      'Por favor, informe sua senha.',
      name: 'porFavorInformeSuaSenha',
      args: [],
    );
  }

  /// `Por favor, volte novamente em alguns instantes.`
  String get porFavorVolteNovamenteEmAlgunsInstantes {
    return Intl.message(
      'Por favor, volte novamente em alguns instantes.',
      name: 'porFavorVolteNovamenteEmAlgunsInstantes',
      args: [],
    );
  }

  /// `Precisando de ajuda?`
  String get precisandoDeAjuda {
    return Intl.message(
      'Precisando de ajuda?',
      name: 'precisandoDeAjuda',
      args: [],
    );
  }

  /// `Precisando de um Serviço?`
  String get precisandoDeUmReparo {
    return Intl.message(
      'Precisando de um Serviço?',
      name: 'precisandoDeUmReparo',
      args: [],
    );
  }

  /// `Preencha os campos abaixo com sua senha.`
  String get preenchaOsCamposAbaixoComSuaSenha {
    return Intl.message(
      'Preencha os campos abaixo com sua senha.',
      name: 'preenchaOsCamposAbaixoComSuaSenha',
      args: [],
    );
  }

  /// `R$ 0,00`
  String get prefixoMoedaHint {
    return Intl.message(
      'R\$ 0,00',
      name: 'prefixoMoedaHint',
      args: [],
    );
  }

  /// `R$`
  String get moeda {
    return Intl.message(
      'R\$',
      name: 'moeda',
      args: [],
    );
  }

  /// `Problema`
  String get problema {
    return Intl.message(
      'Problema',
      name: 'problema',
      args: [],
    );
  }

  /// `Profissionais`
  String get profissionais {
    return Intl.message(
      'Profissionais',
      name: 'profissionais',
      args: [],
    );
  }

  /// `Profissional`
  String get profissional {
    return Intl.message(
      'Profissional',
      name: 'profissional',
      args: [],
    );
  }

  /// `Pronto!`
  String get pronto {
    return Intl.message(
      'Pronto!',
      name: 'pronto',
      args: [],
    );
  }

  /// `Quer fazer um comentário?`
  String get querFazerUmComentrio {
    return Intl.message(
      'Quer fazer um comentário?',
      name: 'querFazerUmComentrio',
      args: [],
    );
  }

  /// `Recuperar senha`
  String get recuperarSenha {
    return Intl.message(
      'Recuperar senha',
      name: 'recuperarSenha',
      args: [],
    );
  }

  /// `RECUSADO`
  String get recusado {
    return Intl.message(
      'RECUSADO',
      name: 'recusado',
      args: [],
    );
  }

  /// `Recusar`
  String get recusar {
    return Intl.message(
      'Recusar',
      name: 'recusar',
      args: [],
    );
  }

  /// `REENVIAR CÓDIGO`
  String get reenviarCdigo {
    return Intl.message(
      'REENVIAR CÓDIGO',
      name: 'reenviarCdigo',
      args: [],
    );
  }

  /// `Remover endereço`
  String get removerEndereo {
    return Intl.message(
      'Remover endereço',
      name: 'removerEndereo',
      args: [],
    );
  }

  /// `Repita a senha digitada`
  String get repitaASenhaDigitada {
    return Intl.message(
      'Repita a senha digitada',
      name: 'repitaASenhaDigitada',
      args: [],
    );
  }

  /// `Requisição cancelada`
  String get requisioCancelada {
    return Intl.message(
      'Requisição cancelada',
      name: 'requisioCancelada',
      args: [],
    );
  }

  /// `Resumo do serviço:`
  String get resumoDoServio {
    return Intl.message(
      'Resumo do serviço:',
      name: 'resumoDoServio',
      args: [],
    );
  }

  /// `Revise sua solicitação`
  String get reviseSeuProblema {
    return Intl.message(
      'Revise sua solicitação',
      name: 'reviseSeuProblema',
      args: [],
    );
  }

  /// `Salvar`
  String get salvar {
    return Intl.message(
      'Salvar',
      name: 'salvar',
      args: [],
    );
  }

  /// `Salvar novo endereço`
  String get salvarNovoEndereo {
    return Intl.message(
      'Salvar novo endereço',
      name: 'salvarNovoEndereo',
      args: [],
    );
  }

  /// `{howMany, plural, zero{} one{Selecionado (1)} other{ Selecionados ({howMany})}}`
  String selecionados(num howMany) {
    return Intl.plural(
      howMany,
      zero: '',
      one: 'Selecionado (1)',
      other: ' Selecionados ($howMany)',
      name: 'selecionados',
      desc: '',
      args: [howMany],
    );
  }

  /// `Selecione o endereço que o serviço deverá ser prestado.`
  String get selecioneOEndereoQueOServioDeverSerPrestado {
    return Intl.message(
      'Selecione o endereço que o serviço deverá ser prestado.',
      name: 'selecioneOEndereoQueOServioDeverSerPrestado',
      args: [],
    );
  }

  /// `Selecione uma das opções abaixo para continuar`
  String get selecioneUmaDasOpesAbaixoParaContinuar {
    return Intl.message(
      'Selecione uma das opções abaixo para continuar',
      name: 'selecioneUmaDasOpesAbaixoParaContinuar',
      args: [],
    );
  }

  /// `Selecione um ou mais técnicos`
  String get selecioneUmOuMaisTcnicos {
    return Intl.message(
      'Selecione um ou mais técnicos',
      name: 'selecioneUmOuMaisTcnicos',
      args: [],
    );
  }

  /// `Senha`
  String get senha {
    return Intl.message(
      'Senha',
      name: 'senha',
      args: [],
    );
  }

  /// `Senha alterada com sucesso!`
  String get senhaAlteradaComSucesso {
    return Intl.message(
      'Senha alterada com sucesso!',
      name: 'senhaAlteradaComSucesso',
      args: [],
    );
  }

  /// `{howMany, plural, zero{Nenhum serviço} one{1 serviço} other{{howMany} serviços}}`
  String servicesCount(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Nenhum serviço',
      one: '1 serviço',
      other: '$howMany serviços',
      name: 'servicesCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, zero{Nenhum orçamento} one{(1) Orçamento} other{({howMany}) Orçamentos}}`
  String budgetsCount(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Nenhum orçamento',
      one: '(1) Orçamento',
      other: '($howMany) Orçamentos',
      name: 'budgetsCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, zero{Nenhum orçamento enviado} one{(1) Orçamento Enviado} other{({howMany}) Orçamentos Enviados}}`
  String budgetsSentCount(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Nenhum orçamento enviado',
      one: '(1) Orçamento Enviado',
      other: '($howMany) Orçamentos Enviados',
      name: 'budgetsSentCount',
      desc: '',
      args: [howMany],
    );
  }

  /// `Serviços`
  String get servios {
    return Intl.message(
      'Serviços',
      name: 'servios',
      args: [],
    );
  }

  /// `Seu carro liga?`
  String get seuCarroLiga {
    return Intl.message(
      'Seu carro liga?',
      name: 'seuCarroLiga',
      args: [],
    );
  }

  /// `Seu dados de perfil foram atualizados com sucesso.`
  String get seuDadosDePerfilForamAtualizadosComSucesso {
    return Intl.message(
      'Seu dados de perfil foram atualizados com sucesso.',
      name: 'seuDadosDePerfilForamAtualizadosComSucesso',
      args: [],
    );
  }

  /// `Seu e-mail`
  String get seuEmail {
    return Intl.message(
      'Seu e-mail',
      name: 'seuEmail',
      args: [],
    );
  }

  /// `seu@email.com`
  String get seuemailcom {
    return Intl.message(
      'seu@email.com',
      name: 'seuemailcom',
      args: [],
    );
  }

  /// `Seu e-mail foi alterado com sucesso`
  String get seuEmailFoiAlteradoComSucesso {
    return Intl.message(
      'Seu e-mail foi alterado com sucesso',
      name: 'seuEmailFoiAlteradoComSucesso',
      args: [],
    );
  }

  /// `Seu nome`
  String get seuNome {
    return Intl.message(
      'Seu nome',
      name: 'seuNome',
      args: [],
    );
  }

  /// `Sim`
  String get sim {
    return Intl.message(
      'Sim',
      name: 'sim',
      args: [],
    );
  }

  /// `Sobre nós`
  String get sobreNos {
    return Intl.message(
      'Sobre nós',
      name: 'sobreNos',
      args: [],
    );
  }

  /// `Solicitações`
  String get solicitaes {
    return Intl.message(
      'Solicitações',
      name: 'solicitaes',
      args: [],
    );
  }

  /// `Solicitação criada com sucesso`
  String get solicitaoCriadaComSucesso {
    return Intl.message(
      'Solicitação criada com sucesso',
      name: 'solicitaoCriadaComSucesso',
      args: [],
    );
  }

  /// `Sua mensagem...`
  String get suaMensagem {
    return Intl.message(
      'Sua mensagem...',
      name: 'suaMensagem',
      args: [],
    );
  }

  /// `Ao se cadastrar você está de acordo com os`
  String get termsOfUseAgreement {
    return Intl.message(
      'Ao se cadastrar você está de acordo com os',
      name: 'termsOfUseAgreement',
      args: [],
    );
  }

  /// `Técnicos`
  String get tcnicos {
    return Intl.message(
      'Técnicos',
      name: 'tcnicos',
      args: [],
    );
  }

  /// `Tem certeza que deseja remover esse endereço?`
  String get temCertezaQueDesejaRemoverEsseEndereo {
    return Intl.message(
      'Tem certeza que deseja remover esse endereço?',
      name: 'temCertezaQueDesejaRemoverEsseEndereo',
      args: [],
    );
  }

  /// `Tentar novamente`
  String get tentarNovamente {
    return Intl.message(
      'Tentar novamente',
      name: 'tentarNovamente',
      args: [],
    );
  }

  /// `Termos de uso`
  String get termosDeUso {
    return Intl.message(
      'Termos de uso',
      name: 'termosDeUso',
      args: [],
    );
  }

  /// `Toque no botão abaixo para criar uma solicitação de serviço.`
  String get toqueNoBotoAbaixoParaCriarUmaSolicitaoDeServio {
    return Intl.message(
      'Toque no botão abaixo para criar uma solicitação de serviço.',
      name: 'toqueNoBotoAbaixoParaCriarUmaSolicitaoDeServio',
      args: [],
    );
  }

  /// `Toque no botão abaixo para criar um novo endereço`
  String get toqueNoBotoAbaixoParaCriarUmNovoEndereo {
    return Intl.message(
      'Toque no botão abaixo para criar um novo endereço',
      name: 'toqueNoBotoAbaixoParaCriarUmNovoEndereo',
      args: [],
    );
  }

  /// `Tópico`
  String get tpico {
    return Intl.message(
      'Tópico',
      name: 'tpico',
      args: [],
    );
  }

  /// `Tudo certo! Seu novo endereço foi cadastrado.`
  String get tudoCertoSeuNovoEndereoFoiCadastrado {
    return Intl.message(
      'Tudo certo! Seu novo endereço foi cadastrado.',
      name: 'tudoCertoSeuNovoEndereoFoiCadastrado',
      args: [],
    );
  }

  /// `Validar e-mail`
  String get validarEmail {
    return Intl.message(
      'Validar e-mail',
      name: 'validarEmail',
      args: [],
    );
  }

  /// `Valor aproximado`
  String get valorAproximado {
    return Intl.message(
      'Valor aproximado',
      name: 'valorAproximado',
      args: [],
    );
  }

  /// `Valor à combinar`
  String get valorCombinar {
    return Intl.message(
      'Valor à combinar',
      name: 'valorCombinar',
      args: [],
    );
  }

  /// `Valor estimado`
  String get valorEstimado {
    return Intl.message(
      'Valor estimado',
      name: 'valorEstimado',
      args: [],
    );
  }

  /// `Vídeo`
  String get vdeo {
    return Intl.message(
      'Vídeo',
      name: 'vdeo',
      args: [],
    );
  }

  /// `Versão do App {version}`
  String versaoDoApp(Object version) {
    return Intl.message(
      'Versão do App $version',
      name: 'versaoDoApp',
      args: [version],
    );
  }

  /// `Você não possui nenhuma solicitação em aberto no momento`
  String get vocNoPossuiNenhumaSolicitaoEmAbertoNoMomento {
    return Intl.message(
      'Você não possui nenhuma solicitação em aberto no momento',
      name: 'vocNoPossuiNenhumaSolicitaoEmAbertoNoMomento',
      args: [],
    );
  }

  /// `Você não possui nenhum serviço em andamento no momento`
  String get vocNoPossuiNenhumServioEmAndamentoNoMomento {
    return Intl.message(
      'Você não possui nenhum serviço em andamento no momento',
      name: 'vocNoPossuiNenhumServioEmAndamentoNoMomento',
      args: [],
    );
  }

  /// `Você não possui nenhum serviço aguardando resposta no momento`
  String get vocNoPossuiNenhumServioAguardandoRespNoMomento {
    return Intl.message(
      'Você não possui nenhum serviço aguardando resposta no momento',
      name: 'vocNoPossuiNenhumServioAguardandoRespNoMomento',
      args: [],
    );
  }

  /// `Você pode acompanhar sua solicitações em andamento no menu Serviços na sua tela principal.`
  String get vocPodeAcompanharSuaSolicitaesEmAndamentoNoMenuServios {
    return Intl.message(
      'Você pode acompanhar sua solicitações em andamento no menu Serviços na sua tela principal.',
      name: 'vocPodeAcompanharSuaSolicitaesEmAndamentoNoMenuServios',
      args: [],
    );
  }

  /// `Você pode alterar seus dados de cadastro no seu perfil dentro do app.`
  String get vocPodeAlterarSeusDadosDeCadastroNoSeuPerfil {
    return Intl.message(
      'Você pode alterar seus dados de cadastro no seu perfil dentro do app.',
      name: 'vocPodeAlterarSeusDadosDeCadastroNoSeuPerfil',
      args: [],
    );
  }

  /// `Você não possui conversas em aberto`
  String get voceNaoPossuiConversas {
    return Intl.message(
      'Você não possui conversas em aberto',
      name: 'voceNaoPossuiConversas',
      args: [],
    );
  }

  /// `Você tem `
  String get voceTem {
    return Intl.message(
      'Você tem ',
      name: 'voceTem',
      args: [],
    );
  }

  /// `\norçamentos restantes`
  String get orcamentosRestantes {
    return Intl.message(
      '\norçamentos restantes',
      name: 'orcamentosRestantes',
      args: [],
    );
  }

  /// `Você recebeu uma mensagem`
  String get vocRecebeuUmaMensagem {
    return Intl.message(
      'Você recebeu uma mensagem',
      name: 'vocRecebeuUmaMensagem',
      args: [],
    );
  }

  /// `Recomendado`
  String get recommended {
    return Intl.message(
      'Recomendado',
      name: 'recommended',
      args: [],
    );
  }

  /// `Você só pode selecionar 1 imagem por vez`
  String get vocSPodeSelecionar1ImagemPorVez {
    return Intl.message(
      'Você só pode selecionar 1 imagem por vez',
      name: 'vocSPodeSelecionar1ImagemPorVez',
      args: [],
    );
  }

  /// `Tópicos`
  String get topicos {
    return Intl.message(
      'Tópicos',
      name: 'topicos',
      args: [],
    );
  }

  /// `Digite seu nome`
  String get digiteNome {
    return Intl.message(
      'Digite seu nome',
      name: 'digiteNome',
      args: [],
    );
  }

  /// `Digite seu telefone`
  String get digiteTelefone {
    return Intl.message(
      'Digite seu telefone',
      name: 'digiteTelefone',
      args: [],
    );
  }

  /// `Digite um telefone válido`
  String get digiteUmTelefoneValido {
    return Intl.message(
      'Digite um telefone válido',
      name: 'digiteUmTelefoneValido',
      args: [],
    );
  }

  /// `Telefone`
  String get telefone {
    return Intl.message(
      'Telefone',
      name: 'telefone',
      args: [],
    );
  }

  /// `Telefone (opcional)`
  String get telefoneopcional {
    return Intl.message(
      'Telefone (opcional)',
      name: 'telefoneopcional',
      args: [],
    );
  }

  /// `Digite seu telefone`
  String get digiteSeuTelefone {
    return Intl.message(
      'Digite seu telefone',
      name: 'digiteSeuTelefone',
      args: [],
    );
  }

  /// `Nome do negócio`
  String get nomenegocio {
    return Intl.message(
      'Nome do negócio',
      name: 'nomenegocio',
      args: [],
    );
  }

  /// `CEP`
  String get cep {
    return Intl.message(
      'CEP',
      name: 'cep',
      args: [],
    );
  }

  /// `Rua`
  String get rua {
    return Intl.message(
      'Rua',
      name: 'rua',
      args: [],
    );
  }

  /// `Nome`
  String get nome {
    return Intl.message(
      'Nome',
      name: 'nome',
      args: [],
    );
  }

  /// `Bairro`
  String get bairro {
    return Intl.message(
      'Bairro',
      name: 'bairro',
      args: [],
    );
  }

  /// `Cidade`
  String get cidade {
    return Intl.message(
      'Cidade',
      name: 'cidade',
      args: [],
    );
  }

  /// `Categorias`
  String get categorias {
    return Intl.message(
      'Categorias',
      name: 'categorias',
      args: [],
    );
  }

  /// `Selecione o tipo de serviço que você atende, Isto pode ser alterado mais tarde.`
  String get selecioneotipodeservicoquevoceatende {
    return Intl.message(
      'Selecione o tipo de serviço que você atende, Isto pode ser alterado mais tarde.',
      name: 'selecioneotipodeservicoquevoceatende',
      args: [],
    );
  }

  /// `Adicionar nova categoria`
  String get adicionarNovaCategoria {
    return Intl.message(
      'Adicionar nova categoria',
      name: 'adicionarNovaCategoria',
      args: [],
    );
  }

  /// `Meus Planos`
  String get meusPlanos {
    return Intl.message(
      'Meus Planos',
      name: 'meusPlanos',
      args: [],
    );
  }

  /// `Lista de planos`
  String get listadeplanos {
    return Intl.message(
      'Lista de planos',
      name: 'listadeplanos',
      args: [],
    );
  }

  /// `Você pode criar mais de uma categoria para prestar serviço`
  String get vocepodediacriarmaisdeumacategoria {
    return Intl.message(
      'Você pode criar mais de uma categoria para prestar serviço',
      name: 'vocepodediacriarmaisdeumacategoria',
      args: [],
    );
  }

  /// `Informações complementares`
  String get informacoescomplementares {
    return Intl.message(
      'Informações complementares',
      name: 'informacoescomplementares',
      args: [],
    );
  }

  /// `Para oferecermos um melhor servirço pedimos algumas informacoes adicionais`
  String get informacoescomplementaresadicionais {
    return Intl.message(
      'Para oferecermos um melhor servirço pedimos algumas informacoes adicionais',
      name: 'informacoescomplementaresadicionais',
      args: [],
    );
  }

  /// `Ir para meus planos`
  String get irparameusplanos {
    return Intl.message(
      'Ir para meus planos',
      name: 'irparameusplanos',
      args: [],
    );
  }

  /// `Agora, precisamos que você escolha um plano para iniciar os trabalhos.`
  String get agoraPrecisamosquevoceescolhaumplano {
    return Intl.message(
      'Agora, precisamos que você escolha um plano para iniciar os trabalhos.',
      name: 'agoraPrecisamosquevoceescolhaumplano',
      args: [],
    );
  }

  /// `Digite o nome do seu négocio`
  String get digiteonomedonegio {
    return Intl.message(
      'Digite o nome do seu négocio',
      name: 'digiteonomedonegio',
      args: [],
    );
  }

  /// `Digite seu CEP`
  String get digiteseucep {
    return Intl.message(
      'Digite seu CEP',
      name: 'digiteseucep',
      args: [],
    );
  }

  /// `Digite sua rua`
  String get digitesuarua {
    return Intl.message(
      'Digite sua rua',
      name: 'digitesuarua',
      args: [],
    );
  }

  /// `Número`
  String get numero {
    return Intl.message(
      'Número',
      name: 'numero',
      args: [],
    );
  }

  /// `Digite seu número`
  String get digiteseunumero {
    return Intl.message(
      'Digite seu número',
      name: 'digiteseunumero',
      args: [],
    );
  }

  /// `Digite seu complemento`
  String get digiteOComplemento {
    return Intl.message(
      'Digite seu complemento',
      name: 'digiteOComplemento',
      args: [],
    );
  }

  /// `Título do negócio`
  String get tituloDoNegcio {
    return Intl.message(
      'Título do negócio',
      name: 'tituloDoNegcio',
      args: [],
    );
  }

  /// `Título`
  String get titulo {
    return Intl.message(
      'Título',
      name: 'titulo',
      args: [],
    );
  }

  /// `Digite seu bairro`
  String get digiteseubairro {
    return Intl.message(
      'Digite seu bairro',
      name: 'digiteseubairro',
      args: [],
    );
  }

  /// `Digite sua cidade`
  String get digitesuacidade {
    return Intl.message(
      'Digite sua cidade',
      name: 'digitesuacidade',
      args: [],
    );
  }

  /// `Código de cadastro`
  String get codigodecadastro {
    return Intl.message(
      'Código de cadastro',
      name: 'codigodecadastro',
      args: [],
    );
  }

  /// `Enviamos um código de confirmação para seu e-mail`
  String get enviamosumcodigodeconfirmacaoparaseuemail {
    return Intl.message(
      'Enviamos um código de confirmação para seu e-mail',
      name: 'enviamosumcodigodeconfirmacaoparaseuemail',
      args: [],
    );
  }

  /// `Digite o seu telefone`
  String get oTelefoneNaoPodeFicarVazio {
    return Intl.message(
      'Digite o seu telefone',
      name: 'oTelefoneNaoPodeFicarVazio',
      args: [],
    );
  }

  /// `Certeza que quer deletar sua conta?\nIsso não poderá ser desfeito.`
  String get certezaQueQuerDeletarSuaContanissoNoPoderSerDesfeito {
    return Intl.message(
      'Certeza que quer deletar sua conta?\nIsso não poderá ser desfeito.',
      name: 'certezaQueQuerDeletarSuaContanissoNoPoderSerDesfeito',
      args: [],
    );
  }

  /// `Digite um tópico`
  String get digiteUmTpico {
    return Intl.message(
      'Digite um tópico',
      name: 'digiteUmTpico',
      args: [],
    );
  }

  /// `Digite um CPF válido.`
  String get digiteUmCpfVlido {
    return Intl.message(
      'Digite um CPF válido.',
      name: 'digiteUmCpfVlido',
      args: [],
    );
  }

  /// `O CPF não pode ser vazio.`
  String get oCpfNoPodeSerVazio {
    return Intl.message(
      'O CPF não pode ser vazio.',
      name: 'oCpfNoPodeSerVazio',
      args: [],
    );
  }

  /// `O campo CEP não pode ser vazio.`
  String get oCampoCepNoPodeSerVazio {
    return Intl.message(
      'O campo CEP não pode ser vazio.',
      name: 'oCampoCepNoPodeSerVazio',
      args: [],
    );
  }

  /// `O campo Bairro não pode ser vazio.`
  String get oCampoBairroNoPodeSerVazio {
    return Intl.message(
      'O campo Bairro não pode ser vazio.',
      name: 'oCampoBairroNoPodeSerVazio',
      args: [],
    );
  }

  /// `O campo Cidade não pode ser vazio.`
  String get oCampoCidadeNoPodeSerVazio {
    return Intl.message(
      'O campo Cidade não pode ser vazio.',
      name: 'oCampoCidadeNoPodeSerVazio',
      args: [],
    );
  }

  /// `Ver`
  String get view {
    return Intl.message(
      'Ver',
      name: 'view',
      args: [],
    );
  }

  /// `{howMany, plural, zero{} one{Mensagem} other{Mensagens}}`
  String messages(num howMany) {
    return Intl.plural(
      howMany,
      zero: '',
      one: 'Mensagem',
      other: 'Mensagens',
      name: 'messages',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, zero{Nenhuma conversa} one{{howMany} Conversa} other{{howMany} Conversas}}`
  String conversas(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'Nenhuma conversa',
      one: '$howMany Conversa',
      other: '$howMany Conversas',
      name: 'conversas',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, zero{Nenhuma conversa} one{{howMany} Conversa} other{{howMany} Conversas}}`
  String conversations(num howMany) {
    return Intl.plural(
      howMany,
      zero: 'No conversation',
      one: '$howMany conversation',
      other: '$howMany conversations',
      name: 'conversations',
      desc: '',
      args: [howMany],
    );
  }

  /// `Carro`
  String get carro {
    return Intl.message(
      'Carro',
      name: 'carro',
      args: [],
    );
  }

  /// `Aeronave`
  String get aeronave {
    return Intl.message(
      'Aeronave',
      name: 'aeronave',
      args: [],
    );
  }

  /// `Ver`
  String get ver {
    return Intl.message(
      'Ver',
      name: 'ver',
      args: [],
    );
  }

  /// `Pedidos de orçamento`
  String get pedidosDeOramento {
    return Intl.message(
      'Pedidos de orçamento',
      name: 'pedidosDeOramento',
      args: [],
    );
  }

  /// `Pedido {orderId}`
  String detalheDoPedido(Object orderId) {
    return Intl.message(
      'Pedido $orderId',
      name: 'detalheDoPedido',
      args: [orderId],
    );
  }

  /// `Ver detalhes`
  String get verDetalhes {
    return Intl.message(
      'Ver detalhes',
      name: 'verDetalhes',
      args: [],
    );
  }

  /// `assinar agora!`
  String get assinarAgora {
    return Intl.message(
      'assinar agora!',
      name: 'assinarAgora',
      args: [],
    );
  }

  /// `agora não`
  String get agoraNo {
    return Intl.message(
      'agora não',
      name: 'agoraNo',
      args: [],
    );
  }

  /// `Assine o plano Especialista para ter acesso à estatísticas, meta diária, seu concorrente e mais!`
  String get assineOPlanoEspecialistaParaTerAcessoEstatsticasMetaDiria {
    return Intl.message(
      'Assine o plano Especialista para ter acesso à estatísticas, meta diária, seu concorrente e mais!',
      name: 'assineOPlanoEspecialistaParaTerAcessoEstatsticasMetaDiria',
      args: [],
    );
  }

  /// `Exclusivo para\nplano Especialista`
  String get exclusivoParanplanoEspecialista {
    return Intl.message(
      'Exclusivo para\nplano Especialista',
      name: 'exclusivoParanplanoEspecialista',
      args: [],
    );
  }

  /// `Informações`
  String get informaes {
    return Intl.message(
      'Informações',
      name: 'informaes',
      args: [],
    );
  }

  /// `ENVIAR ORÇAMENTO`
  String get enviarOramento {
    return Intl.message(
      'ENVIAR ORÇAMENTO',
      name: 'enviarOramento',
      args: [],
    );
  }

  /// `Revise o orçamento e valores antes de envia-lo.`
  String get reviseOOramentoEValoresAntesDeEnvialo {
    return Intl.message(
      'Revise o orçamento e valores antes de envia-lo.',
      name: 'reviseOOramentoEValoresAntesDeEnvialo',
      args: [],
    );
  }

  /// `Preencha os serviços e valores`
  String get preenchaOsServiosEValores {
    return Intl.message(
      'Preencha os serviços e valores',
      name: 'preenchaOsServiosEValores',
      args: [],
    );
  }

  /// `PRÓXIMO PASSO`
  String get prximoPasso {
    return Intl.message(
      'PRÓXIMO PASSO',
      name: 'prximoPasso',
      args: [],
    );
  }

  /// `ADICIONAR ITEM`
  String get adicionarItem {
    return Intl.message(
      'ADICIONAR ITEM',
      name: 'adicionarItem',
      args: [],
    );
  }

  /// `Você pode anexar documentos, fotos ou vídeos em seu orçamento.`
  String get vocPodeAnexarDocumentosFotosOuVdeosEmSeuOramento {
    return Intl.message(
      'Você pode anexar documentos, fotos ou vídeos em seu orçamento.',
      name: 'vocPodeAnexarDocumentosFotosOuVdeosEmSeuOramento',
      args: [],
    );
  }

  /// `ENVIAR ARQUIVOS`
  String get enviarArquivos {
    return Intl.message(
      'ENVIAR ARQUIVOS',
      name: 'enviarArquivos',
      args: [],
    );
  }

  /// `PULAR ETAPA`
  String get pularEtapa {
    return Intl.message(
      'PULAR ETAPA',
      name: 'pularEtapa',
      args: [],
    );
  }

  /// `Acompanhe a resposta do seu cliente no seu menu “Serviços”.`
  String get acompanheARespostaDoSeuClienteNoSeuMenuServios {
    return Intl.message(
      'Acompanhe a resposta do seu cliente no seu menu “Serviços”.',
      name: 'acompanheARespostaDoSeuClienteNoSeuMenuServios',
      args: [],
    );
  }

  /// `Orçamento criado com sucesso!`
  String get oramentoCriadoComSucesso {
    return Intl.message(
      'Orçamento criado com sucesso!',
      name: 'oramentoCriadoComSucesso',
      args: [],
    );
  }

  /// `Serviço em andamento`
  String get serviceInProgress {
    return Intl.message(
      'Serviço em andamento',
      name: 'serviceInProgress',
      args: [],
    );
  }

  /// `Serviço`
  String get service {
    return Intl.message(
      'Serviço',
      name: 'service',
      args: [],
    );
  }

  /// `Editar orçamento e reenviar`
  String get editarOrcamentoeReenviar {
    return Intl.message(
      'Editar orçamento e reenviar',
      name: 'editarOrcamentoeReenviar',
      args: [],
    );
  }

  /// `Ligar para cliente`
  String get ligarParaCliente {
    return Intl.message(
      'Ligar para cliente',
      name: 'ligarParaCliente',
      args: [],
    );
  }

  /// `Ligar`
  String get call {
    return Intl.message(
      'Ligar',
      name: 'call',
      args: [],
    );
  }

  /// `Verifique o seu perfil`
  String get verifiqueOSeuPerfil {
    return Intl.message(
      'Verifique o seu perfil',
      name: 'verifiqueOSeuPerfil',
      args: [],
    );
  }

  /// `A verificação garante uma melhor chance de contratação ao trazer mais segurança para seu cliente.`
  String get aVerificaoGaranteUmaMelhorChanceDeContrataoAoTrazer {
    return Intl.message(
      'A verificação garante uma melhor chance de contratação ao trazer mais segurança para seu cliente.',
      name: 'aVerificaoGaranteUmaMelhorChanceDeContrataoAoTrazer',
      args: [],
    );
  }

  /// `VERIFICAR AGORA`
  String get verificarAgora {
    return Intl.message(
      'VERIFICAR AGORA',
      name: 'verificarAgora',
      args: [],
    );
  }

  /// `Cancelar plano`
  String get cancelarPlano {
    return Intl.message(
      'Cancelar plano',
      name: 'cancelarPlano',
      args: [],
    );
  }

  /// `Editar serviços`
  String get editarServios {
    return Intl.message(
      'Editar serviços',
      name: 'editarServios',
      args: [],
    );
  }

  /// `Editar plano`
  String get editarPlano {
    return Intl.message(
      'Editar plano',
      name: 'editarPlano',
      args: [],
    );
  }

  /// `Meus Serviços`
  String get meusServicos {
    return Intl.message(
      'Meus Serviços',
      name: 'meusServicos',
      args: [],
    );
  }

  /// `mês`
  String get mes {
    return Intl.message(
      'mês',
      name: 'mes',
      args: [],
    );
  }

  /// `Total mensal: R${price}`
  String totalMensal(Object price) {
    return Intl.message(
      'Total mensal: R\$$price',
      name: 'totalMensal',
      args: [price],
    );
  }

  /// `Confira nossos planos!`
  String get confiraNossosPlanos {
    return Intl.message(
      'Confira nossos planos!',
      name: 'confiraNossosPlanos',
      args: [],
    );
  }

  /// `Você poderá editar o plano adicionado a qualquer momento no seu menu.`
  String get vocePodeAlterarSeuPlano {
    return Intl.message(
      'Você poderá editar o plano adicionado a qualquer momento no seu menu.',
      name: 'vocePodeAlterarSeuPlano',
      args: [],
    );
  }

  /// `Com a assinatura de um de nossos planos você ganha a verificação de perfil, além de aproveitar as vantagens exclusivas para assinantes!`
  String get comAAssinaturaDeUmDeNossosPlanosVocGanha {
    return Intl.message(
      'Com a assinatura de um de nossos planos você ganha a verificação de perfil, além de aproveitar as vantagens exclusivas para assinantes!',
      name: 'comAAssinaturaDeUmDeNossosPlanosVocGanha',
      args: [],
    );
  }

  /// `Com a verificação de perfil você conquista a confiança de seus potenciais clientes, aumentando suas chances de fechar negócio.`
  String get comAVerificaoDePerfilVocConquistaAConfianaDe {
    return Intl.message(
      'Com a verificação de perfil você conquista a confiança de seus potenciais clientes, aumentando suas chances de fechar negócio.',
      name: 'comAVerificaoDePerfilVocConquistaAConfianaDe',
      args: [],
    );
  }

  /// `APENAS`
  String get apenas {
    return Intl.message(
      'APENAS',
      name: 'apenas',
      args: [],
    );
  }

  /// `{distance} km da sua localização`
  String distanciaDaSuaLocalizacao(Object distance) {
    return Intl.message(
      '$distance km da sua localização',
      name: 'distanciaDaSuaLocalizacao',
      args: [distance],
    );
  }

  /// `Verificar perfil`
  String get verificarPerfil {
    return Intl.message(
      'Verificar perfil',
      name: 'verificarPerfil',
      args: [],
    );
  }

  /// `Verificação de Perfil`
  String get verificaoDePerfil {
    return Intl.message(
      'Verificação de Perfil',
      name: 'verificaoDePerfil',
      args: [],
    );
  }

  /// `Plano adicionado!`
  String get planoAdicionado {
    return Intl.message(
      'Plano adicionado!',
      name: 'planoAdicionado',
      args: [],
    );
  }

  /// `Planos`
  String get planos {
    return Intl.message(
      'Planos',
      name: 'planos',
      args: [],
    );
  }

  /// `e`
  String get e {
    return Intl.message(
      'e',
      name: 'e',
      args: [],
    );
  }

  /// `Adicione ou remova os serviços que você atende.`
  String get adicioneOuRemovaOsServiosQueVocAtende {
    return Intl.message(
      'Adicione ou remova os serviços que você atende.',
      name: 'adicioneOuRemovaOsServiosQueVocAtende',
      args: [],
    );
  }

  /// `Negócio`
  String get negcio {
    return Intl.message(
      'Negócio',
      name: 'negcio',
      args: [],
    );
  }

  /// `Atualizar endereço`
  String get atualizarEndereo {
    return Intl.message(
      'Atualizar endereço',
      name: 'atualizarEndereo',
      args: [],
    );
  }

  /// `criar orçamento`
  String get criarOramento {
    return Intl.message(
      'criar orçamento',
      name: 'criarOramento',
      args: [],
    );
  }

  /// `Você só pode selecionar no máximo 6 imagens`
  String get vocSPodeSelecionarNoMximo6Imagens {
    return Intl.message(
      'Você só pode selecionar no máximo 6 imagens',
      name: 'vocSPodeSelecionarNoMximo6Imagens',
      args: [],
    );
  }

  /// `recusar solicitação`
  String get recusarSolicitao {
    return Intl.message(
      'recusar solicitação',
      name: 'recusarSolicitao',
      args: [],
    );
  }

  /// `A verificação de documentos é feita de modo automatizado e o novo status de seu perfil será atualizado automaticamente assim que o processo for concluído com sucesso pelo sistema.`
  String get aVerificaoDeDocumentosFeitaDeModoAutomatizadoEO {
    return Intl.message(
      'A verificação de documentos é feita de modo automatizado e o novo status de seu perfil será atualizado automaticamente assim que o processo for concluído com sucesso pelo sistema.',
      name: 'aVerificaoDeDocumentosFeitaDeModoAutomatizadoEO',
      args: [],
    );
  }

  /// `Estatísticas de orçamento`
  String get estatsticasDeOramento {
    return Intl.message(
      'Estatísticas de orçamento',
      name: 'estatsticasDeOramento',
      args: [],
    );
  }

  /// `Recusados`
  String get recusados {
    return Intl.message(
      'Recusados',
      name: 'recusados',
      args: [],
    );
  }

  /// `Aprovados`
  String get aprovados {
    return Intl.message(
      'Aprovados',
      name: 'aprovados',
      args: [],
    );
  }

  /// `Respondidos`
  String get respondidos {
    return Intl.message(
      'Respondidos',
      name: 'respondidos',
      args: [],
    );
  }

  /// `º lugar`
  String get lugar {
    return Intl.message(
      'º lugar',
      name: 'lugar',
      args: [],
    );
  }

  /// `Posição atual na sua cidade`
  String get posioAtualNaSuaCidade {
    return Intl.message(
      'Posição atual na sua cidade',
      name: 'posioAtualNaSuaCidade',
      args: [],
    );
  }

  /// `Média geral`
  String get mdiaGeral {
    return Intl.message(
      'Média geral',
      name: 'mdiaGeral',
      args: [],
    );
  }

  /// `Meta diária`
  String get metaDiria {
    return Intl.message(
      'Meta diária',
      name: 'metaDiria',
      args: [],
    );
  }

  /// `https://www.quemconserta.com/politica-de-privacidade`
  String get privacyPolicyUrl {
    return Intl.message(
      'https://www.quemconserta.com/politica-de-privacidade',
      name: 'privacyPolicyUrl',
      args: [],
    );
  }

  /// `https://www.quemconserta.com/termos-de-uso`
  String get termsOfUseUrl {
    return Intl.message(
      'https://www.quemconserta.com/termos-de-uso',
      name: 'termsOfUseUrl',
      args: [],
    );
  }

  /// `orçamentos aceitos`
  String get oramentosAceitos {
    return Intl.message(
      'orçamentos aceitos',
      name: 'oramentosAceitos',
      args: [],
    );
  }

  /// `orçamentos aprovados`
  String get oramentosAprovados {
    return Intl.message(
      'orçamentos aprovados',
      name: 'oramentosAprovados',
      args: [],
    );
  }

  /// `Faça a verificação do seu perfil`
  String get faaAVerificaoDoSeuPerfil {
    return Intl.message(
      'Faça a verificação do seu perfil',
      name: 'faaAVerificaoDoSeuPerfil',
      args: [],
    );
  }

  /// `Meta do dia`
  String get metaDoDia {
    return Intl.message(
      'Meta do dia',
      name: 'metaDoDia',
      args: [],
    );
  }

  /// `Minhas avaliações`
  String get minhasAvaliaes {
    return Intl.message(
      'Minhas avaliações',
      name: 'minhasAvaliaes',
      args: [],
    );
  }

  /// `Minha concorrência`
  String get minhaConcorrncia {
    return Intl.message(
      'Minha concorrência',
      name: 'minhaConcorrncia',
      args: [],
    );
  }

  /// `cancelar`
  String get cancelar {
    return Intl.message(
      'cancelar',
      name: 'cancelar',
      args: [],
    );
  }

  /// `Conectando novos clientes ao seu negócio.`
  String get conectandoNovosClientesAoSeuNegcio {
    return Intl.message(
      'Conectando novos clientes ao seu negócio.',
      name: 'conectandoNovosClientesAoSeuNegcio',
      args: [],
    );
  }

  /// `Conquiste novos clientes`
  String get conquisteNovosClientes {
    return Intl.message(
      'Conquiste novos clientes',
      name: 'conquisteNovosClientes',
      args: [],
    );
  }

  /// `Aumente sua presença Online e seja visto por quem realmento precisa, na hora certa.`
  String get aumenteSuaPresenaOnlineESejaVistoPorQuemRealmento {
    return Intl.message(
      'Aumente sua presença Online e seja visto por quem realmento precisa, na hora certa.',
      name: 'aumenteSuaPresenaOnlineESejaVistoPorQuemRealmento',
      args: [],
    );
  }

  /// `Performance`
  String get performance {
    return Intl.message(
      'Performance',
      name: 'performance',
      args: [],
    );
  }

  /// `Tenha uma ferramenta para avaliar sua performance e melhorar seu negócio.`
  String get tenhaUmaFerramentaParaAvaliarSuaPerformanceEMelhorarSeu {
    return Intl.message(
      'Tenha uma ferramenta para avaliar sua performance e melhorar seu negócio.',
      name: 'tenhaUmaFerramentaParaAvaliarSuaPerformanceEMelhorarSeu',
      args: [],
    );
  }

  /// `Carregando`
  String get carregando {
    return Intl.message(
      'Carregando',
      name: 'carregando',
      args: [],
    );
  }

  /// `Selecionar todas`
  String get selecionarTodas {
    return Intl.message(
      'Selecionar todas',
      name: 'selecionarTodas',
      args: [],
    );
  }

  /// `Verificação do perfil`
  String get verificacaoDoPerfil {
    return Intl.message(
      'Verificação do perfil',
      name: 'verificacaoDoPerfil',
      args: [],
    );
  }

  /// `A descrição do Orçamento não pode estar vazia!`
  String get aDescricaoDoOrcamentoNaoPodeEstarVazia {
    return Intl.message(
      'A descrição do Orçamento não pode estar vazia!',
      name: 'aDescricaoDoOrcamentoNaoPodeEstarVazia',
      args: [],
    );
  }

  /// `A descrição do serviço não pode estar vazia!`
  String get aDescricaoDoServicoNaoPodeEstarVazia {
    return Intl.message(
      'A descrição do serviço não pode estar vazia!',
      name: 'aDescricaoDoServicoNaoPodeEstarVazia',
      args: [],
    );
  }

  /// `O preço do orçamento não pode estar vazio!`
  String get oPrecoDoOrcamentoNaoPodeEstarVazio {
    return Intl.message(
      'O preço do orçamento não pode estar vazio!',
      name: 'oPrecoDoOrcamentoNaoPodeEstarVazio',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
