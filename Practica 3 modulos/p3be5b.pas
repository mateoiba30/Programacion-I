program p3be5bSIN_TERMINAR;
uses crt;
type
  letras=set of char;

procedure contarVC(var palabra:char;var vocales:integer; var consonantes:integer);
var
  conjv,conjc,abecedario:letras;
begin
  vocales:=0;
  consonantes:=0;
  conjv:=['a','e','i','o','u'];
  abecedario:=['a'..'z'];
  conjc:=abecedario-conjv;

  while(palabra<>'*')and(palabra<>' ')do begin
    if(palabra in conjv)then begin
      vocales:=vocales+1;
    end
    else if(palabra in conjc)then consonantes:=consonantes+1;
    read(palabra);
  end;
end;
var
  palabra:char;
  v,c,maxv,maxc,pmaxc,pmaxv,po:integer;
begin
  po:=0;
  maxv:=-1;
  maxc:=-1;
  v:=0;
  c:=0;
  write('Ingrese un texto: ');
  read(palabra);

  while(palabra<>'*')do begin

    while (palabra=' ')do
      read(palabra);
    po:=po+1;

    contarVC(palabra,v,c);
    writeln('palabra ',po);
    readkey();
    writeln('vocales:',v,' consonantes:',c);
    readkey();
    if(v>maxv)then begin
      pmaxv:=po;
      maxv:=v;
    end;
    if(c>maxc)then begin
      pmaxc:=po;
      maxc:=c;
    end;
  end;

  writeln('la palabra con mas vocales es la numero ',pmaxv);
  readkey();
  write('la palabra con mas consonantes es la numero ',pmaxc);
  readkey();
end.
{no entiendo porque
   me suma una consonante
   ni porqué nunca sale del while-->porque no usaba un parametro por valor}


