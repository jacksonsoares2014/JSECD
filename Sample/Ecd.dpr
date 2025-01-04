program Ecd;

uses
  Vcl.Forms,
  Sample.View.Principal in 'Sample.View.Principal.pas' {Form1},
  JSEcd.DAO.Registro0000 in 'DAO\JSEcd.DAO.Registro0000.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
