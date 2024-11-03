program HitungKembalian;
var
  kembalian, sisa: longint;
  pecahan: array[1..11] of longint = (100000, 75000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200, 100);
  jumlahLembaran, i: integer;

begin
  
  write('Masukkan jumlah kembalian: ');
  readln(kembalian);
  
 
  jumlahLembaran := 0;
  sisa := kembalian;
  
  
  for i := 1 to 11 do
  begin
    while sisa >= pecahan[i] do
    begin
      sisa := sisa - pecahan[i];
      jumlahLembaran := jumlahLembaran + 1;
    end;
  end;
  
  
  writeln('Jumlah minimum lembaran: ', jumlahLembaran);
  
  readln;
end.
