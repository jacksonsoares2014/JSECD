unit JSEcd.Service.DAO.Collection.BlocoI.Parte4;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoIParte4 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoIParte4)
  private
    FDAOI350: IJSEcdDAOI350;
    FDAOI355: IJSEcdDAOI355;
  public
    function AddI350(Value: IJSEcdDAOI350): IJSEcdServiceDAOCollectionBlocoIParte4;
    function AddI355(Value: IJSEcdDAOI355): IJSEcdServiceDAOCollectionBlocoIParte4;

    function DAOI350: IJSEcdDAOI350;
    function DAOI355: IJSEcdDAOI355;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte4;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte4;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoIParte4 }

function TJSEcdServiceDAOCollectionBlocoIParte4.AddI350(
  Value: IJSEcdDAOI350): IJSEcdServiceDAOCollectionBlocoIParte4;
begin
  Result := Self;
  FDAOI350 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte4.AddI355(
  Value: IJSEcdDAOI355): IJSEcdServiceDAOCollectionBlocoIParte4;
begin
  Result := Self;
  FDAOI355 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte4.&Begin: IJSEcdServiceDAOCollectionBlocoIParte4;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoIParte4.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoIParte4.DAOI350: IJSEcdDAOI350;
begin
  Result := FDAOI350;
end;

function TJSEcdServiceDAOCollectionBlocoIParte4.DAOI355: IJSEcdDAOI355;
begin
  Result := FDAOI355;
end;

class function TJSEcdServiceDAOCollectionBlocoIParte4.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte4;
begin
  Result := Self.create(DAOCollection);
end;

end.
