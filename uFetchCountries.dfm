object frmFetchCountries: TfrmFetchCountries
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmFetchCountries'
  ClientHeight = 607
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 76
    Align = alTop
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 76
    Width = 905
    Height = 531
    Align = alClient
    AutoSize = True
    TabOrder = 1
    object memoCountries: TMemo
      Left = 0
      Top = 176
      Width = 895
      Height = 249
      Lines.Strings = (
        '['
        '   {'
        '      "name":{'
        '         "common":"Germany",'
        '         "official":"Federal Republic of Germany",'
        '         "nativeName":{'
        '            "deu":{'
        '               "official":"Bundesrepublik Deutschland",'
        '               "common":"Deutschland"'
        '            }'
        '         }'
        '      },'
        '      "tld":['
        '         ".de",'
        '         ".teste"'
        '      ],'
        '      "cca2":"DE",'
        '      "ccn3":"276",'
        '      "cca3":"DEU",'
        '      "cioc":"GER",'
        '      "independent":true,'
        '      "status":"officially-assigned",'
        '      "unMember":true,'
        '      "currencies":{'
        '         "EUR":{'
        '            "name":"Euro",'
        '            "symbol":"'#8364'"'
        '         }'
        '      },'
        '      "idd":{'
        '         "root":"+4",'
        '         "suffixes":['
        '            "9"'
        '         ]'
        '      },'
        '      "capital":['
        '         "Berlin",'
        '         "FrankFurt"'
        '      ],'
        '      "altSpellings":['
        '         "DE",'
        '         "Federal Republic of Germany",'
        '         "Bundesrepublik Deutschland"'
        '      ],'
        '      "region":"Europe",'
        '      "subregion":"Western Europe",'
        '      "languages":{'
        '         "deu":"German"'
        '      },'
        '      "translations":{'
        '         "ara":{'
        '            "official":"'#1580#1605#1607#1608#1585#1610#1577' '#1571#1604#1605#1575#1606#1610#1575' '#1575#1604#1575#1578#1581#1575#1583#1610#1577'",'
        '            "common":"'#1571#1604#1605#1575#1606#1610#1575'"'
        '         },'
        '         "bre":{'
        '            "official":"Republik Kevreadel Alamagn",'
        '            "common":"Alamagn"'
        '         },'
        '         "ces":{'
        '            "official":"Spolkov'#225' republika N'#283'mecko",'
        '            "common":"N'#283'mecko"'
        '         },'
        '         "cym":{'
        '            "official":"Federal Republic of Germany",'
        '            "common":"Germany"'
        '         },'
        '         "deu":{'
        '            "official":"Bundesrepublik Deutschland",'
        '            "common":"Deutschland"'
        '         },'
        '         "est":{'
        '            "official":"Saksamaa Liitvabariik",'
        '            "common":"Saksamaa"'
        '         },'
        '         "fin":{'
        '            "official":"Saksan liittotasavalta",'
        '            "common":"Saksa"'
        '         },'
        '         "fra":{'
        '            "official":"R'#233'publique f'#233'd'#233'rale d'#39'Allemagne",'
        '            "common":"Allemagne"'
        '         },'
        '         "hrv":{'
        '            "official":"Njema'#269'ka Federativna Republika",'
        '            "common":"Njema'#269'ka"'
        '         },'
        '         "hun":{'
        '            "official":"N'#233'met Sz'#246'vets'#233'gi K'#246'zt'#225'rsas'#225'g",'
        '            "common":"N'#233'metorsz'#225'g"'
        '         },'
        '         "ita":{'
        '            "official":"Repubblica federale di Germania",'
        '            "common":"Germania"'
        '         },'
        '         "jpn":{'
        '            "official":"'#12489#12452#12484#36899#37030#20849#21644#22269'",'
        '            "common":"'#12489#12452#12484'"'
        '         },'
        '         "kor":{'
        '            "official":"'#46021#51068' '#50672#48169' '#44277#54868#44397'",'
        '            "common":"'#46021#51068'"'
        '         },'
        '         "nld":{'
        '            "official":"Bondsrepubliek Duitsland",'
        '            "common":"Duitsland"'
        '         },'
        '         "per":{'
        '            "official":"'#1580#1605#1607#1608#1585#1740' '#1601#1583#1585#1575#1604' '#1570#1604#1605#1575#1606'",'
        '            "common":"'#1570#1604#1605#1575#1606'"'
        '         },'
        '         "pol":{'
        '            "official":"Republika Federalna Niemiec",'
        '            "common":"Niemcy"'
        '         },'
        '         "por":{'
        '            "official":"Rep'#250'blica Federal da Alemanha",'
        '            "common":"Alemanha"'
        '         },'
        '         "rus":{'
        '            "official":"'#1060#1077#1076#1077#1088#1072#1090#1080#1074#1085#1072#1103' '#1056#1077#1089#1087#1091#1073#1083#1080#1082#1072' '#1043#1077#1088#1084#1072#1085#1080#1103'",'
        '            "common":"'#1043#1077#1088#1084#1072#1085#1080#1103'"'
        '         },'
        '         "slk":{'
        '            "official":"Nemeck'#225' spolkov'#225' republika",'
        '            "common":"Nemecko"'
        '         },'
        '         "spa":{'
        '            "official":"Rep'#250'blica Federal de Alemania",'
        '            "common":"Alemania"'
        '         },'
        '         "srp":{'
        '            "official":"'#1057#1072#1074#1077#1079#1085#1072' '#1056#1077#1087#1091#1073#1083#1080#1082#1072' '#1053#1077#1084#1072#1095#1082#1072'",'
        '            "common":"'#1053#1077#1084#1072#1095#1082#1072'"'
        '         },'
        '         "swe":{'
        '            "official":"F'#246'rbundsrepubliken Tyskland",'
        '            "common":"Tyskland"'
        '         },'
        '         "tur":{'
        '            "official":"Almanya Federal Cumhuriyeti",'
        '            "common":"Almanya"'
        '         },'
        '         "urd":{'
        '            "official":"'#1608#1601#1575#1602#1740' '#1580#1605#1729#1608#1585#1740#1729' '#1580#1585#1605#1606#1740'",'
        '            "common":"'#1580#1585#1605#1606#1740'"'
        '         },'
        '         "zho":{'
        '            "official":"'#24503#24847#24535#32852#37030#20849#21644#22269'",'
        '            "common":"'#24503#22269'"'
        '         }'
        '      },'
        '      "latlng":['
        '         51.0,'
        '         9.0'
        '      ],'
        '      "landlocked":false,'
        '      "borders":['
        '         "AUT",'
        '         "BEL",'
        '         "CZE",'
        '         "DNK",'
        '         "FRA",'
        '         "LUX",'
        '         "NLD",'
        '         "POL",'
        '         "CHE"'
        '      ],'
        '      "area":357114.0,'
        '      "demonyms":{'
        '         "eng":{'
        '            "f":"German",'
        '            "m":"German"'
        '         },'
        '         "fra":{'
        '            "f":"Allemande",'
        '            "m":"Allemand"'
        '         }'
        '      },'
        '      "flag":"\uD83C\uDDE9\uD83C\uDDEA",'
        '      "maps":{'
        '         "googleMaps":"https://goo.gl/maps/mD9FBMq1nvXUBrkv6",'
        
          '         "openStreetMaps":"https://www.openstreetmap.org/relatio' +
          'n/51477"'
        '      },'
        '      "population":83240525,'
        '      "gini":{'
        '         "2016":31.9'
        '      },'
        '      "fifa":"GER",'
        '      "car":{'
        '         "signs":['
        '            "DY"'
        '         ],'
        '         "side":"right"'
        '      },'
        '      "timezones":['
        '         "UTC+01:00"'
        '      ],'
        '      "continents":['
        '         "Europe"'
        '      ],'
        '      "flags":{'
        '         "png":"https://flagcdn.com/w320/de.png",'
        '         "svg":"https://flagcdn.com/de.svg",'
        
          '         "alt":"The flag of Germany is composed of three equal h' +
          'orizontal bands of black, red and gold."'
        '      },'
        '      "coatOfArms":{'
        
          '         "png":"https://mainfacts.com/media/images/coats_of_arms' +
          '/de.png",'
        
          '         "svg":"https://mainfacts.com/media/images/coats_of_arms' +
          '/de.svg"'
        '      },'
        '      "startOfWeek":"monday",'
        '      "capitalInfo":{'
        '         "latlng":['
        '            52.52,'
        '            13.4'
        '         ]'
        '      },'
        '      "postalCode":{'
        '         "format":"#####",'
        '         "regex":"^(\\d{5})$"'
        '      }'
        '   }'
        ']')
      TabOrder = 0
    end
    object btnConsultarCEP: TButton
      Left = 361
      Top = 458
      Width = 105
      Height = 25
      Caption = 'Processar JSon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnConsultarCEPClick
    end
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://restcountries.com/v3.1'
    Params = <>
    Left = 384
    Top = 88
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 472
    Top = 88
  end
  object RESTResponse1: TRESTResponse
    Left = 328
    Top = 160
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 456
    Top = 160
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    Left = 552
    Top = 128
  end
end
