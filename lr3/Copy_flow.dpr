program Copy_flow;

uses
  Forms,
  Flow in 'Flow.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
