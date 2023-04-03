program p3be7v2;
uses crt;

procedure limpiar(var cadena:char);
begin
  while(cadena=' ')do
    read(cadena);
end;

function condV(var palabra:char):boolean;
var
  cond:boolean;
  anterior:char;
begin
  anterior:='x';
  cond:=False;
  limpiar(palabra);

  if(palabra='o')then begin
    while(palabra<>' ')and (palabra<>'&')and(palabra<>'*')do begin
      anterior:=palabra;
      read(palabra);
    end;
    if(anterior='n')then
      cond:=true;
  end;
  condV:=cond;
end;

function condQ(var palabra:char):boolean;
type
  letras=set of char;
var
  cond:boolean;
  vocap,vocales:letras;
begin
  vocales:=['a','e','i','o','u'];
  vocap:=[];
  cond:=False;
  limpiar(palabra);

  while (palabra<>' ')and(palabra<>'%')and(palabra<>'*')do begin
    if(palabra in vocales)then
      vocap:=vocap+[palabra];
    read(palabra);
    if('a'in vocap)and ('e'in vocap)and('i'in vocap)and('o'in vocap)and('u'in vocap)then
      cond:=True;
  end;
  condQ:=cond;
end;

function condW(var palabra:char):boolean;
var
  cond:boolean;
  ss,long:integer;
begin
  ss:=0;
  long:=0;
  cond:=False;
  limpiar(palabra);

  while (palabra<>' ')and(palabra<>'*')do begin
    if(palabra='s')then
      ss:=ss+1;
    long:=long+1;
    read(palabra);
  end;
  if(long<=5)then
    cond:=True
  else begin
    if(ss=3)and(long>5)then
      cond:=True;
  end;
  condW:=cond;
end;
var
  cadena:char;
  terminar,cv,cq,cw:boolean;
begin
  cv:=False;
  cq:=False;
  cw:=False;
  terminar:=False;
  write('Ingrese una cadena: ');
  read(cadena);

  while(cadena<>'*')and(cadena<>'&')and(terminar=False)do begin
    cv:=condV(cadena);
    if (cv=False)then
      terminar:=True;
  end;
  if(cadena='&')then
    read(cadena);

  while(cadena<>'*')and(cadena<>'%')and(terminar=False)do begin
    cq:=condQ(cadena);
    if (cq=False)then
      terminar:=True;
  end;
  if(cadena='%')then
    read(cadena);

  while(cadena<>'*')and(terminar=False)do begin
    cw:=condW(cadena);
    if (cw=False)then
      terminar:=True;
  end;

  if(cw=True)then begin
    write('Se cumplio la condicion "V&Q%W" !!!');
    readkey();
  end
  else begin
    if(cv=False)then begin
      write('Fallo en el subcriterio V');
      readkey();
    end
    else begin
        if(cq=False)then begin
          write('Fallo en el subcriterio Q');
        end
        else begin
          write('Fallo en el subcriterio W');
          readkey();
        end;
    end;
  end;
end.

