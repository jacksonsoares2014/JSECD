unit JSEcd.Model.Format;

interface

uses
  System.SysUtils,
  System.Helper.Double;

type
  TJSEcdFormatZero = (fzFormatIfZero, fzNullIfZero, fzZeroIfZero);

  TJSEcdFormat = class
  public
    class function FormatData(AValue: TDateTime): String; overload;
    class function FormatData(AValue: String): TDateTime; overload;
    class function FormatCurrency(AValue: Double; ANumDecimais: Integer = 2; AFormatZero: TJSEcdFormatZero = fzFormatIfZero): String;
    class function PadL(AValue: String; ATam: Integer; ACaracter: Char = '0'): String;
  end;

  JSEF = class(TJSEcdFormat);

implementation

{ TJSEcdFormat }

class function TJSEcdFormat.FormatCurrency(AValue: Double;
  ANumDecimais: Integer; AFormatZero: TJSEcdFormatZero): String;
var
  decimais : string;
  i: Integer;
  format: TFormatSettings;
begin
  format := TFormatSettings.Create('pt-BR');
  AValue := AValue.roundABNT(ANumDecimais);
  if (AValue = 0) then
    case AFormatZero of
      fzNullIfZero : Exit(EmptyStr);
      fzZeroIfZero : Exit('0');
    end;

  for I := 1 to ANumDecimais do
    decimais := decimais + '0';

  Result := FormatFloat(',0.' + decimais, AValue, format);
  Result := Result.Replace('.', '');
end;

class function TJSEcdFormat.FormatData(AValue: TDateTime): String;
begin
  Result := EmptyStr;
  if AValue > 0 then
    result := FormatDateTime('ddmmyyyy', AValue);
end;

class function TJSEcdFormat.FormatData(AValue: String): TDateTime;
begin
  Result := 0;
  if AValue <> '' then
    Result := StrToDate(Format('%s/%s/%s',[Copy(AValue,1,2), Copy(AValue,3,2), Copy(AValue,5,4)]));
end;

class function TJSEcdFormat.PadL(AValue: String; ATam: Integer;
  ACaracter: Char): String;
begin

end;

end.
