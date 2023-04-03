program p3be4v2;
uses crt;
type
  letras=set of char;
procedure contarletras(secuencia:char);

  procedure mostrarletras(conj:letras);
  var
    i:char;
  begin
    write('Las letras que NO aparecieron son: ');
    readkey();
    for i:='a' to 'z' do begin
      if not(i in conj) then begin
        write(i,' ');
        readkey();
      end;
    end;
  end;

var
  conj:letras;
begin
  conj:=[];
  while(secuencia<>'#')do begin
    if not (secuencia in conj)then
      conj:=conj+[secuencia];
    read(secuencia);
  end;
  mostrarletras(conj);
end;
var
  secuencia:char;
begin
  write('Ingrese una cadena:  ');
  read(secuencia);
  contarletras(secuencia);
end.
