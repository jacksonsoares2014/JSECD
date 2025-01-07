unit JSEcd.Service.DAO.Collection.BlocoI.Parte1;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoIParte1 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoIParte1)
  private
    FDAOI010: IJSEcdDAOI010;
    FDAOI012: IJSEcdDAOI012;
    FDAOI015: IJSEcdDAOI015;
    FDAOI030: IJSEcdDAOI030;
    FDAOI050: IJSEcdDAOI050;
    FDAOI051: IJSEcdDAOI051;
    FDAOI052: IJSEcdDAOI052;
    FDAOI053: IJSEcdDAOI053;
    FDAOI075: IJSEcdDAOI075;
  public
    function AddI010(Value: IJSEcdDAOI010): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI012(Value: IJSEcdDAOI012): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI015(Value: IJSEcdDAOI015): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI030(Value: IJSEcdDAOI030): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI050(Value: IJSEcdDAOI050): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI051(Value: IJSEcdDAOI051): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI052(Value: IJSEcdDAOI052): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI053(Value: IJSEcdDAOI053): IJSEcdServiceDAOCollectionBlocoIParte1;
    function AddI075(Value: IJSEcdDAOI075): IJSEcdServiceDAOCollectionBlocoIParte1;

    function DAOI010: IJSEcdDAOI010;
    function DAOI012: IJSEcdDAOI012;
    function DAOI015: IJSEcdDAOI015;
    function DAOI030: IJSEcdDAOI030;
    function DAOI050: IJSEcdDAOI050;
    function DAOI051: IJSEcdDAOI051;
    function DAOI052: IJSEcdDAOI052;
    function DAOI053: IJSEcdDAOI053;
    function DAOI075: IJSEcdDAOI075;

    function &Begin: IJSEcdServiceDAOCollectionBlocoIParte1;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte1;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoIParte1 }

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI010(
  Value: IJSEcdDAOI010): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI010 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI012(
  Value: IJSEcdDAOI012): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI012 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI015(
  Value: IJSEcdDAOI015): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI015 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI030(
  Value: IJSEcdDAOI030): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI030 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI050(
  Value: IJSEcdDAOI050): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI050 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI051(
  Value: IJSEcdDAOI051): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI051 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI052(
  Value: IJSEcdDAOI052): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI052 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI053(
  Value: IJSEcdDAOI053): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI053 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.AddI075(
  Value: IJSEcdDAOI075): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
  FDAOI075 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.&Begin: IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoIParte1.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI010: IJSEcdDAOI010;
begin
  Result := FDAOI010;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI012: IJSEcdDAOI012;
begin
  Result := FDAOI012;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI015: IJSEcdDAOI015;
begin
  Result := FDAOI015;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI030: IJSEcdDAOI030;
begin
  Result := FDAOI030;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI050: IJSEcdDAOI050;
begin
  Result := FDAOI050;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI051: IJSEcdDAOI051;
begin
  Result := FDAOI051;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI052: IJSEcdDAOI052;
begin
  Result := FDAOI052;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI053: IJSEcdDAOI053;
begin
  Result := FDAOI053;
end;

function TJSEcdServiceDAOCollectionBlocoIParte1.DAOI075: IJSEcdDAOI075;
begin
  Result := FDAOI075;
end;

class function TJSEcdServiceDAOCollectionBlocoIParte1.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoIParte1;
begin
  Result := Self.create(DAOCollection);
end;

end.
