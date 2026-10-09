
program TarifParkir;

uses crt;

var
  kode: char;
  lamaParkir: integer;
  tarif: longint;

begin
  clrscr;

  // Meminta pengguna memasukkan kode kendaraan
  writeln('===== PROGRAM TARIF PARKIR =====');
  writeln('M = Mobil');
  writeln('K = Motor');
  writeln('B = Bus');
  write('Masukkan kode kendaraan: ');
  readln(kode);

  // Meminta lama parkir dalam satuan jam
  write('Masukkan lama parkir (jam): ');
  readln(lamaParkir);

  // Memastikan lama parkir minimal 1 jam
  if lamaParkir < 1 then
  begin
    writeln('Lama parkir harus minimal 1 jam!');
  end
  else
  begin
    // Menentukan tarif berdasarkan kode kendaraan
    case kode of
      'M', 'm':
        begin
          // Tarif mobil: Rp5.000 jam pertama
          // Tambahan Rp3.000 untuk setiap jam berikutnya
          if lamaParkir > 10 then
            tarif := 30000
          else
            tarif := 5000 + (lamaParkir - 1) * 3000;
        end;

      'K', 'k':
        begin
          // Tarif motor: Rp2.000 jam pertama
          // Tambahan Rp1.000 untuk setiap jam berikutnya
          if lamaParkir > 10 then
            tarif := 10000
          else
            tarif := 2000 + (lamaParkir - 1) * 1000;
        end;

      'B', 'b':
        begin
          // Tarif bus: Rp10.000 jam pertama
          // Tambahan Rp5.000 untuk setiap jam berikutnya
          if lamaParkir > 10 then
            tarif := 50000
          else
            tarif := 10000 + (lamaParkir - 1) * 5000;
        end;

      // Menangani kode kendaraan yang tidak dikenal
      else
        begin
          tarif := -1;
          writeln('Kode kendaraan tidak valid!');
        end;
    end;

    // Menampilkan tarif jika kode kendaraan valid
    if tarif >= 0 then
    begin
      writeln;
      writeln('===== RINCIAN PARKIR =====');
      writeln('Kode kendaraan: ', kode);
      writeln('Lama parkir: ', lamaParkir, ' jam');
      writeln('Total tarif: Rp', tarif);

      // Memberi keterangan jika tarif maksimal berlaku
      if lamaParkir > 10 then
        writeln('Tarif maksimal flat berlaku.');
    end;
  end;

  writeln('==========================');
  readln;
end.