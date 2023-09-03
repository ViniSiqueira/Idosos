unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uBanheiro;

type
  TfrmMenuPrincipal = class(TForm)
    mainMenuPrincipal: TMainMenu;
    menuCadatros: TMenuItem;
    menuClientes: TMenuItem;
    menuFechar: TMenuItem;
    menuNecessidades: TMenuItem;
    menuBanheiro: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure menuClientesClick(Sender: TObject);
    procedure menuBanheiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

uses
  uCadastroClientes;

{$R *.dfm}

procedure TfrmMenuPrincipal.menuBanheiroClick(Sender: TObject);
begin
  frmBanheiro := TfrmBanheiro.Create(self);
  frmBanheiro.ShowModal;
  frmBanheiro.Release;
end;

procedure TfrmMenuPrincipal.menuClientesClick(Sender: TObject);
begin
  frmCadastroClientes := TfrmCadastroClientes.Create(self);
  frmCadastroClientes.ShowModal;
  frmCadastroClientes.Release;
end;

procedure TfrmMenuPrincipal.menuFecharClick(Sender: TObject);
begin
  application.Terminate;
end;

end.

