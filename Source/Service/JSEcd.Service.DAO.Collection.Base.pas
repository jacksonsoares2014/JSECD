unit JSEcd.Service.DAO.Collection.Base;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Service.Interfaces,
  System.Generics.Collections;

type TJSEcdServiceDAOCollectionBase = class(TInterfacedObject)

  protected
    [weak]
    FDAOCollection: IJSEcdServiceDAOCollection;

  public
    function &End: IJSEcdServiceDAOCollection; virtual;

    constructor create(DAOCollection: IJSEcdServiceDAOCollection); virtual;
    destructor  Destroy; override;
end;

implementation

{ TJSEcdServiceDAOCollectionBase }

constructor TJSEcdServiceDAOCollectionBase.create(DAOCollection: IJSEcdServiceDAOCollection);
begin
  FDAOCollection := DAOCollection;
end;

destructor TJSEcdServiceDAOCollectionBase.Destroy;
begin
  inherited;
end;

function TJSEcdServiceDAOCollectionBase.&End: IJSEcdServiceDAOCollection;
begin
  result := FDAOCollection;
end;

end.
