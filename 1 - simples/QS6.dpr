//1) Implementar uma fun??o que substitua todas as ocorr?ncias de uma substring
//por outra passada como par?metro;
//Criar uma classe TSubstitui que implemente a interface ISubstitui.
//
//  ISubstitui = interface
//    function Substituir(Str, Velho, Novo: String): String;
//  end;
//
//Ao chamar o m?todo Substituir, dever? ser retornada a string passada como
//par?metro com todas as ocorr?ncias da string velha substitu?das pela string nova.
//Ex.: string ?O rato roeu a roupa do rei de roma?
//       velha: ?ro?
//       nova: ?teste?
//       retorno: ?O rato testeeu a testeupa do rei de testema?
//Obs.: A pesquisa e montagem da nova string dever? ser feita manualmente pois
//o objetivo ? analisar a l?gica do candidato e n?o seu conhecimento da api do Delphi,
//portanto n?o ser? permitido o uso de qualquer fun??o de substitui??o de Strings.

program QS6;

uses
  Forms,
  uISubstitui in 'C:\Users\Thiago\Desktop\1 - simples\uISubstitui.pas',
  uSubstitui in 'C:\Users\Thiago\Desktop\1 - simples\uSubstitui.pas',
  Unit1 in 'C:\Users\Thiago\Desktop\1 - simples\Unit1.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Form1.ShowModal
end.

