program p7ae11v2;
uses crt;
const
  max=7;
  fin=50;
type
  vector=array[1..max]of real;

procedure LimpiarV(var v:vector);
var
  i:integer;
begin
  for i:=1 to max do
    v[i]:=-9999;
end;

procedure insertarN(n:integer; var v:vector);
var
  exito:boolean;
  i,pos:integer;
begin
  i:=1;
  exito:=false;
  if(n>v[max])then begin
    while(i<=max)and(not exito)do begin
      if(v[i]<n)then begin
        exito:=True;
        pos:=i;
      end;
      i:=i+1;
    end;
    for i:=max-1 downto pos do
      v[i+1]:=v[i];
    v[i]:=n;
  end;
end;

procedure EscribirV(v:vector;c:integer);
var
  i:integer;
begin
  for i:=1 to c do begin
    writeln(v[i]:2:2);
    readkey();
  end;
end;

var
  v:vector;
  n,c:integer;

begin
  c:=0;
  LimpiarV(v);
  writeln('ingrese un numero (',fin,' para finalizar): ');
  readln(n);
  while(n<>fin) do begin
    insertarN(n,v);
    writeln('ingrese otro numero: ');
    readln(n);
    c:=c+1;
  end;

  if(c>7)then
    c:=7;

  writeln('Los ',c,' mayores numeros son (',fin,' para finalizar): ');
  readkey();

  EscribirV(v,c);
end.
