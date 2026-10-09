
program VerifikasiPassword;

uses crt;

var
  password, passwordRahasia: string;
  percobaan: integer;

begin
  clrscr;

  // Menentukan kata sandi rahasia yang benar
  passwordRahasia := '123456789';

  // Mengatur jumlah percobaan awal menjadi 0
  percobaan := 0;

  // Mengulang proses login sampai kondisi terpenuhi
  repeat
    // Meminta pengguna memasukkan kata sandi
    write('Masukkan kata sandi: ');
    readln(password);

    // Menghitung jumlah percobaan login
    percobaan := percobaan + 1;

    // Memeriksa apakah kata sandi yang dimasukkan benar
    if password = passwordRahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');

      // Menghentikan perulangan jika kata sandi benar
      break;
    end
    else
    begin
      // Menampilkan pesan jika kata sandi salah
      writeln('Kata sandi salah!');

      // Memberi informasi sisa kesempatan jika masih ada
      if percobaan < 3 then
        writeln('Sisa kesempatan: ', 3 - percobaan);
    end;

  // Berhenti jika sudah 3 kali mencoba
  until percobaan >= 3;

  // Menolak akses jika semua percobaan gagal
  if (password <> passwordRahasia) and (percobaan >= 3) then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.