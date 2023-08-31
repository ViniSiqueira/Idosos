program Idosos;







uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {uFormPrincipal},
  cBuscaCEP in 'API\CEP\cBuscaCEP.pas',
  uEnum in 'Herança\uEnum.pas',
  uFrmHeranca in 'Herança\uFrmHeranca.pas' {frmHeranca},
  uDtmConexao in 'DataModule\uDtmConexao.pas' {dtmConexao: TDataModule},
  cCadastroCliente in 'Cadastro\cCadastroCliente.pas',
  uCadastroClientes in 'Cadastro\uCadastroClientes.pas' {frmCadastroClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
