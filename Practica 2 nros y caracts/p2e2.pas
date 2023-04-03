program p2e2;
uses crt;
var
  v,max,max2,suma,u,x,nro:integer;
begin
  suma:=0;
  writeln('Ingrese una serie de numeros separados por espacios');
  readkey();
  write('(para finalizar la lista escribe 9999): ');
  read(nro);

  while(nro<>9999) do begin
    u:=nro MOD 10;
    suma:=suma+u;
    max:=0;
    max2:=0;
    v:=0;
    while(nro<>0) do begin
      x:=nro MOD 10;
      if(x>max)then begin
        max2:=max;
        max:=x;
      end
      else begin
        if(x>max2)then begin
          max2:=x;
          v:=1;
        end;

      end;
      nro:=nro DIV 10;
    end;

    write(max);
    readkey();

    if(v=1) then begin
      write('-',max2,'   ');
    end
    else begin
      write('  ');
      readkey();
    end;

    read(nro);
  end;
  writeln(' ');
  readkey();
  write('La suma de las unidades es de: ',suma);
  readkey();
end.

