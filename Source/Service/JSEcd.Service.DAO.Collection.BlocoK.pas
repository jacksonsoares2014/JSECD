unit JSEcd.Service.DAO.Collection.BlocoK;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoK = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoK)
  private
    FDAOK030: IJSEcdDAOK030;
    FDAOK100: IJSEcdDAOK100;
    FDAOK200: IJSEcdDAOK200;
    FDAOK210: IJSEcdDAOK210;
  public
    function AddK030(Value: IJSEcdDAOK030): IJSEcdServiceDAOCollectionBlocoK;
    function AddK100(Value: IJSEcdDAOK100): IJSEcdServiceDAOCollectionBlocoK;
    function AddK200(Value: IJSEcdDAOK200): IJSEcdServiceDAOCollectionBlocoK;
    function AddK210(Value: IJSEcdDAOK210): IJSEcdServiceDAOCollectionBlocoK;

    function DAOK030: IJSEcdDAOK030;
    function DAOK100: IJSEcdDAOK100;
    function DAOK200: IJSEcdDAOK200;
    function DAOK210: IJSEcdDAOK210;

    function &Begin: IJSEcdServiceDAOCollectionBlocoK;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoK;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoK }

function TJSEcdServiceDAOCollectionBlocoK.AddK030(
  Value: IJSEcdDAOK030): IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self;
  FDAOK030 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoK.AddK100(
  Value: IJSEcdDAOK100): IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self;
  FDAOK100 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoK.AddK200(
  Value: IJSEcdDAOK200): IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self;
  FDAOK200 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoK.AddK210(
  Value: IJSEcdDAOK210): IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self;
  FDAOK210 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoK.&Begin: IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoK.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoK.DAOK030: IJSEcdDAOK030;
begin
  Result := FDAOK030;
end;

function TJSEcdServiceDAOCollectionBlocoK.DAOK100: IJSEcdDAOK100;
begin
  Result := FDAOK100;
end;

function TJSEcdServiceDAOCollectionBlocoK.DAOK200: IJSEcdDAOK200;
begin
  Result := FDAOK200;
end;

function TJSEcdServiceDAOCollectionBlocoK.DAOK210: IJSEcdDAOK210;
begin
  Result := FDAOK210;
end;

class function TJSEcdServiceDAOCollectionBlocoK.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoK;
begin
  Result := Self.create(DAOCollection);
end;

end.
