inherited frmBanheiro: TfrmBanheiro
  Caption = 'Necessidades Fisiol'#243'gicas'
  ClientHeight = 305
  ClientWidth = 809
  ExplicitWidth = 821
  ExplicitHeight = 343
  TextHeight = 13
  inherited pnlRodape: TPanel
    Top = 268
    Width = 809
    ExplicitTop = 267
    ExplicitWidth = 805
    inherited btnNavegator: TDBNavigator
      Hints.Strings = ()
    end
    inherited brnFechar: TBitBtn
      Left = 699
      ExplicitLeft = 695
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 809
    Height = 268
    ActivePage = tbManutencao
    ExplicitWidth = 805
    ExplicitHeight = 267
    inherited tbLista: TTabSheet
      ExplicitWidth = 801
      ExplicitHeight = 240
      inherited pnlCabecalho: TPanel
        Width = 801
        ExplicitWidth = 801
      end
      inherited gridLista: TDBGrid
        Width = 801
        Height = 191
        Columns = <
          item
            Expanded = False
            FieldName = 'BANHEIRO_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIURESE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_DIURESE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EVACUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_EVACUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_BANHEIRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE_ID'
            Visible = True
          end>
      end
    end
    inherited tbManutencao: TTabSheet
      ExplicitWidth = 801
      ExplicitHeight = 240
      object lblDataNascimento: TLabel
        Left = 3
        Top = 62
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object lblCliente: TLabel
        Left = 3
        Top = 117
        Width = 62
        Height = 13
        Caption = 'Morador(a)'
      end
      object edtCodigo: TLabeledEdit
        Tag = 1
        Left = 3
        Top = 20
        Width = 115
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 0
        Text = ''
      end
      object edtData: TDateEdit
        Left = 3
        Top = 76
        Width = 115
        Height = 21
        DialogTitle = 'Selecione a data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 1
      end
      object edtDiurese: TLabeledEdit
        Left = 353
        Top = 76
        Width = 112
        Height = 21
        EditLabel.Width = 95
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade Diurese'
        MaxLength = 2
        TabOrder = 2
        Text = ''
      end
      object edtEvacuacao: TLabeledEdit
        Left = 353
        Top = 20
        Width = 112
        Height = 21
        EditLabel.Width = 111
        EditLabel.Height = 13
        EditLabel.Caption = 'Quantidade Evacua'#231#227'o'
        MaxLength = 2
        TabOrder = 3
        Text = ''
      end
      object cbEvacuacao: TCheckBox
        Left = 200
        Top = 22
        Width = 97
        Height = 17
        Caption = 'Evacuou?'
        TabOrder = 4
      end
      object cbDiurese: TCheckBox
        Left = 200
        Top = 75
        Width = 97
        Height = 17
        Caption = 'Diurese?'
        TabOrder = 5
      end
      object edtCliente: TDBLookupComboBox
        Left = 3
        Top = 131
        Width = 462
        Height = 21
        KeyField = 'CLIENTE_ID'
        ListField = 'NOME'
        ListSource = dtsLista
        TabOrder = 6
      end
    end
  end
  inherited dtsLista: TDataSource
    DataSet = qryLista
    Left = 308
    Top = 200
  end
  inherited qryLista: TADOQuery
    Connection = dtmConexao.conexaoDB
    CursorType = ctStatic
    SQL.Strings = (
      'SELECT BANHEIRO.*, '
      'CLIENTES.NOME'
      'FROM BANHEIRO'
      'LEFT JOIN CLIENTES ON BANHEIRO.CLIENTE_ID = CLIENTES.CLIENTE_ID')
    Left = 244
    Top = 200
    object qryListaBANHEIRO_ID: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BANHEIRO_ID'
      ReadOnly = True
    end
    object qryListaNOME: TStringField
      DisplayLabel = 'Morador(a)'
      FieldName = 'NOME'
      Size = 50
    end
    object qryListaDIURESE: TStringField
      DisplayLabel = 'Diurese?'
      FieldName = 'DIURESE'
      Size = 1
    end
    object qryListaQTD_DIURESE: TIntegerField
      DisplayLabel = 'Quantidade Diurese'
      FieldName = 'QTD_DIURESE'
    end
    object qryListaEVACUACAO: TStringField
      DisplayLabel = 'Evacuou?'
      FieldName = 'EVACUACAO'
      Size = 1
    end
    object qryListaQTD_EVACUACAO: TIntegerField
      DisplayLabel = 'Quantidade Evacua'#231#227'o'
      FieldName = 'QTD_EVACUACAO'
    end
    object qryListaDATA_BANHEIRO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA_BANHEIRO'
    end
    object qryListaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Visible = False
    end
  end
  object dtsClientes: TDataSource
    DataSet = qryClientes
    Left = 612
    Top = 160
  end
  object qryClientes: TADOQuery
    Connection = dtmConexao.conexaoDB
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 524
    Top = 176
  end
end
