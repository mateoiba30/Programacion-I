program p3be4v2SIN_TERMINAR;
type
  letras = set of char;

procedure Conjunto (var L: letras; car: char);
begin
  if (car in L) then
    L:= L - [car];
end;

procedure informar (L: letras);
var
  i: char;
begin
  writeln('Las letras que no aparecieron son: ');
  for i:= 'a' to 'z' do begin
   if (i in L) then
     write(i , ',  ');
  end;
end;

var
  L: letras;
  car: char;
begin
  L:= ['a'..'z'];
  writeln('Ingrese su secuencia de caracteres');
  readln(car);

  while (car <> '#') do begin
    Conjunto(L, car);
    readln(car);
  end;

  informar (L);
  readln( );
end.

