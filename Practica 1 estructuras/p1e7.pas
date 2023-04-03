program p1e7;
uses crt;
var
  codigo,cmenor,cmenor2,pags,menor,menor2,mayor,i,aux:integer;
begin
  menor:=32767;
  menor2:=32767;
  mayor:=0;
  cmenor:=0;

  For i:=1 to 5 do
  Begin
    write('Ingrese el codigo del libro: ');
    read(codigo);
    write('Ingrese la cantidad de paginas: ');
    read(pags);

    if(pags<menor)then
    begin
      menor2:=menor;
      cmenor2:=cmenor;
      menor:=pags;
      cmenor:=codigo;
    end
    else
    begin
      if(pags<menor2)then
      begin
        menor2:=pags;
        cmenor2:=codigo;
      end;
    end;
    if(pags>mayor)then
      mayor:=pags;
    writeln('--------------------------------------------');
    readkey();
  end;
  writeln('El libro con menor cantidad de paginas es: ',cmenor);
  readkey();
  writeln('El segundo libro con menor cantidad de paginas es: ',cmenor2);
  readkey();
  writeln('La cantidad de paginas maximas en un libro es de: ',mayor);
  readkey();
end.

