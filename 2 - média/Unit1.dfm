object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'VIASOFT - Teste 2 - MEDIA (Thiago Naciff Fraz'#227'o)'
  ClientHeight = 447
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblValor: TLabel
    Left = 40
    Top = 31
    Width = 71
    Height = 13
    Caption = 'Valor calculado'
  end
  object Button1: TButton
    Left = 168
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = Button1Click
  end
  object mmResultado: TMemo
    Left = 40
    Top = 104
    Width = 225
    Height = 321
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object mskValor: TMaskEdit
    Left = 40
    Top = 50
    Width = 112
    Height = 21
    TabOrder = 0
    Text = ''
    OnExit = mskValorExit
  end
end
