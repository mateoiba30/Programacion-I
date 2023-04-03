program p2e9;
uses crt;
var
  La,caracteres,c:integer;
  cadena,anterior:char;
  ES,TS:boolean;
begin
  c:=0;
  anterior:='x';

  write('Ingrese una cadena que finaliza con "*" o "." --> ');
  read(cadena);

  repeat

    while(cadena=' ')do
      read(cadena);
    ES:=false;
    TS:=false;
    La:=0;
    caracteres:=0;
    if(cadena='s')then
      ES:=true;

    while(cadena<>' ')and(cadena<>'*')and(cadena<>'.')do begin
      if(cadena='a')then
        La:=La+1;
      anterior:=cadena;
      read(cadena);
      caracteres:=caracteres+1;
    end;

    if(anterior='s')and((cadena=' ')or(cadena='*')or(cadena='.'))then
      TS:=true;
    if(caracteres<6)and(ES=true)and(TS=true)and(La=2)then
      c:=c+1;
  until (cadena='*')or(cadena='.');

  writeln('La cantidad de palabras de almenos cinco caracteres que empiezan y');
  readkey();
  writeln('terminan con "s", y en total tienen exactamente dos "a" es de: ',c);
  readkey();
end.

