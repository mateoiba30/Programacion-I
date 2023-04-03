program p2e7;
uses crt;
var
  c,p,max:integer;
  cad:char;
begin
  max:=0;
  p:=0;
  c:=0;

  write('Ingrese una cadena de caracteres (finaliza con punto): ');
  read(cad);

  while(cad<>'.')do begin
    while(cad=' ')do
      read(cad);

    if(cad='t')then begin
      c:=0;
      while(cad<>'.')and(cad<>' ')do begin
        read(cad);
        c:=c+1;
      end;
    end
    else begin
      while(cad<>'.')and(cad<>' ')do
        read(cad);
    end;

    p:=p+1;
    if(c>max)then
      max:=c;
  end;

  writeln('Hay ',p,' palabras');
  readkey();
  writeln('El maximo de letras de una palabra que inicie con "t" es de: ',max);
  readkey();
end.

