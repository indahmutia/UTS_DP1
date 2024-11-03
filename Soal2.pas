program PencatatanSayur;
var
  jumlahPelanggan, i, j: integer;
  jenisSayur, jumlahSayur: integer;
  hargaSayur: array[1..10] of integer;
  jumlahBeli: array[1..10] of integer;
  total: integer;

begin
  
  write('Masukkan jumlah pelanggan: ');
  readln(jumlahPelanggan);
  
 
  for i := 1 to jumlahPelanggan do
  begin
    writeln;
    writeln('Pelanggan ke-', i);
    write('Masukkan jumlah jenis sayur yang dibeli: ');
    readln(jenisSayur);
    
    total := 0;
    
    for j := 1 to jenisSayur do
    begin
      write('Masukkan harga sayur ke-', j, ': ');
      readln(hargaSayur[j]);
      write('Masukkan jumlah sayur yang dibeli: ');
      readln(jumlahBeli[j]);
      
      
      total := total + (hargaSayur[j] * jumlahBeli[j]);
    end;
    
    writeln('Total belanja pelanggan ke-', i, ': Rp.', total);
  end;

end.//ketik kode jawaban no 2 kamu disini
