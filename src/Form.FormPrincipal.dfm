object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 688
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 27
    Width = 57
    Height = 13
    Caption = 'Nome Aluno'
  end
  object Label2: TLabel
    Left = 34
    Top = 54
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label3: TLabel
    Left = 34
    Top = 88
    Width = 28
    Height = 13
    Caption = 'Notas'
  end
  object Label4: TLabel
    Left = 208
    Top = 8
    Width = 100
    Height = 13
    Caption = 'Campos Obrigatorios'
  end
  object Label5: TLabel
    Left = 8
    Top = 295
    Width = 90
    Height = 13
    Caption = 'Registro de Alunos'
  end
  object edtNome: TEdit
    Left = 80
    Top = 24
    Width = 441
    Height = 21
    TabOrder = 0
    TextHint = 'Digite o nome do aluno'
  end
  object edtIdade: TEdit
    Left = 80
    Top = 51
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    TextHint = 'Idade'
  end
  object edtNota1: TEdit
    Left = 80
    Top = 85
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    TextHint = 'Nota 1'
  end
  object edtNota2: TEdit
    Left = 177
    Top = 85
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    TextHint = 'Nota 2'
  end
  object edtNota3: TEdit
    Left = 272
    Top = 85
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    TextHint = 'Nota 3'
  end
  object edtNota4: TEdit
    Left = 368
    Top = 85
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    TextHint = 'Nota 4'
  end
  object Panel1: TPanel
    Left = 8
    Top = 127
    Width = 513
    Height = 58
    TabOrder = 6
  end
  object btnRegistrar: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 7
    OnClick = btnRegistrarClick
  end
  object btnApagarCampos: TButton
    Left = 112
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Apagar Campos'
    TabOrder = 8
    OnClick = btnApagarCamposClick
  end
  object btnRegistro: TButton
    Left = 384
    Top = 144
    Width = 128
    Height = 25
    Caption = 'Ver Todos os Registros'
    TabOrder = 9
    OnClick = btnRegistroClick
  end
  object mmoCriarRegistro: TMemo
    Left = 8
    Top = 208
    Width = 517
    Height = 57
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 10
  end
  object mmoRegistroAlunos: TMemo
    Left = 8
    Top = 321
    Width = 517
    Height = 344
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 11
  end
  object btnAprovados: TButton
    Left = 208
    Top = 290
    Width = 75
    Height = 25
    Caption = 'Aprovados'
    TabOrder = 12
    OnClick = btnAprovadosClick
  end
  object btnRecuperação: TButton
    Left = 314
    Top = 290
    Width = 89
    Height = 25
    Caption = 'Recupera'#231#227'o'
    TabOrder = 13
    OnClick = btnRecuperaçãoClick
  end
  object btnReprovados: TButton
    Left = 423
    Top = 290
    Width = 89
    Height = 25
    Caption = 'Reprovados'
    TabOrder = 14
    OnClick = btnReprovadosClick
  end
end
