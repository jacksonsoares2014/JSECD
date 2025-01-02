unit JSEcd.Export.Classes;

interface

uses
  JSEcd.Export.Registro0000,
  JSEcd.Export.Registro0001,
  JSEcd.Export.Registro0007,
  JSEcd.Export.Registro0020,
  JSEcd.Export.Registro0035,
  JSEcd.Export.Registro0150,
  JSEcd.Export.Registro0180,
  JSEcd.Export.Registro0990,

  JSEcd.Export.RegistroI001,
  JSEcd.Export.RegistroI010,
  JSEcd.Export.RegistroI012,
  JSEcd.Export.RegistroI015,
  JSEcd.Export.RegistroI030,
  JSEcd.Export.RegistroI050,
  JSEcd.Export.RegistroI051,
  JSEcd.Export.RegistroI052,
  JSEcd.Export.RegistroI053,
  JSEcd.Export.RegistroI075,
  JSEcd.Export.RegistroI100,
  JSEcd.Export.RegistroI150,
  JSEcd.Export.RegistroI155,
  JSEcd.Export.RegistroI157,
  JSEcd.Export.RegistroI200,
  JSEcd.Export.RegistroI250,
  JSEcd.Export.RegistroI350,
  JSEcd.Export.RegistroI355,
  JSEcd.Export.RegistroI500,
  JSEcd.Export.RegistroI510,
  JSEcd.Export.RegistroI550,
  JSEcd.Export.RegistroI555,
  JSEcd.Export.RegistroI990,

  JSEcd.Export.RegistroJ001,
  JSEcd.Export.RegistroJ005,
  JSEcd.Export.RegistroJ100,
  JSEcd.Export.RegistroJ150,
  JSEcd.Export.RegistroJ210,
  JSEcd.Export.RegistroJ215,
  JSEcd.Export.RegistroJ800,
  JSEcd.Export.RegistroJ900,
  JSEcd.Export.RegistroJ930,
  JSEcd.Export.RegistroJ935,
  JSEcd.Export.RegistroJ990,

  JSEcd.Export.RegistroK001,
  JSEcd.Export.RegistroK030,
  JSEcd.Export.RegistroK100,
  JSEcd.Export.RegistroK200,
  JSEcd.Export.RegistroK210,
  JSEcd.Export.RegistroK990;

type
  TJSEcdExportRegistro0000 = JSEcd.Export.Registro0000.TJSEcdExportRegistro0000;
  TJSEcdExportRegistro0001 = JSEcd.Export.Registro0001.TJSEcdExportRegistro0001;
  TJSEcdExportRegistro0007 = JSEcd.Export.Registro0007.TJSEcdExportRegistro0007;
  TJSEcdExportRegistro0020 = JSEcd.Export.Registro0020.TJSEcdExportRegistro0020;
  TJSEcdExportRegistro0035 = JSEcd.Export.Registro0035.TJSEcdExportRegistro0035;
  TJSEcdExportRegistro0150 = JSEcd.Export.Registro0150.TJSEcdExportRegistro0150;
  TJSEcdExportRegistro0180 = JSEcd.Export.Registro0180.TJSEcdExportRegistro0180;
  TJSEcdExportRegistro0990 = JSEcd.Export.Registro0990.TJSEcdExportRegistro0990;

  TJSEcdExportRegistroI001 = JSEcd.Export.RegistroI001.TJSEcdExportRegistroI001;
  TJSEcdExportRegistroI010 = JSEcd.Export.RegistroI010.TJSEcdExportRegistroI010;
  TJSEcdExportRegistroI012 = JSEcd.Export.RegistroI012.TJSEcdExportRegistroI012;
  TJSEcdExportRegistroI015 = JSEcd.Export.RegistroI015.TJSEcdExportRegistroI015;
  TJSEcdExportRegistroI030 = JSEcd.Export.RegistroI030.TJSEcdExportRegistroI030;
  TJSEcdExportRegistroI050 = JSEcd.Export.RegistroI050.TJSEcdExportRegistroI050;
  TJSEcdExportRegistroI051 = JSEcd.Export.RegistroI051.TJSEcdExportRegistroI051;
  TJSEcdExportRegistroI052 = JSEcd.Export.RegistroI052.TJSEcdExportRegistroI052;
  TJSEcdExportRegistroI053 = JSEcd.Export.RegistroI053.TJSEcdExportRegistroI053;
  TJSEcdExportRegistroI075 = JSEcd.Export.RegistroI075.TJSEcdExportRegistroI075;
  TJSEcdExportRegistroI100 = JSEcd.Export.RegistroI100.TJSEcdExportRegistroI100;
  TJSEcdExportRegistroI150 = JSEcd.Export.RegistroI150.TJSEcdExportRegistroI150;
  TJSEcdExportRegistroI155 = JSEcd.Export.RegistroI155.TJSEcdExportRegistroI155;
  TJSEcdExportRegistroI157 = JSEcd.Export.RegistroI157.TJSEcdExportRegistroI157;
  TJSEcdExportRegistroI200 = JSEcd.Export.RegistroI200.TJSEcdExportRegistroI200;
  TJSEcdExportRegistroI250 = JSEcd.Export.RegistroI250.TJSEcdExportRegistroI250;
  TJSEcdExportRegistroI350 = JSEcd.Export.RegistroI350.TJSEcdExportRegistroI350;
  TJSEcdExportRegistroI355 = JSEcd.Export.RegistroI355.TJSEcdExportRegistroI355;
  TJSEcdExportRegistroI500 = JSEcd.Export.RegistroI500.TJSEcdExportRegistroI500;
  TJSEcdExportRegistroI510 = JSEcd.Export.RegistroI510.TJSEcdExportRegistroI510;
  TJSEcdExportRegistroI550 = JSEcd.Export.RegistroI550.TJSEcdExportRegistroI550;
  TJSEcdExportRegistroI555 = JSEcd.Export.RegistroI555.TJSEcdExportRegistroI555;
  TJSEcdExportRegistroI990 = JSEcd.Export.RegistroI990.TJSEcdExportRegistroI990;

  TJSEcdExportRegistroJ001 = JSEcd.Export.RegistroJ001.TJSEcdExportRegistroJ001;
  TJSEcdExportRegistroJ005 = JSEcd.Export.RegistroJ005.TJSEcdExportRegistroJ005;
  TJSEcdExportRegistroJ100 = JSEcd.Export.RegistroJ100.TJSEcdExportRegistroJ100;
  TJSEcdExportRegistroJ150 = JSEcd.Export.RegistroJ150.TJSEcdExportRegistroJ150;
  TJSEcdExportRegistroJ210 = JSEcd.Export.RegistroJ210.TJSEcdExportRegistroJ210;
  TJSEcdExportRegistroJ215 = JSEcd.Export.RegistroJ215.TJSEcdExportRegistroJ215;
  TJSEcdExportRegistroJ800 = JSEcd.Export.RegistroJ800.TJSEcdExportRegistroJ800;
  TJSEcdExportRegistroJ900 = JSEcd.Export.RegistroJ900.TJSEcdExportRegistroJ900;
  TJSEcdExportRegistroJ930 = JSEcd.Export.RegistroJ930.TJSEcdExportRegistroJ930;
  TJSEcdExportRegistroJ935 = JSEcd.Export.RegistroJ935.TJSEcdExportRegistroJ935;
  TJSEcdExportRegistroJ990 = JSEcd.Export.RegistroJ990.TJSEcdExportRegistroJ990;

  TJSEcdExportRegistroK001 = JSEcd.Export.RegistroK001.TJSEcdExportRegistroK001;
  TJSEcdExportRegistroK030 = JSEcd.Export.RegistroK030.TJSEcdExportRegistroK030;
  TJSEcdExportRegistroK100 = JSEcd.Export.RegistroK100.TJSEcdExportRegistroK100;
  TJSEcdExportRegistroK200 = JSEcd.Export.RegistroK200.TJSEcdExportRegistroK200;
  TJSEcdExportRegistroK210 = JSEcd.Export.RegistroK210.TJSEcdExportRegistroK210;
  TJSEcdExportRegistroK990 = JSEcd.Export.RegistroK990.TJSEcdExportRegistroK990;

implementation

end.
