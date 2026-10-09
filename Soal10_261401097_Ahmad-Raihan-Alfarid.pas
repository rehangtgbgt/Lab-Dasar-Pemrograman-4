
program NamaHari;

uses crt;

var
  nomor: integer;

begin
  clrscr;

  // Meminta pengguna memasukkan nomor hari (1-7)
  writeln('===== PROGRAM NAMA HARI =====');
  write('Masukkan nomor hari (1-7): ');
  readln(nomor);

  // Menentukan nama hari berdasarkan nomor yang dimasukkan
  case nomor of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');

    // Menampilkan pesan jika angka bukan 1 sampai 7
    else
      writeln('Nomor hari tidak valid! Masukkan angka 1-7.');
  end;

  // Menahan tampilan agar tidak langsung tertutup
  readln;
end.