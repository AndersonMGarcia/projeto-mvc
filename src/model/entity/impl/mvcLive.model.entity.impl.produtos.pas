unit mvcLive.model.entity.impl.produtos;

interface

uses
  mvcLive.model.entity.interfaces;
type
  TProdutos = class(TInterfacedObject, iProdutos)
    private
      FCodigo     : Integer;
      FDescricao  : string;
      FPrecoVenda : Currency;
    public
      class function New : iProdutos;
      function SetCodigo(const Value : Integer): iProdutos;
      function GetCodigo : Integer;
      function SetDescricao(const Value : string): iProdutos;
      function GetDescricao : string;
      function SetPrecoVenda(const Value : currency): iProdutos;
      function GetPrecoVenda : currency;
  end;

implementation

{ TProdutos }

function TProdutos.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TProdutos.GetDescricao: string;
begin
  Result := FDescricao;
end;

function TProdutos.GetPrecoVenda: currency;
begin
  Result := FPrecoVenda;
end;

class function TProdutos.New: iProdutos;
begin
  Result := Self.Create;
end;

function TProdutos.SetCodigo(const Value: Integer): iProdutos;
begin
  Result := Self;
  FCodigo := Value;
end;

function TProdutos.SetDescricao(const Value: string): iProdutos;
begin
  Result := Self;
  FDescricao := Value;
end;

function TProdutos.SetPrecoVenda(const Value: currency): iProdutos;
begin
  Result := Self;
  FPrecoVenda := Value;
end;

end.
