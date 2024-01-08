unit URealizaCancelaEntrega;

interface

type
  TRealizaCancelaEntrega = class
    private
      FcpfOperadorResponsavel: String;
      FidEntrega: Integer;
    public
      property  cpfOperadorResponsavel:String read FcpfOperadorResponsavel write FcpfOperadorResponsavel;
      property idEntrega:Integer read FidEntrega write FidEntrega;
  end;

implementation

end.
