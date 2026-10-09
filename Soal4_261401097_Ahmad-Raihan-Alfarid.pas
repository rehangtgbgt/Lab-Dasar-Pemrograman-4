
program KalkulatorSederhana;

uses crt;

var
  pilihan: integer;
  angka1, angka2, hasil: real;
  ulang: char;
  bil1, bil2: integer;

begin
  clrscr;

  // Mengulang kalkulator sampai pengguna memilih T atau t
  repeat
    // Menampilkan menu pilihan operasi
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV dan MOD');
    writeln('================================');

    // Meminta pengguna memilih operasi
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    // Meminta dua angka yang akan dihitung
    write('Masukkan angka pertama: ');
    readln(angka1);

    write('Masukkan angka kedua: ');
    readln(angka2);

    // Memproses operasi berdasarkan pilihan pengguna
    case pilihan of
      1:
        begin
          // Melakukan penjumlahan
          hasil := angka1 + angka2;
          writeln('Hasil penjumlahan: ', hasil:0:2);
        end;

      2:
        begin
          // Melakukan pengurangan
          hasil := angka1 - angka2;
          writeln('Hasil pengurangan: ', hasil:0:2);
        end;

      3:
        begin
          // Melakukan perkalian
          hasil := angka1 * angka2;
          writeln('Hasil perkalian: ', hasil:0:2);
        end;

      4:
        begin
          // Memeriksa agar pembagian tidak menggunakan nol
          if angka2 <> 0 then
          begin
            // Melakukan pembagian real
            hasil := angka1 / angka2;
            writeln('Hasil pembagian: ', hasil:0:2);
          end
          else
            writeln('Error: Tidak bisa membagi dengan nol!');
        end;

      5:
        begin
          // DIV dan MOD hanya digunakan untuk bilangan bulat
          // Memeriksa apakah kedua operand adalah bilangan bulat
          if (frac(angka1) = 0) and (frac(angka2) = 0) then
          begin
            // Mengubah angka real menjadi bilangan bulat
            bil1 := trunc(angka1);
            bil2 := trunc(angka2);

            // Memeriksa pembagi agar tidak bernilai nol
            if bil2 <> 0 then
            begin
              // DIV menghasilkan hasil bagi bilangan bulat
              writeln('Hasil DIV: ', bil1 div bil2);

              // MOD menghasilkan sisa pembagian
              writeln('Hasil MOD: ', bil1 mod bil2);
            end
            else
              writeln('Error: Tidak bisa membagi dengan nol!');
          end
          else
            writeln('Error: DIV dan MOD membutuhkan bilangan bulat!');
        end;

      // Menampilkan pesan jika pilihan tidak tersedia
      else
        writeln('Pilihan tidak valid!');
    end;

    // Memberi pilihan untuk mengulangi perhitungan
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

    // Baris kosong agar tampilan lebih rapi
    writeln;

  // Berhenti jika pengguna memasukkan T atau t
  until (ulang = 'T') or (ulang = 't');

  // Menampilkan pesan ketika program selesai
  writeln('Program kalkulator selesai. Terima kasih!');
  readln;
end.