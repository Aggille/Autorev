unit notacabinas;

interface
uses   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, ibQuery,prnDos;


//uses SqlExpr, SysUtils, Dialogs, ibQuery,prnDos,Controls;

type
  TNotaCabinas = class
    constructor create();
    destructor destroy;
    private
    public
      procedure Imprime;
  end;

implementation

uses dmNota, efuncoes;


constructor TNotaCabinas.Create();
begin
end;

destructor TNotaCabinas.Destroy;
begin
end;
procedure TNotaCabinas.Imprime;
var
ModoTexto: TPrnDOS;
coldup: array[1..3] of integer;
linha:integer;
obs:TStringList;
begin

  with modotexto do
  begin
       Print; //Impressora selecionada em PrintDialog

       NewPage;

       with Datanota do
       begin
        with tblNotasFiscais do
          begin

            with tblClientes do
            begin

              fieldbyname( 'cep' ).EditMask:= '#####-###;0; ';
              if FieldByName('PessoaJuridica').AsString = 'J' then
                fieldbyname( 'cgc_cpf' ).EditMask:= '##.###.###/####-##;0; '
              else
                fieldbyname( 'cgc_cpf' ).EditMask:= '###.###.###-##;0; ';
            end;

            with tblNotasFiscais do
            begin
              fieldbyname( 'cnpj_transportadora' ).EditMask :='##.###.###/####-##;0; ';
            end;

            compacta;
            cmpSay( 02 , 128 , padlZero( fieldbyname( 'numero' ).asString , 6 ));

            if fieldbyname( 'tipodenota' ).asString = '4' then
              cmpSay( 03, 104 , 'XX' )
            else
              cmpSay( 03 , 088, 'XX' );


            cmpsay( 08 , 003 , fieldbyname( 'descricao_codigo_fiscal' ).asString );
            cmpsay( 08 , 048 , fieldbyname( 'codigofiscal' ).asString );

            cmpsay( 11 , 003 , tblClientes.fieldbyname( 'nome' ).asString + ' - ' + fieldbyname( 'cliente' ).asString );

            cmpsay( 11 , 093 , tblClientes.fieldbyname( 'cgc_cpf' ).DisplayText );
            cmpsay( 11 , 124 , fieldbyname( 'emissao' ).asString );

            cmpsay( 13 , 003 , tblClientes.fieldbyname( 'endereco' ).asString );
            cmpsay( 13 , 058 , tblClientes.fieldbyname( 'bairro' ).asString );
            cmpsay( 13 , 102 , tblClientes.fieldbyname( 'cep' ).DisplayText );
            cmpsay( 13 , 124, fieldbyname( 'data_saida' ).asString );

            cmpsay( 15 , 003 , tblClientes.fieldbyname( 'cidade' ).asString );
            cmpsay( 15 , 057 , tblClientes.fieldbyname( 'telefone' ).asString );
            cmpsay( 15 , 082 , tblClientes.fieldbyname( 'uf' ).asString );
            cmpsay( 15 , 089 , tblClientes.fieldbyname( 'inscricaoestadual' ).asString );
            cmpsay( 15 , 124, fieldbyname( 'hora_saida' ).asString );
          end;

          with tblDuplicatas do
          begin

            first;

            if not eof then
            begin
              cmpsay( 18    , 003 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString , 10 ) );
              cmpsay( 18    , 017 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 18 , 030 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

            next;

            if not eof then
            begin

              cmpsay( 18    , 046 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString  , 10 ));
              cmpsay( 18    , 060 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 18 , 073 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

            next;

            if not eof then
            begin
              cmpsay( 18    , 089 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString  , 10 ));
              cmpsay( 18    , 103 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 18 , 116 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

            next;


            if not eof then
            begin
              cmpsay( 19    , 003 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString , 10 ));
              cmpsay( 19    , 017 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 19 , 030 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

            next;

            if not eof then
            begin
              cmpsay( 19    , 046 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString , 10 ));
              cmpsay( 19    , 060 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 19 , 073 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

            next;

            if not eof then
            begin
              cmpsay( 19    , 089 , padlZero( fieldbyname( 'numero' ).asString + '-' + fieldbyname( 'parcela' ).asString , 10 ));
              cmpsay( 19    , 103 , fieldbyname( 'vencimento' ).asString );
              cmpValsay( 19 , 116 , fieldbyname( 'valor' ).asCurrency, 10 , 2 ) ;
            end;

          end;

          // itens da nota

          linha := 23;

          with tblItems do
          begin
            first;
            while not eof do
            begin
              cmpsay( linha , 002 , padr( fieldbyname( 'produto' ).asString , 10 ) );
              cmpsay( linha , 013 , padr( fieldbyname( 'descricao' ).asString , 47 ));

             if fieldbyname( 'quantidade' ).asFloat > 0 then
              begin
                cmpsay(    linha , 062 , padr( fieldbyname( 'posicao_fiscal' ).asString ,10));
                cmpsay(    linha , 073 , padr( fieldbyname( 'sit_trib' ).asString ,3 ));
                cmpsay(    linha , 078 , padr( fieldbyname( 'unidade' ).asString , 3 ));
                cmpValsay( linha , 081 , fieldbyname( 'quantidade' ).asFloat, 5 , 3 ) ;
                cmpValSay( linha , 090 , fieldbyname( 'preco_unitario' ).asFloat , 8 , 3 ) ;
                cmpValSay( linha , 101 , fieldbyname( 'preco_total' ).asFloat, 8 , 2 ) ;
                cmpValSay( linha , 114 , fieldbyname( 'aliq_icms' ).asFloat,2,0 ) ;
                cmpValSay( linha , 117 , fieldbyname( 'aliq_ipi' ).asFloat,2,0 );
                cmpValSay( linha , 120 , fieldbyname( 'valor_ipi' ).asFloat, 6 , 2 );
              end;
                next;
                inc( linha );
            end;

            if ( tblNotasFiscais.fieldbyname( 'valor_retencao_pis_cofins' ).asFloat > 0 ) and
               ( tblNotasFiscais.fieldbyname( 'planodepagamento' ).asInteger > 0 )
            then
              begin
                inc( linha );
                cmpSay( linha , 013 , padr( '(-) Retenção de PIS/Cofins :' , 30 ));
                cmpValSay( linha , 045, tblNotasFiscais.fieldbyname( 'valor_retencao_pis_cofins' ).asFloat, 10 , 2 );
              end;

            if tblNotasFiscais.fieldbyname( 'reajuste_preco' ).asFloat > 0 then
            begin
              inc( linha );
              cmpSay( linha , 013 , padr( '** Reajuste de preço de' , 30 ) );
              cmpValSay( linha , 040 , tblNotasFiscais.fieldbyname( 'reajuste_preco' ).asFloat, 6 , 2 );
              cmpValSay( linha , 100 , fieldbyname( 'reajuste_preco' ).asFloat , 10 , 2 );
              cmpValSay( linha , 119 , fieldbyname( 'reajuste_preco_ipi' ).asFloat , 6 , 2 );
            end;

            if tblNotasFiscais.fieldbyname( 'despesas_financeiras' ).asFloat > 0 then
            begin
              inc( linha );
              cmpSay( linha , 013 , padr( '** Despesas Financeiras de' , 30 ) );
              cmpValSay( linha , 040 , tblNotasFiscais.fieldbyname( 'despesas_financeiras' ).asFloat, 6 , 2 );
              cmpValSay( linha , 100 , fieldbyname( 'despesas_financeiras' ).asFloat , 10 , 2 );
              cmpValSay( linha , 119 , fieldbyname( 'despesas_financeiras_ipi' ).asFloat , 6 , 2 );
            end;
          end;

          with tblNotasFiscais do
          begin
            if fieldbyname( 'valor_funrural' ).asFloat > 0 then
            begin
              inc(linha);
              cmpSay( linha , 013, padr( '** Valor do Funrural' , 30 ));
              cmpValSay( linha , 103 , tblNotasFiscais.fieldbyname( 'Valor_Funrural' ).asFloat, 10 , 2 );
            end;
          end;

          with tblNotasFiscais do
          begin

            if fieldbyname( 'valor_icms' ).asFloat <> 0 then
            cmpSay( 40 , 012 , padL( FloatToStrF( fieldbyname( 'base_icms' ).asFloat , ffNumber, 12 , 2 ) , 14 ) );

            if fieldbyname( 'valor_icms' ).asFloat = 0 then
              cmpSay( 40 , 037 , padr( fieldbyname( 'desc_icms' ).asString, 14 ) )
            else
              cmpSay( 40 , 040 , padL( FloatToStrF( fieldbyname( 'valor_icms' ).asFloat , ffNumber, 10 , 2 ) , 14 ));


            if fieldbyname( 'valor_icms_ST' ).asFloat <> 0 then
            begin
                 cmpSay( 40 , 065 , padL( FloatToStrF( fieldbyname( 'base_icms_st' ).asFloat , ffNumber, 12 , 2 ) , 14 ) );
                 cmpSay( 40 , 090 , padL( FloatToStrF( fieldbyname( 'valor_icms_st' ).asFloat , ffNumber, 12 , 2 ) , 14 ) );
            end;

            cmpValSay( 40 , 122, fieldbyname( 'valor_dos_produtos' ).asFloat, 12 ,2 );


            cmpSay( 42 , 012 , padL( FloatToStrF( fieldbyname( 'valor_do_frete' ).asFloat, ffNumber, 12 ,2 ) , 14 ) );
            cmpSay( 42 , 040 , padL( FloatToStrF( fieldbyname( 'valor_seguro' ).asFloat , ffNumber,  12 , 2 ) , 14 ) );
            cmpSay( 42 , 090 , padL( FloatToStrF( fieldbyname( 'valor_do_ipi' ).asFloat , ffNumber,  12 , 2 ) , 14 ) );


            cmpValSay( 42 , 122 , fieldbyname( 'total_da_nota' ).asFloat , 12 , 2 );


            if fieldbyname( 'transportadora' ).asString <> '' then
            cmpSay( 45 , 003 , fieldbyname( 'transportadora' ).asString );

            cmpSay( 45 , 080 , fieldbyname( 'tipo_frete' ).asString );

            if fieldbyname( 'transportadora' ).asString <> '' then
            cmpSay( 45 , 112 , fieldbyname( 'cnpj_transportadora' ).DisplayText );

            if fieldbyname( 'transportadora' ).asString <> '' then
            cmpSay( 47 , 003 , fieldbyname( 'endereco_transp' ).asString );

            if fieldbyname( 'transportadora' ).asString <> '' then
            cmpSay( 47 , 063 , fieldbyname( 'cidade_transp' ).asString );

            if fieldbyname( 'transportadora' ).asString <> '' then
            cmpSay( 47 , 110 , fieldbyname( 'uf_transp' ).asString );

            cmpValSay( 49 , 002 , fieldbyname( 'quantidade' ).asFloat , 6 , 2 );
            cmpSay( 49 , 015 , padr( fieldbyname( 'volumes' ).asString  , 30 ) );
            cmpSay( 49 , 050 , padr( fieldbyname( 'marca' ).asString  , 30  )) ;
            cmpValSay( 49, 100                                      , fieldbyname( 'peso_liquido' ).asFloat , 10 , 2 );
            cmpValSay( 49 , 116 , fieldbyname( 'peso_bruto' ).asFloat , 10 , 2 );

            obs := TStringList.Create();

            obs.Text := tblNotasFiscaisOBSERVACOES.asString ;


            for Linha := 0 to Obs.Count - 1 do
              cmpSay( 52+linha , 003 , obs.Strings[linha] );

            cmpSay( 57 , 003 , 'OC: ' + fieldbyname( 'ordem_de_compra' ).asString );
//            cmpSay( 57 , 020 , 'Vendedor: ' + fieldbyname( 'representante' ).asString );
            cmpSay( 57 , 025 , 'Redespacho: ' + fieldbyname( 'redespacho' ).asString );

            cmpSay( 62 , 122 ,padlzero(  fieldbyname( 'numero' ).asString , 6 ));

          end;

       end;

       EndPage;  { Eject }
       EndPrint;

  end;
end;

end.
