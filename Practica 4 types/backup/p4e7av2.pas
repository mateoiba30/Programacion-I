program p4e7av2;
uses crt;
const
  PA=1;
  RE=2;
type
  Tedad=0..199;
  Tstr30=string[30];

  regplato=record
    nomp:Tstr30;
    temp:boolean;
    ingp:Tstr30;
  end;

  regrepresentante=record
    nomyap:Tstr30;
    pais:Tstr30;
    plato:regplato;
    sexo:boolean;
    edad:Tedad;
  end;

procedure LeerPlato(var plato:regplato);
var
  x:char;
begin
  with plato do begin
    temp:=False;
    writeln('nombre del plato: ');
    readln(nomp);
    writeln('"f" frio "c" caliente: ');
    readln(x);
    if(x='f')then
      temp:=True;
    writeln('Ingrediente principal: ');
    readln(ingp);
  end;
end;

procedure LeerRepresentante(var rep:regrepresentante);
var
  x:char;
begin
  with rep do begin
    sexo:=False;
    writeln('nombre y apellido: ');
    readln(nomyap);
    writeln('pais: ');
    readln(pais);
    writeln('"f" femenino "m" masculino');
    readln(x);
    if(x='f')then
      sexo:=True;
    writeln('edad: ');
    readln(edad);
    writeln('plato-> ');
    readkey();
    LeerPlato(plato);
    writeln('--');
    readkey();
  end;
end;

procedure LeerPais(representante:regrepresentante;i:integer;var mpf:integer;var nmpf:Tstr30);
var
  pf,j:integer;
begin
  writeln('Pais ',i);
  readkey();
  pf:=0;
  for j:=1 to RE do begin
    writeln('representante ',j);
    readkey();
    LeerRepresentante(representante);
    if(representante.sexo=True)and(representante.plato.temp=True)then
      pf:=pf+1;
  end;
  if(pf>mpf)then begin
    mpf:=pf;
    nmpf:=representante.pais;
  end;
end;

var
  i,j,mpf:integer;
  nmpf:Tstr30;
  representante:regrepresentante;

begin
  mpf:=-1;
  for i:=1 to PA do begin
    LeerPais(representante,i,mpf,nmpf);
    writeln('--------------------');
    readkey();
  end;

  write('El pais con mas participantes femeninos con platos frios es: ',nmpf);
  readkey();
end.
