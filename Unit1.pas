unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
|
| Prozedur zum Sortieren eines Zahlenarrays mithilfe von Shakersort
| Durchlaufen einer Prozedur zum Vergleichen der Werte für die gesammte Länge des Arrays.
|
| var myArray | Übergebenes Array zum Sortieren
|
}

procedure shakerShort(var myArray : array of Integer);

// Variablendeklaration
var i, j, k, temp1, temp2: Integer;

begin

  // Initialisierung des Zählwertes
  i := 0;

  repeat

    // Erster Durchlauf der Schleife. (Vorne => Hinten)
    for j := 1 to Length(myArray) do
      begin

        // Absicherung zum Thema Länge des Arrays um AIOOBE zu vermeiden.
        if j = (Length(myArray) - 1) then break;

        // Überprüfen der Zahlenwerte am Index und ggf. tauschen.
        if myArray[j] > myArray[j + 1] then
          begin
            temp1 := myArray[j];
            myArray[j] := myArray[j + 1];
            myArray[j + 1] := temp1;
          end;


      end;

    // Zweiter Durchlauf der Schleife. (Hinten => Vorne)
    for k := Length(myArray) downto 1 do
      begin

        // Überprüfen der Zahlenwerte am Index und ggf. tauschen.
        if myArray[k] < myArray[k - 1] then
          begin
            temp2 := myArray[k];
            myArray[k] := myArray[k - 1];
            myArray[k - 1] := temp2;
          end;

      end;

    // Erhöhen des Zählwertes.
    i := i + 1;
  until (i > (Length(myArray) - 1));

end;


procedure TForm1.Button1Click(Sender: TObject);

// Variablendeklaration
var numbers : array[1..20] of Integer;
var i, j, k : Integer;
var output1, output2 : String;

begin

// Bestückung des Arrays mit zufälligen Zahlen von 0 - 20.
for i := 1 to Length(numbers) do
  begin
    numbers[i] := random(20 + 1);
  end;

// Ausgabe des unsortierten Arrays.
for j := 1 to Length(numbers) do
  output1 := output1 + IntToStr(numbers[j]) + ', ';

Label1.Caption := 'Originales Array: ' + output1;

// Sortieren des Arrays.
shakerShort(numbers);

// Ausgabe des sortierten Arrays.
for k := 1 to Length(numbers) do
  output2 := output2 + IntToStr(numbers[k]) + ', ';

Label2.Caption := 'Sortiertes Array: ' + output2;

end;

end.
