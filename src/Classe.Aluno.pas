unit Classe.Aluno;
interface
  uses Classe.Pessoa;

  type TAluno = class(TPessoa)
    private
    FMedia2: Double;
    FMedia3: Double;
    FMedia1: Double;
    FMedia4: Double;
    FStatus: String;
    procedure SetMedia1(const Value: Double);
    procedure SetMedia2(const Value: Double);
    procedure SetMedia3(const Value: Double);
    procedure SetMedia4(const Value: Double);
    procedure SetStatus(const Value: String);
    public
      property Media1: Double read FMedia1 write SetMedia1;
      property Media2: Double read FMedia2 write SetMedia2;
      property Media3: Double read FMedia3 write SetMedia3;
      property Media4: Double read FMedia4 write SetMedia4;
      property Status: String read FStatus write SetStatus;
      function StatusAluno: String;
      function MediaAluno: Double;
  end;

implementation

{ TAluno }

procedure TAluno.SetMedia1(const Value: Double);
begin
  FMedia1 := Value;
end;

procedure TAluno.SetMedia2(const Value: Double);
begin
  FMedia2 := Value;
end;

procedure TAluno.SetMedia3(const Value: Double);
begin
  FMedia3 := Value;
end;

procedure TAluno.SetMedia4(const Value: Double);
begin
  FMedia4 := Value;
end;

procedure TAluno.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

function TAluno.MediaAluno: Double;
begin
    Result:=(FMedia1 + FMedia2 + FMedia3 + FMedia4) / 4;
end;

function TAluno.StatusAluno: String;
begin
  if (Trunc(MediaAluno) >= 7) then
    Result := 'APROVADO'
  else if (Trunc(MediaAluno) = 5) then
    Result := 'ECUPERACAO'
  else
    Result := 'REPROVADO';
end;

end.
