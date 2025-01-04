unit JSEcd.Service.DAO.Collection.BlocoI.Parte2;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoIParte2 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoIParte2)
  private
    FDAOI100: IJSEcdDAOI100;
    FDAOI150: IJSEcdDAOI150;
    FDAOI155: IJSEcdDAOI155;
    FDAOI157: IJSEcdDAOI157;
  public
    function AddI100(Value: IJSEcdDAOI100): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI150(Value: IJSEcdDAOI150): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI155(Value: IJSEcdDAOI155): IJSEcdServiceDAOCollectionBlocoIParte2;
    function AddI157(Value: IJSEcdDAOI157): IJSEcdServiceDAOCollectionBlocoIParte2;

    function DAOI100: IJSEcdDAOI100;
    function DAOI150: IJSEcdDAOI150;
    function DAOI155: IJSEcdDAOI155;
    function DAOI157: IJSEcdDAOI157;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte2;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte2;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoIParte2 }

function TJSEcdServiceDAOCollectionBlocoIParte2.AddI100(
  Value: IJSEcdDAOI100): IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self;
  FDAOI100 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.AddI150(
  Value: IJSEcdDAOI150): IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self;
  FDAOI150 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.AddI155(
  Value: IJSEcdDAOI155): IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self;
  FDAOI155 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.AddI157(
  Value: IJSEcdDAOI157): IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self;
  FDAOI157 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.&Begin: IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoIParte2.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoIParte2.DAOI100: IJSEcdDAOI100;
begin
  Result := FDAOI100;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.DAOI150: IJSEcdDAOI150;
begin
  Result := FDAOI150;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.DAOI155: IJSEcdDAOI155;
begin
  Result := FDAOI155;
end;

function TJSEcdServiceDAOCollectionBlocoIParte2.DAOI157: IJSEcdDAOI157;
begin
  Result := FDAOI157;
end;

class function TJSEcdServiceDAOCollectionBlocoIParte2.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte2;
begin
  Result := Self.create(DAOCollection);
end;

end.
