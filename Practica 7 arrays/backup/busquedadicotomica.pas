program busquedadicotomica;
uses crt;
const
  dimF=5;
type
  indice=1..dimF;
  vector=array[indice]of integer;

procedure CargarVector (var v:vector; var dimL:indice);
var
  i:integer;
begin
  writeln('Ingrese cantidad de elemntos:');
  readln(dimL);
  for i:=1 to dimL do begin
    writeln('ingrese numero ',i,':');
    readln(v[i]);
  end;
end;

procedure BuscoElemOrd_dicotomico (var v:vector; var pos:indice; dimL:indice; x:integer);//vector por referencia para ahorrar memoria
var
  pri,ult,medio:indice; //voy dividiendo por 2 los numeros, achicando ek intervalo
begin
  pos:=0; //vale cero, si no la encuentro no representa nada
  pri:=1;//valor inical para una posición vectorial
  ult:=dimL;
  medio:=(pri+ult)DIV 2;//si da con coma se redondea

  while(pri<ult)and(x<>v[medio])do begin//si x vale justo el valor del medio, o pri supera a ult se termina el programa
    if(x<v[medio])then begin //dependiendo de que lado de la mitad esté x modifico el intervalo a analizar
      ult:=medio-1;//medio representa la direccion del vector del medio, mientras que v[medio] es el valor del medio
    end              //si el valor a buscar no se encuentra pri y ult van a terminar apuntando al mismo numero
    else begin
      pri:=medio+1;
    end;
    medio:=(pri+ult)DIV 2;
  end;
  if(pri<ult)then begin
    pos:=medio;
  end
  else begin
    pos:=0;
  end;
end;

var
  v:vector;
  dimL,j:indice;
  x:integer;
begin
  CargarVector(v,dimL);
  writeln('Ingrese un numero para buscar:');
  readln(x);
  BuscoElemOrd_dicotomico(v,j,dimL,x);
  writeln('el elemnto se encunetra en la posicion: ',j);
  readkey();
end.

