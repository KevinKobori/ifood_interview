import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef MessageIfAbsent = String Function(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'pt_BR';

  static String m0(num howMany) =>
      Intl.plural(howMany, zero: 'Nenhum orçamento', one: '(1) Orçamento', other: '($howMany) Orçamentos');

  static String m1(num howMany) =>
      Intl.plural(howMany, zero: 'Nenhum orçamento enviado', one: '(1) Orçamento Enviado', other: '($howMany) Orçamentos Enviados');

  static String m2(hourAndMinute, date) =>
      "Chat iniciado às $hourAndMinute - $date";

  static String m3(name) => "Como foi o serviço com $name?";

  static String m4(num howMany) =>
      Intl.plural(howMany, zero: 'Nenhuma conversa', one: '$howMany Conversa', other: '$howMany Conversas');

  static String m5(date) => "Criado em $date";

  static String m6(date) => "Criado em $date";

  static String m7(orderId) => "Pedido $orderId";

  static String m8(distance) => "$distance km";

  static String m9(distance) => "$distance km da sua localização";

  static String m10(num howMany) =>
      Intl.plural(howMany, zero: '', one: 'Mensagem', other: 'Mensagens');

  static String m11(appName) =>
      "Obrigado por usar o $appName. Esperamos que tenha sido uma ótima experiência.";

  static String m12(num howMany) =>
      Intl.plural(howMany, zero: 'Nenhum orçamento', one: '(1) orçamento', other: '($howMany) orçamentos');

  static String m13(num howMany) => "+$howMany orçamentos";

  // static String m14(user) => "Olá, ${user}";

  static String m15(num howMany) =>
      Intl.plural(howMany, zero: '', one: 'Selecionado (1)', other: ' Selecionados ($howMany)');

  static String m16(num howMany) =>
      Intl.plural(howMany, zero: 'Nenhum serviço', one: '1 serviço', other: '$howMany serviços');

  static String m17(price) => "Total mensal: R\$$price";

  static String m18(version) => "Versão do App $version";

  @override
  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aSenhaDeveConterAoMenosUmCaractereMaisculoNmero":
            MessageLookupByLibrary.simpleMessage(
                "* A senha deve conter caractere maiúsculo, número e caractere especial."),
        "aSenhaDeveConterNoMnimo6Caracteres":
            MessageLookupByLibrary.simpleMessage(
                "* A senha deve conter no mínimo 6 caracteres."),
        "aSenhaInformadaNoAtendeAosRequisitosDeSegurana":
            MessageLookupByLibrary.simpleMessage(
                "A senha informada não atende aos requisitos de segurança."),
        "aSenhaNoPodeSerVazia":
            MessageLookupByLibrary.simpleMessage("A senha não pode ser vazia."),
        "aVerificaoDeDocumentosFeitaDeModoAutomatizadoEO":
            MessageLookupByLibrary.simpleMessage(
                "A verificação de documentos é feita de modo automatizado e o novo status de seu perfil será atualizado automaticamente assim que o processo for concluído com sucesso pelo sistema."),
        "aVerificaoGaranteUmaMelhorChanceDeContrataoAoTrazer":
            MessageLookupByLibrary.simpleMessage(
                "A verificação garante uma melhor chance de contratação ao trazer mais segurança para seu cliente."),
        "aceitar": MessageLookupByLibrary.simpleMessage("Aceitar"),
        "acompanheARespostaDoSeuClienteNoSeuMenuServios":
            MessageLookupByLibrary.simpleMessage(
                "Acompanhe a resposta do seu cliente no seu menu “Serviços”."),
        "adicionarEndereo":
            MessageLookupByLibrary.simpleMessage("Adicionar endereço"),
        "adicionarItem": MessageLookupByLibrary.simpleMessage("ADICIONAR ITEM"),
        "adicionarNovaCategoria":
            MessageLookupByLibrary.simpleMessage("Adicionar nova categoria"),
        "adicioneOuRemovaOsServiosQueVocAtende":
            MessageLookupByLibrary.simpleMessage(
                "Adicione ou remova os serviços que você atende."),
        "adicioneonumerodoseunegocio": MessageLookupByLibrary.simpleMessage(
            "Adicione o endereço do seu\nnegócio/empresa"),
        "aeronave": MessageLookupByLibrary.simpleMessage("Aeronave"),
        "aeronaves": MessageLookupByLibrary.simpleMessage("Aeronaves"),
        "agoraNo": MessageLookupByLibrary.simpleMessage("agora não"),
        "agoraPrecisamosquevoceescolhaumplano":
            MessageLookupByLibrary.simpleMessage(
                "Agora, precisamos que você escolha um plano para iniciar os trabalhos."),
        "aguardandoResposta":
            MessageLookupByLibrary.simpleMessage("AGUARDANDO RESPOSTA"),
        "aguardandoSuaAprovao":
            MessageLookupByLibrary.simpleMessage("Aguardando sua aprovação"),
        "aguardeOsOramentosDosTcnicosQueVocSelecionou":
            MessageLookupByLibrary.simpleMessage(
                "Aguarde os orçamentos dos técnicos que você selecionou."),
        "aindaNoExistemComentriosSobreEsseProfissional":
            MessageLookupByLibrary.simpleMessage(
                "Ainda não existem comentários sobre esse profissional."),
        "aindaNoExistemOramentosParaEssaSolicitaoTalvezEmAlguns":
            MessageLookupByLibrary.simpleMessage(
                "Ainda não existem orçamentos para essa solicitação. Talvez em alguns instantes."),
        "alteraoDeEmail":
            MessageLookupByLibrary.simpleMessage("Alteração de e-mail"),
        "alterarEmail": MessageLookupByLibrary.simpleMessage("Alterar e-mail"),
        "anexos": MessageLookupByLibrary.simpleMessage("Anexos"),
        "apenas": MessageLookupByLibrary.simpleMessage("APENAS"),
        "aplicar": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "appName": MessageLookupByLibrary.simpleMessage("Quem Conserta"),
        "aprovados": MessageLookupByLibrary.simpleMessage("Aprovados"),
        "aptoBloco": MessageLookupByLibrary.simpleMessage("Apto, bloco..."),
        "arquivos": MessageLookupByLibrary.simpleMessage("Arquivos"),
        "asSenhasNoCoincidem":
            MessageLookupByLibrary.simpleMessage("As senhas não coincidem."),
        "assinarAgora": MessageLookupByLibrary.simpleMessage("assinar agora!"),
        "assineOPlanoEspecialistaParaTerAcessoEstatsticasMetaDiria":
            MessageLookupByLibrary.simpleMessage(
                "Assine o plano Especialista para ter acesso à estatísticas, meta diária, seu concorrente e mais!"),
        "atualizarEndereo":
            MessageLookupByLibrary.simpleMessage("Atualizar endereço"),
        "aumenteSuaPresenaOnlineESejaVistoPorQuemRealmento":
            MessageLookupByLibrary.simpleMessage(
                "Aumente sua presença Online e seja visto por quem realmento precisa, na hora certa."),
        "autorizaoNegadaTenteNovamenteOuVerifiqueSeuLogin":
            MessageLookupByLibrary.simpleMessage(
                "Autorização negada, Tente novamente ou verifique seu login."),
        "avaliaoEnviada":
            MessageLookupByLibrary.simpleMessage("Avaliação enviada"),
        "avaliarServio":
            MessageLookupByLibrary.simpleMessage("Avaliar serviço"),
        "avanar": MessageLookupByLibrary.simpleMessage("Avançar"),
        "bairro": MessageLookupByLibrary.simpleMessage("Bairro"),
        "botoOutline": MessageLookupByLibrary.simpleMessage("Botão outline"),
        "botoPontilhado":
            MessageLookupByLibrary.simpleMessage("Botão pontilhado"),
        "botoPrincipal":
            MessageLookupByLibrary.simpleMessage("Botão principal"),
        "budgetsCount": m0,
        "budgetsSentCount": m1,
        "buscarTcnicos":
            MessageLookupByLibrary.simpleMessage("Buscar técnicos"),
        "cadastrar": MessageLookupByLibrary.simpleMessage("Cadastrar"),
        "cadastrese": MessageLookupByLibrary.simpleMessage("CADASTRE-SE"),
        "cadastro": MessageLookupByLibrary.simpleMessage("Cadastro"),
        "cadastroRealizadoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Cadastro realizado com sucesso!"),
        "call": MessageLookupByLibrary.simpleMessage("Ligar"),
        "cancelado": MessageLookupByLibrary.simpleMessage("CANCELADO"),
        "cancelar": MessageLookupByLibrary.simpleMessage("cancelar"),
        "cancelarPlano": MessageLookupByLibrary.simpleMessage("Cancelar plano"),
        "cancelarServio":
            MessageLookupByLibrary.simpleMessage("Cancelar Serviço"),
        "carregando": MessageLookupByLibrary.simpleMessage("Carregando..."),
        "carro": MessageLookupByLibrary.simpleMessage("Carro"),
        "carros": MessageLookupByLibrary.simpleMessage("Carros"),
        "casaEEletrodomsticos":
            MessageLookupByLibrary.simpleMessage("Casa e Eletrodomésticos"),
        "casaTrabalho":
            MessageLookupByLibrary.simpleMessage("Casa, Trabalho..."),
        "categorias": MessageLookupByLibrary.simpleMessage("Categorias"),
        "cep": MessageLookupByLibrary.simpleMessage("CEP"),
        "certezaQueQuerDeletarSuaContanissoNoPoderSerDesfeito":
            MessageLookupByLibrary.simpleMessage(
                "Certeza que quer deletar sua conta?\nIsso não poderá ser desfeito."),
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chats": MessageLookupByLibrary.simpleMessage("Chats"),
        "chatIniciadoAs": m2,
        "cidade": MessageLookupByLibrary.simpleMessage("Cidade"),
        "cmera": MessageLookupByLibrary.simpleMessage("Câmera"),
        "codigodecadastro":
            MessageLookupByLibrary.simpleMessage("Código de cadastro"),
        "comAAssinaturaDeUmDeNossosPlanosVocGanha":
            MessageLookupByLibrary.simpleMessage(
                "Com a assinatura de um de nossos planos você ganha a verificação de perfil, além de aproveitar as vantagens exclusivas para assinantes!"),
        "comAVerificaoDePerfilVocConquistaAConfianaDe":
            MessageLookupByLibrary.simpleMessage(
                "Com a verificação de perfil você conquista a confiança de seus potenciais clientes, aumentando suas chances de fechar negócio."),
        "comentrio": MessageLookupByLibrary.simpleMessage("Comentário..."),
        "comentrios": MessageLookupByLibrary.simpleMessage("Comentários"),
        "comoFoiOServioCom": m3,
        "complemento": MessageLookupByLibrary.simpleMessage("Complemento"),
        "concludo": MessageLookupByLibrary.simpleMessage("CONCLUÍDO"),
        "conectandoNovosClientesAoSeuNegcio":
            MessageLookupByLibrary.simpleMessage(
                "Conectando novos clientes ao seu negócio."),
        "configuraes": MessageLookupByLibrary.simpleMessage("Configurações"),
        "confiraNossosPlanos":
            MessageLookupByLibrary.simpleMessage("Confira nossos planos!"),
        "confiraSeuEmailEnviamosUmNovoCdigoParaVoc":
            MessageLookupByLibrary.simpleMessage(
                "Confira seu e-mail. Enviamos um novo código para você."),
        "confiraSeusDadosComplementeInformacoes":
            MessageLookupByLibrary.simpleMessage(
                "Confira seus dados e complemente\nas informações"),
        "confirmar": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "confirmarNovoEmail":
            MessageLookupByLibrary.simpleMessage("Confirmar novo e-mail"),
        "confirmarSenha":
            MessageLookupByLibrary.simpleMessage("Confirmar senha"),
        "confirmeSeuNovoEmail":
            MessageLookupByLibrary.simpleMessage("Confirme seu novo e-mail"),
        "conquisteNovosClientes":
            MessageLookupByLibrary.simpleMessage("Conquiste novos clientes"),
        "conversas": m4,
        "convideSeusAmigosAgoraMesmo": MessageLookupByLibrary.simpleMessage(
            "Convide seus amigos agora mesmo"),
        "cpf": MessageLookupByLibrary.simpleMessage("CPF"),
        "createdAt": m5,
        "criadoEm": m6,
        "criarOramento":
            MessageLookupByLibrary.simpleMessage("criar orçamento"),
        "criarOrcamento":
            MessageLookupByLibrary.simpleMessage("Criar orçamento"),
        "criarconta": MessageLookupByLibrary.simpleMessage("criar conta"),
        "crieUmaSenha": MessageLookupByLibrary.simpleMessage("Crie uma senha"),
        "currencySymbol": MessageLookupByLibrary.simpleMessage("R\$"),
        "datePattern": MessageLookupByLibrary.simpleMessage("dd/MM/yyyy"),
        "deletar": MessageLookupByLibrary.simpleMessage("Deletar"),
        "deletarMinhaConta":
            MessageLookupByLibrary.simpleMessage("Deletar minha conta"),
        "descrevaSeuProblema": MessageLookupByLibrary.simpleMessage(
            "Descreva seu problema ou serviço"),
        "descrio": MessageLookupByLibrary.simpleMessage("Descrição"),
        "desejaDeletarSuaConta":
            MessageLookupByLibrary.simpleMessage("Deseja deletar sua conta?"),
        "detalheDoPedido": m7,
        "detalhes": MessageLookupByLibrary.simpleMessage("Detalhes"),
        "detalhesDoOramento":
            MessageLookupByLibrary.simpleMessage("Detalhes do orçamento"),
        "detalhesDoServio":
            MessageLookupByLibrary.simpleMessage("Detalhes do serviço"),
        "detalhesDoTcnico":
            MessageLookupByLibrary.simpleMessage("Detalhes do técnico"),
        "digiteAquiSeuEndereo":
            MessageLookupByLibrary.simpleMessage("Digite aqui seu endereço"),
        "digiteNome": MessageLookupByLibrary.simpleMessage("Digite seu nome"),
        "digiteOComplemento":
            MessageLookupByLibrary.simpleMessage("Digite seu complemento"),
        "digiteSeuEmail":
            MessageLookupByLibrary.simpleMessage("Digite seu email"),
        "digiteSeuNomeCompleto":
            MessageLookupByLibrary.simpleMessage("Digite seu nome completo"),
        "digiteSeuTelefone":
            MessageLookupByLibrary.simpleMessage("Digite seu telefone"),
        "digiteSuaSenha":
            MessageLookupByLibrary.simpleMessage("Digite sua senha"),
        "digiteTelefone":
            MessageLookupByLibrary.simpleMessage("Digite seu telefone"),
        "digiteUmCpfVlido":
            MessageLookupByLibrary.simpleMessage("Digite um CPF válido."),
        "digiteUmEmailVlido":
            MessageLookupByLibrary.simpleMessage("Digite um e-mail válido."),
        "digiteUmTelefoneValido":
            MessageLookupByLibrary.simpleMessage("Digite um telefone válido"),
        "digiteUmTpico":
            MessageLookupByLibrary.simpleMessage("Digite um tópico"),
        "digiteonomedonegio": MessageLookupByLibrary.simpleMessage(
            "Digite o nome do seu négocio"),
        "digiteseubairro":
            MessageLookupByLibrary.simpleMessage("Digite seu bairro"),
        "digiteseucep": MessageLookupByLibrary.simpleMessage("Digite seu CEP"),
        "digiteseucpf": MessageLookupByLibrary.simpleMessage("Digite seu CPF"),
        "digiteseunumero":
            MessageLookupByLibrary.simpleMessage("Digite seu número"),
        "digitesuacidade":
            MessageLookupByLibrary.simpleMessage("Digite sua cidade"),
        "digitesuarua": MessageLookupByLibrary.simpleMessage("Digite sua rua"),
        "distanceValue": m8,
        "distanciaDaSuaLocalizacao": m9,
        "distncia": MessageLookupByLibrary.simpleMessage("Distância"),
        "e": MessageLookupByLibrary.simpleMessage("e"),
        "editar": MessageLookupByLibrary.simpleMessage("Editar"),
        "editarOrcamentoeReenviar":
            MessageLookupByLibrary.simpleMessage("Editar orçamento e reenviar"),
        "editarPlano": MessageLookupByLibrary.simpleMessage("Editar plano"),
        "editarServios":
            MessageLookupByLibrary.simpleMessage("Editar serviços"),
        "eletrnicos": MessageLookupByLibrary.simpleMessage("Eletrônicos"),
        "emAndamento": MessageLookupByLibrary.simpleMessage("Em andamento"),
        "emBreveOsServiosFinalizadosOuCanceladosSeroListadosAqui":
            MessageLookupByLibrary.simpleMessage(
                "Em breve os serviços finalizados ou cancelados serão listados aqui"),
        "emCotacao": MessageLookupByLibrary.simpleMessage("Em cotação"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "encontramosAlgunsProfissionaisQuePodemTeAjudar":
            MessageLookupByLibrary.simpleMessage(
                "Encontramos alguns profissionais que podem te ajudar."),
        "enderecos": MessageLookupByLibrary.simpleMessage("Endereços"),
        "endereo": MessageLookupByLibrary.simpleMessage("Endereço"),
        "endereoCadastrado":
            MessageLookupByLibrary.simpleMessage("Endereço cadastrado"),
        "endereoRemovidoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Endereço removido com sucesso."),
        "entendi": MessageLookupByLibrary.simpleMessage("Entendi"),
        "entrar": MessageLookupByLibrary.simpleMessage("Entrar"),
        "entrarCom": MessageLookupByLibrary.simpleMessage("Entrar com:"),
        "entrarComEmail":
            MessageLookupByLibrary.simpleMessage("Entrar com e-mail"),
        "entraremosEmContatoComVocEmBreve":
            MessageLookupByLibrary.simpleMessage(
                "Entraremos em contato com você em breve."),
        "entreEmContatoConoscoQueVamosTeAtenderDaMelhor":
            MessageLookupByLibrary.simpleMessage(
                "Entre em contato conosco que vamos te atender da melhor forma possível"),
        "enviadoPor": MessageLookupByLibrary.simpleMessage("Enviado por"),
        "enviamosumcodigodeconfirmacaoparaseuemail":
            MessageLookupByLibrary.simpleMessage(
                "Enviamos um código de confirmação para seu e-mail"),
        "enviar": MessageLookupByLibrary.simpleMessage("Enviar"),
        "enviarArquivos":
            MessageLookupByLibrary.simpleMessage("ENVIAR ARQUIVOS"),
        "enviarAvaliao":
            MessageLookupByLibrary.simpleMessage("Enviar Avaliação"),
        "enviarConvite": MessageLookupByLibrary.simpleMessage("Enviar convite"),
        "enviarFotoOuVdeo":
            MessageLookupByLibrary.simpleMessage("Enviar foto ou vídeo"),
        "enviarMensagem":
            MessageLookupByLibrary.simpleMessage("Enviar mensagem"),
        "enviarOramento":
            MessageLookupByLibrary.simpleMessage("ENVIAR ORÇAMENTO"),
        "enviarSolicitao":
            MessageLookupByLibrary.simpleMessage("Enviar Solicitação"),
        "erroInesperado":
            MessageLookupByLibrary.simpleMessage("Erro inesperado"),
        "erroInternoDoServidor":
            MessageLookupByLibrary.simpleMessage("Erro interno do servidor"),
        "erroNaRequisioTenteNovamente": MessageLookupByLibrary.simpleMessage(
            "Erro na requisição, tente novamente"),
        "escreverMensagem":
            MessageLookupByLibrary.simpleMessage("Escrever mensagem..."),
        "especialista": MessageLookupByLibrary.simpleMessage("Especialista"),
        "especialistas": MessageLookupByLibrary.simpleMessage("Especialistas"),
        "esqueceuASenha":
            MessageLookupByLibrary.simpleMessage("Esqueceu a senha?"),
        "esqueceuSuaSenha":
            MessageLookupByLibrary.simpleMessage("ESQUECEU SUA SENHA"),
        "estamosBuscandoOsMelhoresProfissionais":
            MessageLookupByLibrary.simpleMessage(
                "Estamos buscando os melhores profissionais..."),
        "estatsticasDeOramento":
            MessageLookupByLibrary.simpleMessage("Estatísticas de orçamento"),
        "exclusivoParanplanoEspecialista": MessageLookupByLibrary.simpleMessage(
            "Exclusivo para\nplano Especialista"),
        "faaAVerificaoDoSeuPerfil": MessageLookupByLibrary.simpleMessage(
            "Faça a verificação do seu perfil"),
        "facebook": MessageLookupByLibrary.simpleMessage("FACEBOOK"),
        "faleConosco": MessageLookupByLibrary.simpleMessage("Fale Conosco"),
        "falhaDeConexoVerifiqueSuaInternet":
            MessageLookupByLibrary.simpleMessage(
                "Falha de conexão, verifique sua internet"),
        "filtrar": MessageLookupByLibrary.simpleMessage("Filtrar"),
        "finalizarServio":
            MessageLookupByLibrary.simpleMessage("Finalizar Serviço"),
        "finalzarServio":
            MessageLookupByLibrary.simpleMessage("Finalizar Serviço"),
        "fotos": MessageLookupByLibrary.simpleMessage("Fotos"),
        "galeria": MessageLookupByLibrary.simpleMessage("Galeria"),
        "google": MessageLookupByLibrary.simpleMessage("GOOGLE"),
        "gostariaDeNosEnviarFotosOuVdeosParaMelhorDescrever":
            MessageLookupByLibrary.simpleMessage(
                "Gostaria de nos enviar fotos ou vídeos para melhor descrever seu serviço?"),
        "habilitarServiosDeLocalizao": MessageLookupByLibrary.simpleMessage(
            "Habilitar serviços de localização"),
        "histrico": MessageLookupByLibrary.simpleMessage("Histórico"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "imagem": MessageLookupByLibrary.simpleMessage("Imagem"),
        "informacoescomplementares":
            MessageLookupByLibrary.simpleMessage("Informações complementares"),
        "informacoescomplementaresadicionais": MessageLookupByLibrary.simpleMessage(
            "Para oferecermos um melhor servirço pedimos algumas informacoes adicionais"),
        "informaes": MessageLookupByLibrary.simpleMessage("Informações"),
        "informeDetalhesSobreOProblema": MessageLookupByLibrary.simpleMessage(
            "Informe detalhes sobre o serviço..."),
        "informeSeuNovoEmail":
            MessageLookupByLibrary.simpleMessage("Informe seu novo e-mail"),
        "insiraOCdigoEnviadoParaOSeuEmail":
            MessageLookupByLibrary.simpleMessage(
                "Insira o código enviado para o seu e-mail"),
        "irparameusplanos":
            MessageLookupByLibrary.simpleMessage("Ir para meus planos"),
        "ligarParaCliente":
            MessageLookupByLibrary.simpleMessage("Ligar para cliente"),
        "limparFiltro": MessageLookupByLibrary.simpleMessage("Limpar Filtro"),
        "listadeplanos":
            MessageLookupByLibrary.simpleMessage("Lista de planos"),
        "loginOptionsScreenMessage": MessageLookupByLibrary.simpleMessage(
            "Conectando novos clientes ao seu negócio."),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "lugar": MessageLookupByLibrary.simpleMessage("º lugar"),
        "maiorAvaliao": MessageLookupByLibrary.simpleMessage("Maior avaliação"),
        "maiorValor": MessageLookupByLibrary.simpleMessage("Maior valor"),
        "mais": MessageLookupByLibrary.simpleMessage("Mais"),
        "maisAntigo": MessageLookupByLibrary.simpleMessage("Mais antigo"),
        "maisDistante": MessageLookupByLibrary.simpleMessage("Mais distante"),
        "maisPrximo": MessageLookupByLibrary.simpleMessage("Mais próximo"),
        "maisRecente": MessageLookupByLibrary.simpleMessage("Mais recente"),
        "marcaDoVeculo":
            MessageLookupByLibrary.simpleMessage("Marca do veículo"),
        "mdia": MessageLookupByLibrary.simpleMessage("Média"),
        "mdiaGeral": MessageLookupByLibrary.simpleMessage("Média geral"),
        "menorAvaliao": MessageLookupByLibrary.simpleMessage("Menor avaliação"),
        "menorValor": MessageLookupByLibrary.simpleMessage("Menor valor"),
        "mensagem": MessageLookupByLibrary.simpleMessage("Mensagem"),
        "mes": MessageLookupByLibrary.simpleMessage("mês"),
        "messages": m10,
        "metaDiria": MessageLookupByLibrary.simpleMessage("Meta diária"),
        "metaDoDia": MessageLookupByLibrary.simpleMessage("Meta do dia"),
        "meusDados": MessageLookupByLibrary.simpleMessage("Meus dados"),
        "meusServicos": MessageLookupByLibrary.simpleMessage("Meus Serviços"),
        "meusPlanos": MessageLookupByLibrary.simpleMessage("Meus Planos"),
        "minhaConcorrncia":
            MessageLookupByLibrary.simpleMessage("Minha concorrência"),
        "minhasAvaliaes":
            MessageLookupByLibrary.simpleMessage("Minhas avaliações"),
        "moeda": MessageLookupByLibrary.simpleMessage("R\$"),
        "mostrar": MessageLookupByLibrary.simpleMessage("Mostrar"),
        "motos": MessageLookupByLibrary.simpleMessage("Motos"),
        "nadaPorAquiAinda":
            MessageLookupByLibrary.simpleMessage("Nada por aqui ainda..."),
        "negcio": MessageLookupByLibrary.simpleMessage("Negócio"),
        "negocio": MessageLookupByLibrary.simpleMessage("Negócio"),
        "nenhumEndereoCadastrado":
            MessageLookupByLibrary.simpleMessage("Nenhum endereço cadastrado"),
        "nenhumTcnicoEncontradoNoMomento": MessageLookupByLibrary.simpleMessage(
            "Nenhum técnico encontrado, para esse tipo de serviço, em sua região no momento."),
        "nmero": MessageLookupByLibrary.simpleMessage("Número"),
        "nmeroDoSeuEndereo":
            MessageLookupByLibrary.simpleMessage("Número do seu endereço"),
        "no": MessageLookupByLibrary.simpleMessage("Não"),
        "noDeletar": MessageLookupByLibrary.simpleMessage("Não deletar"),
        "noEncontrado": MessageLookupByLibrary.simpleMessage("Não encontrado"),
        "noEncontramosOEndereoInformado": MessageLookupByLibrary.simpleMessage(
            "Não encontramos o endereço informado..."),
        "noPermitir": MessageLookupByLibrary.simpleMessage("Não permitir"),
        "noSei": MessageLookupByLibrary.simpleMessage("Não sei"),
        "nome": MessageLookupByLibrary.simpleMessage("Nome"),
        "nomeCompleto": MessageLookupByLibrary.simpleMessage("Nome completo"),
        "nomeDoEndereo":
            MessageLookupByLibrary.simpleMessage("Nome do endereço"),
        "nomenegocio": MessageLookupByLibrary.simpleMessage("Nome do negócio"),
        "nosFaleUmPoucoSobreOSeuProblema": MessageLookupByLibrary.simpleMessage(
            "Nos conte mais sobre o que precisa resolver."),
        "nosInformeSeuEmailQueTeEnviaremosOsPassosPara":
            MessageLookupByLibrary.simpleMessage(
                "Nos informe seu email que te enviaremos os passos para criar uma nova senha."),
        "nosPrximosLoginsVocJPodeUsarASuaNova":
            MessageLookupByLibrary.simpleMessage(
                "Nos próximos logins, você já pode usar a sua nova senha."),
        "notificaes": MessageLookupByLibrary.simpleMessage("Notificações"),
        "novaSenha": MessageLookupByLibrary.simpleMessage("Nova senha"),
        "novoEmail": MessageLookupByLibrary.simpleMessage("Novo e-mail"),
        "novoEndereo": MessageLookupByLibrary.simpleMessage("Novo endereço"),
        "novoOramento": MessageLookupByLibrary.simpleMessage("Novo orçamento"),
        "numero": MessageLookupByLibrary.simpleMessage("Número"),
        "oCampoBairroNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "O campo Bairro não pode ser vazio."),
        "oCampoCepNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "O campo CEP não pode ser vazio."),
        "oCampoCidadeNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "O campo Cidade não pode ser vazio."),
        "oCpfNoPodeSerVazio":
            MessageLookupByLibrary.simpleMessage("O CPF não pode ser vazio."),
        "oEmailNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "O e-mail não pode ser vazio."),
        "oNomeNaoPodeSerVazio":
            MessageLookupByLibrary.simpleMessage("O nome não pode ser vazio."),
        "oServidorEstIndisponvelNoMomentoTenteNovamente":
            MessageLookupByLibrary.simpleMessage(
                "O servidor está indisponível no momento, tente novamente"),
        "oTelefoneNaoPodeFicarVazio":
            MessageLookupByLibrary.simpleMessage("Digite o seu telefone"),
        "obrigadoPorUsarOAaaEsperamosQueTenhaSidoUma": m11,
        "obrigadoSuaMensagemFoiEnviada": MessageLookupByLibrary.simpleMessage(
            "Obrigado. Sua mensagem foi enviada"),
        "obrigatrio": MessageLookupByLibrary.simpleMessage("Obrigatório"),
        "ocorreuUmErroInesperado": MessageLookupByLibrary.simpleMessage(
            "Ocorreu um erro inesperado..."),
        "ocorreuUmErroNaSuaRequisioVerifiqueOsDadosE":
            MessageLookupByLibrary.simpleMessage(
                "Ocorreu um erro na sua requisição, verifique os dados e tente novamente"),
        "ocultar": MessageLookupByLibrary.simpleMessage("Ocultar"),
        "offersCount": m12,
        "offersCountPlus": m13,
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "ola": MessageLookupByLibrary.simpleMessage("Olá, "),
        // "olaUser": m14,
        "oramento": MessageLookupByLibrary.simpleMessage("Orçamento"),
        "oramentoAceito":
            MessageLookupByLibrary.simpleMessage("Orçamento aceito."),
        "oramentoCriadoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Orçamento criado com sucesso!"),
        "oramentoRecusadoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Orçamento recusado com sucesso."),
        "oramentos": MessageLookupByLibrary.simpleMessage("Orçamentos"),
        "oramentosAceitos":
            MessageLookupByLibrary.simpleMessage("orçamentos aceitos"),
        "oramentosAprovados":
            MessageLookupByLibrary.simpleMessage("orçamentos aprovados"),
        "orcamentosRestantes":
            MessageLookupByLibrary.simpleMessage("\norçamentos restantes"),
        "ordemAlfabtica":
            MessageLookupByLibrary.simpleMessage("Ordem alfabética"),
        "ordenar": MessageLookupByLibrary.simpleMessage("Ordenar"),
        "ou": MessageLookupByLibrary.simpleMessage("OU"),
        "paraContinuarPorFavorHabiliteOsServiosDeLocalizaoDo":
            MessageLookupByLibrary.simpleMessage(
                "Para continuar, por favor habilite os serviços de localização do seu dispositivo."),
        "paraUmaMelhorExperinciaPrecisamosQueVocForneaPermissesPara":
            MessageLookupByLibrary.simpleMessage(
                "Para uma melhor experiência precisamos que você forneça permissões para acesso a sua localização."),
        "pedidosDeOramento":
            MessageLookupByLibrary.simpleMessage("Pedidos de orçamento"),
        "perfil": MessageLookupByLibrary.simpleMessage("Perfil"),
        "perfilVerificado":
            MessageLookupByLibrary.simpleMessage("Perfil verificado"),
        "performance": MessageLookupByLibrary.simpleMessage("Performance"),
        "permitir": MessageLookupByLibrary.simpleMessage("Permitir"),
        "permitirNotificaes":
            MessageLookupByLibrary.simpleMessage("Permitir notificações"),
        "permitirUsoDaSuaLocalizao": MessageLookupByLibrary.simpleMessage(
            "Permitir uso da sua localização"),
        "planoAdicionado":
            MessageLookupByLibrary.simpleMessage("Plano adicionado!"),
        "planos": MessageLookupByLibrary.simpleMessage("Planos"),
        "polticaDePrivacidade":
            MessageLookupByLibrary.simpleMessage("Política de privacidade"),
        "porFavorInformeSuaSenha": MessageLookupByLibrary.simpleMessage(
            "Por favor, informe sua senha."),
        "porFavorVolteNovamenteEmAlgunsInstantes":
            MessageLookupByLibrary.simpleMessage(
                "Por favor, volte novamente em alguns instantes."),
        "posioAtualNaSuaCidade":
            MessageLookupByLibrary.simpleMessage("Posição atual na sua cidade"),
        "precisandoDeAjuda":
            MessageLookupByLibrary.simpleMessage("Precisando de ajuda?"),
        "precisandoDeUmReparo":
            MessageLookupByLibrary.simpleMessage("Precisando de um Serviço?"),
        "preenchaOsCamposAbaixoComSuaSenha":
            MessageLookupByLibrary.simpleMessage(
                "Preencha os campos abaixo com sua senha."),
        "preenchaOsServiosEValores": MessageLookupByLibrary.simpleMessage(
            "Preencha os serviços e valores"),
        "prefixoMoedaHint": MessageLookupByLibrary.simpleMessage("R\$ 0,00"),
        "privacyPolicyUrl": MessageLookupByLibrary.simpleMessage(
            "https://www.quemconserta.com/politica-de-privacidade"),
        "problema": MessageLookupByLibrary.simpleMessage("Problema"),
        "profissionais": MessageLookupByLibrary.simpleMessage("Profissionais"),
        "profissional": MessageLookupByLibrary.simpleMessage("Profissional"),
        "pronto": MessageLookupByLibrary.simpleMessage("Pronto!"),
        "prximoPasso": MessageLookupByLibrary.simpleMessage("PRÓXIMO PASSO"),
        "pularEtapa": MessageLookupByLibrary.simpleMessage("PULAR ETAPA"),
        "quantidade": MessageLookupByLibrary.simpleMessage("Quantidade"),
        "querFazerUmComentrio":
            MessageLookupByLibrary.simpleMessage("Quer fazer um comentário?"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recomendado"),
        "recuperarSenha":
            MessageLookupByLibrary.simpleMessage("Recuperar senha"),
        "recusado": MessageLookupByLibrary.simpleMessage("RECUSADO"),
        "recusados": MessageLookupByLibrary.simpleMessage("Recusados"),
        "recusar": MessageLookupByLibrary.simpleMessage("Recusar"),
        "recusarSolicitao":
            MessageLookupByLibrary.simpleMessage("recusar solicitação"),
        "reenviarCdigo":
            MessageLookupByLibrary.simpleMessage("REENVIAR CÓDIGO"),
        "removerEndereo":
            MessageLookupByLibrary.simpleMessage("Remover endereço"),
        "repitaASenhaDigitada":
            MessageLookupByLibrary.simpleMessage("Repita a senha digitada"),
        "requisioCancelada":
            MessageLookupByLibrary.simpleMessage("Requisição cancelada"),
        "respondidos": MessageLookupByLibrary.simpleMessage("Respondidos"),
        "resumoDoServio":
            MessageLookupByLibrary.simpleMessage("Resumo do serviço:"),
        "reviseOOramentoEValoresAntesDeEnvialo":
            MessageLookupByLibrary.simpleMessage(
                "Revise o orçamento e valores antes de envia-lo."),
        "reviseSeuProblema":
            MessageLookupByLibrary.simpleMessage("Revise sua solicitação"),
        "rua": MessageLookupByLibrary.simpleMessage("Rua"),
        "salvar": MessageLookupByLibrary.simpleMessage("Salvar"),
        "salvarNovoEndereo":
            MessageLookupByLibrary.simpleMessage("Salvar novo endereço"),
        "selecionados": m15,
        "selecionarTodas":
            MessageLookupByLibrary.simpleMessage("Selecionar todas"),
        "selecioneOEndereoQueOServioDeverSerPrestado":
            MessageLookupByLibrary.simpleMessage(
                "Selecione o endereço que o serviço deverá ser prestado."),
        "selecioneUmOuMaisTcnicos": MessageLookupByLibrary.simpleMessage(
            "Selecione um ou mais técnicos"),
        "selecioneUmaDasOpesAbaixoParaContinuar":
            MessageLookupByLibrary.simpleMessage(
                "Selecione uma das opções abaixo para continuar"),
        "selecioneotipodeservicoquevoceatende":
            MessageLookupByLibrary.simpleMessage(
                "Selecione o tipo de serviço que você atende, Isto pode ser alterado mais tarde."),
        "senha": MessageLookupByLibrary.simpleMessage("Senha"),
        "senhaAlteradaComSucesso":
            MessageLookupByLibrary.simpleMessage("Senha alterada com sucesso!"),
        "service": MessageLookupByLibrary.simpleMessage("Serviço"),
        "serviceInProgress":
            MessageLookupByLibrary.simpleMessage("Serviço em andamento"),
        "servicesCount": m16,
        "servios": MessageLookupByLibrary.simpleMessage("Serviços"),
        "seuCarroLiga": MessageLookupByLibrary.simpleMessage("Seu carro liga?"),
        "seuDadosDePerfilForamAtualizadosComSucesso":
            MessageLookupByLibrary.simpleMessage(
                "Seu dados de perfil foram atualizados com sucesso."),
        "seuEmail": MessageLookupByLibrary.simpleMessage("Seu e-mail"),
        "seuEmailFoiAlteradoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Seu e-mail foi alterado com sucesso"),
        "seuNome": MessageLookupByLibrary.simpleMessage("Seu nome"),
        "seuemailcom": MessageLookupByLibrary.simpleMessage("seu@email.com"),
        "sim": MessageLookupByLibrary.simpleMessage("Sim"),
        "sobreNos": MessageLookupByLibrary.simpleMessage("Sobre nós"),
        "solicitaes": MessageLookupByLibrary.simpleMessage("Solicitações"),
        "solicitaoCriadaComSucesso": MessageLookupByLibrary.simpleMessage(
            "Solicitação criada com sucesso"),
        "suaMensagem": MessageLookupByLibrary.simpleMessage("Sua mensagem..."),
        "tcnicos": MessageLookupByLibrary.simpleMessage("Técnicos"),
        "telefone": MessageLookupByLibrary.simpleMessage("Telefone"),
        "telefoneopcional":
            MessageLookupByLibrary.simpleMessage("Telefone (opcional)"),
        "temCertezaQueDesejaRemoverEsseEndereo":
            MessageLookupByLibrary.simpleMessage(
                "Tem certeza que deseja remover esse endereço?"),
        "tenhaUmaFerramentaParaAvaliarSuaPerformanceEMelhorarSeu":
            MessageLookupByLibrary.simpleMessage(
                "Tenha uma ferramenta para avaliar sua performance e melhorar seu negócio."),
        "tentarNovamente":
            MessageLookupByLibrary.simpleMessage("Tentar novamente"),
        "termosDeUso": MessageLookupByLibrary.simpleMessage("Termos de uso"),
        "termsOfUseAgreement": MessageLookupByLibrary.simpleMessage(
            "Ao se cadastrar você está de acordo com os"),
        "termsOfUseUrl": MessageLookupByLibrary.simpleMessage(
            "https://www.quemconserta.com/termos-de-uso"),
        "titulo": MessageLookupByLibrary.simpleMessage("Título"),
        "tituloDoNegcio":
            MessageLookupByLibrary.simpleMessage("Título do negócio"),
        "topicos": MessageLookupByLibrary.simpleMessage("Tópicos"),
        "toqueNoBotoAbaixoParaCriarUmNovoEndereo":
            MessageLookupByLibrary.simpleMessage(
                "Toque no botão abaixo para criar um novo endereço"),
        "toqueNoBotoAbaixoParaCriarUmaSolicitaoDeServio":
            MessageLookupByLibrary.simpleMessage(
                "Toque no botão abaixo para criar uma solicitação de serviço."),
        "totalMensal": m17,
        "tpico": MessageLookupByLibrary.simpleMessage("Tópico"),
        "tudoCertoSeuNovoEndereoFoiCadastrado":
            MessageLookupByLibrary.simpleMessage(
                "Tudo certo! Seu novo endereço foi cadastrado."),
        "validarEmail": MessageLookupByLibrary.simpleMessage("Validar e-mail"),
        "valor": MessageLookupByLibrary.simpleMessage("Valor"),
        "valorAproximado":
            MessageLookupByLibrary.simpleMessage("Valor aproximado"),
        "valorCombinar":
            MessageLookupByLibrary.simpleMessage("Valor à combinar"),
        "valorEstimado": MessageLookupByLibrary.simpleMessage("Valor estimado"),
        "vdeo": MessageLookupByLibrary.simpleMessage("Vídeo"),
        "ver": MessageLookupByLibrary.simpleMessage("Ver"),
        "verDetalhes": MessageLookupByLibrary.simpleMessage("Ver detalhes"),
        "verificacaoDoPerfil":
            MessageLookupByLibrary.simpleMessage("Verificação do perfil"),
        "verificaoDePerfil":
            MessageLookupByLibrary.simpleMessage("Verificação de Perfil"),
        "verificarAgora":
            MessageLookupByLibrary.simpleMessage("VERIFICAR AGORA"),
        "verificarPerfil":
            MessageLookupByLibrary.simpleMessage("Verificar perfil"),
        "verifiqueOSeuPerfil":
            MessageLookupByLibrary.simpleMessage("Verifique o seu perfil"),
        "versaoDoApp": m18,
        "view": MessageLookupByLibrary.simpleMessage("Ver"),
        "vocNoPossuiNenhumServioAguardandoRespNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "Você não possui nenhum serviço aguardando resposta no momento"),
        "vocNoPossuiNenhumServioEmAndamentoNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "Você não possui nenhum serviço em andamento no momento"),
        "vocNoPossuiNenhumaSolicitaoEmAbertoNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "Você não possui nenhuma solicitação em aberto no momento"),
        "vocPodeAcompanharSuaSolicitaesEmAndamentoNoMenuServios":
            MessageLookupByLibrary.simpleMessage(
                "Você pode acompanhar sua solicitações em andamento no menu Serviços na sua tela principal."),
        "vocPodeAlterarSeusDadosDeCadastroNoSeuPerfil":
            MessageLookupByLibrary.simpleMessage(
                "Você pode alterar seus dados de cadastro no seu perfil dentro do app."),
        "vocPodeAnexarDocumentosFotosOuVdeosEmSeuOramento":
            MessageLookupByLibrary.simpleMessage(
                "Você pode anexar documentos, fotos ou vídeos em seu orçamento."),
        "vocRecebeuUmaMensagem":
            MessageLookupByLibrary.simpleMessage("Você recebeu uma mensagem"),
        "vocSPodeSelecionar1ImagemPorVez": MessageLookupByLibrary.simpleMessage(
            "Você só pode selecionar 1 imagem por vez"),
        "vocSPodeSelecionarNoMximo6Imagens":
            MessageLookupByLibrary.simpleMessage(
                "Você só pode selecionar no máximo 6 imagens"),
        "voceNaoPossuiConversas": MessageLookupByLibrary.simpleMessage(
            "Você não possui conversas em aberto"),
        "vocePodeAlterarSeuPlano": MessageLookupByLibrary.simpleMessage(
            "Você poderá editar o plano adicionado a qualquer momento no seu menu."),
        "voceTem": MessageLookupByLibrary.simpleMessage("Você tem "),
        "vocepodediacriarmaisdeumacategoria":
            MessageLookupByLibrary.simpleMessage(
                "Você pode criar mais de uma categoria para prestar serviço"),
        "aDescricaoDoOrcamentoNaoPodeEstarVazia":
            MessageLookupByLibrary.simpleMessage(
                "A descrição do Orçamento não pode estar vazia!"),
        "aDescricaoDoServicoNaoPodeEstarVazia":
            MessageLookupByLibrary.simpleMessage(
                "A descrição do serviço não pode estar vazia!"),
        "oPrecoDoOrcamentoNaoPodeEstarVazio":
            MessageLookupByLibrary.simpleMessage(
                "O preço do orçamento não pode estar vazio!")
      };
}
