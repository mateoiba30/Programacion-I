program p2e10b;
uses crt;
var
  cadena:char;
  caracteres,c6,cpa:integer;
  P:boolean;

begin
  c6:=0;
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
      read(cadena);
      caracteres:=caracteres+1;
    end;

    if(caracteres=6)then
      c6:=c6+1;
  until (cadena='#');

  writeln('La cantidad de palabras de seis caracteres es de: ',c6);
  readkey();
  writeln('La cantidad de palabras que inician con "PA" es de: ',cpa);
  readkey();
end.
