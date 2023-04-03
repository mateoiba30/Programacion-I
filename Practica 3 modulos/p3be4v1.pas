program p3be4v1;
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
procedure contarletras(var secuencia:char;var conj:letras);
begin

  while(secuencia<>'#')do begin
    if(secuencia in conj)then
      conj:=conj-[secuencia];
    read(secuencia);
  end;
  mostrarletras(conj);
end;
var
  abecedario:letras;
  secuencia:char;
begin
  abecedario:=['a'..'z'];
  write('Ingrese una cadena:  ');
    read(secuencia);
  contarletras(secuencia,abecedario);
end.

