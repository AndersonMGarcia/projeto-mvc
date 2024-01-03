unit mvcLive.utils.interfaces;

interface

type
  iQuery = interface
    function Insert : string;
    function Delete: string;
    function Update: string;
    function Select: string;
  end;

  iUtils = interface
    function Query : iQuery;
  end;

implementation

end.
