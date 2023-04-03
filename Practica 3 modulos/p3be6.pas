program p3be6;
uses crt;
type
  conj=set of char;
var
  conjM:conj;
  cadena:char;
begin
  conjM:=[];
  write('Ingrese una cadena: ');
  read(cadena);

  while(cadena<>'.')and(cadena>='A')and(cadena<='Z')do begin
    conjM:=conjM+[cadena];
    read(cadena);
  end;

  if (cadena='@')then begin
    while not(cadena in conjM) and(cadena<>'.') do
      read(cadena);
  end;

  if(cadena='.')then begin
    write('Cumple con la condicion "A@B"');
    readkey();
  end
  else begin
    write('NO cumple con la condicion "A@B"');
    readkey();
  end;

end.

