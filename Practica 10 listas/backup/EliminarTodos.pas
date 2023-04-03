program EliminarTodos;
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

    while (act<>NIL) and (act^.n< n) do begin //Recorro mientras no se termine la lista y no encuentro la posición correcta
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
    writeln('numero: ',l^.n,'  ');
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

procedure EliminarTodos(var l:lista; num:integer); //no llamo al procedmiento de eliminar 1 elemento porque debería mandarle una lista auxiliar y debería cambiar el módulo
//si no le madno una lista auxiliar no podría seguir avanzando con la misma lista (lista:puntero de nodo)
var
  ant,act,aux:lista;//en los eliminar e insertar uso ant y act, ahora le sumo el auxiliar porque no puedo recorrer con l
begin
  act:=l;
  while(act<>nil) do begin
    while(act<>nil)and(act^.n<>num)do begin
      ant:=act;
      act:=act^.sig;
    end;
    if(act<>nil) then begin
      if(act=l)then begin
        l:=l^.sig;
      end
      else begin
        ant^.sig:=act^.sig;
      end;
      aux:=act;
      act:=act^.sig;
      dispose(aux);
    end;
  end;
end;

procedure EliminarTodos2(var l:lista; x:integer);
var
  aux,ant,act:lista;
  borre:boolean;
begin
  act:=l;
  while(act<>nil)do begin
    borre:=False;
    aux:=act;

    if(act^.n=x)then begin
      borre:=True;
    end
    else begin
      ant:=act;
      act:=act^.sig;
    end;

    if(borre)then begin
      if(act=l)then begin
        l:=l^.sig;
      end
      else begin
        ant^.sig:=act^.sig;
      end;
      aux:=act^.sig;
      Dispose(act);
      act:=aux;
    end;

  end;
end;

procedure EliminarTodos3(var l:lista; num:integer);

  procedure EliminaryoAvanzar(var l,ant,act,aux:lista; borrar:boolean);  //elimina 1, lo puedo usar dentro de un modulo para eliminar a todos los que cumplan la condicion
  begin
    if(borrar)then begin //si elimino en cierta forma también estoy avanzando
      if(act=l)then begin //modifico ME
        l:=act^.sig;
      end
      else begin //modifico MD
        ant^.sig:=act^.sig;
      end;
      aux:=act^.sig; //ant sigue siendo el mismo
      dispose(act);
      act:=aux;
    end
    else begin //avanzo, esta vez modifico ant
      ant:=aux;
      aux:=aux^.sig;
      act:=aux;

    end;
  end;

var
  ant,act,aux:lista;
  borrar:boolean;
begin
  aux:=l;
  act:=l;
  //como no inicialicé ant, no puedo al avanzar hacer ant:=ant^.sig porque en la primera vez no apunta a nadie
  while(aux<>nil)do begin
    borrar:=False;
    if(aux^.n=num)then
      borrar:=True;
    EliminaryoAvanzar(l,ant,act,aux, borrar);
  end;
end;



var
  l1:lista;
  x:integer;
begin
  //l1:=nil;//necesario?

  writeln('cargar lista 1');
  readkey();
  CargarLista(l1);

  writeln('ingrese un numero para quitar:');
  readln(x);
  EliminarTodos3(l1,x);
  writeln('nueva lista:');
  readkey();
  ImprimirLista(l1);

  LiberarLista(l1);
  writeln('lista liberada');
  readkey();
end.
