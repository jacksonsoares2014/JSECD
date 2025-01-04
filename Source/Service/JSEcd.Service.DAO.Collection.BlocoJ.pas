unit JSEcd.Service.DAO.Collection.BlocoJ;

interface

uses
  JSEcd.Service.DAO.Collection.Base,
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces;

type
  TJSEcdServiceDAOCollectionBlocoJ = class(TJSEcdServiceDAOCollectionBase, IJSEcdServiceDAOCollectionBlocoJ)
  private
    FDAOJ005: IJSEcdDAOJ005;
    FDAOJ100: IJSEcdDAOJ100;
    FDAOJ150: IJSEcdDAOJ150;
    FDAOJ210: IJSEcdDAOJ210;
    FDAOJ215: IJSEcdDAOJ215;
    FDAOJ800: IJSEcdDAOJ800;
    FDAOJ900: IJSEcdDAOJ900;
    FDAOJ930: IJSEcdDAOJ930;
    FDAOJ935: IJSEcdDAOJ935;
  public
    function AddJ005(Value: IJSEcdDAOJ005): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ100(Value: IJSEcdDAOJ100): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ150(Value: IJSEcdDAOJ150): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ210(Value: IJSEcdDAOJ210): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ215(Value: IJSEcdDAOJ215): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ800(Value: IJSEcdDAOJ800): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ900(Value: IJSEcdDAOJ900): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ930(Value: IJSEcdDAOJ930): IJSEcdServiceDAOCollectionBlocoJ;
    function AddJ935(Value: IJSEcdDAOJ935): IJSEcdServiceDAOCollectionBlocoJ;

    function DAOJ005: IJSEcdDAOJ005;
    function DAOJ100: IJSEcdDAOJ100;
    function DAOJ150: IJSEcdDAOJ150;
    function DAOJ210: IJSEcdDAOJ210;
    function DAOJ215: IJSEcdDAOJ215;
    function DAOJ800: IJSEcdDAOJ800;
    function DAOJ900: IJSEcdDAOJ900;
    function DAOJ930: IJSEcdDAOJ930;
    function DAOJ935: IJSEcdDAOJ935;

    function &Begin: IJSEcdServiceDAOCollectionBlocoJ;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); override;
    class function New(DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoJ;
  end;

implementation

{ TJSEcdServiceDAOCollectionBlocoJ }

function TJSEcdServiceDAOCollectionBlocoJ.AddJ005(
  Value: IJSEcdDAOJ005): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ005 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ100(
  Value: IJSEcdDAOJ100): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ100 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ150(
  Value: IJSEcdDAOJ150): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ150 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ210(
  Value: IJSEcdDAOJ210): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ210 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ215(
  Value: IJSEcdDAOJ215): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ215 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ800(
  Value: IJSEcdDAOJ800): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ800 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ900(
  Value: IJSEcdDAOJ900): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ900 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ930(
  Value: IJSEcdDAOJ930): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ930 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.AddJ935(
  Value: IJSEcdDAOJ935): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
  FDAOJ935 := Value;
end;

function TJSEcdServiceDAOCollectionBlocoJ.&Begin: IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self;
end;

constructor TJSEcdServiceDAOCollectionBlocoJ.create(
  DAOCollection: IJSEcdServiceDAOCollection);
begin
  inherited;

end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ005: IJSEcdDAOJ005;
begin
  Result := FDAOJ005;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ100: IJSEcdDAOJ100;
begin
  Result := FDAOJ100;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ150: IJSEcdDAOJ150;
begin
  Result := FDAOJ150;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ210: IJSEcdDAOJ210;
begin
  Result := FDAOJ210;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ215: IJSEcdDAOJ215;
begin
  Result := FDAOJ215;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ800: IJSEcdDAOJ800;
begin
  Result := FDAOJ800;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ900: IJSEcdDAOJ900;
begin
  Result := FDAOJ900;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ930: IJSEcdDAOJ930;
begin
  Result := FDAOJ930;
end;

function TJSEcdServiceDAOCollectionBlocoJ.DAOJ935: IJSEcdDAOJ935;
begin
  Result := FDAOJ935;
end;

class function TJSEcdServiceDAOCollectionBlocoJ.New(
  DAOCollection: IJSEcdServiceDAOCollection): IJSEcdServiceDAOCollectionBlocoJ;
begin
  Result := Self.create(DAOCollection);
end;

end.
