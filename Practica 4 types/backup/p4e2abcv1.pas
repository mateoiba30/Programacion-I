program p4e2abcv1;
uses crt;
type
  min=0..59;
  tiempo=record
    h:integer;
    m:min;
  end;
procedure LeerTiempo(t:tiempo);
begin
  with t do begin
    h:=-1;
    m:=-1;
    while(h<0)do begin
      write('Ingrese la hora: ');
      readln(h);
    end;
    while(m<0)do begin
      write('Ingrese los minutos: ');
      readln(m);
    end;
  end;
end;

procedure DiferenciaTiempo(t1,t2:tiempo;var t3:tiempo);
var
  T1enM,T2enM,T3enM:integer;
begin
  T1enM:=t1.m + (t1.h*60);
  T2enM:=t2.m + (t2.h*60);

  if((T1enM-T2enM)<0)then begin
    T3enM:=T2enM-T1enM;
  end
  else  begin
    T3enM:=T1enM-T2enM;
  end;

  t3.h:=T3enM DIV 60;
  t3.m:=T3enM MOD 100;
end;

var
  t1,t2,t3:tiempo;
begin
  writeln('Tiempo 1');
  readkey();
  LeerTiempo(t1);

  writeln('-------------------');
  readkey();

  writeln('Tiempo 2');
  readkey();
  LeerTiempo(t2);

  writeln('-------------------');
  readkey();

  DiferenciaTiempo(t1,t2,t3);

  write('La diferencia de tiempo es de: ',t3.h,' hs y ',t3.m,' min');
  readkey();
end.

