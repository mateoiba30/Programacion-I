program p3be5bSIN_TERMINAR;
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
      if(palabra in conjc)then begin
        consonantes:=consonantes+1;
        write(palabra);
        readkey();
      end;
    end;
    read(palabra);
  end;
end;
var
  palabra:char;
  v,c,maxv,maxc,pmaxc,pmaxv,po:integer;
begin
  po:=0;
  maxv:=0;
  maxc:=0;
  write('Ingrese un texto: ');
  read(palabra);

  while(palabra<>'*')do begin
    po:=po+1;
    while(palabra=' ')do
      read(palabra);

    while(palabra<>' ')do begin
      contarVC(palabra,v,c);
      writeln(v,' ',c);
      if(v>maxv)then begin
        pmaxv:=po;
        maxv:=v;
      end
      if(c>maxc)then begin
        pmaxc:=po;
        maxc:=c;
      end;

      readkey();
    end;
  end;
end.
{no entiendo porque}
   {me suma una consonante}


