program p3be5a;
uses crt;
type
  letras=set of char;

procedure contarVC(palabra:char;var vocales:integer; var consonantes:integer);
var
  conjv,conjc:letras;
begin
  vocales:=0;
  consonantes:=0;
  conjv:=['a','e','i','o','u'];
  conjc:=['a'..'z']-conjv;

  while(palabra<>'*')and(palabra<>' ')do begin
    if(palabra in conjv)then begin
      vocales:=vocales+1;
    end
    else begin
      if(palabra in conjc)then
        consonantes:=consonantes+1;
    end;
    read(palabra); {este será mi error?}
  end;
end;
var
  palabra:char;
  v,c:integer;
begin
  write('Ingrese una palabra: ');
  read(palabra);

  contarVC(palabra,v,c);
  writeln('consonantes: ',c);
  readkey();
  write('vocales: ',v);
  readkey();

end.
