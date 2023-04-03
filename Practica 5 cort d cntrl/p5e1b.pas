program p5e1b;
uses crt;

type
  Tlinea=0..999;
  Tstr7=string[7];
  Tstr50=string[50];

  regcolectivo=record
    empresa:Tstr50;
    linea:Tlinea;
    patente:Tstr7;
    monto:real;
  end;

procedure LeerColectivo(var colectivo:regcolectivo);
begin
  with colectivo do begin
    monto:=-1;
    writeln('nombre empresa: ');
    readln(empresa);
    if(empresa<>'FIN')then begin
      writeln('numero de linea: ');
      readln(linea);
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

procedure SumarLinea(empresa,anteriore:Tstr50; linea,anterior:integer; var suma:real; monto:real);
begin
  if(linea=anterior)and(empresa=anteriore)then begin
    suma:=suma+monto;
  end
  else begin
    writeln('---------------------------');
    readkey();
    writeln('empresa->',anteriore,', monto de la linea ',anterior,' : ',suma:2:2);
    readkey();
    suma:=monto;
    writeln('---------------------------');
    readkey();
  end;
end;

procedure SumarEmpresa(empresa,anteriore:Tstr50; var suma:real; monto:real);
begin
  if(empresa=anteriore)then begin
    suma:=suma+monto;
  end
  else begin
    writeln('---------------------------');
    readkey();
    writeln('monto de la empresa ',anteriore,' : ',suma:2:2);
    readkey();
    writeln('---------------------------');
    readkey();

    suma:=monto;
  end;
end;

var
  colectivo:regcolectivo;
  anterior,aux:integer;
  auxe,anteriore:Tstr50;
  suma,sumae:real;

begin
  with colectivo do begin
    suma:=0;
    sumae:=0;
    linea:=1;
    monto:=0;
    aux:=-1;
    auxe:='x';

    LeerColectivo(colectivo);
    anterior:=linea;
    anteriore:=empresa;

    while(empresa<>'FIN')do begin

      SumarLinea(empresa,anteriore,linea,anterior,suma,monto);
      SumarEmpresa(empresa,anteriore,sumae,monto);

      anterior:=linea;
      anteriore:=empresa;
      LeerColectivo(colectivo);
    end;
    writeln('---------------------------');
    readkey();
    writeln('monto de la empresa ',anteriore,' : ',sumae:2:2);
    readkey();
    writeln('---------------------------');
    readkey();
  end;
end.
