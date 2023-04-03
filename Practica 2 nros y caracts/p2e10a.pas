program p2e10a;
uses crt;
var
  cadena:char;
  caracteres,c6:integer;

begin
  c6:=0;

  write('Ingrese una cadena que finaliza con "#" --> ');
  read(cadena);

  repeat

    while(cadena=' ')do
      read(cadena);
    caracteres:=0;

    while(cadena<>' ')and(cadena<>'#')do begin
      read(cadena);
      caracteres:=caracteres+1;
    end;

    if(caracteres=6)then
      c6:=c6+1;

  until (cadena='#');

  writeln('La cantidad de palabras de seis caracteres es de: ',c6);
  readkey();
end.
