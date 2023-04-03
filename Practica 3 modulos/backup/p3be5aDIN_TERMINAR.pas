program p3be5b;
uses crt;
procedure contarVC(palabra:char;var vocales:integer; var consonantes:integer);
type
  conj=set of char;
var
  conjv,conjc:conj;
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
    read(palabra);
  end;
end;
var
  palabra:char;
  v,c,maxv,maxc,maxvpos,maxcpos,po:integer;
begin
  maxv:=0;
  maxc:=0;
  po:=1;
  write('Ingrese una cadena de caracteres: ');
  read(palabra);
  while(palabra<>'*')do begin
    contarVC(palabra,v,c);
    if(v>maxv)then begin
      maxv:=v;
      maxvpos:=po;
    end;
    if(c>maxc)then begin
      maxc:=c;
      maxcpos:=po;
    end;
    po:=po+1;

  write('La palabra tiene mas vocales es la numero ',maxvpos);
  readkey();
  write('La palabra tiene mas consonantes es la numero ',maxcpos);
  readkey();
end.


