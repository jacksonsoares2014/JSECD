unit JSEcd.DAO.Registro0000;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes;

type
  TJSEcdDAORegistro0000 = class(TInterfacedObject, IJSEcdDAO0000)
  private
  public
    function Load(AEmpresa: Extended): TJSEcdModelRegistro0000;
    class function New: IJSEcdDAO0000;
  end;

implementation

{ TJSEcdDAORegistro0000 }

function TJSEcdDAORegistro0000.Load(
  AEmpresa: Extended): TJSEcdModelRegistro0000;
begin
  //Ir no banco buscar os dados da empresa
  Result := TJSEcdModelRegistro0000.create;
  Result.nome := 'TRANSAMERICA DE HOTEIS NORDESTE LTDA';
  Result.cnpj := '13432810000169';
  Result.uf := 'BA';
  Result.ie := '23186523';
  Result.codMun := '2932507';
  Result.im := '554';
end;

class function TJSEcdDAORegistro0000.New: IJSEcdDAO0000;
begin
  Result := Self.Create;
end;

end.
