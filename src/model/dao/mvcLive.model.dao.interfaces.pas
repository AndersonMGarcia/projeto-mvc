unit mvcLive.model.dao.interfaces;

interface

uses
  Data.DB;

type
  iDAO<T : IInterface> = interface
    function Listar: iDAO<T>;
    function ListarPorId(Id : Variant) : iDAO<T>;
    function Inserir : iDAO<T>;
    function Excluir : iDAO<T>;
    function Atualizar : iDAO<T>;
    function DataSet : TDataSet;
  end;

implementation

end.
