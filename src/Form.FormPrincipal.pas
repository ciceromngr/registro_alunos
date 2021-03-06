unit Form.FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtIdade: TEdit;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    edtNota4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    btnRegistrar: TButton;
    btnApagarCampos: TButton;
    btnRegistro: TButton;
    mmoCriarRegistro: TMemo;
    mmoRegistroAlunos: TMemo;
    Label5: TLabel;
    btnAprovados: TButton;
    btnRecupera??o: TButton;
    btnReprovados: TButton;
    procedure btnRegistrarClick(Sender: TObject);
    procedure btnApagarCamposClick(Sender: TObject);
    procedure btnRegistroClick(Sender: TObject);
    procedure btnAprovadosClick(Sender: TObject);
    procedure btnRecupera??oClick(Sender: TObject);
    procedure btnReprovadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimparCampos;
    procedure MostrarStatusEspecificoAluno(StatusAluno: String);
    function VerificarCampos: Boolean;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classe.Aluno;

var
  alunos  : array of TAluno;
  I       : Integer;
  TmArray : Integer = 0;
  aluno: TAluno;

procedure TForm1.btnRegistrarClick(Sender: TObject);
begin
     aluno := TAluno.Create;

     if not VerificarCampos then
      begin
        ShowMessage('Por favor Preencher todos os campos');
        Abort;
      end;

     with aluno do
     begin
        Codigo := Random(1000);
        Nome   := edtNome.Text;
        Idade  := StrToInt(edtIdade.Text);
        Media1  := StrToFloat(edtNota1.Text);
        Media2  := StrToFloat(edtNota2.Text);
        Media3  := StrToFloat(edtNota3.Text);
        Media4  := StrToFloat(edtNota4.Text);
        Status  := StatusAluno;
     end;

     Inc(TmArray);
     SetLength(alunos, TmArray);
     alunos[TmArray - 1] := aluno;

     mmoCriarRegistro.Lines.Add(Format('O Aluno %S foi registrado com Sucesso !!',[aluno.Nome]));
     LimparCampos;

end;

procedure TForm1.btnRegistroClick(Sender: TObject);
var MediaAluno : Double;
begin
  mmoRegistroAlunos.Lines.Clear;
  for I := Low(alunos) to High(alunos) do
  begin
    MediaAluno := alunos[I].MediaAluno;

    with mmoRegistroAlunos do
    begin
      Lines.Add(Format('Codigo Aluno: %d', [alunos[i].Codigo]));
      Lines.Add('Nome do Aluno: ' + alunos[I].nome);
      Lines.Add('1a. nota.....: ' + Format('%.2f', [alunos[I].Media1]));
      Lines.Add('2a. nota.....: ' + Format('%.2f', [alunos[I].Media2]));
      Lines.Add('3a. nota.....: ' + Format('%.2f', [alunos[I].Media3]));
      Lines.Add('4a. nota.....: ' + Format('%.2f', [alunos[I].Media4]));
      Lines.Add('M?dia........: ' + Format('%.2f', [MediaAluno]));
      Lines.Add(Format('Status Aluno: %S',[alunos[I].Status]));
      Lines.Add('=========================================');
    end;
  end;

end;

procedure TForm1.btnAprovadosClick(Sender: TObject);
begin
    MostrarStatusEspecificoAluno('APROVADO');
end;

procedure TForm1.btnRecupera??oClick(Sender: TObject);
begin
   MostrarStatusEspecificoAluno('RECUPERACAO');
end;

procedure TForm1.btnReprovadosClick(Sender: TObject);
begin
    MostrarStatusEspecificoAluno('REPROVADO');
end;

procedure TForm1.MostrarStatusEspecificoAluno(StatusAluno: String);
begin
  mmoRegistroAlunos.Lines.Clear;
  mmoRegistroAlunos.Lines.Add(Format('Alunos %S',[StatusAluno]));
  for I := Low(alunos) to High(alunos) do
  begin
   if alunos[I].Status.Equals(StatusAluno) then
     begin
      with mmoRegistroAlunos do
        begin
          Lines.Add(Format('Codigo Aluno: %d', [alunos[i].Codigo]));
          Lines.Add('Nome do Aluno: ' + alunos[I].nome);
          Lines.Add('1a. nota.....: ' + Format('%.2f', [alunos[I].Media1]));
          Lines.Add('2a. nota.....: ' + Format('%.2f', [alunos[I].Media2]));
          Lines.Add('3a. nota.....: ' + Format('%.2f', [alunos[I].Media3]));
          Lines.Add('4a. nota.....: ' + Format('%.2f', [alunos[I].Media4]));
          Lines.Add('M?dia........: ' + Format('%.2f', [alunos[I].MediaAluno]));
          Lines.Add(Format('Status Aluno: %S',[alunos[I].Status]));
          Lines.Add('=========================================');
        end;
     end
   else
    begin
      ShowMessage(Format('N?o Existe Alunos: %S',[StatusAluno]));
      Abort;
    end;
  end;
end;

procedure TForm1.btnApagarCamposClick(Sender: TObject);
begin
     LimparCampos;
end;

procedure TForm1.LimparCampos;
begin
     edtNome.Clear;
     edtNome.SetFocus;

     edtIdade.Clear;
     edtNota1.Clear;
     edtNota2.Clear;
     edtNota3.Clear;
     edtNota4.Clear;
end;

function TForm1.VerificarCampos: Boolean;
begin
  Result :=
        (edtNome.Text <> '')  and
        (edtIdade.Text <> '') and
        (edtNota1.Text <> '') and
        (edtNota2.Text <> '') and
        (edtNota3.Text <> '') and
        (edtNota4.Text <> '');
end;

end.
