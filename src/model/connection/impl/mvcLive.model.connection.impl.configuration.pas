unit mvcLive.model.connection.impl.configuration;

interface

uses
  System.SysUtils,
  System.IniFiles,
  mvcLive.model.connection.interfaces;

type
  TConfiguration = class(TInterfacedObject, iConfiguration)
  const
    SECTION    = 'CONFIG';
    CAMINHO    = 'CAMINHO';
    PORTA      = 'PORTA';
    SERVIDOR   = 'SERVIDOR';
    USUARIO    = 'USERNAME';
    SENHA      = 'PASSWORD';
    DRIVERNAME = 'DRIVERNAME';

  private
    FArq: TiniFile;
    constructor Create(FileName: string);
    destructor Destroy; override;
  public
    class function New(FileName: string): iConfiguration;
    function GetProtocolo: string;
    function SetServidor(const Value: string): iConfiguration;
    function GetServidor: string;
    function SetPorta(const Value: integer): iConfiguration;
    function GetPorta: integer;
    function SetCaminho(const Value: string): iConfiguration;
    function GetCaminho: string;
    function SetUsuario(const Value: string): iConfiguration;
    function GetUsuario: string;
    function SetSenha(const Value: string): iConfiguration;
    function GetSenha: string;
    function SetDriverName(const Value: string): iConfiguration;
    function GetDriverName: string;
  end;

implementation

{ TConfiguration }

constructor TConfiguration.Create(FileName: string);
begin
 FArq := TIniFile.Create(FileName);
end;

destructor TConfiguration.Destroy;
begin
  FArq.Free;
  inherited;
end;

function TConfiguration.GetCaminho: string;
begin
  Result := FArq.ReadString(SECTION, CAMINHO, '');
end;

function TConfiguration.GetDriverName: string;
begin
  Result := FArq.ReadString(SECTION, DRIVERNAME, '');
end;

function TConfiguration.GetPorta: integer;
begin
  Result := FArq.ReadInteger(SECTION, PORTA, 0);
end;

function TConfiguration.GetProtocolo: string;
begin
  Result := 'LOCAL';

  if not FArq.ReadString(SECTION, SERVIDOR, '').Equals('LOCALHOST') or
         FArq.ReadString(SECTION, SERVIDOR, '').Equals('127.0.0.1') then
    Result := 'TCP';

end;

function TConfiguration.GetSenha: string;
begin
  FArq.ReadString(SECTION, SENHA, '')
end;

function TConfiguration.GetServidor: string;
begin
  Result := FArq.ReadString(SECTION, SERVIDOR, '');
end;

function TConfiguration.GetUsuario: string;
begin
  FArq.ReadString(SECTION, SENHA, '')
end;

class function TConfiguration.New(FileName: string): iConfiguration;
begin
  Result := Self.Create(FileName);
end;

function TConfiguration.SetCaminho(const Value: string): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteString(SECTION, CAMINHO, Value);
end;

function TConfiguration.SetDriverName(const Value: string): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteString(SECTION, DRIVERNAME, Value);
end;

function TConfiguration.SetPorta(const Value: integer): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteInteger(SECTION, PORTA, Value);
end;

function TConfiguration.SetSenha(const Value: string): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteString(SECTION, SENHA, Value);
end;

function TConfiguration.SetServidor(const Value: string): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteString(SECTION, SERVIDOR, Value);
end;

function TConfiguration.SetUsuario(const Value: string): iConfiguration;
begin
  RESULT := Self;
  FArq.WriteString(SECTION, USUARIO, Value);
end;

end.
