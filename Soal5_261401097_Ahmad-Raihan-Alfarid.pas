
program RekapitulasiNilaiMahasiswa;

uses crt;

var
  M, N: integer;
  i, j: integer;
  lulus, tidakLulus: integer;
  nilai, total, rataRata: real;

begin
  clrscr;

  // Meminta jumlah mahasiswa
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);

  // Meminta jumlah tugas untuk setiap mahasiswa
  write('Masukkan jumlah tugas (N): ');
  readln(N);

  // Mengatur jumlah mahasiswa lulus dan tidak lulus menjadi 0
  lulus := 0;
  tidakLulus := 0;

  // Perulangan luar untuk setiap mahasiswa
  for i := 1 to M do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);

    // Mengatur total nilai mahasiswa saat ini menjadi 0
    total := 0;

    // Perulangan dalam untuk menginput nilai setiap tugas
    for j := 1 to N do
    begin
      write('Masukkan nilai tugas ke-', j, ': ');
      readln(nilai);

      // Menambahkan nilai tugas ke total nilai
      total := total + nilai;
    end;

    // Menghitung rata-rata nilai mahasiswa
    rataRata := total / N;

    // Menampilkan rata-rata dengan dua angka desimal
    writeln('Rata-rata nilai: ', rataRata:0:2);

    // Menentukan kelulusan berdasarkan rata-rata nilai
    if rataRata >= 65 then
    begin
      writeln('Status: LULUS');

      // Menambah jumlah mahasiswa yang lulus
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Status: TIDAK LULUS');

      // Menambah jumlah mahasiswa yang tidak lulus
      tidakLulus := tidakLulus + 1;
    end;
  end;

  // Menampilkan rekapitulasi seluruh mahasiswa
  writeln;
  writeln('===== REKAPITULASI NILAI =====');
  writeln('Jumlah mahasiswa: ', M);
  writeln('Jumlah mahasiswa LULUS: ', lulus);
  writeln('Jumlah mahasiswa TIDAK LULUS: ', tidakLulus);
  writeln('==============================');

  readln;
end.