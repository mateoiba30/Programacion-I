program p2e8b;
uses crt;
var
  cadena:char;
  p,caracteresT,R:integer;
begin
  R:=0;
  p:=0;
  caracteresT:=0;

  write('Ingrese una cadena de caracteres que finalice con z: ');
  read(cadena);

  {usar repeat o while?
  while(cadena<>'z')and(caracteresT<500)do begin}

  repeat
    while(cadena=' ')do
      read(cadena);
    while(cadena<>'z')and(cadena<>' ') and (caracteresT<500) do begin
      if(cadena='R')then
        R:=R+1;
      read(cadena);
      caracteresT:=caracteresT+1;
    end;
    p:=p+1;
  {end;}

  until (cadena='z')or(caracteresT>=500);

  writeln('La cantidad de palabras es de: ',p);
  readkey();
  writeln('La cantidad de palabras que inician con "R" es de: ',R);
  readkey();
end.
