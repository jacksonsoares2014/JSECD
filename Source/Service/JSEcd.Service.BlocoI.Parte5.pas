unit JSEcd.Service.BlocoI.Parte5;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
//  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte5 = class(TInterfacedObject, IJSEcdServiceBlocoIParte5)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FI990: TJSEcdModelRegistroI990;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure SaveToFile;
  public
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte5;
  end;

implementation

{ TJSEcdServiceBlocoIParte5 }

function TJSEcdServiceBlocoIParte5.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte5.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte5.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);

  FI990 := TJSEcdModelRegistroI990.create;
end;

destructor TJSEcdServiceBlocoIParte5.Destroy;
begin
  FreeAndNil(FI990);
  inherited;
end;

function TJSEcdServiceBlocoIParte5.Execute: TStringList;
begin
  try
//      Gerar qualquer coisa;
    Result := FArquivo;
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
      Raise;
    end;
  end;
end;

class function TJSEcdServiceBlocoIParte5.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte5;
begin
  Result := Self.Create(Parent);
end;

procedure TJSEcdServiceBlocoIParte5.SaveToFile;
begin
  try
    FArquivo.SaveToFile(FEcdService.Config.NomeArquivoBlocoIParte5);
  except
    on e: Exception do
    begin
//      OnLogErro('Houve erro na gravação do arquivo em disco: ' + e.Message);
      raise;
    end;
  end;
end;

end.
