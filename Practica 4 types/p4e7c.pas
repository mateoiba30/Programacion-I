program p4e7c;
uses crt;
const
  PA=20;
  RE=7;
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

procedure LeerPais(representante:regrepresentante;i:integer);
var
  j:integer;
begin
  with representante do begin
    writeln('Pais ',i);
    readkey();
    for j:=1 to RE do begin
      writeln('representante ',j);
      readkey();
      LeerRepresentante(representante);
      if(plato.temp=False)and(plato.ingp='pollo')then begin
        writeln(nomyap,' ',pais);
        readkey();
      end;
    end;
  end;
end;

var
  i,j:integer;
  x:real;
  representante:regrepresentante;

begin
  x:=PA*RE;

  for i:=1 to PA do begin
    LeerPais(representante,i);
    writeln('--------------------');
    readkey();
  end;
end.
