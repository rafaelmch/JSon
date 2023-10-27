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
      '['
      '  {'
      '    "id": 1,'
      '    "costumer": "Rafael Hassegawa",'
      '    "items": ['
      '      {'
      '        "id": 1,'
      '        "description": "Dell Monitor",'
      '        "amount": 2,'
      '        "total": 920.5,'
      '        "details": ['
      '          {'
      '            "id": 1,'
      '            "detail": "1 year warranty"'
      '          },'
      '          {'
      '            "id": 2,'
      '            "detail": "brand new"'
      '          }'
      '        ]'
      '      },'
      '      {'
      '        "id": 2,'
      '        "description": "Logitech Mouse",'
      '        "amount": 3,'
      '        "total": 129.9'
      '      }'
      '    ]'
      '  },'
      '  {'
      '    "id": 2,'
      '    "costumer": "Lisa Hassegawa",'
      '    "items": ['
      '      {'
      '        "id": 1,'
      '        "description": "Samsung Book",'
      '        "amount": 1,'
      '        "total": 8900.5,'
      '        "details": ['
      '          {'
      '            "id": 1,'
      '            "detail": "3 year warranty"'
      '          },'
      '          {'
      '            "id": 2,'
      '            "detail": "brand new"'
      '          }'
      '        ]'
      '      },'
      '      {'
      '        "id": 2,'
      '        "description": "Digital piano",'
      '        "amount": 1,'
      '        "total": 1299.9'
      '      }'
      '    ]'
      '  }'
      ']')
    TabOrder = 2
  end
end
