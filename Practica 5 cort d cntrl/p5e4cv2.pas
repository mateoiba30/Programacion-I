program p5e4cv2;
uses crt;
type
  str50=string[50];

  regvideojuego=record
    nombre:str50;
    categoria:str50;
    idioma:str50;
    votos:integer;
  end;

procedure LeerVideojuego(var videojuego:regvideojuego);
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

procedure MasVotado(videojuego:regvideojuego;var MAXVOTOS:integer;var nombreMAX,idiomaMAX:str50);
begin
  with videojuego do begin
    if(votos>MAXVOTOS)then begin
      MAXVOTOS:=votos;
      nombreMAX:=nombre;
      idiomaMAX:=idioma;
    end;
  end;
end;

var
  videojuego:regvideojuego;
  nombreMAX,idiomaMAX:str50;
  MAXVOTOS:integer;

begin
  Cartel();
  with videojuego do begin
    MAXVOTOS:=-1;

    while(categoria<>'fin')do begin
      LeerVideojuego(videojuego);
      MasVotado(videojuego,MAXVOTOS,nombreMAX,idiomaMAX);
    end;

    writeln(nombreMAX,' es el juego mas votado, y su idioma es el ',idiomaMAX);
    readkey();
  end;
end.
