unit JSEcd.Service.Collection;

interface

uses
  JSEcd.Service.Interfaces;

type
  JSEcdServiceDAOCollection = class(TInterfacedObject, IJSEcdDAOCollection)
  private
    [weak]
    FJSEcdService: IJSEcdService;

    FCollectionBloco0: IJSEcdDAOCollectionBloco0;
    FCollectionBlocoIParte1: IJSEcdDAOCollectionBlocoIParte1;
    FCollectionBlocoIParte2: IJSEcdDAOCollectionBlocoIParte2;
    FCollectionBlocoIParte3: IJSEcdDAOCollectionBlocoIParte3;
    FCollectionBlocoIParte4: IJSEcdDAOCollectionBlocoIParte4;
    FCollectionBlocoIParte5: IJSEcdDAOCollectionBlocoIParte5;
    FCollectionBlocoJ: IJSEcdDAOCollectionBlocoJ;
    FCollectionBlocoK: IJSEcdDAOCollectionBlocoK;

  public
    function Bloco0: IJSEcdDAOCollectionBloco0;
    function BlocoIParte1: IJSEcdDAOCollectionBlocoIParte1;
    function BlocoIParte2: IJSEcdDAOCollectionBlocoIParte2;
    function BlocoIParte3: IJSEcdDAOCollectionBlocoIParte3;
    function BlocoIParte4: IJSEcdDAOCollectionBlocoIParte4;
    function BlocoIParte5: IJSEcdDAOCollectionBlocoIParte5;
    function BlocoJ: IJSEcdDAOCollectionBlocoJ;
    function BlocoK: IJSEcdDAOCollectionBlocoK;

    function &Begin: IJSEcdDAOCollection;
    function &End: IJSEcdService;

    constructor create(JSEcdService: IJSEcdService);
    class function New(JSEcdService: IJSEcdService): IJSEcdDAOCollection;
    destructor Destroy; override;
  end;


implementation

{ JSEcdServiceDAOCollection }

function JSEcdServiceDAOCollection.&Begin: IJSEcdDAOCollection;
begin
  Result := Self;
end;

function JSEcdServiceDAOCollection.Bloco0: IJSEcdDAOCollectionBloco0;
begin
  if not Assigned(FCollectionBloco0) then
    FCollectionBloco0 := TJSEcdServiceCollectionBloco0.New(Self);
  Result := FCollectionBloco0;
end;

function JSEcdServiceDAOCollection.BlocoIParte1: IJSEcdDAOCollectionBlocoIParte1;
begin
  if not Assigned(FCollectionBlocoIParte1) then
    FCollectionBlocoIParte1 := TJSEcdServiceCollectionBlocoIParte1.New(Self);
  Result := FCollectionBlocoIParte1;
end;

function JSEcdServiceDAOCollection.BlocoIParte2: IJSEcdDAOCollectionBlocoIParte2;
begin
  if not Assigned(FCollectionBlocoIParte2) then
    FCollectionBlocoIParte2 := TJSEcdServiceCollectionBlocoIParte2.New(Self);
  Result := FCollectionBlocoIParte2;
end;

function JSEcdServiceDAOCollection.BlocoIParte3: IJSEcdDAOCollectionBlocoIParte3;
begin
  if not Assigned(FCollectionBlocoIParte3) then
    FCollectionBlocoIParte3 := TJSEcdServiceCollectionBlocoIParte3.New(Self);
  Result := FCollectionBlocoIParte3;
end;

function JSEcdServiceDAOCollection.BlocoIParte4: IJSEcdDAOCollectionBlocoIParte4;
begin
  if not Assigned(FCollectionBlocoIParte4) then
    FCollectionBlocoIParte4 := TJSEcdServiceCollectionBlocoIParte4.New(Self);
  Result := FCollectionBlocoIParte4;
end;

function JSEcdServiceDAOCollection.BlocoIParte5: IJSEcdDAOCollectionBlocoIParte5;
begin
  if not Assigned(FCollectionBlocoIParte5) then
    FCollectionBlocoIParte5 := TJSEcdServiceCollectionBlocoIParte5.New(Self);
  Result := FCollectionBlocoIParte5;
end;

function JSEcdServiceDAOCollection.BlocoJ: IJSEcdDAOCollectionBlocoJ;
begin
  if not Assigned(FCollectionBlocoJ) then
    FCollectionBlocoJ := TJSEcdServiceCollectionBlocoJ.New(Self);
  Result := FCollectionBlocoJ;
end;

function JSEcdServiceDAOCollection.BlocoK: IJSEcdDAOCollectionBlocoK;
begin
  if not Assigned(FCollectionBlocoK) then
    FCollectionBlocoK := TJSEcdServiceCollectionBlocoK.New(Self);
  Result := FCollectionBlocoK;
end;

constructor JSEcdServiceDAOCollection.create(JSEcdService: IJSEcdService);
begin
  FJSEcdService := JSEcdService;
end;

destructor JSEcdServiceDAOCollection.Destroy;
begin

  inherited;
end;

function JSEcdServiceDAOCollection.&End: IJSEcdService;
begin
  Result := FJSEcdService;
end;

class function JSEcdServiceDAOCollection.New(
  JSEcdService: IJSEcdService): IJSEcdDAOCollection;
begin
  Result := Self.create(JSEcdService);
end;

end.
