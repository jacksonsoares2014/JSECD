unit JSEcd.Model.RegistroI100;

interface

uses
  JSEcd.Model.Registro,
  System.Generics.Defaults,
  System.SysUtils;

type
  TJSEcdModelRegistroI100 = class(TJSEcdModelRegistro)
  private
    Fccus: string;
    FdtAlt: TDateTime;
    FcodCcus: string;
  public
    property dtAlt: TDateTime read FdtAlt write FdtAlt;
    property codCcus: string read FcodCcus write FcodCcus;
    property ccus: string read Fccus write Fccus;

    constructor Create; override;
    class function GetComparer: IComparer<TJSEcdModelRegistroI100>;
  end;

implementation

{ TJSEcdModelRegistroI100 }

constructor TJSEcdModelRegistroI100.Create;
begin
  inherited;
  reg := 'I100';
end;

class function TJSEcdModelRegistroI100.GetComparer: IComparer<TJSEcdModelRegistroI100>;
begin
  result := TComparer<TJSEcdModelRegistroI100>.Construct(
    function(const Left, Right: TJSEcdModelRegistroI100): Integer
    begin
      if UpperCase(Left.codCCus) < UpperCase(Right.codCCus) then
        Result := -1
      else if UpperCase(Left.codCCus) > UpperCase(Right.codCCus) then
        Result := 1
      else
        Result := 0;
    end);
end;

end.
