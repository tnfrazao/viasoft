object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Network - Terceiro - Thiago Naciff Frazao'
  ClientHeight = 195
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 32
    Top = 20
    Width = 85
    Height = 13
    Caption = 'Qtd de Elementos'
  end
  object btnValidar: TButton
    Left = 215
    Top = 18
    Width = 185
    Height = 52
    Caption = 'Validar Elementos Rede Conex'#227'o'
    TabOrder = 3
    OnClick = btnValidarClick
  end
  object edtQtd: TEdit
    Left = 32
    Top = 39
    Width = 85
    Height = 21
    Hint = 'Informe a quantidade de elementos para formar a rede de conex'#227'o'
    TabOrder = 0
    OnKeyPress = edtQtdKeyPress
  end
  object grbConect: TGroupBox
    Left = 16
    Top = 96
    Width = 193
    Height = 81
    Hint = 
      'Informe os elementos que estar'#227'o conectados (Diretamentete /Indi' +
      'retamente)'
    Caption = 'Elementos conectados da rede'
    TabOrder = 1
    object lblElemento1: TLabel
      Left = 16
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Elemento 1'
    end
    object lblElemento2: TLabel
      Left = 112
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Elemento 2'
    end
    object edtNum1: TEdit
      Left = 16
      Top = 48
      Width = 53
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNum1KeyPress
    end
    object edtNum2: TEdit
      Left = 112
      Top = 48
      Width = 53
      Height = 21
      TabOrder = 1
      OnKeyPress = edtNum2KeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 215
    Top = 96
    Width = 185
    Height = 81
    Hint = 'Informe os elementos que deseja validar conectivade'
    Caption = 'Elementos a validar conectividade'
    TabOrder = 2
    object lblValida1: TLabel
      Left = 16
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Elemento 1'
    end
    object lblValida2: TLabel
      Left = 108
      Top = 29
      Width = 53
      Height = 13
      Caption = 'Elemento 2'
    end
    object edtNum3: TEdit
      Left = 16
      Top = 48
      Width = 53
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNum3KeyPress
    end
    object edtNum4: TEdit
      Left = 108
      Top = 48
      Width = 53
      Height = 21
      TabOrder = 1
      OnKeyPress = edtNum4KeyPress
    end
  end
end
