program b2zd11;
var 
  arr:Array[0..19] of integer;
  arr1:Array of integer;
  ln, first:integer;
begin
  for i:integer:=0 to 19 do
    arr[i]:=random(101) - 50;
  
  writeln('Массив: ');
  writeln(arr);
  
  ln:=0;
  for i:integer:=0 to 19 do 
    if arr[i] mod 2 = 0 then ln:=ln + 1;
  for i:integer:=0 to 19 do
    if arr[i] mod 2 = 0 then begin first:=i end;
  
  setlength(arr1, 21);
  for i:integer:=0 to 19 do arr1[i]:=arr[i];
  
  for i:integer:=20 downto first+1 do
    arr1[i]:=arr[i-1];
  arr1[1]:=ln;
  
  writeln;
  writeln('Конечный результат');
  writeln(arr1);
end.