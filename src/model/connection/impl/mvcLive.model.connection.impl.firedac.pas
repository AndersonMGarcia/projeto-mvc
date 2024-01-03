unit mvcLive.model.connection.impl.firedac;

interface

uses
  System.SysUtils,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  mvcLive.model.connection.interfaces,
  mvcLive.model.connection.impl.configuration;

  
type
  TConnectionFiredac = class(TInterfacedObject, iConnection)
    private
      FConf : iConfiguration;
      FConn : TFDConnection;
      constructor Create;
      destructor Destroy; override;
    public
      class function New : iConnection;
      function Connection : TCustomconnection;
  end;

implementation


  

{ TConnectionFiredac }

function TConnectionFiredac.Connection: TCustomconnection;
begin
  Result := FConn;
end;

constructor TConnectionFiredac.Create;
begin
  FConn := TFDConnection.Create(nil);
  FConf := TConfiguration.New(ExtractFilePath(ParamStr(0)));
  try
    FConn.Params.Clear;
    FConn.Params.DriverID := FConf.GetDriverName;
    FConn.Params.UserName := FConf.GetUsuario;
    FConn.Params.Password := fconf.GetSenha;

    if FConf.GetDriverName.Equals('SQLite') then
      FConn.Params.Add('LockingMode=Normal');

  except
    raise Exception.Create('Erro ao tentar conectar com a base de dados. Favor entrar em contato com o suporte.');

  end;
end;

destructor TConnectionFiredac.Destroy;
begin
  FConn.Free;
  inherited;
end;

class function TConnectionFiredac.New: iConnection;
begin
  Result := Self.Create;
end;

end.
