import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef MessageIfAbsent = String Function(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'en_US';

  static String m0(num howMany) =>
      Intl.plural(howMany, zero: 'There is no Quote', one: '(1) Quote', other: '($howMany) Quotes');

  static String m1(num howMany) =>
      Intl.plural(howMany, zero: 'No Quotes sent', one: '(1) Quote sent', other: '($howMany) Quotes Sent');

  static String m2(hourAndMinute, date) =>
      "Chat started at $hourAndMinute - $date";

  static String m3(name) => "How was $name's work?";

  static String m4(num howMany) =>
      Intl.plural(howMany, zero: 'No Conversation', one: '$howMany Conversation', other: '$howMany Conversations');

  static String m5(date) => "Created at $date";

  static String m6(date) => "Create at $date";

  static String m7(orderId) => "Pedido $orderId";

  static String m8(distance) => "$distance mi";

  static String m9(distance) => "$distance km away from you";

  static String m10(num howMany) =>
      Intl.plural(howMany, zero: '', one: 'Mensagem', other: 'Mensagens');

  static String m11(appName) =>
      "Thanks for using $appName. We hope you had a great experience.";

  static String m12(num howMany) =>
      Intl.plural(howMany, zero: 'No Quote', one: '(1) Quote', other: '($howMany) Quotes');

  static String m13(num howMany) => "+$howMany Quotes";

  // static String m14(user) => "Hello, ${user}";

  static String m15(num howMany) =>
      Intl.plural(howMany, zero: '', one: 'Selected (1)', other: ' Selected ($howMany)');

  static String m16(num howMany) =>
      Intl.plural(howMany, zero: 'No Service yet', one: '1 service', other: '$howMany Services');

  static String m17(price) => "Monthly total: U\$$price";

  static String m18(version) => "App Version $version";

  @override
  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aSenhaDeveConterAoMenosUmCaractereMaisculoNmero":
            MessageLookupByLibrary.simpleMessage(
                "* The password must have Upper Case, Number, and Special Character."),
        "aSenhaDeveConterNoMnimo6Caracteres":
            MessageLookupByLibrary.simpleMessage(
                "* The password must have at least 6 characters."),
        "aSenhaInformadaNoAtendeAosRequisitosDeSegurana":
            MessageLookupByLibrary.simpleMessage(
                "The password filled doesn't meet our security requirements"),
        "aSenhaNoPodeSerVazia": MessageLookupByLibrary.simpleMessage(
            "Password field can't be blank"),
        "aVerificaoDeDocumentosFeitaDeModoAutomatizadoEO":
            MessageLookupByLibrary.simpleMessage(""),
        "aVerificaoGaranteUmaMelhorChanceDeContrataoAoTrazer":
            MessageLookupByLibrary.simpleMessage(
                "The ID Check provides a higher chance of being hired while keeping our network safer"),
        "aceitar": MessageLookupByLibrary.simpleMessage("Accept"),
        "acompanheARespostaDoSeuClienteNoSeuMenuServios":
            MessageLookupByLibrary.simpleMessage(
                'Check the status of your quotes on the "Services" menu.'),
        "adicionarEndereo":
            MessageLookupByLibrary.simpleMessage("Add an address"),
        "adicionarItem": MessageLookupByLibrary.simpleMessage("ADD AN ITEM"),
        "adicionarNovaCategoria":
            MessageLookupByLibrary.simpleMessage("Add new category"),
        "adicioneOuRemovaOsServiosQueVocAtende":
            MessageLookupByLibrary.simpleMessage(
                "Add or Remove the work that you perform"),
        "adicioneonumerodoseunegocio": MessageLookupByLibrary.simpleMessage(
            "Add the address of your business"),
        "aeronave": MessageLookupByLibrary.simpleMessage("Aircraft"),
        "aeronaves": MessageLookupByLibrary.simpleMessage("Aircraft"),
        "agoraNo": MessageLookupByLibrary.simpleMessage("Not now"),
        "agoraPrecisamosquevoceescolhaumplano":
            MessageLookupByLibrary.simpleMessage(
                "Now,  let's choose a plan that best fit your needs"),
        "aguardandoSuaAprovao":
            MessageLookupByLibrary.simpleMessage("Waiting on your approval"),
        "aguardeOsOramentosDosTcnicosQueVocSelecionou":
            MessageLookupByLibrary.simpleMessage(
                "Wait for the quotes from the workers you selected."),
        "aindaNoExistemComentriosSobreEsseProfissional":
            MessageLookupByLibrary.simpleMessage(
                "There is no comment yet about this worker"),
        "aindaNoExistemOramentosParaEssaSolicitaoTalvezEmAlguns":
            MessageLookupByLibrary.simpleMessage(
                "There are no Quotes for this Request at the moment, check again later"),
        "alteraoDeEmail":
            MessageLookupByLibrary.simpleMessage("Change your e-mail"),
        "alterarEmail":
            MessageLookupByLibrary.simpleMessage("Change your e-mail"),
        "anexos": MessageLookupByLibrary.simpleMessage("Attachments"),
        "apenas": MessageLookupByLibrary.simpleMessage("ONLY"),
        "aplicar": MessageLookupByLibrary.simpleMessage("Apply"),
        "appName": MessageLookupByLibrary.simpleMessage("Who Fixes"),
        "aptoBloco": MessageLookupByLibrary.simpleMessage("Suite, Unit..."),
        "arquivos": MessageLookupByLibrary.simpleMessage("Files"),
        "asSenhasNoCoincidem":
            MessageLookupByLibrary.simpleMessage("The passwords don't match"),
        "assinarAgora": MessageLookupByLibrary.simpleMessage("subscribe now!"),
        "assineOPlanoEspecialistaParaTerAcessoEstatsticasMetaDiria":
            MessageLookupByLibrary.simpleMessage(
                "Subscribe to our Specialist Plan to gain access to Statistics, Daily Goal, and Competition information."),
        "atualizarEndereo":
            MessageLookupByLibrary.simpleMessage("Update Address"),
        "aumenteSuaPresenaOnlineESejaVistoPorQuemRealmento":
            MessageLookupByLibrary.simpleMessage(
                "Increase your online presence and be seen by those who really need it, at the right time."),
        "autorizaoNegadaTenteNovamenteOuVerifiqueSeuLogin":
            MessageLookupByLibrary.simpleMessage(
                "Authorization denied, try again later or check your login info"),
        "avaliaoEnviada": MessageLookupByLibrary.simpleMessage("Review Sent"),
        "avaliarServio":
            MessageLookupByLibrary.simpleMessage("Evaluate the job"),
        "avanar": MessageLookupByLibrary.simpleMessage("Proceed"),
        "bairro": MessageLookupByLibrary.simpleMessage("Bairro"),
        "botoOutline": MessageLookupByLibrary.simpleMessage("Botão outline"),
        "botoPontilhado":
            MessageLookupByLibrary.simpleMessage("Botão pontilhado"),
        "botoPrincipal":
            MessageLookupByLibrary.simpleMessage("Botão principal"),
        "budgetsCount": m0,
        "budgetsSentCount": m1,
        "buscarTcnicos":
            MessageLookupByLibrary.simpleMessage("Search for Workers"),
        "cadastrar": MessageLookupByLibrary.simpleMessage("Register"),
        "cadastrese": MessageLookupByLibrary.simpleMessage("Register"),
        "cadastro": MessageLookupByLibrary.simpleMessage("Registration"),
        "cadastroRealizadoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Your registration was successful"),
        "call": MessageLookupByLibrary.simpleMessage("Call"),
        "cancelado": MessageLookupByLibrary.simpleMessage("Canceled"),
        "cancelarPlano":
            MessageLookupByLibrary.simpleMessage("Cancel subscription"),
        "cancelarServio":
            MessageLookupByLibrary.simpleMessage("Cancel Service"),
        "carregando": MessageLookupByLibrary.simpleMessage("Loading..."),
        "carro": MessageLookupByLibrary.simpleMessage("Car"),
        "carros": MessageLookupByLibrary.simpleMessage("Cars"),
        "casaEEletrodomsticos":
            MessageLookupByLibrary.simpleMessage("House &\nAppliances"),
        "casaTrabalho": MessageLookupByLibrary.simpleMessage("Home, Office..."),
        "categorias": MessageLookupByLibrary.simpleMessage("Categories"),
        "cep": MessageLookupByLibrary.simpleMessage("Zip"),
        "certezaQueQuerDeletarSuaContanissoNoPoderSerDesfeito":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete your account? That can't be undone"),
        "chat": MessageLookupByLibrary.simpleMessage("Chat"),
        "chats": MessageLookupByLibrary.simpleMessage("Chats"),
        "chatIniciadoAs": m2,
        "cidade": MessageLookupByLibrary.simpleMessage("City"),
        "cmera": MessageLookupByLibrary.simpleMessage("Camera"),
        "codigodecadastro":
            MessageLookupByLibrary.simpleMessage("Registration code"),
        "comAAssinaturaDeUmDeNossosPlanosVocGanha":
            MessageLookupByLibrary.simpleMessage(
                "Joining one of our paid plans, the ID Check is included and you get other member exclusive features"),
        "comAVerificaoDePerfilVocConquistaAConfianaDe":
            MessageLookupByLibrary.simpleMessage(
                "With ID check you increase your chances of conquering new customers on our platform while enhancing our members security."),
        "comentrio": MessageLookupByLibrary.simpleMessage("Comment..."),
        "comentrios": MessageLookupByLibrary.simpleMessage("Comments"),
        "comoFoiOServioCom": m3,
        "complemento": MessageLookupByLibrary.simpleMessage("Address 2"),
        "concludo": MessageLookupByLibrary.simpleMessage("Accomplished"),
        "conectandoNovosClientesAoSeuNegcio":
            MessageLookupByLibrary.simpleMessage(
                "Connecting new customers to your business."),
        "configuraes": MessageLookupByLibrary.simpleMessage("Configuration"),
        "confiraNossosPlanos":
            MessageLookupByLibrary.simpleMessage("Check our Plans!"),
        "confiraSeuEmailEnviamosUmNovoCdigoParaVoc":
            MessageLookupByLibrary.simpleMessage(
                "Check your e-mail. We sent you a new code."),
        "confiraSeusDadosComplementeInformacoes":
            MessageLookupByLibrary.simpleMessage(
                "Check your data and insert additional info."),
        "confirmar": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmarNovoEmail":
            MessageLookupByLibrary.simpleMessage("Confirm new e-mail"),
        "confirmarSenha":
            MessageLookupByLibrary.simpleMessage("Confirm your password"),
        "confirmeSeuNovoEmail":
            MessageLookupByLibrary.simpleMessage("Confirm your new e-mail"),
        "conquisteNovosClientes":
            MessageLookupByLibrary.simpleMessage("Win new customers"),
        "conversas": m4,
        "convideSeusAmigosAgoraMesmo": MessageLookupByLibrary.simpleMessage(
            "Invite your friends right now."),
        "cpf": MessageLookupByLibrary.simpleMessage("CPF"),
        "createdAt": m5,
        "criadoEm": m6,
        "criarOrcamento": MessageLookupByLibrary.simpleMessage("Create quote"),
        "criarconta": MessageLookupByLibrary.simpleMessage("create an account"),
        "crieUmaSenha":
            MessageLookupByLibrary.simpleMessage("Create a password"),
        "currencySymbol": MessageLookupByLibrary.simpleMessage("U\$"),
        "datePattern": MessageLookupByLibrary.simpleMessage("MM/dd/yyy"),
        "deletar": MessageLookupByLibrary.simpleMessage("Delete"),
        "deletarMinhaConta":
            MessageLookupByLibrary.simpleMessage("Delete my account"),
        "descrevaSeuProblema": MessageLookupByLibrary.simpleMessage(
            "Describe your proposed service"),
        "descrio": MessageLookupByLibrary.simpleMessage("Description"),
        "desejaDeletarSuaConta": MessageLookupByLibrary.simpleMessage(
            "Do you want to delete your account?"),
        "detalheDoPedido": m7,
        "detalhes": MessageLookupByLibrary.simpleMessage("Details"),
        "detalhesDoOramento":
            MessageLookupByLibrary.simpleMessage("Quote details"),
        "detalhesDoServio":
            MessageLookupByLibrary.simpleMessage("Service details"),
        "detalhesDoTcnico":
            MessageLookupByLibrary.simpleMessage("Worker details"),
        "digiteAquiSeuEndereo":
            MessageLookupByLibrary.simpleMessage("Type the address here"),
        "digiteNome": MessageLookupByLibrary.simpleMessage("Type your name"),
        "digiteOComplemento":
            MessageLookupByLibrary.simpleMessage("Type your complement"),
        "digiteSeuEmail":
            MessageLookupByLibrary.simpleMessage("Type your e-mail"),
        "digiteSeuNomeCompleto":
            MessageLookupByLibrary.simpleMessage("Type your full name"),
        "digiteSeuTelefone":
            MessageLookupByLibrary.simpleMessage("Type your phone number"),
        "digiteSuaSenha":
            MessageLookupByLibrary.simpleMessage("Type your password"),
        "digiteTelefone":
            MessageLookupByLibrary.simpleMessage("Type your phone number"),
        "digiteUmCpfVlido":
            MessageLookupByLibrary.simpleMessage("Digite um CPF válido."),
        "digiteUmEmailVlido":
            MessageLookupByLibrary.simpleMessage("Type a valid e-mail"),
        "digiteUmTpico": MessageLookupByLibrary.simpleMessage("Type a topic"),
        "digiteonomedonegio":
            MessageLookupByLibrary.simpleMessage("Type your Business Name"),
        "digiteseubairro":
            MessageLookupByLibrary.simpleMessage("Type your neighborhood"),
        "digiteseucep":
            MessageLookupByLibrary.simpleMessage("Type your Zipcode"),
        "digiteseucpf": MessageLookupByLibrary.simpleMessage("Digite seu CPF"),
        "digiteseunumero":
            MessageLookupByLibrary.simpleMessage("Type your number"),
        "digitesuacidade":
            MessageLookupByLibrary.simpleMessage("Type your city"),
        "digitesuarua":
            MessageLookupByLibrary.simpleMessage("Type your Street Name"),
        "distanceValue": m8,
        "distanciaDaSuaLocalizacao": m9,
        "distncia": MessageLookupByLibrary.simpleMessage("Distance"),
        "e": MessageLookupByLibrary.simpleMessage("and"),
        "editar": MessageLookupByLibrary.simpleMessage("Edit"),
        "editarOrcamentoeReenviar":
            MessageLookupByLibrary.simpleMessage("Edit Quote and resend"),
        "editarPlano": MessageLookupByLibrary.simpleMessage("Edit plan"),
        "editarServios": MessageLookupByLibrary.simpleMessage("Edit Services"),
        "eletrnicos": MessageLookupByLibrary.simpleMessage("Electronics"),
        "emAndamento": MessageLookupByLibrary.simpleMessage("Ongoing"),
        "emBreveOsServiosFinalizadosOuCanceladosSeroListadosAqui":
            MessageLookupByLibrary.simpleMessage(
                "Soon all your finalized and canceled services will be listed here"),
        "emCotacao": MessageLookupByLibrary.simpleMessage("Quoting"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "encontramosAlgunsProfissionaisQuePodemTeAjudar":
            MessageLookupByLibrary.simpleMessage(
                "Found some workers that may help you"),
        "enderecos": MessageLookupByLibrary.simpleMessage("Address"),
        "endereo": MessageLookupByLibrary.simpleMessage("Address"),
        "endereoCadastrado":
            MessageLookupByLibrary.simpleMessage("Address Registered"),
        "endereoRemovidoComSucesso":
            MessageLookupByLibrary.simpleMessage("Address erased sucessfuly"),
        "entendi": MessageLookupByLibrary.simpleMessage("Undestood"),
        "entrar": MessageLookupByLibrary.simpleMessage("Login"),
        "entrarCom": MessageLookupByLibrary.simpleMessage("Login with:"),
        "entrarComEmail":
            MessageLookupByLibrary.simpleMessage("Login with e-mail:"),
        "entraremosEmContatoComVocEmBreve":
            MessageLookupByLibrary.simpleMessage("We will be in touch shortly"),
        "entreEmContatoConoscoQueVamosTeAtenderDaMelhor":
            MessageLookupByLibrary.simpleMessage(
                "Contact us and we will try our best to satisfied your needs"),
        "enviadoPor": MessageLookupByLibrary.simpleMessage("Sent by"),
        "enviamosumcodigodeconfirmacaoparaseuemail":
            MessageLookupByLibrary.simpleMessage(
                "We just sent a confirmation code to your e-mail"),
        "enviar": MessageLookupByLibrary.simpleMessage("Send"),
        "enviarArquivos": MessageLookupByLibrary.simpleMessage("SEND FILES"),
        "enviarAvaliao": MessageLookupByLibrary.simpleMessage("Send Review"),
        "enviarConvite":
            MessageLookupByLibrary.simpleMessage("Send invitation"),
        "enviarFotoOuVdeo":
            MessageLookupByLibrary.simpleMessage("Send picture or video"),
        "enviarMensagem": MessageLookupByLibrary.simpleMessage("Send message"),
        "enviarOramento": MessageLookupByLibrary.simpleMessage("SEND QUOTE"),
        "enviarSolicitao":
            MessageLookupByLibrary.simpleMessage("Send Request for Quote"),
        "erroInesperado":
            MessageLookupByLibrary.simpleMessage("Unexpected error"),
        "erroInternoDoServidor":
            MessageLookupByLibrary.simpleMessage("Server internal error"),
        "erroNaRequisioTenteNovamente": MessageLookupByLibrary.simpleMessage(
            "Requisition error, try again"),
        "escreverMensagem":
            MessageLookupByLibrary.simpleMessage("Write a message"),
        "especialista": MessageLookupByLibrary.simpleMessage("Specialist"),
        "especialistas": MessageLookupByLibrary.simpleMessage("Specialists"),
        "esqueceuASenha":
            MessageLookupByLibrary.simpleMessage("Forgot your password? "),
        "esqueceuSuaSenha":
            MessageLookupByLibrary.simpleMessage("FORGOT YOUR PASSWORD?"),
        "estamosBuscandoOsMelhoresProfissionais":
            MessageLookupByLibrary.simpleMessage(
                "We are looking for the best workers..."),
        "exclusivoParanplanoEspecialista": MessageLookupByLibrary.simpleMessage(
            "Exclusive for the\nSpecialist Plan members"),
        "facebook": MessageLookupByLibrary.simpleMessage("FACEBOOK"),
        "faleConosco": MessageLookupByLibrary.simpleMessage("Contact us"),
        "falhaDeConexoVerifiqueSuaInternet":
            MessageLookupByLibrary.simpleMessage(
                "Bad connection, check your network"),
        "filtrar": MessageLookupByLibrary.simpleMessage("Filter"),
        "finalizarServio": MessageLookupByLibrary.simpleMessage("Close Job"),
        "finalzarServio": MessageLookupByLibrary.simpleMessage("Close Job"),
        "fotos": MessageLookupByLibrary.simpleMessage("Pictures"),
        "galeria": MessageLookupByLibrary.simpleMessage("Gallery"),
        "google": MessageLookupByLibrary.simpleMessage("GOOGLE"),
        "gostariaDeNosEnviarFotosOuVdeosParaMelhorDescrever":
            MessageLookupByLibrary.simpleMessage(
                "Would you like to attach pictures or videos to better describe your job?"),
        "habilitarServiosDeLocalizao":
            MessageLookupByLibrary.simpleMessage("Enable location services"),
        "histrico": MessageLookupByLibrary.simpleMessage("History"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "imagem": MessageLookupByLibrary.simpleMessage("Image"),
        "informacoescomplementares":
            MessageLookupByLibrary.simpleMessage("Extra Information"),
        "informacoescomplementaresadicionais": MessageLookupByLibrary.simpleMessage(
            "In order to offer a better service, we ask for some additional information"),
        "informaes": MessageLookupByLibrary.simpleMessage("Information"),
        "informeDetalhesSobreOProblema": MessageLookupByLibrary.simpleMessage(
            "Give us more details about the service"),
        "informeSeuNovoEmail":
            MessageLookupByLibrary.simpleMessage("Insert your new e-mail"),
        "insiraOCdigoEnviadoParaOSeuEmail":
            MessageLookupByLibrary.simpleMessage(
                "Insert thw code that we send to your email"),
        "irparameusplanos":
            MessageLookupByLibrary.simpleMessage("Go to my Plans"),
        "ligarParaCliente":
            MessageLookupByLibrary.simpleMessage("Call Customer"),
        "limparFiltro": MessageLookupByLibrary.simpleMessage("Clean Filter"),
        "listadeplanos": MessageLookupByLibrary.simpleMessage("Plans"),
        "loginOptionsScreenMessage": MessageLookupByLibrary.simpleMessage(
            "Connecting new customers to your business"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "maiorAvaliao": MessageLookupByLibrary.simpleMessage("Best Rated"),
        "maiorValor": MessageLookupByLibrary.simpleMessage("Highest value"),
        "mais": MessageLookupByLibrary.simpleMessage("More"),
        "maisAntigo": MessageLookupByLibrary.simpleMessage("Oldest"),
        "maisDistante": MessageLookupByLibrary.simpleMessage("Far"),
        "maisPrximo": MessageLookupByLibrary.simpleMessage("Closer"),
        "maisRecente": MessageLookupByLibrary.simpleMessage("Newer"),
        "marcaDoVeculo":
            MessageLookupByLibrary.simpleMessage("Brand of the vehicle"),
        "mdia": MessageLookupByLibrary.simpleMessage("Avarage"),
        "menorAvaliao": MessageLookupByLibrary.simpleMessage("Worst Rating"),
        "menorValor": MessageLookupByLibrary.simpleMessage("Cheapest"),
        "mensagem": MessageLookupByLibrary.simpleMessage("Message"),
        "mes": MessageLookupByLibrary.simpleMessage("month"),
        "messages": m10,
        "meusDados": MessageLookupByLibrary.simpleMessage("My info"),
        "meusServicos": MessageLookupByLibrary.simpleMessage("My Services"),
        "meusPlanos": MessageLookupByLibrary.simpleMessage("My Plans"),
        "moeda": MessageLookupByLibrary.simpleMessage("U\$"),
        "mostrar": MessageLookupByLibrary.simpleMessage("Show"),
        "motos": MessageLookupByLibrary.simpleMessage("Motorcycles"),
        "nadaPorAquiAinda":
            MessageLookupByLibrary.simpleMessage("Nothing here yet"),
        "negocio": MessageLookupByLibrary.simpleMessage("Business"),
        "nenhumEndereoCadastrado":
            MessageLookupByLibrary.simpleMessage("\nNo address registered"),
        "nenhumTcnicoEncontradoNoMomento": MessageLookupByLibrary.simpleMessage(
            "No technicians found for this type of service in your region at this time. Invite more workers to join our network when possible."),
        "nmero": MessageLookupByLibrary.simpleMessage("Number"),
        "nmeroDoSeuEndereo": MessageLookupByLibrary.simpleMessage("Number"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noDeletar": MessageLookupByLibrary.simpleMessage("Don't delete"),
        "noEncontrado": MessageLookupByLibrary.simpleMessage("Not found"),
        "noEncontramosOEndereoInformado": MessageLookupByLibrary.simpleMessage(
            "We couldn't find the address"),
        "noPermitir": MessageLookupByLibrary.simpleMessage("Don't allow"),
        "noSei": MessageLookupByLibrary.simpleMessage("Don't know"),
        "nome": MessageLookupByLibrary.simpleMessage("Name"),
        "nomeCompleto": MessageLookupByLibrary.simpleMessage("Full Name"),
        "nomeDoEndereo": MessageLookupByLibrary.simpleMessage("Address Name"),
        "nomenegocio": MessageLookupByLibrary.simpleMessage("Business name"),
        "nosFaleUmPoucoSobreOSeuProblema": MessageLookupByLibrary.simpleMessage(
            "Tell us more about your needs"),
        "nosInformeSeuEmailQueTeEnviaremosOsPassosPara":
            MessageLookupByLibrary.simpleMessage(
                "Tell us your e-mail and we will send you instructions to reset your password"),
        "nosPrximosLoginsVocJPodeUsarASuaNova":
            MessageLookupByLibrary.simpleMessage(
                "Use your new password on the next login"),
        "notificaes": MessageLookupByLibrary.simpleMessage("Notifications"),
        "novaSenha": MessageLookupByLibrary.simpleMessage("New password"),
        "novoEmail": MessageLookupByLibrary.simpleMessage("New e-mail"),
        "novoEndereo": MessageLookupByLibrary.simpleMessage("New address"),
        "novoOramento": MessageLookupByLibrary.simpleMessage("New quote"),
        "numero": MessageLookupByLibrary.simpleMessage("Number"),
        "oCampoBairroNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "O campo Bairro não pode ser vazio."),
        "oCampoCepNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "The Zipcode field can't be blank"),
        "oCampoCidadeNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "The City field can't be blank"),
        "oCpfNoPodeSerVazio":
            MessageLookupByLibrary.simpleMessage("O CPF não pode ser vazio."),
        "oEmailNoPodeSerVazio": MessageLookupByLibrary.simpleMessage(
            "The e-email field can't be blank"),
        "oServidorEstIndisponvelNoMomentoTenteNovamente":
            MessageLookupByLibrary.simpleMessage(
                "The server is currently unavailable, try again later"),
        "oTelefoneNaoPodeFicarVazio":
            MessageLookupByLibrary.simpleMessage("Type your phone"),
        "obrigadoPorUsarOAaaEsperamosQueTenhaSidoUma": m11,
        "obrigadoSuaMensagemFoiEnviada": MessageLookupByLibrary.simpleMessage(
            "Thanks. Your message was sent"),
        "obrigatrio": MessageLookupByLibrary.simpleMessage("Mandatory"),
        "ocorreuUmErroInesperado":
            MessageLookupByLibrary.simpleMessage("An unexpected error occured"),
        "ocorreuUmErroNaSuaRequisioVerifiqueOsDadosE":
            MessageLookupByLibrary.simpleMessage(
                " There was an error on your request, verify your info and try again"),
        "ocultar": MessageLookupByLibrary.simpleMessage("Hide"),
        "offersCount": m12,
        "offersCountPlus": m13,
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "ola": MessageLookupByLibrary.simpleMessage("Hello, "),
        // "olaUser": m14,
        "oramento": MessageLookupByLibrary.simpleMessage("Quote"),
        "oramentoAceito":
            MessageLookupByLibrary.simpleMessage("Accepted quote"),
        "oramentoCriadoComSucesso":
            MessageLookupByLibrary.simpleMessage("Quote created sucessfuly"),
        "oramentoRecusadoComSucesso":
            MessageLookupByLibrary.simpleMessage("Quote declined sucessfully"),
        "oramentos": MessageLookupByLibrary.simpleMessage("Quotes"),
        "orcamentosRestantes":
            MessageLookupByLibrary.simpleMessage("\nquotes left"),
        "ordemAlfabtica":
            MessageLookupByLibrary.simpleMessage("Alphabetical order"),
        "ordenar": MessageLookupByLibrary.simpleMessage("Sort by"),
        "ou": MessageLookupByLibrary.simpleMessage("OR"),
        "paraContinuarPorFavorHabiliteOsServiosDeLocalizaoDo":
            MessageLookupByLibrary.simpleMessage(
                "To continue, please enable your device's location services."),
        "paraUmaMelhorExperinciaPrecisamosQueVocForneaPermissesPara":
            MessageLookupByLibrary.simpleMessage(
                "For the best experience we need you to provide permissions to access your location."),
        "pedidosDeOramento":
            MessageLookupByLibrary.simpleMessage("Quote Requests"),
        "perfil": MessageLookupByLibrary.simpleMessage("Profile"),
        "perfilVerificado":
            MessageLookupByLibrary.simpleMessage("Verified Profile"),
        "performance": MessageLookupByLibrary.simpleMessage("Performance"),
        "permitir": MessageLookupByLibrary.simpleMessage("Allow"),
        "permitirNotificaes":
            MessageLookupByLibrary.simpleMessage("Allow notifications"),
        "permitirUsoDaSuaLocalizao":
            MessageLookupByLibrary.simpleMessage("Allow use of your location"),
        "planoAdicionado":
            MessageLookupByLibrary.simpleMessage("Subscription plan added"),
        "planos": MessageLookupByLibrary.simpleMessage("Plans"),
        "polticaDePrivacidade":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "porFavorInformeSuaSenha": MessageLookupByLibrary.simpleMessage(
            "Please, insert your password"),
        "porFavorVolteNovamenteEmAlgunsInstantes":
            MessageLookupByLibrary.simpleMessage("Please, try again later"),
        "precisandoDeAjuda": MessageLookupByLibrary.simpleMessage("Need Help?"),
        "precisandoDeUmReparo":
            MessageLookupByLibrary.simpleMessage("Need Service?"),
        "preenchaOsCamposAbaixoComSuaSenha":
            MessageLookupByLibrary.simpleMessage(
                "Fill the fields bellow with your password"),
        "preenchaOsServiosEValores": MessageLookupByLibrary.simpleMessage(
            "Fill with your services and prices"),
        "prefixoMoedaHint": MessageLookupByLibrary.simpleMessage("U\$ 0.00"),
        "privacyPolicyUrl": MessageLookupByLibrary.simpleMessage(
            "https://www.whofixes.com/privacy-policy"),
        "problema": MessageLookupByLibrary.simpleMessage("Service"),
        "profissionais": MessageLookupByLibrary.simpleMessage("Workers"),
        "profissional": MessageLookupByLibrary.simpleMessage("Worker"),
        "pronto": MessageLookupByLibrary.simpleMessage("All set!"),
        "prximoPasso": MessageLookupByLibrary.simpleMessage("NEXT STEP"),
        "pularEtapa": MessageLookupByLibrary.simpleMessage("SKIP"),
        "quantidade": MessageLookupByLibrary.simpleMessage("Quantity"),
        "querFazerUmComentrio":
            MessageLookupByLibrary.simpleMessage("Want to make a review"),
        "recommended": MessageLookupByLibrary.simpleMessage("Recommended"),
        "recuperarSenha":
            MessageLookupByLibrary.simpleMessage("Recover your password"),
        "recusado": MessageLookupByLibrary.simpleMessage("DECLINED"),
        "recusar": MessageLookupByLibrary.simpleMessage("Decline"),
        "reenviarCdigo": MessageLookupByLibrary.simpleMessage("RESEND CODE"),
        "removerEndereo":
            MessageLookupByLibrary.simpleMessage("Remove Address"),
        "repitaASenhaDigitada":
            MessageLookupByLibrary.simpleMessage("Insert the password again"),
        "requisioCancelada":
            MessageLookupByLibrary.simpleMessage("Request cancelled"),
        "resumoDoServio":
            MessageLookupByLibrary.simpleMessage("Service summary:"),
        "reviseOOramentoEValoresAntesDeEnvialo":
            MessageLookupByLibrary.simpleMessage(
                "Check your quote prior to submitting it"),
        "reviseSeuProblema":
            MessageLookupByLibrary.simpleMessage("Confirm your location"),
        "rua": MessageLookupByLibrary.simpleMessage("Street"),
        "salvar": MessageLookupByLibrary.simpleMessage("Save"),
        "salvarNovoEndereo":
            MessageLookupByLibrary.simpleMessage("Save new address"),
        "selecionados": m15,
        "selecionarTodas": MessageLookupByLibrary.simpleMessage("Select all"),
        "selecioneOEndereoQueOServioDeverSerPrestado":
            MessageLookupByLibrary.simpleMessage(
                "Select where you need the service"),
        "selecioneUmOuMaisTcnicos":
            MessageLookupByLibrary.simpleMessage("Select one or more workers"),
        "selecioneUmaDasOpesAbaixoParaContinuar":
            MessageLookupByLibrary.simpleMessage(
                "Select one of the options bellow to continue"),
        "selecioneotipodeservicoquevoceatende":
            MessageLookupByLibrary.simpleMessage(
                "Select which kind of work you perform. This can be changed later."),
        "senha": MessageLookupByLibrary.simpleMessage("Password"),
        "senhaAlteradaComSucesso":
            MessageLookupByLibrary.simpleMessage("Password reset sucessfuly"),
        "service": MessageLookupByLibrary.simpleMessage("Service"),
        "serviceInProgress":
            MessageLookupByLibrary.simpleMessage("Ongoing Service"),
        "servicesCount": m16,
        "servios": MessageLookupByLibrary.simpleMessage("Services"),
        "seuCarroLiga": MessageLookupByLibrary.simpleMessage("Seu carro liga?"),
        "seuDadosDePerfilForamAtualizadosComSucesso":
            MessageLookupByLibrary.simpleMessage(
                "Your Profile has been updated sucessfuly"),
        "seuEmail": MessageLookupByLibrary.simpleMessage("Your e-mail"),
        "seuEmailFoiAlteradoComSucesso": MessageLookupByLibrary.simpleMessage(
            "Your e-mail has been updated sucesfuly"),
        "seuNome": MessageLookupByLibrary.simpleMessage("Your name"),
        "seuemailcom": MessageLookupByLibrary.simpleMessage("you@email.com"),
        "sim": MessageLookupByLibrary.simpleMessage("Yes"),
        "solicitaes": MessageLookupByLibrary.simpleMessage("Requests"),
        "solicitaoCriadaComSucesso": MessageLookupByLibrary.simpleMessage(
            "Request created successfully"),
        "suaMensagem": MessageLookupByLibrary.simpleMessage("Your message"),
        "tcnicos": MessageLookupByLibrary.simpleMessage("Workers"),
        "telefone": MessageLookupByLibrary.simpleMessage("Phone"),
        "telefoneopcional":
            MessageLookupByLibrary.simpleMessage("Phone (optional)"),
        "temCertezaQueDesejaRemoverEsseEndereo":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to erase this address?"),
        "tenhaUmaFerramentaParaAvaliarSuaPerformanceEMelhorarSeu":
            MessageLookupByLibrary.simpleMessage(
                "Have a tool to evaluate your performance and improve your business."),
        "tentarNovamente": MessageLookupByLibrary.simpleMessage("Try again"),
        "termosDeUso": MessageLookupByLibrary.simpleMessage("Terms of use"),
        "termsOfUseAgreement": MessageLookupByLibrary.simpleMessage(
            "By registering, you agree with the"),
        "termsOfUseUrl": MessageLookupByLibrary.simpleMessage(
            "https://www.whofixes.com/terms-of-use"),
        "titulo": MessageLookupByLibrary.simpleMessage("Title"),
        "tituloDoNegcio":
            MessageLookupByLibrary.simpleMessage("Business title"),
        "topicos": MessageLookupByLibrary.simpleMessage("Topics"),
        "toqueNoBotoAbaixoParaCriarUmNovoEndereo":
            MessageLookupByLibrary.simpleMessage(
                "Touch the button below to create a new address"),
        "toqueNoBotoAbaixoParaCriarUmaSolicitaoDeServio":
            MessageLookupByLibrary.simpleMessage(
                "Touch the button below to create a Service Request"),
        "totalMensal": m17,
        "tpico": MessageLookupByLibrary.simpleMessage("Topic"),
        "tudoCertoSeuNovoEndereoFoiCadastrado":
            MessageLookupByLibrary.simpleMessage(
                "All set! Your new address is registered"),
        "validarEmail":
            MessageLookupByLibrary.simpleMessage("Validate your e-mail"),
        "valor": MessageLookupByLibrary.simpleMessage("Value"),
        "valorAproximado":
            MessageLookupByLibrary.simpleMessage("Aproximate cost"),
        "valorCombinar":
            MessageLookupByLibrary.simpleMessage("To be discussed"),
        "valorEstimado": MessageLookupByLibrary.simpleMessage("Estimated cost"),
        "vdeo": MessageLookupByLibrary.simpleMessage("Video"),
        "ver": MessageLookupByLibrary.simpleMessage("View"),
        "verDetalhes": MessageLookupByLibrary.simpleMessage("See more"),
        "verificaoDePerfil":
            MessageLookupByLibrary.simpleMessage("Profile verification"),
        "verificarAgora": MessageLookupByLibrary.simpleMessage("VERIFY NOW"),
        "verificarPerfil": MessageLookupByLibrary.simpleMessage("Verify ID"),
        "verifiqueOSeuPerfil":
            MessageLookupByLibrary.simpleMessage("Verify your ID"),
        "versaoDoApp": m18,
        "view": MessageLookupByLibrary.simpleMessage("View"),
        "vocNoPossuiNenhumServioAguardandoRespNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "Currently, there is no open quote."),
        "vocNoPossuiNenhumServioEmAndamentoNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "You don't have any ongoing services at the moment"),
        "vocNoPossuiNenhumaSolicitaoEmAbertoNoMomento":
            MessageLookupByLibrary.simpleMessage(
                "You don't have any open RFQs at the moment"),
        "vocPodeAcompanharSuaSolicitaesEmAndamentoNoMenuServios":
            MessageLookupByLibrary.simpleMessage(
                "You can track your ongoing jobs on the Services menu on the main screen"),
        "vocPodeAlterarSeusDadosDeCadastroNoSeuPerfil":
            MessageLookupByLibrary.simpleMessage(
                "You can change your profile info, at the profile section inside the App"),
        "vocPodeAnexarDocumentosFotosOuVdeosEmSeuOramento":
            MessageLookupByLibrary.simpleMessage(
                "You can attach documents, pictures and videos on your quote"),
        "vocRecebeuUmaMensagem":
            MessageLookupByLibrary.simpleMessage("You received a new message"),
        "vocSPodeSelecionar1ImagemPorVez": MessageLookupByLibrary.simpleMessage(
            "You can only select 1 picture at once"),
        "voceNaoPossuiConversas": MessageLookupByLibrary.simpleMessage(
            "You don't have open conversations"),
        "vocePodeAlterarSeuPlano": MessageLookupByLibrary.simpleMessage(
            "You will be able to edit your Plan at any time on your profile menu."),
        "voceTem": MessageLookupByLibrary.simpleMessage("You have "),
        "vocepodediacriarmaisdeumacategoria":
            MessageLookupByLibrary.simpleMessage(
                "You can select more than one category of services"),
        "aDescricaoDoOrcamentoNaoPodeEstarVazia":
            MessageLookupByLibrary.simpleMessage(
                "Budget description can't be empty!"),
        "aDescricaoDoServicoNaoPodeEstarVazia":
            MessageLookupByLibrary.simpleMessage(
                "Service description can't be empty!"),
        "oPrecoDoOrcamentoNaoPodeEstarVazio":
            MessageLookupByLibrary.simpleMessage("Budget price can't be empty!")
      };
}
