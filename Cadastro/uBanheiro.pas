unit uBanheiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmHeranca, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, RxToolEdit, uDtmConexao, uEnum, cBanheiro;

type
  TfrmBanheiro = class(TfrmHeranca)
    edtCodigo: TLabeledEdit;
    edtData: TDateEdit;
    lblDataNascimento: TLabel;
    edtDiurese: TLabeledEdit;
    edtEvacuacao: TLabeledEdit;
    cbEvacuacao: TCheckBox;
    cbDiurese: TCheckBox;
    edtCliente: TDBLookupComboBox;
    lblCliente: TLabel;
    dtsClientes: TDataSource;
    qryClientes: TADOQuery;
    qryListaBANHEIRO_ID: TAutoIncField;
    qryListaQTD_DIURESE: TIntegerField;
    qryListaQTD_EVACUACAO: TIntegerField;
    qryListaDIURESE: TStringField;
    qryListaEVACUACAO: TStringField;
    qryListaDATA_BANHEIRO: TDateTimeField;
    qryListaCLIENTE_ID: TIntegerField;
    qryListaNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    oBanheiro : TBanheiro;
  public
    { Public declarations }
    function Apagar: Boolean; override;
    function Salvar(estadoCadastro: TEstadoCadastro): Boolean; override;
  end;

var
  frmBanheiro: TfrmBanheiro;

implementation

{$R *.dfm}

{ TfrmBanheiro }

function TfrmBanheiro.Apagar: Boolean;
begin
  if MessageDlg('Deseja mesmo apagar o registro atual?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
    Abort;

  Result := oBanheiro.Apagar(qryLista.FieldByName('BANHEIRO_ID').AsInteger);
end;

procedure TfrmBanheiro.btnAlterarClick(Sender: TObject);
begin
  if oBanheiro.Selecionar(qryLista.FieldByName('BANHEIRO_ID').AsInteger) then
  begin
    edtCodigo.Text := oBanheiro.BanheiroId.ToString;
    edtDiurese.Text := oBanheiro.QtdDiurese.ToString;
    edtEvacuacao.Text := oBanheiro.QtdEvacuacao.ToString;
    cbDiurese.Checked := oBanheiro.Diurese = 'T';
    cbEvacuacao.Checked :=oBanheiro.Evacuacao = 'T';
    edtData.Date :=oBanheiro.DataBanheiro;
    edtCliente.KeyValue := oBanheiro.ClienteId.ToString;
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;
end;

procedure TfrmBanheiro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryClientes.Close;
  if Assigned(oBanheiro) then
    FreeAndNil(oBanheiro)
end;

procedure TfrmBanheiro.FormCreate(Sender: TObject);
begin
  inherited;
  oBanheiro := TBanheiro.Create(dtmConexao.conexaoDB);
  IndiceAtual := 'nome';
end;

procedure TfrmBanheiro.FormShow(Sender: TObject);
begin
  inherited;
  qryClientes.Open;
end;

function TfrmBanheiro.Salvar(estadoCadastro: TEstadoCadastro): Boolean;
begin
  Result := False;

  if edtCodigo.Text <> EmptyStr then
    oBanheiro.BanheiroId := StrToInt(edtCodigo.Text)
  else
    oBanheiro.BanheiroId := 0;

  oBanheiro.QtdDiurese := StrToInt(edtDiurese.Text);
  oBanheiro.QtdEvacuacao := StrToInt(edtEvacuacao.Text);
  if cbDiurese.Checked then
    oBanheiro.Diurese := 'T'
  else
    oBanheiro.Diurese := 'F';

  if cbEvacuacao.Checked then
    oBanheiro.Evacuacao := 'T'
  else
    oBanheiro.Evacuacao := 'F';

  oBanheiro.DataBanheiro := edtData.Date;
  oBanheiro.ClienteId := edtCliente.KeyValue;

  if EstadoCadastro = ecNovo then
    Result := oBanheiro.Inserir
  else if EstadoCadastro = ecAlterar then
    Result := oBanheiro.Atualizar;
end;

end.