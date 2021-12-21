unit SystemException;

interface

uses
  SysUtils;

type
  EErrorBD = class (Exception)
    constructor Create;
  end;

  EPropriedadeNaoSetada = class (Exception)
    constructor Create (aPropriedade : string);
  end;

  ESenhaInvalida = class (Exception)
    constructor Create (aSenhaInvalida : string);
  end;

  ERegistroNaoLocalizado = class(Exception)
    constructor Create (aRegistro : string);
  end;

  EArquivoNaoEncontrado = class (Exception)
    constructor Create (aFileName : string);
  end;

  EPermissaoNaoExiste = class (Exception)
    constructor Create (aPermissao : string);
  end;

  EPecaIncluida = class (Exception)
    constructor Create (aPeca : string);
  end;

  EQuantidadeEstoque = class (Exception)
    constructor Create (aQuantidade : integer);
  end;

  ERegistroSystem = class (Exception)
    constructor Create (aRegistro : string);
  end;

  EErrorLog = class (Exception)
    constructor Create;
end;

implementation

resourcestring
  MsgErrorBD = 'Ocorreu um erro durante a execu��o do m�todo quando tentava acessar o BD !';
  MsgPropriedadeNaoSetada = 'A propriedade %s n�o foi setada';
  MsgSenhaInvalida = 'A Senha %s � inv�lida';
  MsgRegistroNaoLocalizado = 'O registro %s n�o foi localizado';
  MsgArquivoNaoEncontrado = 'O arquivo %s n�o foi encontrado !'+#13+#10+
     'O arquivo pode ter sido removido, ou voc� est� utilizando um '+#13+#10+
     'terminal e a base de dados est� no servidor.'+#13+#10+
     'Sendo assim imposs�vel de realizar o Backup por este '+#13+#10+'Computador.';
  MsgPermissaoNaoExiste = 'Voc� n�o possui a permiss�o para acessar o M�dulo "%s" !';
  MsgPecaExiste = 'A pe�a "%s" j� esta inclu�da na lista';
  MsgQuantidadeEstoque = 'A quantidade %d � maior que a quantidade que esta em Estoque !';
  MsgRegistroSystem = 'Esse registro n�o pode ser deletado pois o mesmo faz parte do sistema';
  MsgLog = 'Ocorreu um erro durante o processo de grava��o do arquivo de Log';
  MsgZero = 'O valor informado � igual a zero.';

{ EErrorBD }

constructor EErrorBD.Create;
begin
  CreateFmt(MsgErrorBD, []);
end;

{ EErrorLog }

constructor EErrorLog.Create;
begin
  CreateFmt(MsgLog, []);
end;

{ EPropriedadeNaoSetada }

constructor EPropriedadeNaoSetada.Create(aPropriedade: string);
begin
  CreateFmt(MsgPropriedadeNaoSetada, [aPropriedade]);
end;

{ ESenhaInvalida }

constructor ESenhaInvalida.Create(aSenhaInvalida: string);
begin
  CreateFmt(MsgSenhaInvalida, [aSenhaInvalida]);
end;

{ ERegistroNaoLocalizado }

constructor ERegistroNaoLocalizado.Create(aRegistro: string);
begin
  CreateFmt(MsgRegistroNaoLocalizado, [aRegistro]);
end;

{ EArquivoNaoEncontrado }

constructor EArquivoNaoEncontrado.Create(aFileName: string);
begin
  CreateFmt(MsgArquivoNaoEncontrado, [aFileName]);
end;

{ EPermissaoNaoExiste }

constructor EPermissaoNaoExiste.Create(aPermissao: string);
begin
  CreateFmt(MsgPermissaoNaoExiste, [aPermissao]);
end;

{ EPecaIncluida }

constructor EPecaIncluida.Create(aPeca: string);
begin
  CreateFmt(MsgPecaExiste, [aPeca]);
end;

{ EQuantidadeEstoque }

constructor EQuantidadeEstoque.Create(aQuantidade: integer);
begin
  CreateFmt(MsgQuantidadeEstoque, [aQuantidade]);
end;

{ ERegistroSystem }

constructor ERegistroSystem.Create(aRegistro: string);
begin
  CreateFmt(MsgRegistroSystem, [aRegistro]);
end;

end.
