program p3be4SIN_TERMINAR;
uses crt;
type
  letras=set of char;
procedure mostrarletras(conj:letras);
var
  i:char;
begin
  write('Las letras que NO aparecieron son: ');
  readkey();
  for i:='a' to 'z' do begin
    if (i in conj) then begin
      write(i,' ');
      readkey();
    end;
  end;
end;
procedure contarletras(var conj:letras);
var
  secuencia:char;
begin
  write('Ingrese una cadena:  ');
  read(secuencia);
  while(secuencia<>'#')do begin
    if(secuencia in conj)then
      conj:=conj-[secuencia];
    read(secuencia);
  end;
  mostrarletras(conj);
end;
var
  abecedario:letras;
begin
  abecedario:=['a'..'z'];
  contarletras(abecedario);
end.

