program Idosos;



uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {uFormPrincipal},
  cBuscaCEP in 'API\CEP\cBuscaCEP.pas',
  uEnum in 'Herança\uEnum.pas',
  uFrmHeranca in 'Herança\uFrmHeranca.pas' {frmHeranca},
  uDtmConexao in 'DataModule\uDtmConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
