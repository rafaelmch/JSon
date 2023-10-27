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
  ProcessarJson();
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

    //jsonCountry := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoCountries.Text), 0) as TJsonArray;
    jsonCountry := TJSONObject.ParseJSONValue(RestResponse1.Content) as TJsonArray;

    //jsonName := jsonCountry.GetValue<TJsonObject>('name');
    //jsonNativeName := jsonCountry.GetValue<TJsonObject>('nativeName');

    {
    ShowMessage('Common name: ' + jsonName.GetValue<string>('common', ''));
    ShowMessage('Native Name: ' + jsonNativeName.GetValue<string>('official', ''));
    }

    //via path
    //for i := 0 to jsonCountry.Size - 1 do
    for i := 0 to jsonCountry.Size - 1 do
    begin
      ShowMessage('Name: ' + jsonCountry[i].GetValue<string>('name.common'));
      //ShowMessage('Capital: ' + jsonCountry[i].GetValue<TJsonObject>('capital',''));
      ShowMessage('Languages: ' + jsonCountry[i].GetValue<string>('languages.deu',''));
      ShowMessage('Capital: ' + jsonCountry[i].GetValue<string>('capital['+ i.ToString +']',''));
    end;

    RestClient1.BaseURL := 'https://restcountries.com/v3.1';
  finally
    jsonCountry.DisposeOf;
  end;
end;

end.

//procedure TfrmFetchCountries.ProcessarJson();
//var
//  //jsonCountries : TJsonArray; //[] //TJsonObject []
//  jsonCountries : TJsonObject; //[] //TJsonObject []
//  FoundValue : boolean;
//begin
//  FoundValue := false;
//
//  //RESTRequest1.Execute;
//  //jsonCountries := TJSONObject.ParseJSONValue(RestResponse1.Content) as TJsonArray;
//
//  jsonCountries := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoCountries.Text), 0) as TJsonObject;
//  ShowMessage('Mother: ' + jsonCountries.GetValue<string>('mother',''));
//  ShowMessage('Age: ' + jsonCountries.GetValue<integer>('age',0).ToString);
//  jsonCountries.DisposeOf;
//end;

