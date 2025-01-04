unit JSEcd.Service.DAO.Collection.BlocoI.Parte3;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoIParte3 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoIParte3)
  private
    FDAOI200: IJSEcdDAOI200;
    FDAOI250: IJSEcdDAOI250;
  public
    function AddI200(Value: IJSEcdDAOI200): IJSEcdServiceDAOCollectionBlocoIParte3;
    function AddI250(Value: IJSEcdDAOI250): IJSEcdServiceDAOCollectionBlocoIParte3;

    function DAOI200: IJSEcdDAOI200;
    function DAOI250: IJSEcdDAOI250;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte3;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte3;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoIParte3 }

function TJSEcdServiceDAOCollectionBlocoIParte3.AddI200(
  Value: IJSEcdDAOI200): IJSEcdServiceDAOCollectionBlocoIParte3;
begin
  Result := Self;
  FDAOI200 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte3.AddI250(
  Value: IJSEcdDAOI250): IJSEcdServiceDAOCollectionBlocoIParte3;
begin
  Result := Self;
  FDAOI250 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte3.&Begin: IJSEcdServiceDAOCollectionBlocoIParte3;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoIParte3.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoIParte3.DAOI200: IJSEcdDAOI200;
begin
  Result := FDAOI200;
end;

function TJSEcdServiceDAOCollectionBlocoIParte3.DAOI250: IJSEcdDAOI250;
begin
  Result := FDAOI250;
end;

class function TJSEcdServiceDAOCollectionBlocoIParte3.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte3;
begin
  Result := Self.create(DAOCollection);
end;

end.
