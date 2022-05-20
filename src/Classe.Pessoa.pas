unit Classe.Pessoa;

interface
  type TPessoa = class
    private
      FCodigo: Integer;
      FIdade: Integer;
      FNome: String;
      procedure SetCodigo(const Value: Integer);
      procedure SetIdade(const Value: Integer);
      procedure SetNome(const Value: String);

    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property Nome  : String read FNome write SetNome;
      property Idade : Integer read FIdade write SetIdade;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPessoa.SetIdade(const Value: Integer);
begin
  FIdade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
