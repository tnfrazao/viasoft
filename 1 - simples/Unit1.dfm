object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'VIASOFT - Teste 1 - simples (Thiago Naciff Fraz'#227'o)'
  ClientHeight = 494
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblOld: TLabel
    Left = 8
    Top = 200
    Width = 70
    Height = 13
    Caption = 'Antiga palavra'
  end
  object Label1: TLabel
    Left = 282
    Top = 200
    Width = 64
    Height = 13
    Caption = 'Nova palavra'
  end
  object mmOriginal: TMemo
    Left = 8
    Top = 8
    Width = 545
    Height = 183
    Lines.Strings = (
      'Texto: programa'#231#227'o e racioc'#237'nio l'#243'gico'
      
        'Da cria'#231#227'o de um sistema para colher e distribuir '#225'gua pot'#225'vel a' +
        'o planejamento de uma linha de produ'#231#227'o '
      
        'para fabrica'#231#227'o de circuitos integrados e '#224' formula'#231#227'o de uma es' +
        'trat'#233'gia para testar uma nova aeronave, '
      
        'engenheiros de todas as especialidades desenvolvem '#8220'programas'#8221' p' +
        'ara resolver problemas. Uma das '
      
        'qualifica'#231#245'es mais importantes de um engenheiro '#233' a capacidade d' +
        'e descrever programas de forma clara e '
      'livre de ambiguidades.'
      ''
      
        'Em '#250'ltima an'#225'lise, os computadores s'#227'o m'#225'quinas que seguem autom' +
        'aticamente um conjunto de regras '
      
        '['#8230']. As regras e procedimentos que governam a opera'#231#227'o dos proce' +
        'ssos de computa'#231#227'o s'#227'o chamados de '
      
        'programas de computador, e s'#227'o escritos em linguagens precisas, ' +
        'especializadas, conhecidas como '
      'linguagens de programa'#231#227'o.')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object EdtAntiga: TEdit
    Left = 8
    Top = 219
    Width = 271
    Height = 21
    TabOrder = 1
  end
  object edtNova: TEdit
    Left = 282
    Top = 219
    Width = 271
    Height = 21
    TabOrder = 2
  end
  object btnSubstituir: TButton
    Left = 248
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Substituir'
    TabOrder = 3
    OnClick = btnSubstituirClick
  end
  object mmNovoTexto: TMemo
    Left = 8
    Top = 283
    Width = 545
    Height = 205
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
