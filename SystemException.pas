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
  MsgErrorBD = 'Ocorreu um erro durante a execução do método quando tentava acessar o BD !';
  MsgPropriedadeNaoSetada = 'A propriedade %s não foi setada';
  MsgSenhaInvalida = 'A Senha %s é inválida';
  MsgRegistroNaoLocalizado = 'O registro %s não foi localizado';
  MsgArquivoNaoEncontrado = 'O arquivo %s não foi encontrado !'+#13+#10+
     'O arquivo pode ter sido removido, ou você está utilizando um '+#13+#10+
     'terminal e a base de dados está no servidor.'+#13+#10+
     'Sendo assim impossível de realizar o Backup por este '+#13+#10+'Computador.';
  MsgPermissaoNaoExiste = 'Você não possui a permissão para acessar o Módulo "%s" !';
  MsgPecaExiste = 'A peça "%s" já esta incluída na lista';
  MsgQuantidadeEstoque = 'A quantidade %d é maior que a quantidade que esta em Estoque !';
  MsgRegistroSystem = 'Esse registro não pode ser deletado pois o mesmo faz parte do sistema';
  MsgLog = 'Ocorreu um erro durante o processo de gravação do arquivo de Log';
  MsgZero = 'O valor informado é igual a zero.';

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
