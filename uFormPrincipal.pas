unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenuPrincipal = class(TForm)
    mainMenuPrincipal: TMainMenu;
    menuCadatros: TMenuItem;
    menuClientes: TMenuItem;
    menuFechar: TMenuItem;
    N1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure CriarConexaoComBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
  CriarConexaoComBanco;
end;


procedure TfrmMenuPrincipal.menuFecharClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrmMenuPrincipal.CriarConexaoComBanco;
begin

end;

end.

