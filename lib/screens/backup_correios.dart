import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

Future<Result> CalcPriceTerm({
  @required String nCdEmpresa,
  @required String sDsSenha,
  @required String nCdServico,
  @required String sCepOrigem,
  @required String sCepDestino,
  @required String nVlPeso,
  @required String nCdFormato,
  @required String nVlComprimento,
  @required String nVlAltura,
  @required String nVlLargura,
  @required String nVlDiametro,
  @required String sCdMaoPropria,
  @required String nVlValorDeclarado,
  @required String sCdAvisoRecebimento,
}
    // String StrRetorno,
    // String nIndicaCalculo,
    ) async {
  Xml2Json xml2json = new Xml2Json();

  if (nCdEmpresa == null) {
    nCdEmpresa = "08082650";
  }

  if (sDsSenha == null) {
    sDsSenha = "564321";
  }

  // if(StrRetorno == null){
  //   StrRetorno = "xml";
  // }

  // if(nIndicaCalculo == null){
  // nIndicaCalculo = "3";
  // }

  if (nVlPeso == null) {
    nVlPeso = "0";
  }

  if (nVlComprimento == null) {
    nVlComprimento = "0";
  }

  if (nVlAltura == null) {
    nVlAltura = "0";
  }

  if (nVlLargura == null) {
    nVlLargura = "0";
  }

  if (nVlDiametro == null) {
    nVlDiametro = "0";
  }

  if (nVlValorDeclarado == null) {
    nVlValorDeclarado = "0";
  }

  try {
    http.Response reponse = await http.get(
        "http://ws.correios.com.br/calculador/CalcPrecoPrazo.asmx/CalcPrecoPrazo?nCdEmpresa=$nCdEmpresa&"
        "sDsSenha=$sDsSenha&nCdServico=$nCdServico&sCepOrigem=$sCepOrigem&sCepDestino=$sCepDestino&nVlPeso=$nVlPeso&nCdFormato=$nCdFormato&nVlComprimento=$nVlComprimento&"
        "nVlAltura=$nVlAltura&nVlLargura=$nVlLargura&nVlDiametro=$nVlDiametro&sCdMaoPropria=$sCdMaoPropria&nVlValorDeclarado=$nVlValorDeclarado&sCdAvisoRecebimento=$sCdAvisoRecebimento");

    if (reponse.statusCode == 200) {
      xml2json.parse(reponse.body);

      var resultadomap = xml2json.toGData();

      return Result.fromJson(
          json.decode(resultadomap)["cResultado"]["Servicos"]["cServico"]);
    } else if (reponse.statusCode == 500) {
      print(reponse.body);
    }
  } catch (e) {
    print(e);
  }
}

Future<Result> CalcTerm(
    {String nCdServico,
    String sCepOrigem,
    String sCepDestino,
    String StrRetorno,
    String nIndicaCalculo}) async {
  Xml2Json xml2json = new Xml2Json();

  if (StrRetorno == null) {
    StrRetorno = "xml";
  }

  if (nIndicaCalculo == null) {
    nIndicaCalculo = "3";
  }

  try {
    http.Response reponse = await http.get(
        "http://ws.correios.com.br/calculador/CalcPrazo.asmx/CalcPrazo?&nCdServico=$nCdServico&sCepOrigem=$sCepOrigem&sCepDestino=$sCepDestino");

    if (reponse.statusCode == 200) {
      xml2json.parse(reponse.body);

      var resultadomap = xml2json.toGData();

      return Result.fromJson(
          json.decode(resultadomap)["cResultado"]["Servicos"]["cServico"]);
    }
  } catch (e) {
    print(e);
  }
}

class Result {
  Result(this.codigo, this.valor, this.prazo, this.vsa, this.vvd, this.vmp,
      this.entrDom, this.entrSa, this.error, this.msgErro, this.vRec);

  Result.fromJson(Map<String, dynamic> json)
      : codigo = json["Codigo"]["\$t"],
        valor = json["Valor"]["\$t"],
        prazo = json["PrazoEntrega"]["\$t"],
        vsa = json["ValorSemAdicionais"]["\$t"],
        vRec = json["ValorAvisoRecebimento"]["\$t"],
        vmp = json["ValorMaoPropria"]["\$t"],
        vvd = json["ValorValorDeclarado"]["\$t"],
        entrDom = json["EntregaDomiciliar"]["\$t"],
        entrSa = json["EntregaSabado"]["\$t"],
        error = json["Erro"]["\$t"],
        msgErro = json["MsgErro"]["\$t"];

  Map<String, dynamic> toJson() => {
        'Codigo': codigo,
        'Valor': valor,
        'PrazoEntrega': prazo,
        'ValorSemAdicionais': vsa,
        'ValorMaoPropria': vmp,
        'ValorValorDeclarado': vvd,
        'EntregaDomiciliar': entrDom,
        'EntregaSabado': entrSa,
        'Erro': error,
        'MsgErro': msgErro,
        'ValorAvisoRecebimento': vRec
      };

  final String codigo;

  final String valor;

  final String prazo;

  final String vsa;

  final String vmp;

  final String vvd;

  final String entrDom;

  final String entrSa;

  final String error;

  final String msgErro;

  final String vRec;
}
