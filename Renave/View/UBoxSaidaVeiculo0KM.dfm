�
 TBOXSAIDAVEICULO0KM 0�  TPF0TBoxSaidaVeiculo0KMBoxSaidaVeiculo0KMLeft Top BorderStylebsToolWindowCaption   Saída de Veículo do EstoqueClientHeightGClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TLabelLabel2Left� TopkWidthGHeightCaptionData da Venda  TLabelLabel4Left"TopkWidthHHeightCaptionValor da Venda  TSpeedButtonbtnConsultaCidadeLeft@TopWidthHeightHintConsultar CidadeOnClickbtnConsultaCidadeClick  TSpeedButtonSpeedButton2LeftTopWidth� Height!Caption   Pesquisa veículoOnClickSpeedButton2Click  TSpeedButtonSpeedButton3Left� TopWidth� Height!CaptionPesquisa ClienteOnClickSpeedButton3Click  TLabeledEditedtIDLeftTopPWidth� HeightEditLabel.Width5EditLabel.HeightEditLabel.Caption
ID EstoqueLabelSpacingNumbersOnly	TabOrder   TLabeledEditedtChaveNFeLeft� TopPWidth�HeightEditLabel.WidthHEditLabel.HeightEditLabel.CaptionChave da NF-eLabelSpacingNumbersOnly	TabOrder  TLabeledEditedtCpfOperadorLeftTop� Width� HeightEditLabel.WidthSEditLabel.HeightEditLabel.CaptionCPF do OperadorLabelSpacingTabOrder  TJvDateEditedtDataVendaLeft� Top� WidthyHeightShowNullDateTabOrder  TJvCalcEditedtValorVendaLeft Top� WidthyHeightFlat
ParentFlatDisplayFormat,0.00FormatOnEditing	TabOrderDecimalPlacesAlwaysShown  TLabeledEditedtEmailLeftTop� Width�HeightEditLabel.WidthxEditLabel.HeightEditLabel.CaptionEmail do EstabelecimentoLabelSpacingTabOrder  TLabeledEditedtNomeCompradorLeftTop� Width�HeightEditLabel.WidthbEditLabel.HeightEditLabel.CaptionNome do CompradorLabelSpacingNumbersOnly	TabOrder  TLabeledEditedtCpfCompradorLeft�Top� Width� HeightEditLabel.WidthZEditLabel.HeightEditLabel.CaptionCPF do CompradorLabelSpacing	MaxLengthNumbersOnly	TabOrder  TLabeledEditedtLogradouroLeftTopWidthHeightEditLabel.Width~EditLabel.HeightEditLabel.CaptionLogradouro do CompradorLabelSpacingTabOrder  TLabeledEdit	edtNumeroLeft*TopWidthJHeightEditLabel.Width%EditLabel.HeightEditLabel.Caption   NúmeroLabelSpacingTabOrder	  TLabeledEditedtCepLeftTopHWidthaHeightEditLabel.WidthEditLabel.HeightEditLabel.CaptionCEPLabelSpacing	MaxLengthTabOrder  TLabeledEdit	edtBairroLeft*TopHWidth-HeightEditLabel.WidthEditLabel.HeightEditLabel.CaptionBairroLabelSpacingTabOrder  TLabeledEditedtComplementoLeftrTopHWidth� HeightEditLabel.WidthAEditLabel.HeightEditLabel.CaptionComplementoLabelSpacingTabOrder  TLabeledEditedtCodigoCidadeLeft[TopHWidth=HeightEditLabel.Width8EditLabel.HeightEditLabel.Caption   Cód.CidadeLabelSpacing	MaxLengthNumbersOnly	TabOrder  TBitBtnbtnConsultarLeft�TopkWidthKHeightCaptionOKTabOrderOnClickbtnConsultarClick  TBitBtnbtnSairLeftMTopkWidthKHeightCaptionSairModalResultTabOrder  TMemoedtResultadoLeftTop�Width�Height� ReadOnly	TabOrder  TLabeledEdit	edtCidadeLeftzTopWidth� HeightEditLabel.Width!EditLabel.HeightEditLabel.CaptionCidadeLabelSpacingTabOrder
  TLabeledEditedtUFLeft]TopWidth;HeightEditLabel.WidthEditLabel.HeightEditLabel.CaptionUFLabelSpacing	MaxLengthTabOrder  TRadioGroupRadioGroup1Left�Top� WidthAHeight&	ItemIndex Items.StringsCPFCNPJ TabOrder  TIBQuery
qryClienteDatabaseFDB1.IBDatabaseTransactionFDB1.IBTransaction
ObjectView	BufferChunks�CachedUpdates
ParamCheck	SQL.Strings7SELECT * FROM CLIENTES WHERE ID_CLIENTES = :ID_CLIENTES LeftPTop	ParamDataDataType	ftUnknownNameID_CLIENTES	ParamType	ptUnknown    TIBQueryqryNotaDatabaseFDB1.IBDatabaseTransactionFDB1.IBTransaction
ObjectView	BufferChunks�CachedUpdates
ParamCheck	SQL.Stringsselectn.id_clientes,n.chave,v.id_estoque,
n.emissao,n.tot_nota,s.chassi        fromsada s    0inner join nofisa n on n.id_nofisa = s.id_nofisa,inner join veiculos v on v.chassi = s.chassi    where s.chassi = :chassiandn.ent_sai = 'S' Left�Top	ParamDataDataType	ftUnknownNamechassi	ParamType	ptUnknown     