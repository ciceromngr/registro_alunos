program RegistroAluno;

uses
  Vcl.Forms,
  Form.FormPrincipal in 'src\Form.FormPrincipal.pas' {Form1},
  Classe.Pessoa in 'src\Classe.Pessoa.pas',
  Classe.Aluno in 'src\Classe.Aluno.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
