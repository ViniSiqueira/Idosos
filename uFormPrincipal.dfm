object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 299
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainMenuPrincipal
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 13
  object mainMenuPrincipal: TMainMenu
    Left = 768
    Top = 48
    object menuCadatros: TMenuItem
      Caption = 'Cadastros'
      object menuClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = menuClientesClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object menuFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = menuFecharClick
      end
    end
    object menuNecessidades: TMenuItem
      Caption = 'Necessidades'
      object menuBanheiro: TMenuItem
        Caption = 'Banheiro'
        OnClick = menuBanheiroClick
      end
    end
  end
end
