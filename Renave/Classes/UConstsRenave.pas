{
Sistema: Autorev
Data:12/2021
Rotina: Classe que executa as consultas na base deo RENAVE e retorna uma String com o retorno da consulta,
que deverá ser tratado pela chave que invocou a rotina.
Programador: Leandro do Couto
}


unit UConstsRenave;

interface

resourcestring
  StrInformeMetodoConsulta = 'Informe o método da consulta ( GET / POST )';
  StrInformeAURL = 'Informe a URL';
  StrApplicationjson = 'application/json';
  StrHttpPOST = 'POST';
  StrHttpGET = 'GET';
  StrCodigoDoErro = 'Código do erro: ';
  StrErroInesperado = 'Erro inesperado';
  StrErroNaoAutorizado = 'Não autorizado';
  StrErroAcessoNegado = 'Acesso negado';
  StrErroServicoNaoEncontrado = 'Serviço não encontrado';
  StrErroConsulta = '*** ERRO NA CONSULTA';
  StrTituloErro = 'Título : ';
  StrDetalheErro = 'Detalhe : ';
  StrMensagemErro = 'Mensagem : ';
  StrVeiculosDisponiveis = 'VEÍCULOS DISPONÍVEIS';
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
