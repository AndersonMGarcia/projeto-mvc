program MVC_LIVE;

uses
  Vcl.Forms,
  mvcLive.view.principal in 'src\view\mvcLive.view.principal.pas' {Form1},
  mvcLive.model.entity.interfaces in 'src\model\entity\mvcLive.model.entity.interfaces.pas',
  mvcLive.model.entity.impl.cliente in 'src\model\entity\impl\mvcLive.model.entity.impl.cliente.pas',
  mvcLive.model.entity.impl.produtos in 'src\model\entity\impl\mvcLive.model.entity.impl.produtos.pas',
  mvcLive.model.entity.impl.pedidos in 'src\model\entity\impl\mvcLive.model.entity.impl.pedidos.pas',
  mvcLive.model.entity.impl.pedidoItens in 'src\model\entity\impl\mvcLive.model.entity.impl.pedidoItens.pas',
  mvcLive.model.entity.impl.entity in 'src\model\entity\impl\mvcLive.model.entity.impl.entity.pas',
  mvcLive.model.connection.interfaces in 'src\model\connection\mvcLive.model.connection.interfaces.pas',
  mvcLive.model.connection.impl.firedac in 'src\model\connection\impl\mvcLive.model.connection.impl.firedac.pas',
  mvcLive.model.connection.impl.query in 'src\model\connection\impl\mvcLive.model.connection.impl.query.pas',
  mvcLive.model.connection.impl.configuration in 'src\model\connection\impl\mvcLive.model.connection.impl.configuration.pas',
  mvcLive.utils.interfaces in 'src\utils\mvcLive.utils.interfaces.pas',
  mvcLive.utils.impl.query in 'src\utils\impl\mvcLive.utils.impl.query.pas',
  mvcLive.model.dao.interfaces in 'src\model\dao\mvcLive.model.dao.interfaces.pas',
  mvcLive.model.dao.impl.daogenerico in 'src\model\dao\impl\mvcLive.model.dao.impl.daogenerico.pas',
  mvcLive.utils.impl.rttihelper in 'src\utils\impl\mvcLive.utils.impl.rttihelper.pas',
  mvcLive.utils.impl.atributos in 'src\utils\impl\mvcLive.utils.impl.atributos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
