unit JSEcd.Model.Classes;

interface

uses
  JSEcd.Model.Registro,

  JSEcd.Model.Registro0000,
  JSEcd.Model.Registro0001,
  JSEcd.Model.Registro0007,
  JSEcd.Model.Registro0020,
  JSEcd.Model.Registro0035,
  JSEcd.Model.Registro0150,
  JSEcd.Model.Registro0180,
  JSEcd.Model.Registro0990,

  JSEcd.Model.RegistroI001,
  JSEcd.Model.RegistroI010,
  JSEcd.Model.RegistroI012,
  JSEcd.Model.RegistroI015,
  JSEcd.Model.RegistroI030,
  JSEcd.Model.RegistroI050,
  JSEcd.Model.RegistroI051,
  JSEcd.Model.RegistroI052,
  JSEcd.Model.RegistroI053,
  JSEcd.Model.RegistroI075,
  JSEcd.Model.RegistroI100,
  JSEcd.Model.RegistroI150,
  JSEcd.Model.RegistroI155,
  JSEcd.Model.RegistroI157,
  JSEcd.Model.RegistroI200,
  JSEcd.Model.RegistroI250,
  JSEcd.Model.RegistroI350,
  JSEcd.Model.RegistroI355,
  JSEcd.Model.RegistroI500,
  JSEcd.Model.RegistroI510,
  JSEcd.Model.RegistroI550,
  JSEcd.Model.RegistroI555,
  JSEcd.Model.RegistroI990,

  JSEcd.Model.RegistroJ001,
  JSEcd.Model.RegistroJ005,
  JSEcd.Model.RegistroJ100,
  JSEcd.Model.RegistroJ150,
  JSEcd.Model.RegistroJ210,
  JSEcd.Model.RegistroJ215,
  JSEcd.Model.RegistroJ800,
  JSEcd.Model.RegistroJ900,
  JSEcd.Model.RegistroJ930,
  JSEcd.Model.RegistroJ935,
  JSEcd.Model.RegistroJ990,

  JSEcd.Model.RegistroK001,
  JSEcd.Model.RegistroK030,
  JSEcd.Model.RegistroK100,
  JSEcd.Model.RegistroK200,
  JSEcd.Model.RegistroK210,
  JSEcd.Model.RegistroK990;

type
  TJSEcdModelRegistro = JSEcd.Model.Registro.TJSEcdModelRegistro;

  TJSEcdModelRegistro0000 = JSEcd.Model.Registro0000.TJSEcdModelRegistro0000;
  TJSEcdModelRegistro0001 = JSEcd.Model.Registro0001.TJSEcdModelRegistro0001;
  TJSEcdModelRegistro0007 = JSEcd.Model.Registro0007.TJSEcdModelRegistro0007;
  TJSEcdModelRegistro0020 = JSEcd.Model.Registro0020.TJSEcdModelRegistro0020;
  TJSEcdModelRegistro0035 = JSEcd.Model.Registro0035.TJSEcdModelRegistro0035;
  TJSEcdModelRegistro0150 = JSEcd.Model.Registro0150.TJSEcdModelRegistro0150;
  TJSEcdModelRegistro0180 = JSEcd.Model.Registro0180.TJSEcdModelRegistro0180;
  TJSEcdModelRegistro0990 = JSEcd.Model.Registro0990.TJSEcdModelRegistro0990;

  TJSEcdModelRegistroI001 = JSEcd.Model.RegistroI001.TJSEcdModelRegistroI001;
  TJSEcdModelRegistroI010 = JSEcd.Model.RegistroI010.TJSEcdModelRegistroI010;
  TJSEcdModelRegistroI012 = JSEcd.Model.RegistroI012.TJSEcdModelRegistroI012;
  TJSEcdModelRegistroI015 = JSEcd.Model.RegistroI015.TJSEcdModelRegistroI015;
  TJSEcdModelRegistroI030 = JSEcd.Model.RegistroI030.TJSEcdModelRegistroI030;
  TJSEcdModelRegistroI050 = JSEcd.Model.RegistroI050.TJSEcdModelRegistroI050;
  TJSEcdModelRegistroI051 = JSEcd.Model.RegistroI051.TJSEcdModelRegistroI051;
  TJSEcdModelRegistroI052 = JSEcd.Model.RegistroI052.TJSEcdModelRegistroI052;
  TJSEcdModelRegistroI053 = JSEcd.Model.RegistroI053.TJSEcdModelRegistroI053;
  TJSEcdModelRegistroI075 = JSEcd.Model.RegistroI075.TJSEcdModelRegistroI075;
  TJSEcdModelRegistroI100 = JSEcd.Model.RegistroI100.TJSEcdModelRegistroI100;
  TJSEcdModelRegistroI150 = JSEcd.Model.RegistroI150.TJSEcdModelRegistroI150;
  TJSEcdModelRegistroI155 = JSEcd.Model.RegistroI155.TJSEcdModelRegistroI155;
  TJSEcdModelRegistroI157 = JSEcd.Model.RegistroI157.TJSEcdModelRegistroI157;
  TJSEcdModelRegistroI200 = JSEcd.Model.RegistroI200.TJSEcdModelRegistroI200;
  TJSEcdModelRegistroI250 = JSEcd.Model.RegistroI250.TJSEcdModelRegistroI250;
  TJSEcdModelRegistroI350 = JSEcd.Model.RegistroI350.TJSEcdModelRegistroI350;
  TJSEcdModelRegistroI355 = JSEcd.Model.RegistroI355.TJSEcdModelRegistroI355;
  TJSEcdModelRegistroI500 = JSEcd.Model.RegistroI500.TJSEcdModelRegistroI500;
  TJSEcdModelRegistroI510 = JSEcd.Model.RegistroI510.TJSEcdModelRegistroI510;
  TJSEcdModelRegistroI550 = JSEcd.Model.RegistroI550.TJSEcdModelRegistroI550;
  TJSEcdModelRegistroI555 = JSEcd.Model.RegistroI555.TJSEcdModelRegistroI555;
  TJSEcdModelRegistroI990 = JSEcd.Model.RegistroI990.TJSEcdModelRegistroI990;

  TJSEcdModelRegistroJ001 = JSEcd.Model.RegistroJ001.TJSEcdModelRegistroJ001;
  TJSEcdModelRegistroJ005 = JSEcd.Model.RegistroJ005.TJSEcdModelRegistroJ005;
  TJSEcdModelRegistroJ100 = JSEcd.Model.RegistroJ100.TJSEcdModelRegistroJ100;
  TJSEcdModelRegistroJ150 = JSEcd.Model.RegistroJ150.TJSEcdModelRegistroJ150;
  TJSEcdModelRegistroJ210 = JSEcd.Model.RegistroJ210.TJSEcdModelRegistroJ210;
  TJSEcdModelRegistroJ215 = JSEcd.Model.RegistroJ215.TJSEcdModelRegistroJ215;
  TJSEcdModelRegistroJ800 = JSEcd.Model.RegistroJ800.TJSEcdModelRegistroJ800;
  TJSEcdModelRegistroJ900 = JSEcd.Model.RegistroJ900.TJSEcdModelRegistroJ900;
  TJSEcdModelRegistroJ930 = JSEcd.Model.RegistroJ930.TJSEcdModelRegistroJ930;
  TJSEcdModelRegistroJ935 = JSEcd.Model.RegistroJ935.TJSEcdModelRegistroJ935;
  TJSEcdModelRegistroJ990 = JSEcd.Model.RegistroJ990.TJSEcdModelRegistroJ990;

  TJSEcdModelRegistroK001 = JSEcd.Model.RegistroK001.TJSEcdModelRegistroK001;
  TJSEcdModelRegistroK030 = JSEcd.Model.RegistroK030.TJSEcdModelRegistroK030;
  TJSEcdModelRegistroK100 = JSEcd.Model.RegistroK100.TJSEcdModelRegistroK100;
  TJSEcdModelRegistroK200 = JSEcd.Model.RegistroK200.TJSEcdModelRegistroK200;
  TJSEcdModelRegistroK210 = JSEcd.Model.RegistroK210.TJSEcdModelRegistroK210;
  TJSEcdModelRegistroK990 = JSEcd.Model.RegistroK990.TJSEcdModelRegistroK990;

implementation

end.
