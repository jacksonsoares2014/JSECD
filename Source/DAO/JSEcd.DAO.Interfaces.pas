unit JSEcd.DAO.Interfaces;

interface

uses
  JSEcd.Model.Classes,
//  JSEcd.Model.Types,
  System.Generics.Collections;


type
  IJSEcdDAO0000 = interface
    ['{C1D245AF-CBF5-4293-9563-2494C6EE5A60}']
    function Load(AEmpresa: Extended): TJSEcdModelRegistro0000;
  end;

  IJSEcdDAO0007 = interface
    ['{A0D8A796-B083-4115-BD8C-70E1382E43C2}']
    function List: TObjectList<TJSEcdModelRegistro0007>;
  end;

  IJSEcdDAO0020 = interface
    ['{9C7EF8A6-EF2E-4D33-966C-1173E255BD5E}']
    function List: TObjectList<TJSEcdModelRegistro0020>;
  end;

  IJSEcdDAO0035 = interface
    ['{0A8805B3-52FD-4449-BCAF-84009B8B3B1B}']
    function List: TObjectList<TJSEcdModelRegistro0035>;
  end;

  IJSEcdDAO0150 = interface
    ['{E70094DA-577E-4402-851A-5957AAB28112}']
    function List: TObjectList<TJSEcdModelRegistro0150>;
  end;

  IJSEcdDAO0180 = interface
    ['{37065057-88F0-4D6F-83FA-436F74D40493}']
    function List: TObjectList<TJSEcdModelRegistro0180>;
  end;

  IJSEcdDAOI010 = interface
    ['{C07C1EC2-F675-411D-88D5-276DF1088D24}']
    function Load: TJSEcdModelRegistroI010;
  end;

  IJSEcdDAOI012 = interface
    ['{CD2FB9A5-0116-471C-9DCB-3F8A8416DADB}']
    function List: TObjectList<TJSEcdModelRegistroI012>;
  end;

  IJSEcdDAOI015 = interface
    ['{53AEEDFF-4BC2-4C17-884A-7EC233B22C3D}']
    function List: TObjectList<TJSEcdModelRegistroI015>;
  end;

  IJSEcdDAOI030 = interface
    ['{B8D50865-BFB0-45F2-B2BA-29B4FDACF696}']
    function Load: TJSEcdModelRegistroI030;
  end;

  IJSEcdDAOI050 = interface
    ['{E3B57FF8-D374-4D60-9268-3E3869C75F65}']
    function List: TObjectList<TJSEcdModelRegistroI050>;
  end;

  IJSEcdDAOI051 = interface
    ['{EF742F62-588D-4921-ADA9-950884F24056}']
    function List(Value: string): TObjectList<TJSEcdModelRegistroI051>;
  end;

  IJSEcdDAOI052 = interface
    ['{7075E743-8744-476C-9EBF-B2042985FB09}']
    function List(Value: string): TObjectList<TJSEcdModelRegistroI052>;
  end;

  IJSEcdDAOI053 = interface
    ['{911C405E-34FA-450F-985B-6CD90F633444}']
    function List: TObjectList<TJSEcdModelRegistroI053>;
  end;

  IJSEcdDAOI075 = interface
    ['{F59035E5-3BB4-4C4B-855B-8A65DEAE4DEB}']
    function List: TObjectList<TJSEcdModelRegistroI075>;
  end;

  IJSEcdDAOI100 = interface
    ['{F7F1B834-3EC3-4EA2-B232-766C1A1FE8AE}']
    function List(CodCcus: TList<String>): TObjectList<TJSEcdModelRegistroI100>;
  end;

  IJSEcdDAOI150 = interface
    ['{4696AAE6-4DB7-4FF7-A6CD-88325EF6CB50}']
    function List: TObjectList<TJSEcdModelRegistroI150>;
  end;

  IJSEcdDAOI155 = interface
    ['{35DBC19C-AA93-48C6-BBF8-7D39AE38F707}']
    function List(RegI150: TJSEcdModelRegistroI150): TObjectList<TJSEcdModelRegistroI155>;
  end;

  IJSEcdDAOI157 = interface
    ['{75740048-9A27-4251-95A0-E59407287C4A}']
    function List(RegI150: TJSEcdModelRegistroI150; RegI155: TJSEcdModelRegistroI155): TObjectList<TJSEcdModelRegistroI157>;
  end;

  IJSEcdDAOI200 = interface
    ['{FAD14B4C-B100-4D78-98A1-4C587300F153}']
    function List: TObjectList<TJSEcdModelRegistroI200>;
  end;

  IJSEcdDAOI250 = interface
    ['{FD4942A2-2B46-4501-AF66-C130592C808D}']
    function List: TObjectList<TJSEcdModelRegistroI250>;
  end;

  IJSEcdDAOI350 = interface
    ['{A59F1505-FCB8-4F32-A4A4-0967CEC425B9}']
    function List: TObjectList<TJSEcdModelRegistroI350>;
  end;

  IJSEcdDAOI355 = interface
    ['{CA9652BD-9DBA-422F-8A41-DD4BB55EDCFE}']
    function List: TObjectList<TJSEcdModelRegistroI355>;
  end;

  IJSEcdDAOI500 = interface
    ['{91327A86-FE52-451D-B906-264594F84A77}']
    function Load: TJSEcdModelRegistroI500;
  end;

  IJSEcdDAOI510 = interface
    ['{96254222-E64C-437E-91D0-2C483B3FA2C1}']
    function List: TObjectList<TJSEcdModelRegistroI510>;
  end;

  IJSEcdDAOI550 = interface
    ['{60BBDB4A-D3F6-42A4-B61A-F1F99D172B66}']
    function List: TObjectList<TJSEcdModelRegistroI550>;
  end;

  IJSEcdDAOI555 = interface
    ['{A6958D8E-D27D-4DC7-8EDD-E03EF48D4E42}']
    function List: TObjectList<TJSEcdModelRegistroI555>;
  end;

  IJSEcdDAOJ005 = interface
    ['{EE69BAAA-AB5D-475B-B49D-A47BB42FFE2B}']
    function List: TObjectList<TJSEcdModelRegistroJ005>;
  end;

  IJSEcdDAOJ100 = interface
    ['{41694641-F742-4271-AA2C-185FDAEC0599}']
    function List: TObjectList<TJSEcdModelRegistroJ100>;
  end;

  IJSEcdDAOJ150 = interface
    ['{BB49854A-DC0A-469B-86FC-44090DA03092}']
    function List: TObjectList<TJSEcdModelRegistroJ150>;
  end;

  IJSEcdDAOJ210 = interface
    ['{04EA58C0-F924-4F72-92CE-5B584AE7B0C9}']
    function List: TObjectList<TJSEcdModelRegistroJ210>;
  end;

  IJSEcdDAOJ215 = interface
    ['{016106E1-D066-4F46-8353-18044C0F2984}']
    function List: TObjectList<TJSEcdModelRegistroJ215>;
  end;

  IJSEcdDAOJ800 = interface
    ['{E8D34D22-55AD-4545-9618-100259424413}']
    function List: TObjectList<TJSEcdModelRegistroJ800>;
  end;

  IJSEcdDAOJ900 = interface
    ['{1D4F8E9B-34DE-4E83-97D5-F8B9EB9EEB45}']
    function Load: TJSEcdModelRegistroJ900;
  end;

  IJSEcdDAOJ930 = interface
    ['{EDBD569C-B336-4A44-9F68-E2E9E3ED31AE}']
    function List: TObjectList<TJSEcdModelRegistroJ930>;
  end;

  IJSEcdDAOJ935 = interface
    ['{551F60F0-EED3-486E-9ED9-EE080FCB20CB}']
    function List: TObjectList<TJSEcdModelRegistroJ935>;
  end;

  IJSEcdDAOK030 = interface
    ['{B0425490-C94E-462E-BE6A-4528989EA3DD}']
    function Load: TJSEcdModelRegistroK030;
  end;

  IJSEcdDAOK100 = interface
    ['{8D490841-2D70-41C0-80A5-B3FC4F4C7171}']
    function List: TObjectList<TJSEcdModelRegistroK100>;
  end;

  IJSEcdDAOK200 = interface
    ['{3E242338-409C-4669-8A89-83AF4F4DC575}']
    function List: TObjectList<TJSEcdModelRegistroK200>;
  end;

  IJSEcdDAOK210 = interface
    ['{91C39DA9-64A9-450E-ACF6-B4A6AF1B04BE}']
    function List: TObjectList<TJSEcdModelRegistroK210>;
  end;

implementation

end.
