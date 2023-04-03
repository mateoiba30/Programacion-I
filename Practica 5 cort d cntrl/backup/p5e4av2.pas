program p5e4av2;
uses crt;
type
  str50=string[50];

  regvideojuego=record
    nombre:str50;
    categoria:str50;
    idioma:str50;
    votos:integer;
  end;

procedure LeerVideojuego(var videojuego:regvideojuego;var contadorc:integer);
begin
  with videojuego do begin
    votos:=-1;
    writeln('categoria ("fin" para finalizar): ');
    readln(categoria);

    if(categoria<>'fin')then begin
      writeln('nombre: ');
      readln(nombre);
      writeln('idioma: ');
      readln(idioma);
      while(votos<0)do begin
        writeln('votos positivos: ');
        readln(votos);
      end;
    end

    else begin
      nombre:='-1';
      idioma:='-1';
      votos:=-1;
      contadorc:=-1;
    end;

    writeln('--');
    readkey();
  end;
end;

procedure Cartel();
begin
  writeln('----------------');
  readkey();
  writeln('|               |');
  readkey();
  writeln('| VIDEOJUEGOS   |');
  readkey();
  writeln('|               |');
  readkey();
  writeln('----------------');
  readkey();
  writeln();
  readkey();
end;
procedure CategoriaJV(votos:integer;anteriorc,categoria:str50;var juegosc,sumavotosc:integer);
begin
  if(anteriorc=categoria)then begin
    juegosc:=juegosc+1;
    sumavotosc:=sumavotosc+votos;
  end
  else begin
    juegosc:=1;
    sumavotosc:=votos;
  end;
end;

procedure CategoriaMaxJV(votos:integer;anteriorc,categoria:str50;var juegosc,sumavotosc,maxjuegosc,maxvotosc:integer;var nommaxjuegosc,nommaxvotosc:str50);
begin
  if(juegosc>maxjuegosc)and(categoria<>'fin')then begin
    maxjuegosc:=juegosc;
    nommaxjuegosc:=categoria;
  end;
  if(votos>maxvotosc)then begin
    maxvotosc:=votos;
    nommaxvotosc:=categoria;
  end;
end;

var
  videojuego:regvideojuego;
  nommaxjuegosc,nommaxvotosc,anteriorc:str50;
  i,contadorc,maxvotosc,maxjuegosc,sumavotosc,juegosc:integer;

begin
  Cartel();

  with videojuego do begin
    i:=1;
    juegosc:=0;
    maxvotosc:=-1;
    contadorc:=0;
    maxjuegosc:=-1;
    sumavotosc:=0;

    while(categoria<>'fin')do begin
      LeerVideojuego(videojuego,contadorc);

      if(i=1)then
        anteriorc:=categoria;
      CategoriaJV(votos,anteriorc,categoria,juegosc,sumavotosc);
      CategoriaMaxJV(votos,anteriorc,categoria,juegosc,sumavotosc,maxjuegosc,maxvotosc,nommaxjuegosc,nommaxvotosc);
      {procedure CategoriaJV
      if(anteriorc=categoria)then begin
        juegosc:=juegosc+1;
        sumavotosc:=sumavotosc+votos;
      end
      else begin
        juegosc:=1;
        sumavotosc:=votos;
      end;
      }
      {procedure CategoriaMaxJV
      if(juegosc>maxjuegosc)and(categoria<>'fin')then begin
        maxjuegosc:=juegosc;
        nommaxjuegosc:=categoria;
      end;
      if(votos>maxvotosc)then begin
        maxvotosc:=votos;
        nommaxvotosc:=categoria;
      end;
      }

      i:=i+1;  {NO OLVIDAR!!!}
      anteriorc:=categoria;
    end;

    writeln('La categoria con mas juegos es: ',nommaxjuegosc);
    readkey();
    writeln('La categoria con mas votos es: ',nommaxvotosc);
    readkey();
  end;
end.

