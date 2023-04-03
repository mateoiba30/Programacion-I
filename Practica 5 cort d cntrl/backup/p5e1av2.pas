program p5e1av2;
uses crt;

type
  Tlinea=0..999;
  Tstr7=string[7];

  regcolectivo=record
    linea:Tlinea;
    patente:Tstr7;
    monto:real;
  end;

procedure LeerColectivo(var colectivo:regcolectivo);
begin
  with colectivo do begin
    monto:=-1;
    writeln('numero de linea: ');
    readln(linea);
    if(linea<>0)then begin
      writeln('patente: ');
      readln(patente);
      while(monto<0)do begin
        writeln('monto recaudado: ');
        readln(monto);
      end;
    end;
    writeln('--');
    readkey();
  end;
end;

procedure SumarLinea(aux,anterior:integer; var suma:real; monto:real);
begin
  if(aux=anterior)then begin
    suma:=suma+monto;
  end
  else begin
    writeln('---------------------------');
    readkey();
    writeln('monto de la linea ',anterior,' : ',suma:2:2);
    readkey();
    suma:=monto;
    writeln('---------------------------');
    readkey();
  end;
end;

var
  colectivo:regcolectivo;
  anterior,aux,i:integer;
  suma:real;

begin
  with colectivo do begin
    i:=1;
    suma:=0;
    linea:=1;
    monto:=0;
    aux:=-1;

    while(linea<>0)do begin
      anterior:=aux;
      LeerColectivo(colectivo);
      aux:=linea;
      if(i=1)then
        anterior:=linea;
      SumarLinea(aux,anterior,suma,monto);
      i:=i+1;
    end;

  end;
end.
