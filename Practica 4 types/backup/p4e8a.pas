program p4e8a;
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
    writeln('nombre: ');
    readln(nombre);
    if(nombre<>'zzz')then begin
      writeln('continente: "a" america "e" europa "s" asia:');
      readln(continente);
      writeln('puntaje: ');
      readln(puntaje);
    end
    else begin
      puntaje:=-2;

    end;
  end;
end;

var
  examen:regexamen;
  mn:integer;
  nmn:Tcad50;

begin
  nmn:='nadie';
  mn:=-1;
  with examen do begin
    eerExamen(examen);
    while(nombre<>'zzz')do begin
      if(puntaje>mn)then begin
        mn:=puntaje;
        nmn:=nombre;
      end;
    LeerExamen(examen);
    end;
    writeln('La mejor nota la tuvo: ',nmn);
    readkey();
  end;
end.

