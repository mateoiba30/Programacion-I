program p4e5d;
uses crt;
type
  str30=string[30];
  Thor=0..24;
  Tmin=0..59;
  Tdia=0..31;
  Tmes=1..12;
  Tanio=0..2022;

  regtiempo=record
    h:Thor;
    m:Tmin;
  end;

  regfecha=record
    dia:Tdia;
    mes:Tmes;
    anio:Tanio;
  end;

  regatencion=record
    paciente:str30;
    medico:str30;
    fecha:regfecha;
    horal:regtiempo;
    horas:regtiempo;
  end;

procedure LeerAtencion(var atencion:regatencion);

  procedure LeerFecha(var fec:regfecha);
  begin
  with fec do begin
    writeln('Ingrese el anio: ');
    readln(anio);
    if(anio<>0)then begin
      writeln('Ingrese el mes: ');
      readln(mes);
      writeln('Ingrese el dia: ');
      readln(dia);
    end;
  end;
  end;

  procedure LeerHora(var hor:regtiempo);
  begin
  with hor do begin
    writeln('Ingrese la hora: ');
    readln(h);
    writeln('Ingrese los minutos: ');
    readln(m);
  end;
  end;

begin
  with atencion do begin
  LeerFecha(fecha);
  if(fecha.anio<>0)then begin
    writeln('Ingrese nombre del paciente: ');
    readln(paciente);
    writeln('Ingrese nombre del medico: ');
    readln(medico);
    writeln('Hora de llegada');
    readkey();
    LeerHora(horal);
    writeln('Hora de salida');
    readkey();
    LeerHora(horas);
  end;
  end;
  writeln('--------------------------');
  readkey();
end;

var
  aten:regatencion;
  pacientesagosto:integer;

begin
  pacientesagosto:=0;

  LeerAtencion(aten);
  if(aten.fecha.mes=8)then
    pacientesagosto:=pacientesagosto+1;
  while(aten.fecha.anio<>0)do begin
    if(aten.fecha.mes=8)then
      pacientesagosto:=pacientesagosto+1;
    LeerAtencion(aten);
  end;
  write('La canidad de apcientes en agosto fue de : ',pacientesagosto);
  readkey();
end.

