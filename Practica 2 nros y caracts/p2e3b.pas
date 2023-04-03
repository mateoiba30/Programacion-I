program p2e3b;
uses crt;
var
  i,y,x,n,digitos,suma:integer;
begin
  For i:=1 to 10 do Begin
    suma:=0;
    write('Ingrese un numero: ');
    read(n);
    x:=n;
    digitos:=0;

    while(x<>0) do begin
      x:=x DIV 10;
      digitos:=digitos+1;
    end;

    while(digitos>1) do begin
      suma:=0;
      while(n>0)do begin
        y:=n MOD 10;
        suma:=suma+y;
        n:=n DIV 10;
      end;
      digitos:=0;
      n:=suma;
      x:=n;
      while(x<>0)do begin
        x:=x DIV 10;
        digitos:=digitos+1;
      end;
    end;

    case n of
      0:write('cero');
      1:write('uno');
      2:write('dos');
      3:write('tres');
      4:write('cuatro');
      5:write('cinco');
      6:write('seis');
      7:write('siete');
      8:write('ocho');
      9:write('nueve');
    end;

    writeln('');
    readkey();
  end;
end.
