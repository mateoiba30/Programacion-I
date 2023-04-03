program p4e2cv2;
uses crt;
type
  min=-1..59;
  tiempo=record
    h:integer;
    m:min;
  end;
procedure LeerTiempo(var t:tiempo);
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

procedure MenorTiempo(t2,t1:tiempo;var t3:tiempo);
begin
  if(t2.h>t1.h)then begin
    t3.h:=t1.h;
    t3.m:=t1.m;
  end
  else begin
    if(t1.h>t2.h)then begin
      t3.h:=t2.h;
      t3.m:=t2.m;
    end
    else begin
      t3.h:=t1.h;
      if(t2.m>t1.m)then begin
        t3.m:=t1.m;
      end
      else begin
        t3.m:=t2.m;
      end;
    end;
  end;
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

  MenorTiempo(t2,t1,t3);

  write('El menor tiempo es: ',t3.h,':',t3.m);
  readkey();
end.

