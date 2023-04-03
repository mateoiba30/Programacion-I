program p3ae3a;
uses crt;
function Max4 (a,b,c,d:integer):integer;
var
  max:integer;
begin
  max:=a;
  if(b>a)then begin
    max:=b;
  end
  else begin
    if(c>a)then begin
      max:=c;
    end
    else begin
      if(d>a)then
        max:=d
    end;
  end;
  Max4:=max;
end;
begin
  write(Max4(4,54,23,12));
  readkey();
end.

