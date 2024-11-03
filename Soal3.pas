program PolaBintangX;
var
  n, i, j: integer;
begin
 
  write('Masukkan ukuran n: ');
  readln(n);

  if n mod 2 = 0 then
  begin
    writeln('angka tidak valid, harus angka ganjil');
    readln;
    exit;
  end;
  
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if (j = i) or (j = n-i+1) then
        write('* ')
      else
        write('  ');
    end;
    writeln;
  end;
  
  readln;
end.
