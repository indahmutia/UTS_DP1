program BiayaTransportSederhana;
var
  jarak: real;
  isPremium: char;
  biayaDasar, biayaTambahan, totalBiaya: real;

begin
  
  write('Jarak (KM): ');
  readln(jarak);
  write('Premium? (Y/T): ');
  readln(isPremium);
  
  biayaDasar := 20000;
  
  if jarak < 5 then
    biayaTambahan := jarak * 5000
  else if jarak <= 10 then
    biayaTambahan := jarak * 4000
  else
    biayaTambahan := jarak * 3000;
  
  totalBiaya := biayaDasar + biayaTambahan;
  
  if totalBiaya > 100000 then
  begin
    totalBiaya := totalBiaya * 0.9;  // Diskon 10%
    if UpCase(isPremium) = 'Y' then
      totalBiaya := totalBiaya * 0.95;  // Diskon tambahan 5%
  end;SS
  writeln('Total: Rp.', totalBiaya:0:0);
  readln;
end.
