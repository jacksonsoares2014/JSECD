unit JSEcd.Service.DAO.Collection;

interface

uses
  JSEcd.Service.Interfaces,
  JSEcd.Service.DAO.Collection.Bloco0,
  JSEcd.Service.DAO.Collection.BlocoI.Parte1,
  JSEcd.Service.DAO.Collection.BlocoI.Parte2,
  JSEcd.Service.DAO.Collection.BlocoI.Parte3,
  JSEcd.Service.DAO.Collection.BlocoI.Parte4,
  JSEcd.Service.DAO.Collection.BlocoI.Parte5,
  JSEcd.Service.DAO.Collection.BlocoJ,
  JSEcd.Service.DAO.Collection.BlocoK;

type
  TJSEcdServiceDAOCollection = class(TInterfacedObject, IJSEcdServiceDAOCollection)
  private
    [weak]
    FJSEcdService: IJSEcdService;

    FCollectionBloco0: IJSEcdServiceDAOCollectionBloco0;
    FCollectionBlocoIParte1: IJSEcdServiceDAOCollectionBlocoIParte1;
    FCollectionBlocoIParte2: IJSEcdServiceDAOCollectionBlocoIParte2;
    FCollectionBlocoIParte3: IJSEcdServiceDAOCollectionBlocoIParte3;
    FCollectionBlocoIParte4: IJSEcdServiceDAOCollectionBlocoIParte4;
    FCollectionBlocoIParte5: IJSEcdServiceDAOCollectionBlocoIParte5;
    FCollectionBlocoJ: IJSEcdServiceDAOCollectionBlocoJ;
    FCollectionBlocoK: IJSEcdServiceDAOCollectionBlocoK;

  public
    function Bloco0: IJSEcdServiceDAOCollectionBloco0;
    function BlocoIParte1: IJSEcdServiceDAOCollectionBlocoIParte1;
    function BlocoIParte2: IJSEcdServiceDAOCollectionBlocoIParte2;
    function BlocoIParte3: IJSEcdServiceDAOCollectionBlocoIParte3;
    function BlocoIParte4: IJSEcdServiceDAOCollectionBlocoIParte4;
    function BlocoIParte5: IJSEcdServiceDAOCollectionBlocoIParte5;
    function BlocoJ: IJSEcdServiceDAOCollectionBlocoJ;
    function BlocoK: IJSEcdServiceDAOCollectionBlocoK;

    function &Begin: IJSEcdServiceDAOCollection;
    function &End: IJSEcdService;

    constructor create(JSEcdService: IJSEcdService);
    class function New(JSEcdService: IJSEcdService): IJSEcdServiceDAOCollection;
    destructor Destroy; override;
  end;


implementation

{ TJSEcdServiceDAOCollection }

function TJSEcdServiceDAOCollection.&Begin: IJSEcdServiceDAOCollection;
begin
  Result := Self;
end;

function TJSEcdServiceDAOCollection.Bloco0: IJSEcdServiceDAOCollectionBloco0;
begin
  if not Assigned(FCollectionBloco0) then
    FCollectionBloco0 := TJSEcdServiceDAOCollectionBloco0.New(Self);
  Result := FCollectionBloco0;
end;

function TJSEcdServiceDAOCollection.BlocoIParte1: IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  if not Assigned(FCollectionBlocoIParte1) then
    FCollectionBlocoIParte1 := TJSEcdServiceDAOCollectionBlocoIParte1.New(Self);
  Result := FCollectionBlocoIParte1;
end;

function TJSEcdServiceDAOCollection.BlocoIParte2: IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  if not Assigned(FCollectionBlocoIParte2) then
    FCollectionBlocoIParte2 := TJSEcdServiceDAOCollectionBlocoIParte2.New(Self);
  Result := FCollectionBlocoIParte2;
end;

function TJSEcdServiceDAOCollection.BlocoIParte3: IJSEcdServiceDAOCollectionBlocoIParte3;
begin
  if not Assigned(FCollectionBlocoIParte3) then
    FCollectionBlocoIParte3 := TJSEcdServiceDAOCollectionBlocoIParte3.New(Self);
  Result := FCollectionBlocoIParte3;
end;

function TJSEcdServiceDAOCollection.BlocoIParte4: IJSEcdServiceDAOCollectionBlocoIParte4;
begin
  if not Assigned(FCollectionBlocoIParte4) then
    FCollectionBlocoIParte4 := TJSEcdServiceDAOCollectionBlocoIParte4.New(Self);
  Result := FCollectionBlocoIParte4;
end;

function TJSEcdServiceDAOCollection.BlocoIParte5: IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  if not Assigned(FCollectionBlocoIParte5) then
    FCollectionBlocoIParte5 := TJSEcdServiceDAOCollectionBlocoIParte5.New(Self);
  Result := FCollectionBlocoIParte5;
end;

function TJSEcdServiceDAOCollection.BlocoJ: IJSEcdServiceDAOCollectionBlocoJ;
begin
  if not Assigned(FCollectionBlocoJ) then
    FCollectionBlocoJ := TJSEcdServiceDAOCollectionBlocoJ.New(Self);
  Result := FCollectionBlocoJ;
end;

function TJSEcdServiceDAOCollection.BlocoK: IJSEcdServiceDAOCollectionBlocoK;
begin
  if not Assigned(FCollectionBlocoK) then
    FCollectionBlocoK := TJSEcdServiceDAOCollectionBlocoK.New(Self);
  Result := FCollectionBlocoK;
end;

constructor TJSEcdServiceDAOCollection.create(JSEcdService: IJSEcdService);
begin
  FJSEcdService := JSEcdService;
end;

destructor TJSEcdServiceDAOCollection.Destroy;
begin

  inherited;
end;

function TJSEcdServiceDAOCollection.&End: IJSEcdService;
begin
  Result := FJSEcdService;
end;

class function TJSEcdServiceDAOCollection.New(
  JSEcdService: IJSEcdService): IJSEcdServiceDAOCollection;
begin
  Result := Self.create(JSEcdService);
end;

end.
