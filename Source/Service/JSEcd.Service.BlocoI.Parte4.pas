unit JSEcd.Service.BlocoI.Parte4;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.Generics.Collections,
  System.Generics.Defaults,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte4 = class(TInterfacedObject, IJSEcdServiceBlocoIParte4)
  private
    [Weak]
    FEcdService: IJSEcdService;

    [Weak]
    FBlocoIParte2: IJSEcdServiceBlocoIParte2;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure GerarI300;
    procedure GerarI310;
    procedure GerarI350;
    procedure GerarI355(RegI350: TJSEcdModelRegistroI350);
  public
    function ServiceBlocoIParte2(Value: IJSEcdServiceBlocoIParte2): IJSEcdServiceBlocoIParte4;
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte4;
  end;

implementation

{ TJSEcdServiceBlocoIParte4 }

function TJSEcdServiceBlocoIParte4.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte4.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte4.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte4.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte4.Execute: TStringList;
//var
//  ListI100: TStringList;
//  ListI150: TStringList;
begin
//  ListI100 := TStringList.Create;
//  ListI150 := TStringList.Create;
  try
    try
      GerarI350;

//      AdicionaLinhaEcd(ListI100);
//      AdicionaLinhaEcd(ListI150);
      Result := FArquivo;
    except
      on e: Exception Do
      begin
        FArquivo.Free;
//        OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
        Raise;
      end;
    end;
  finally
//    ListI100.Free;
//    ListI150.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte4.GerarI300;
begin
  //Não implementado
end;

procedure TJSEcdServiceBlocoIParte4.GerarI310;
begin
  //Não implementado
end;

procedure TJSEcdServiceBlocoIParte4.GerarI350;
var
  RegI350: TJSEcdModelRegistroI350;
  DAO: IJSEcdDAOI350;
  FListRegI350: TObjectList<TJSEcdModelRegistroI350>;
begin
  DAO := FEcdService.DAO.BlocoIParte4.DAOI350;
  if not Assigned(DAO) then
    Exit;

  FListRegI350 := DAO.List;
  try
    for RegI350 in FListRegI350 do
    begin
      AdicionaLinhaEcd(RegI350);
      GerarI355(RegI350);
    end;

  finally
    FListRegI350.Free;
  end;
end;

procedure TJSEcdServiceBlocoIParte4.GerarI355(RegI350: TJSEcdModelRegistroI350);
var
  RegI355: TJSEcdModelRegistroI355;
  DAO: IJSEcdDAOI355;
  FListRegI355: TObjectList<TJSEcdModelRegistroI355>;
begin
  DAO := FEcdService.DAO.BlocoIParte4.DAOI355;
  if not Assigned(DAO) then
    Exit;

  FListRegI355 := DAO.List;
  try
    for RegI355 in FListRegI355 do
    begin
      AdicionaLinhaEcd(RegI355);
      FBlocoIParte2.AddCodCcus(RegI355.codCcus);
    end;

  finally
    FListRegI355.Free;
  end;
end;

class function TJSEcdServiceBlocoIParte4.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte4;
begin
  Result := Self.Create(Parent);
end;

function TJSEcdServiceBlocoIParte4.ServiceBlocoIParte2(
  Value: IJSEcdServiceBlocoIParte2): IJSEcdServiceBlocoIParte4;
begin
  result  := Self;
  FBlocoIParte2 := Value;
end;

end.
