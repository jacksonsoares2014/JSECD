unit JSEcd.Service.BlocoI.Parte1;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.Counter,
  JSEcd.Export.Interfaces,
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  JSEcd.Model.Types,
  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TJSEcdServiceBlocoIParte1 = class(TInterfacedObject, IJSEcdServiceBlocoIParte1)
  private
    [Weak]
    FEcdService: IJSEcdService;

    FacadeExport: IJSEcdExportFacade;
    FArquivo: TStringList;
    FIndexOfI030: Integer;

    procedure AdicionaLinhaEcd(ARegistro: TJSEcdModelRegistro);
    procedure GerarI010;
    procedure GerarI012;
    procedure GerarI015;
    procedure GerarI020;
    procedure GerarI030;
    procedure GerarI050;
    procedure GerarI051(RegI050: TJSEcdModelRegistroI050);
    procedure GerarI052(RegI050: TJSEcdModelRegistroI050);
    procedure GerarI053;
    procedure GerarI075;
  public
    function IndexOfI030: Integer;
    function Execute: TStringList;
    function &End: IJSEcdService;

    constructor Create(Parent: IJSEcdService);
    destructor Destroy; override;
    class function New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
  end;

implementation

{ TJSEcdServiceBlocoIParte1 }

function TJSEcdServiceBlocoIParte1.&End: IJSEcdService;
begin
  Result := FEcdService;
end;

procedure TJSEcdServiceBlocoIParte1.AdicionaLinhaEcd(
  ARegistro: TJSEcdModelRegistro);
begin
  Counter.AddCounter(ARegistro);
  FArquivo.Add(FacadeExport.LinhaEcd(ARegistro));
end;

constructor TJSEcdServiceBlocoIParte1.Create(Parent: IJSEcdService);
begin
  FArquivo := TStringList.Create;
  FEcdService := Parent;
  FacadeExport := JSEcd.Export.Interfaces
                    .FacadeExport(FEcdService.Config);
end;

destructor TJSEcdServiceBlocoIParte1.Destroy;
begin

  inherited;
end;

function TJSEcdServiceBlocoIParte1.Execute: TStringList;
begin
  try
    FIndexOfI030 := -1;
    GerarI010;
    Result := FArquivo;
  except
    on e: Exception do
    begin
      FreeAndNil(FArquivo);
//      OnLogErro('Houve erro na geração do bloco 0: ' + e.Message);
      Raise;
    end;
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI010;
var
  RegI010: TJSEcdModelRegistroI010;
begin
  RegI010 := TJSEcdModelRegistroI010.create;
  try
    RegI010.indEsc.FromString(FEcdService.Config.Geral.TipoEscrituracao);
    RegI010.codVerLc := '9.00';
    AdicionaLinhaEcd(RegI010);

    case RegI010.indEsc of
      ieLivroDiarioResumido,
      ieLivroDiarioAuxiliar,
      ieRazaoAuxiliar: GerarI012;
    end;

    GerarI020; //Não Implementado
    GerarI030;
    GerarI050;
    GerarI075;
  finally
    FreeAndNil(RegI010);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI012;
var
  DAO: IJSEcdDAOI012;
  ListI012: TObjectList<TJSEcdModelRegistroI012>;
  RegI012: TJSEcdModelRegistroI012;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI012 := TJSEcdModelRegistroI012.create;
//  DAO := FEcdService.DAO.BlocoIParte1.DAOI012;
//  ListI012 := DAO.List;
//
  try
//    for RegI012 in ListI012 do
//    begin
//      AdicionaLinhaEcd(RegI012);
//      GerarI015;
//    end;
    RegI012.numOrd := 1;
    RegI012.natLivr := 'Teste';
    RegI012.tipo := tlaDigital;
    AdicionaLinhaEcd(RegI012);
    GerarI015;
  finally
    FreeAndNil(RegI012);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI015;
var
  RegI015: TJSEcdModelRegistroI015;
begin
  //TODO: Abaixo é só teste. Verificar depois de tem DAO;
  RegI015 := TJSEcdModelRegistroI015.create;
  try
    RegI015.codCtaRes := '1.1.1';
    AdicionaLinhaEcd(RegI015);
  finally
    FreeAndNil(RegI015);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI020;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI030;
var
  RegI030: TJSEcdModelRegistroI030;
begin
  //TODO: Abaixo é só teste. Verificar depois se tem DAO;
  RegI030 := TJSEcdModelRegistroI030.create;
  try
    RegI030.dnrcAbert := 'TERMO DE ABERTURA';
    RegI030.numOrd := 333;
    RegI030.natLivr := 'livro diaro';
    RegI030.qtdLin := -1;
    RegI030.nome := 'TRANSAMERICA DE HOTEIS NORDESTE LTDA';
    RegI030.nire := '13432810000169';
    RegI030.cnpj := '29203275327';
    RegI030.dtArq := Date;
    RegI030.dtArqConv := Date;
    RegI030.descMun := 'Una';
    RegI030.dtExSocial := FEcdService.Config.DataFinal;
    AdicionaLinhaEcd(RegI030);
    FIndexOfI030 := FArquivo.Count - 1;
  finally
    FreeAndNil(RegI030);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI050;
var
  RegI050: TJSEcdModelRegistroI050;
  ListI050: TObjectList<TJSEcdModelRegistroI050>;
begin
  //TODO: Abaixo é só teste. Verificar os parâmetros da List;
  ListI050 := FEcdService.DAO.BlocoIParte1.DAOI050.List;
  try
    for RegI050 in ListI050 do
    begin
      AdicionaLinhaEcd(RegI050);
      GerarI051(RegI050);
      GerarI052(RegI050);
      GerarI053;
    end;
  finally
    FreeAndNil(ListI050);
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI051(RegI050: TJSEcdModelRegistroI050);
var
  RegI051: TJSEcdModelRegistroI051;
  ListI051: TObjectList<TJSEcdModelRegistroI051>;
begin
  if RegI050.indCta = icAnalitica then
  begin
    ListI051 := FEcdService.DAO.BlocoIParte1.DAOI051.List(RegI050.codCta);
    try
      for RegI051 in ListI051 do
      begin
        AdicionaLinhaEcd(RegI051);
      end;
    finally
      FreeAndNil(ListI051);
    end;
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI052(RegI050: TJSEcdModelRegistroI050);
var
  RegI052: TJSEcdModelRegistroI052;
  ListI052: TObjectList<TJSEcdModelRegistroI052>;
begin
  if RegI050.indCta = icAnalitica then
  begin
    ListI052 := FEcdService.DAO.BlocoIParte1.DAOI052.List(RegI050.codCta);
    try
      for RegI052 in ListI052 do
      begin
        AdicionaLinhaEcd(RegI052);
      end;
    finally
      FreeAndNil(ListI052);
    end;
  end;
end;

procedure TJSEcdServiceBlocoIParte1.GerarI053;
begin

end;

procedure TJSEcdServiceBlocoIParte1.GerarI075;
begin

end;

function TJSEcdServiceBlocoIParte1.IndexOfI030: Integer;
begin
  Result := FIndexOfI030;
end;

class function TJSEcdServiceBlocoIParte1.New(Parent: IJSEcdService): IJSEcdServiceBlocoIParte1;
begin
  Result := Self.Create(Parent);
end;

end.
