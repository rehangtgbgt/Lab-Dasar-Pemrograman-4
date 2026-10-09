
program JumlahHariBulan;

uses crt;

var
  tahun, bulan, jumlahHari: integer;
  kabisat: boolean;

begin
  clrscr;

  // Meminta pengguna memasukkan tahun
  write('Masukkan tahun: ');
  readln(tahun);

  // Meminta pengguna memasukkan nomor bulan (1-12)
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  // Memeriksa apakah tahun merupakan tahun kabisat
  // Kabisat jika habis dibagi 400,
  // atau habis dibagi 4 tetapi tidak habis dibagi 100
  if (tahun mod 400 = 0) or
     ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
    kabisat := true
  else
    kabisat := false;

  // Menentukan jumlah hari berdasarkan nomor bulan
  case bulan of
    // Bulan yang memiliki 31 hari
    1, 3, 5, 7, 8, 10, 12:
      jumlahHari := 31;

    // Bulan yang memiliki 30 hari
    4, 6, 9, 11:
      jumlahHari := 30;

    // Bulan Februari bergantung pada tahun kabisat
    2:
      begin
        if kabisat then
          jumlahHari := 29
        else
          jumlahHari := 28;
      end;

    // Nomor bulan selain 1-12 dianggap tidak valid
    else
      jumlahHari := 0;
  end;

  // Menampilkan hasil jika nomor bulan valid
  writeln;
  if jumlahHari > 0 then
  begin
    writeln('Tahun: ', tahun);
    writeln('Nomor bulan: ', bulan);
    writeln('Jumlah hari: ', jumlahHari);

    // Menampilkan status tahun kabisat
    if kabisat then
      writeln('Tahun kabisat: Ya')
    else
      writeln('Tahun kabisat: Tidak');
  end
  else
    writeln('Nomor bulan tidak valid! Masukkan angka 1-12.');

  readln;
end.