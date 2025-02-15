unit JSEcd.Service.Bloco9;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Model.Classes,
  System.Generics.Collections,
  System.Math,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBloco9 = class(TInterfacedObject, IJSEcdServiceBloco9)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FArquivo: TStringList;
    FTotalEcd: Integer;

    procedure SaveToFile;
  public
    function TotalRegistroArquivo: Integer;
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBloco9;
  end;

implementation

{ TJSEcdServiceBloco9 }

constructor TJSEcdServiceBloco9.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
end;

destructor TJSEcdServiceBloco9.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBloco9.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

function TJSEcdServiceBloco9.Execute: TStringList;
var
  registros: TArray<String>;
  reg: string;
  indicador: Integer;
  totalPorRegistro: Integer;
  I: Integer;
begin
  try
    FTotalEcd := 0;
    registros := Counter.GetCounter.Keys.ToArray;
    TArray.sort<String>(registros);

    indicador := IfThen(Counter.GetCounter.Count > 0, 0, 1);
    FArquivo.Add(Format('|9001|%d|', [indicador]));
    Counter.AddCounter('9900');

    for I := 0 to Pred(Length(registros)) do
    begin
      reg := registros[I];
      totalPorRegistro := Counter.GetCounter.Items[reg];
      FTotalEcd := FTotalEcd + totalPorRegistro;

      FArquivo.Add(Format('|9900|%s|%d|', [registros[I], totalPorRegistro]));
      Counter.AddCounter('9900');
    end;

    FArquivo.Add('|9900|9001|1|');
    Counter.AddCounter('9900');
    FArquivo.Add(Format('|9900|9900|%d|',[Counter.GetCounter.Items['9900'] + 2]));
    Counter.AddCounter('9900');
    FArquivo.Add('|9900|9990|1|');
    Counter.AddCounter('9900');
    FArquivo.Add('|9900|9999|1|');
    Counter.AddCounter('9900');

    totalPorRegistro := Counter.GetCounter.Items['9900'] + 2;
    FTotalEcd := FTotalEcd + totalPorRegistro;

    FArquivo.Add(Format('|9990|%d|', [totalPorRegistro]));
    FArquivo.Add(Format('|9999|%d|', [FTotalEcd]));

    Result := FArquivo;
  except
    raise;
  end;
end;

class function TJSEcdServiceBloco9.New(
  Parent: IJSEcdService): IJSEcdServiceBloco9;
begin
  Result := Self.Create(Parent);
end;

procedure TJSEcdServiceBloco9.SaveToFile;
begin
  try
    FArquivo.SaveToFile(FEcdService.Config.NomeArquivoBloco9);
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na grava��o do arquivo em disco: ' + e.Message);
      raise;
    end;
  end;
end;

function TJSEcdServiceBloco9.TotalRegistroArquivo: Integer;
begin
  Result := FTotalEcd;
end;

end.
