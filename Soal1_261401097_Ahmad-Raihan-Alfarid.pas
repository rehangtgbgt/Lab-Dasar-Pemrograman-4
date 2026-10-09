
program TotalBelanjaTokoBuku;

uses crt;

var
    N, i: integer;
    Harga: array[1..1000] of real;
    Total, Diskon, TotalBayar: real;

begin
    clrscr;

    write('Masukkan jumlah barang: ');
    readln(N);

    Total := 0;

  { Input harga setiap barang }
    for i := 1 to N do
    begin
        write('Masukkan harga barang ke-', i, ': Rp');
        readln(Harga[i]);

        Total := Total + Harga[i];
    end;

  { Menentukan diskon }
    if Total < 100000 then
        Diskon := 0
    else if Total < 500000 then
        Diskon := Total * 10 / 100
    else
        Diskon := Total * 20 / 100;

  { Menghitung total bayar }
  TotalBayar := Total - Diskon;

  { Menampilkan rincian belanja }
  writeln;
    
    for i := 1 to N do
    begin
        writeln('Barang ke-', i, ': Rp', Harga[i]:0:0);
    end;

  writeln('Total sebelum diskon: Rp', Total:0:0);
  writeln('Besar diskon        : Rp', Diskon:0:0);
  writeln('Total bayar akhir   : Rp', TotalBayar:0:0);


  readln;
end.