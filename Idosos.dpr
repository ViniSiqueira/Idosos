program Idosos;







uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {uFormPrincipal},
  cBuscaCEP in 'API\CEP\cBuscaCEP.pas',
  uEnum in 'Herança\uEnum.pas',
  uFrmHeranca in 'Herança\uFrmHeranca.pas' {frmHeranca},
  cCadastroCliente in 'Cadastro\cCadastroCliente.pas',
  uCadastroClientes in 'Cadastro\uCadastroClientes.pas' {frmCadastroClientes},
  uBanheiro in 'Cadastro\uBanheiro.pas' {frmBanheiro},
  cBanheiro in 'Cadastro\cBanheiro.pas',
  uDtmConexao in 'DataModule\uDtmConexao.pas' {dtmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.Run;
end.
