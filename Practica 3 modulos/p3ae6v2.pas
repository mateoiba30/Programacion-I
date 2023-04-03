program p3ae6v2;
uses crt;
procedure longitud(var long:integer;var cadena:char);
begin
    while (cadena<>'*')and(cadena<>' ')do begin
      long:=long+1;
      read(cadena);
    end;
end;
var
  cadena:char;
  long,c:integer;
begin
  c:=0;
  long:=0;
  write('Ingrese una cadena (finaliza con "*"): ');
  read(cadena);
  while (cadena<>'*')do begin
    long:=0;
    while(cadena=' ')do
      read(cadena);

    longitud(long,cadena);
      {}

    if(long=5)then
      c:=c+1;
  end;
  write('La cantidad de palabras con 5 letras es de: ',c);
  readkey();
end.


