object frmJsonFiles: TfrmJsonFiles
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmJsonFiles'
  ClientHeight = 611
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object panelJsonFiles: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 544
    Align = alClient
    TabOrder = 0
  end
  object panelButtons: TPanel
    Left = 0
    Top = 544
    Width = 804
    Height = 67
    Align = alBottom
    TabOrder = 1
    object readJsonFile: TButton
      Left = 335
      Top = 10
      Width = 105
      Height = 49
      Caption = 'Process Json'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = readJsonFileClick
    end
  end
  object memoJsonFile: TMemo
    Left = 0
    Top = 0
    Width = 804
    Height = 544
    Align = alClient
    Lines.Strings = (
      '{'
      '  "retorno": {'
      '    "produtos": ['
      '      {'
      '        "produto": {'
      '          "id": "15878116285",'
      '          "codigo": "00239141",'
      '          "descricao": "Misturador Monocomando",'
      '          "categoria": {'
      '            "id": "4046406",'
      '            "descricao": "Categoria padr'#227'o"'
      '          },'
      '          "pesoLiq": "1.20000",'
      '          "pesoBruto": "1.20000",'
      '          "estoqueMinimo": "0.00",'
      '          "estoqueMaximo": "0.00",'
      '          "spedTipoItem": "",'
      '          "estoqueAtual": 10,'
      '          "depositos": ['
      '            {'
      '              "deposito": {'
      '                "id": "14886467960",'
      '                "nome": "Geral",'
      '                "saldo": 10,'
      '                "desconsiderar": "N",'
      '                "saldoVirtual": 10'
      '              }'
      '            }'
      '          ]'
      '        }'
      '      }'
      '    ]'
      '  }'
      '}')
    TabOrder = 2
  end
end
