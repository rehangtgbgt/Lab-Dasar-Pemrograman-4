
program DeretAngka;

uses crt;

var
  N, pilihan, angka: integer;

begin
  clrscr;

  // Meminta pengguna memasukkan batas angka
  write('Masukkan nilai N: ');
  readln(N);

  // Meminta pengguna memilih kategori deret
  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan Anda: ');
  readln(pilihan);

  // Memulai perulangan dari angka 1
  angka := 1;

  // Mengulang selama angka tidak melebihi N
  while angka <= N do
  begin
    // Jika memilih ganjil, lewati angka genap
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    // Jika memilih genap, lewati angka ganjil
    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    // Melewati angka yang merupakan kelipatan 5
    if angka mod 5 = 0 then
    begin
      angka := angka + 1;
      continue;
    end;

    // Menampilkan angka yang lolos penyaringan
    write(angka, ' ');

    // Berpindah ke angka berikutnya
    angka := angka + 1;
  end;

  readln;
end.