program p3ae6;
uses crt;
procedure longitud(cadena:string;var long:integer);
begin
    while (cadena<>'*')and(cadena<>' ')do begin
      long:=long+1;
      read(cadena);
    end;
end;
var
  cadena:char;
  long,c:integer;
  ca:string;
begin
  c:=0;
  long:=0;
  write('Ingrese una cadena (finaliza con "*"): ');
  read(cadena);
  while (cadena<>'*')do begin
    long:=0;
    while(cadena=' ')do
      read(cadena);
    while (cadena<>'*')and(cadena<>' ')do
      ca:=ca+[cadena];
    longitud(ca,long);
    if(long=5)then
      c:=c+1;
  end;
  write('La cantidad de palabras con 5 letras es de: ',c);
  readkey();
end.
