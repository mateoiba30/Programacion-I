program unir_listas_ordenadas;
uses crt;
const
  fin='fin';
  finint=-99;
type

lista=^nodo;
nodo=record
  n:integer;
  sig:lista;
end;

procedure CargarE(var n:integer);

begin
  writeln('ingrese el numero (',finint,' para finalizar):');
  readln(n);
end;

procedure CargarLista(var l:lista);

  Procedure InsertarOrdenado ( var pri: lista; n: integer);
  var
    ant, nue, act: lista;//los insertar usan punteros para el anterior y siguiente al igual que los borrar (ahora inclluyo nue para el nuevo nodo)
  begin
    new (nue);
    nue^.n := n;
    act := pri;
    ant := pri;//le doy un valor porque si el nuevo va al inicio devo poder hacer if ant=act

    while (act<>NIL) and (act^.datos.nombre < per.nombre) do begin //Recorro mientras no se termine la lista y no encuentro la posición correcta
      ant := act;
      act := act^.sig ;
    end;
    nue^.sig := act ;//no pasa nada si lo hago último
    if (ant = act) then begin //si haría if(pri=act) no hace falta declarar a ant:=pri;
      pri := nue; {el dato va al principio}
    end
    else begin
      ant^.sig := nue; //va entre otros dos o al final
    end;

  end;

var
  n:integer;
begin
  CargarE(n);
  while(n<>finint)do begin
    InsertarOrdenado(l,n);
    CargarE(n);
  end;
end;

procedure ImprimirLista (l:lista);
begin
  while (l<>nil)do begin
    writeln('numero: ',l^.n);
    readkey();
    l:=l^.sig;
  end;
end;

procedure LiberarLista (l:lista);
var
  aux:lista;
begin
  while (l<>nil)do begin
    aux:=l;
    dispose(aux);
    l:=l^.sig;
  end;
end;

procedure AgregarAtras2 (var pri, ult: lista; n: integer);//es var por si justo agrego adelante
var
  nue : lista;//no declaro actual poruqe uso a ult
begin
  new (nue);
  nue^.n:= n;
  nue^.sig := NIL;
  if pri <> Nil then begin
    ult^.sig := nue;//ya conosco el último, no necesito buscarlo mediante un while
  end
  else begin
    pri := nue;
  end;
  ult := nue;//no olvidar de actualizar el último
end;

procedure UnirListas_Merge (A,B:lista; var C:lista);

  procedure minimo(var A,B:lista; var min:integer);
  begin
    if(A=nil)and(B=nil)then begin
      min:=finint;
    end
    else begin
      if(A<>nil)and(B<>nil)then begin
        if(A^.n<=B^.n)then begin
          min:=A^.n;
          A:=A^.sig;
        end
        else begin
          min:=B^.n;
          B:=B^.sig;
        end;
      end
      else begin
        if(B=nil)then begin
          min:=A^.n;
          A:=A^.sig;
        end
        else begin
          min:=B^.n;
          B:=B^.sig;
        end;
      end;
    end;
  end;

var
  min:integer;
  ultc:lista;
begin
  minimo(A,B,min);
  while(min<>finint)do begin
    AgregarAtras2(C,ultc,min);
    minimo(A,B,min);
  end;
end;


var
  l1,l2,l3:lista;
begin
  l1:=nil;//necesario?
  l2:=nil;
  l3:=nil;

  writeln('cargar las listas:');
  readkey();
  writeln('cargar lista 1');
  readkey();
  CargarLista(l1);
  writeln('cargar lista 2');
  readkey();
  CargarLista(l2);

  UnirListas_Merge(l1,l2,l3);
  writeln('nueva lista:');
  readkey();
  ImprimirLista(l3);

  LiberarLista(l1);
  LiberarLista(l2);
  LiberarLista(l3);
  writeln('listas liberada');
  readkey();
end.
