unit uJsonFiles;


//A basic JSON file looks like:

//JSon1
{
  "codigo": 123,
  "nome": "Rafael Hassegawa",
  "credito": 1500.92,
  "ativo": true,
  "cadastro": "2023-12-19"
}
//end

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.JSON;

type
  TfrmJsonFiles = class(TForm)
    panelJsonFiles: TPanel;
    panelButtons: TPanel;
    readJsonFile: TButton;
    memoJsonFile: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure readJsonFileClick(Sender: TObject);
  private
    procedure readJson1;
    procedure ReadJson2;
    procedure ReadJson3;
    procedure ReadJson4;
    procedure ReadJson5;
    procedure ReadJson6;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJsonFiles: TfrmJsonFiles;

implementation

{$R *.dfm}

procedure TfrmJsonFiles.readJsonFileClick(Sender: TObject);
begin
  //readJson1();
  //readJson2();
  //ReadJson3()
  //ReadJson4();
  //ReadJson5();
  ReadJson6();
end;

procedure TfrmJsonFiles.readJson1();
var
  JSon1 : TJSONObject;
begin
  {
    "codigo": 123,
    "nome": "Rafael Hassegawa",
    "credito": 1500.92,
    "ativo": true,
    "cadastro": "2023-12-19"
  }

  JSon1 := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJSONObject;

  //I can make the codigo a string or an integer
  ShowMessage('Codigo: ' + JSon1.GetValue<integer>('codigo',0).ToString);
  ShowMessage('Codigo: ' + JSon1.GetValue<string>('codigo',''));

  //nome

  ShowMessage('Ativo: ' + JSon1.GetValue<string>('ativo',''));

  JSon1.DisposeOf;
end;

procedure TfrmJsonFiles.ReadJson2();
var
  jsonArray : TJsonArray;
  i : Integer;
begin
//The following JSon file contains brackets, which mean it's an array of objects
//  [
//    {
//      "id": 1,
//      "costumer": "Rafael Hassegawa"
//    },
//    {
//      "id": 2,
//      "costumer": "Lisa Hassegawa"
//    }
//  ]
  jsonArray := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJsonArray;

  for I := 0 to jsonArray.Size - 1 do
  begin
    ShowMessage(jsonArray[i].GetValue<integer>('id',0).ToString);
    ShowMessage(jsonArray[i].GetValue<string>('costumer',''));
  end;

  jsonArray.DisposeOf;
end;

procedure TfrmJsonFiles.ReadJson3();
var
  JsonObject : TJsonObject;
  JsonArray : TJsonArray;
  i : integer;
  ls_Message : string;
begin
//{
//  "id": 123,
//  "costumer": "Rafael Hassegawa",
//  "items": [
//    {
//      "id": 1,
//      "description": "Dell Monitor",
//      "amount": 2,
//      "total": 920.5
//    },
//    {
//      "id": 2,
//      "description": "Logitech Mouse",
//      "amount": 3,
//      "total": 129.9
//    }
//  ]
//}
  JsonObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJsonObject;
  //JsonArray := JsonObject.GetValue<TJSONArray>('items');

  ShowMessage('ID: ' + JsonObject.GetValue<string>('id',''));
  ShowMessage('Costumer: ' + JsonObject.GetValue<string>('costumer',''));
  for i := 0 to JsonObject.GetValue<TJSONArray>('items').Size - 1 do
  begin
//    ls_Message := JsonArray[i].GetValue<string>('id','') + sLineBreak +
//      JsonArray[i].GetValue<string>('description','') + sLineBreak +
//      JsonArray[i].GetValue<double>('amount',0).ToString + sLineBreak +
//      JsonArray[i].GetValue<double>('total',0).ToString;

    ls_Message := JsonObject.GetValue<integer>('items[' + i.ToString + '].id').ToString + sLineBreak +
      JsonObject.GetValue<string>('items[' + i.ToString + '].description') + sLineBreak +
      JsonObject.GetValue<double>('items[' + i.ToString + '].amount').ToString + sLineBreak +
      JsonObject.GetValue<double>('items[' + i.ToString + '].total').ToString;

    ShowMessage(ls_Message);
  end;

  JsonObject.DisposeOf;
end;

procedure TfrmJsonFiles.ReadJson4();
var
  jsonObject : TJsonObject;
  itemsArray, detailsArray : TJsonArray;
  ls_message : string;
  i, j : integer;
begin
//Json 4
//{
//  "id": 123,
//  "costumer": "Rafael Hassegawa",
//  "items": [
//    {
//      "id": 1,
//      "description": "Dell Monitor",
//      "amount": 2,
//      "total": 920.5,
//      "details": [
//        {
//          "id": 1,
//          "detail": "1 year warranty"
//        },
//        {
//          "id": 2,
//          "detail": "brand new"
//        }
//      ]
//    },
//    {
//      "id": 2,
//      "description": "Logitech Mouse",
//      "amount": 3,
//      "total": 129.9
//    }
//  ]
//}
  try
    jsonObject := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJSONObject;
    itemsArray := jsonObject.GetValue<TJsonArray>('items');

    ls_message := 'ID: ' + jsonObject.GetValue<string>('id', '') + sLineBreak +
      'Costumer: ' + jsonObject.GetValue<string>('costumer', '');

    ShowMessage(ls_message);

    //items
    for I := 0 to itemsArray.Size - 1 do
    begin

      ls_message := 'ID: ' + jsonObject.GetValue<string>('items[' + i.ToString + '].id','') + sLineBreak +
        'Description: ' + jsonObject.GetValue<string>('items[' + i.ToString + '].description','') + sLineBreak +
        'Amount: ' + jsonObject.GetValue<double>('items[' + i.ToString + '].amount',0).ToString + sLineBreak +
        'Total: ' + jsonObject.GetValue<double>('items[' + i.ToString + '].total',0).ToString;

      ShowMessage(ls_message);

      //details
      try
        detailsArray := itemsArray[i].GetValue<TJsonArray>('details');

        for J := 0 to detailsArray.Size - 1 do
        begin
          ls_message := 'Detail ID: ' + detailsArray[J].GetValue<integer>('id',0).ToString + sLineBreak +
            'Detail description: ' + detailsArray[J].GetValue<string>('detail','');

          ShowMessage(ls_message);
        end;
      except
        exit;
      end;
    end;
  finally
    jsonObject.DisposeOf;
  end;
end;

procedure TfrmJsonFiles.ReadJson5();
var
  jsonArray, itemsArray, detailsArray : TJsonArray;
  i, j, k : Integer;
  ls_message : string;
begin
//[
//  {
//    "id": 1,
//    "costumer": "Rafael Hassegawa",
//    "items": [
//      {
//        "id": 1,
//        "description": "Dell Monitor",
//        "amount": 2,
//        "total": 920.5,
//        "details": [
//          {
//            "id": 1,
//            "detail": "1 year warranty"
//          },
//          {
//            "id": 2,
//            "detail": "brand new"
//          }
//        ]
//      },
//      {
//        "id": 2,
//        "description": "Logitech Mouse",
//        "amount": 3,
//        "total": 129.9
//      }
//    ]
//  },
//  {
//    "id": 2,
//    "costumer": "Lisa Hassegawa",
//    "items": [
//      {
//        "id": 1,
//        "description": "Samsung Book",
//        "amount": 1,
//        "total": 8900.5,
//        "details": [
//          {
//            "id": 1,
//            "detail": "3 year warranty"
//          },
//          {
//            "id": 2,
//            "detail": "brand new"
//          }
//        ]
//      },
//      {
//        "id": 2,
//        "description": "Digital piano",
//        "amount": 1,
//        "total": 1299.9
//      }
//    ]
//  }
//]
  try
    jsonArray := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJsonArray;

    for I := 0 to jsonArray.Size - 1 do
    begin
      //orders
      ls_message := 'JSON 5 - Order ID: ' + jsonArray[i].GetValue<string>('id', '') + sLineBreak +
        'Costumer: ' + jsonArray[i].GetValue<string>('costumer', '') + sLineBreak;

      ShowMessage(ls_message);
      //items
      itemsArray := jsonArray[i].GetValue<TJSONArray>('items');

      try
        for j := 0 to itemsArray.Size - 1 do
        begin
          ls_message := 'Item ID: ' + itemsArray[j].GetValue<integer>('id', 0).ToString + sLineBreak +
            'Description: ' + itemsArray[j].GetValue<string>('description', '') + sLineBreak +
            'Amount ' + itemsArray[j].GetValue<double>('amount', 0).ToString + sLineBreak +
            'Total: ' + itemsArray[j].GetValue<double>('total', 0).ToString + sLineBreak;

          ShowMessage(ls_message);

          //details
          try
            detailsArray := itemsArray[j].GetValue<TJSONArray>('details');

            for k := 0 to detailsArray.Size - 1 do
            begin
              ls_message := 'Detail ID: ' + detailsArray[k].GetValue<integer>('id', 0).ToString + sLineBreak +
                'Detail description: ' + detailsArray[k].GetValue<string>('detail', '');

              ShowMessage(ls_message);
            end;
          except

          end;

        end;
      except

      end;

    end;

  finally

  end;
end;

procedure TfrmJsonFiles.ReadJson6();
var
  objProduto : TJSONObject;
  arrProduto, arrDepositos :TJsonArray;
  i, j : integer;
  deposito : string;
begin
//{
//  "retorno": {
//    "produtos": [
//      {
//        "produto": {
//          "id": "15878116285",
//          "codigo": "00239141",
//          "descricao": "Misturador Monocomando",
//          "categoria": {
//            "id": "4046406",
//            "descricao": "Categoria padrão"
//          },
//          "pesoLiq": "1.20000",
//          "pesoBruto": "1.20000",
//          "estoqueMinimo": "0.00",
//          "estoqueMaximo": "0.00",
//          "spedTipoItem": "",
//          "estoqueAtual": 10,
//          "depositos": [
//            {
//              "deposito": {
//                "id": "14886467960",
//                "nome": "Geral",
//                "saldo": 10,
//                "desconsiderar": "N",
//                "saldoVirtual": 10
//              }
//            }
//          ]
//        }
//      }
//    ]
//  }
//}
  try
    //main object
    objProduto := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(memoJsonFile.Text),0) as TJsonObject;
    //product
    arrProduto := objProduto.GetValue<TJSONArray>('retorno.produtos');

    for I := 0 to arrProduto.Size - 1 do
    begin
      ShowMessage('Descrição: ' + arrProduto[i].GetValue<string>('produto.descricao',''));

      //depósitos
      arrDepositos := arrProduto[i].GetValue<TJSONArray>('produto.depositos');
      for j := 0 to arrDepositos.Size - 1 do
      begin
//          "depositos": [
//            {
//              "deposito": {
//                "id": "14886467960",
//                "nome": "Geral",
//                "saldo": 10,
//                "desconsiderar": "N",
//                "saldoVirtual": 10
//              }
//            }
//          ]
        deposito := 'Detalhes depósito: ' + sLineBreak +
          'ID depósito: ' + arrDepositos[j].GetValue<string>('deposito.id','') + sLineBreak +
          'Nome depósito: ' + arrDepositos[j].GetValue<string>('deposito.nome','') + sLineBreak +
          'Saldo: ' + arrDepositos[j].GetValue<integer>('deposito.saldo',0).ToString + sLineBreak +
          'Desconsiderar: ' + arrDepositos[j].GetValue<string>('deposito.desconsiderar','') + sLineBreak +
          'Saldo virtual: ' + arrDepositos[j].GetValue<double>('deposito.saldo',0).ToString;

        ShowMessage(deposito);
      end;
    end;

  finally
    objProduto.DisposeOf();
  end;
end;

procedure TfrmJsonFiles.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

end.
