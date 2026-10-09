
program GajiKaryawan;

uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, gajiLembur, bonus, totalGaji: longint;

begin
  clrscr;

  // Meminta pengguna memasukkan golongan karyawan
  writeln('===== PROGRAM GAJI KARYAWAN =====');
  writeln('Golongan A: Rp1.500.000');
  writeln('Golongan B: Rp2.000.000');
  writeln('Golongan C: Rp2.500.000');
  write('Masukkan golongan karyawan (A/B/C): ');
  readln(golongan);

  // Meminta jumlah jam kerja dalam satu minggu
  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  // Mengatur nilai awal lembur, bonus, dan gaji pokok
  gajiPokok := 0;
  gajiLembur := 0;
  bonus := 0;

  // Menentukan gaji pokok berdasarkan golongan
  case golongan of
    'A', 'a':
      gajiPokok := 1500000;

    'B', 'b':
      gajiPokok := 2000000;

    'C', 'c':
      gajiPokok := 2500000;
  end;

  // Memeriksa apakah golongan yang dimasukkan valid
  if gajiPokok = 0 then
  begin
    writeln('Golongan tidak valid!');
  end
  else if jamKerja < 0 then
  begin
    // Jam kerja tidak boleh bernilai negatif
    writeln('Jumlah jam kerja tidak valid!');
  end
  else
  begin
    // Menghitung jam lembur jika bekerja lebih dari 40 jam
    if jamKerja > 40 then
      jamLembur := jamKerja - 40
    else
      jamLembur := 0;

    // Menghitung upah lembur sebesar Rp20.000 per jam
    gajiLembur := jamLembur * 20000;

    // Memberikan bonus khusus golongan C jika bekerja lebih dari 50 jam
    if ((golongan = 'C') or (golongan = 'c')) and
       (jamKerja > 50) then
      bonus := 100000;

    // Menghitung total gaji akhir
    totalGaji := gajiPokok + gajiLembur + bonus;

    // Menampilkan rincian perhitungan gaji
    writeln;
    writeln('===== RINCIAN GAJI KARYAWAN =====');
    writeln('Golongan       : ', golongan);
    writeln('Jam kerja      : ', jamKerja, ' jam');
    writeln('Jam lembur     : ', jamLembur, ' jam');
    writeln('Gaji pokok     : Rp', gajiPokok);
    writeln('Gaji lembur    : Rp', gajiLembur);
    writeln('Bonus          : Rp', bonus);
    writeln('---------------------------------');
    writeln('Total gaji     : Rp', totalGaji);
    writeln('=================================');
  end;

  readln;
end.