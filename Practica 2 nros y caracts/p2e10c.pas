program p2e10c;
uses crt;
var
  cadena,anterior,anterior2:char;
  caracteres,c6,cpa,sa:integer;
  P:boolean;

begin
  anterior:='x';
  anterior2:='x';
  c6:=0;
  sa:=0;
  cpa:=0;

  write('Ingrese una cadena que finaliza con "#" --> ');
  read(cadena);

  repeat

    while(cadena=' ')do
      read(cadena);
    caracteres:=0;
    P:=false;
    if(cadena='P')then
        P:=true;

    while(cadena<>' ')and(cadena<>'#')do begin
      if(caracteres=1)and(cadena='A')and(P=true)then
        cpa:=cpa+1;
      anterior2:=anterior;
      anterior:=cadena;
      read(cadena);
      caracteres:=caracteres+1;
    end;

    if((cadena=' ')or(cadena='#'))and(anterior='A')and(anterior2='S')then
      sa:=sa+1;

    if(caracteres=6)then
      c6:=c6+1;
  until (cadena='#');

  writeln('La cantidad de palabras de seis caracteres es de: ',c6);
  readkey();
  writeln('La cantidad de palabras que inician con "PA" es de: ',cpa);
  readkey();
  writeln('La cantidad de palabras que terminan con "SA" es de: ',sa);
  readkey();
end.
