program Ecd;

uses
  Vcl.Forms,
  Sample.View.Principal in 'Sample.View.Principal.pas' {Form1},
  JSEcd.DAO.Registro0000 in 'DAO\JSEcd.DAO.Registro0000.pas',
  JSEcd.DAO.RegistroI050 in 'DAO\JSEcd.DAO.RegistroI050.pas',
  JSEcd.DAO.RegistroI051 in 'DAO\JSEcd.DAO.RegistroI051.pas',
  JSEcd.DAO.RegistroI052 in 'DAO\JSEcd.DAO.RegistroI052.pas',
  JSEcd.DAO.RegistroI075 in 'DAO\JSEcd.DAO.RegistroI075.pas',
  JSEcd.DAO.RegistroI100 in 'DAO\JSEcd.DAO.RegistroI100.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
