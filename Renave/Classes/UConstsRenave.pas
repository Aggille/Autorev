{
Sistema: Autorev
Data:12/2021
Rotina: Classe que executa as consultas na base deo RENAVE e retorna uma String com o retorno da consulta,
que dever� ser tratado pela chave que invocou a rotina.
Programador: Leandro do Couto
}


unit UConstsRenave;

interface

resourcestring
  StrInformeMetodoConsulta = 'Informe o m�todo da consulta ( GET / POST )';
  StrInformeAURL = 'Informe a URL';
  StrApplicationjson = 'application/json';
  StrHttpPOST = 'POST';
  StrHttpGET = 'GET';
  StrCodigoDoErro = 'C�digo do erro: ';
  StrErroInesperado = 'Erro inesperado';
  StrErroNaoAutorizado = 'N�o autorizado';
  StrErroAcessoNegado = 'Acesso negado';
  StrErroServicoNaoEncontrado = 'Servi�o n�o encontrado';
  StrErroConsulta = '*** ERRO NA CONSULTA';
  StrTituloErro = 'T�tulo : ';
  StrDetalheErro = 'Detalhe : ';
  StrMensagemErro = 'Mensagem : ';
  StrVeiculosDisponiveis = 'VE�CULOS DISPON�VEIS';
  StrResultadoConsulta = '*** RESULTADO DA CONSULTA';

const
  IntHttpCode200 = 200;
  IntHttpCode201 = 201;
  IntHttpCode401 = 401;
  IntHttpCode403 = 403;
  IntHttpCode404 = 404;
  IntHttpCode422 = 422;
  IntHttpCode500 = 500;


implementation


end.
