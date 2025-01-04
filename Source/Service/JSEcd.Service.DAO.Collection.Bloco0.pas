unit JSEcd.Service.DAO.Collection.Bloco0;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;
//  GBSped.Model.Classes,
//  System.Generics.Collections;


type
  TJSEcdServiceDAOCollectionBloco0 = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBloco0)
  private
    FDAO0000: IJSEcdDAO0000;
    FDAO0007: IJSEcdDAO0007;
    FDAO0020: IJSEcdDAO0020;
    FDAO0035: IJSEcdDAO0035;
    FDAO0150: IJSEcdDAO0150;
    FDAO0180: IJSEcdDAO0180;
  public
    function Add0000(Value: IJSEcdDAO0000): IJSEcdServiceDAOCollectionBloco0;
    function Add0007(Value: IJSEcdDAO0007): IJSEcdServiceDAOCollectionBloco0;
    function Add0020(Value: IJSEcdDAO0020): IJSEcdServiceDAOCollectionBloco0;
    function Add0035(Value: IJSEcdDAO0035): IJSEcdServiceDAOCollectionBloco0;
    function Add0150(Value: IJSEcdDAO0150): IJSEcdServiceDAOCollectionBloco0;
    function Add0180(Value: IJSEcdDAO0180): IJSEcdServiceDAOCollectionBloco0;

    function DAO0000: IJSEcdDAO0000;
    function DAO0007: IJSEcdDAO0007;
    function DAO0020: IJSEcdDAO0020;
    function DAO0035: IJSEcdDAO0035;
    function DAO0150: IJSEcdDAO0150;
    function DAO0180: IJSEcdDAO0180;

    function &Begin: IJSEcdServiceDAOCollectionBloco0;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBloco0;
  end;

implementation

{ TJSEcdServiceDAOCollectionBloco0 }

function TJSEcdServiceDAOCollectionBloco0.Add0000(
  Value: IJSEcdDAO0000): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0000 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.Add0007(
  Value: IJSEcdDAO0007): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0007 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.Add0020(
  Value: IJSEcdDAO0020): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0020 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.Add0035(
  Value: IJSEcdDAO0035): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0035 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.Add0150(
  Value: IJSEcdDAO0150): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0150 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.Add0180(
  Value: IJSEcdDAO0180): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
  FDAO0180 := Value;
end;

function TJSEcdServiceDAOCollectionBloco0.&Begin: IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBloco0.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBloco0.DAO0000: IJSEcdDAO0000;
begin
  Result := FDAO0000;
end;

function TJSEcdServiceDAOCollectionBloco0.DAO0007: IJSEcdDAO0007;
begin
  Result := FDAO0007;
end;

function TJSEcdServiceDAOCollectionBloco0.DAO0020: IJSEcdDAO0020;
begin
  Result := FDAO0020;
end;

function TJSEcdServiceDAOCollectionBloco0.DAO0035: IJSEcdDAO0035;
begin
  Result := FDAO0035;
end;

function TJSEcdServiceDAOCollectionBloco0.DAO0150: IJSEcdDAO0150;
begin
  Result := FDAO0150;
end;

function TJSEcdServiceDAOCollectionBloco0.DAO0180: IJSEcdDAO0180;
begin
  Result := FDAO0180;
end;

class function TJSEcdServiceDAOCollectionBloco0.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBloco0;
begin
  Result := Self.Create(DAOCollection);
end;

end.
