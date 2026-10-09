
program NilaiAkhirMatkul;

uses crt;

var
  tugas, uts, uas: real;
  kehadiran, nilaiAkhir: real;
  indeks: char;

begin
  clrscr;

  // Memasukkan nilai tugas, UTS, dan UAS
  write('Masukkan Nilai Tugas: ');
  readln(tugas);

  write('Masukkan Nilai UTS: ');
  readln(uts);

  write('Masukkan Nilai UAS: ');
  readln(uas);

  // Memasukkan persentase kehadiran mahasiswa
  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

  // Menghitung nilai akhir berdasarkan bobot setiap komponen
  nilaiAkhir := (tugas * 0.30) +
                (uts * 0.30) +
                (uas * 0.40);

  // Menampilkan nilai akhir mahasiswa
  writeln;
  writeln('===== HASIL PENILAIAN =====');
  writeln('Nilai Akhir: ', nilaiAkhir:0:2);

  // Menentukan status kelulusan berdasarkan dua syarat
  // Nilai akhir minimal 60 DAN kehadiran minimal 80%
  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');

  // Menentukan indeks huruf berdasarkan nilai akhir
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  // Menampilkan indeks huruf mahasiswa
  writeln('Indeks Huruf: ', indeks);
  writeln('===========================');

  readln;
end.