unit uFetchCountries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.JSON;

type
  TfrmFetchCountries = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    memoCountries: TMemo;
    btnConsultarCEP: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    procedure btnConsultarCEPClick(Sender: TObject);
  private
    procedure ProcessarJson;
    procedure FecthData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFetchCountries: TfrmFetchCountries;

implementation

{$R *.dfm}

procedure TfrmFetchCountries.btnConsultarCEPClick(Sender: TObject);
begin
  //ProcessarJson();
  FecthData();
end;

procedure TfrmFetchCountries.FecthData();
var
  arrGermany, bordersArray, arrCapital : TJsonArray;
  i, j, k : integer;
  info, capital, borders : String;
begin
//[
//   {
//      "name":{
//         "common":"Germany",
//         "official":"Federal Republic of Germany",
//         "nativeName":{
//            "deu":{
//               "official":"Bundesrepublik Deutschland",
//               "common":"Deutschland"
//            }
//         }
//      },
//      "tld":[
//         ".de",
//         ".teste"
//      ],
//      "cca2":"DE",
//      "ccn3":"276",
//      "cca3":"DEU",
//      "cioc":"GER",
//      "independent":true,
//      "status":"officially-assigned",
//      "unMember":true,
//      "currencies":{
//         "EUR":{
//            "name":"Euro",
//            "symbol":"€"
//         }
//      },
//      "idd":{
//         "root":"+4",
//         "suffixes":[
//            "9"
//         ]
//      },
//      "capital":[
//         "Berlin",
//         "FrankFurt"
//      ],
//      "altSpellings":[
//         "DE",
//         "Federal Republic of Germany",
//         "Bundesrepublik Deutschland"
//      ],
//      "region":"Europe",
//      "subregion":"Western Europe",
//      "languages":{
//         "deu":"German"
//      },
//      "translations":{
//         "bre":{
//            "official":"Republik Kevreadel Alamagn",
//            "common":"Alamagn"
//         },
//         "ces":{
//            "official":"Spolková republika Německo",
//            "common":"Německo"
//         },
//         "cym":{
//            "official":"Federal Republic of Germany",
//            "common":"Germany"
//         },
//         "deu":{
//            "official":"Bundesrepublik Deutschland",
//            "common":"Deutschland"
//         },
//         "est":{
//            "official":"Saksamaa Liitvabariik",
//            "common":"Saksamaa"
//         },
//         "fin":{
//            "official":"Saksan liittotasavalta",
//            "common":"Saksa"
//         },
//         "ita":{
//            "official":"Repubblica federale di Germania",
//            "common":"Germania"
//         },
//         "nld":{
//            "official":"Bondsrepubliek Duitsland",
//            "common":"Duitsland"
//         },
//         "pol":{
//            "official":"Republika Federalna Niemiec",
//            "common":"Niemcy"
//         },
//         "spa":{
//            "official":"República Federal de Alemania",
//            "common":"Alemania"
//         },
//         "tur":{
//            "official":"Almanya Federal Cumhuriyeti",
//            "common":"Almanya"
//         },
//      },
//      "latlng":[
//         51.0,
//         9.0
//      ],
//      "landlocked":false,
//      "borders":[
//         "AUT",
//         "BEL",
//         "CZE",
//         "DNK",
//         "FRA",
//         "LUX",
//         "NLD",
//         "POL",
//         "CHE"
//      ],
//      "area":357114.0,
//      "demonyms":{
//         "eng":{
//            "f":"German",
//            "m":"German"
//         },
//         "fra":{
//            "f":"Allemande",
//            "m":"Allemand"
//         }
//      },
//      "flag":"\uD83C\uDDE9\uD83C\uDDEA",
//      "maps":{
//         "googleMaps":"https://goo.gl/maps/mD9FBMq1nvXUBrkv6",
//         "openStreetMaps":"https://www.openstreetmap.org/relation/51477"
//      },
//      "population":83240525,
//      "gini":{
//         "2016":31.9
//      },
//      "fifa":"GER",
//      "car":{
//         "signs":[
//            "DY"
//         ],
//         "side":"right"
//      },
//      "timezones":[
//         "UTC+01:00"
//      ],
//      "continents":[
//         "Europe"
//      ],
//      "flags":{
//         "png":"https://flagcdn.com/w320/de.png",
//         "svg":"https://flagcdn.com/de.svg",
//         "alt":"The flag of Germany is composed of three equal horizontal bands of black, red and gold."
//      },
//      "coatOfArms":{
//         "png":"https://mainfacts.com/media/images/coats_of_arms/de.png",
//         "svg":"https://mainfacts.com/media/images/coats_of_arms/de.svg"
//      },
//      "startOfWeek":"monday",
//      "capitalInfo":{
//         "latlng":[
//            52.52,
//            13.4
//         ]
//      },
//      "postalCode":{
//         "format":"#####",
//         "regex":"^(\\d{5})$"
//      }
//   }
//]
  try
    //Germany only
    RESTClient1.BaseURL := 'https://restcountries.com/v3.1'; //name/deutschland //all
    RESTClient1.BaseURL := RESTClient1.BaseURL + '/name/deutschland';

    //Fetch data
    RESTRequest1.Execute;

    //Get response > into array
    arrGermany := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJsonArray;

    //Read file
    for I := 0 to arrGermany.Size - 1 do
    begin
      //basic info
      info := 'Official name: ' + arrGermany[i].GetValue<string>('name.official','') + sLineBreak +
        'Common name: ' + arrGermany[i].GetValue<string>('name.common','') + sLineBreak;

      //capital
      arrCapital := arrGermany[i].GetValue<TJsonArray>('capital');

      for j := 0 to arrCapital.Size - 1 do
      begin
        capital := capital + arrCapital[j].GetValue<string>('') + sLineBreak;
      end;
      capital := 'Capitals: ' + capital;

      //Borders
      bordersArray := arrGermany[i].GetValue<TJSONArray>('borders');

      for k := 0 to bordersArray.Size - 1 do
      begin
        borders := borders + bordersArray[k].GetValue<string>('') + sLineBreak;
      end;

      borders := 'Borders: ' + borders;

    end;

    ShowMessage(info + sLineBreak + capital + sLineBreak + borders);
  finally

  end;


end;

procedure TfrmFetchCountries.ProcessarJson();
var
  //{} braces [] brackets (arrays)
  //jsonCountry, jsonName, jsonNativeName : TJSONObject;
  jsonCountry : TJsonArray;
  i : Integer;
  countries : string;
begin

  try
    RestClient1.BaseURL := 'https://restcountries.com/v3.1';

    countries := '/name/deutschland'; //'/all'; //'/name/deutschland';

    RestClient1.BaseURL := RestClient1.BaseURL + countries;
    RestRequest1.Execute;

    jsonCountry := TJSONObject.ParseJSONValue(RestResponse1.Content) as TJsonArray;

    //via path
    //for i := 0 to jsonCountry.Size - 1 do
    for i := 0 to jsonCountry.Size - 1 do
    begin
      ShowMessage('Name: ' + jsonCountry[i].GetValue<string>('name.common'));
      //ShowMessage('Capital: ' + jsonCountry[i].GetValue<TJsonObject>('capital',''));
      ShowMessage('Languages: ' + jsonCountry[i].GetValue<string>('languages.deu',''));
      ShowMessage('Currencies: ' + jsonCountry[i].GetValue<string>('currencies.EUR.name'));
      ShowMessage('Currencies: ' + jsonCountry[i].GetValue<string>('currencies.EUR.symbol'));
      ShowMessage('Capital: ' + jsonCountry[i].GetValue<string>('capital['+ i.ToString +']',''));
    end;

    RestClient1.BaseURL := 'https://restcountries.com/v3.1';
  finally
    jsonCountry.DisposeOf;
  end;
end;

end.

