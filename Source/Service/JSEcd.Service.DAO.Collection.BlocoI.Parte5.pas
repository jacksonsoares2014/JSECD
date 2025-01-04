unit JSEcd.Service.DAO.Collection.BlocoI.Parte5;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoIParte5 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoIParte5)
  private
    FDAOI500: IJSEcdDAOI500;
    FDAOI510: IJSEcdDAOI510;
    FDAOI550: IJSEcdDAOI550;
    FDAOI555: IJSEcdDAOI555;
  public
    function AddI500(Value: IJSEcdDAOI500): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI510(Value: IJSEcdDAOI510): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI550(Value: IJSEcdDAOI550): IJSEcdServiceDAOCollectionBlocoIParte5;
    function AddI555(Value: IJSEcdDAOI555): IJSEcdServiceDAOCollectionBlocoIParte5;

    function DAOI500: IJSEcdDAOI500;
    function DAOI510: IJSEcdDAOI510;
    function DAOI550: IJSEcdDAOI550;
    function DAOI555: IJSEcdDAOI555;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte5;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte5;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoIParte5 }

function TJSEcdServiceDAOCollectionBlocoIParte5.AddI500(
  Value: IJSEcdDAOI500): IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self;
  FDAOI500 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.AddI510(
  Value: IJSEcdDAOI510): IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self;
  FDAOI510 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.AddI550(
  Value: IJSEcdDAOI550): IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self;
  FDAOI550 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.AddI555(
  Value: IJSEcdDAOI555): IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self;
  FDAOI555 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.&Begin: IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoIParte5.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoIParte5.DAOI500: IJSEcdDAOI500;
begin
  Result := FDAOI500;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.DAOI510: IJSEcdDAOI510;
begin
  Result := FDAOI510;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.DAOI550: IJSEcdDAOI550;
begin
  Result := FDAOI550;
end;

function TJSEcdServiceDAOCollectionBlocoIParte5.DAOI555: IJSEcdDAOI555;
begin
  Result := FDAOI555;
end;

class function TJSEcdServiceDAOCollectionBlocoIParte5.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte5;
begin
  Result := Self.create(DAOCollection);
end;

end.
