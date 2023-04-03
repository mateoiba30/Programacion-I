program p4e8av2;
uses crt;
type
  Tcad50=string[50];
  Tpuntos=1..100;

  regexamen=record
    nombre:Tcad50;
    continente:char;
    puntaje:Tpuntos;
  end;

procedure LeerExamen(var exa:regexamen);
begin
  with exa do begin
    writeln('continente: "a" america "e" europa "s" asia/ con otro caracter finaliza el programa-->');
    readln(continente);
    if(continente='a')or(continente='e')or(continente='s')then begin
      writeln('nombre: ');
      readln(nombre);
      writeln('puntaje: ');
      readln(puntaje);
    end;
  end;
end;

procedure MaximoPuntaje(examen:regexamen;var mn:integer;var nmn:Tcad50);
begin
  with examen do begin
    if(puntaje>mn)then begin
        mn:=puntaje;
        nmn:=nombre;
    end;
  end;
end;

var
  examen:regexamen;
  mn:integer;
  nmn:Tcad50;

begin
  mn:=-1;
  with examen do begin
    continente:='a';

    while(continente='a')or(continente='e')or(continente='s')do begin
      LeerExamen(examen);
      MaximoPuntaje(examen,mn,nmn);
    end;

    writeln('La mejor nota la tuvo: ',nmn);
    readkey();
  end;
end.
