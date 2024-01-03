unit mvcLive.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  mvcLive.model.entity.impl.cliente, mvcLive.utils.impl.query;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  var lCliente := TCliente.New;

  memo2.Lines.Add(TQuery.New(lCliente).Insert);

end;

end.
