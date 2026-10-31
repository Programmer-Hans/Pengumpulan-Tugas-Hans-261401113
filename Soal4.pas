program soal4;

uses crt;

label a;

var
    tugas, kuis, uts, uas, Rata_Rata: array[1..10] of real;
    status: array[1..10] of string;
    n, i: integer;

begin
    clrscr;

    writeln('======================================');
    writeln('       PROGRAM NILAI MAHASISWA');
    writeln('======================================');
    a:
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);

    if (n < 1) or (n > 10) then
    begin
        writeln('Jumlah mahasiswa tidak valid! Harap input ulang');
        goto a;
    end
    else
    begin
        { Proses penginputan nilai mahasiswa }
        for i := 1 to n do
        begin
            writeln;
            writeln('Mahasiswa ke-', i);

            write('Nilai Tugas : ');
            readln(tugas[i]);

            write('Nilai Kuis  : ');
            readln(kuis[i]);

            write('Nilai UTS   : ');
            readln(uts[i]);

            write('Nilai UAS   : ');
            readln(uas[i]);

            { Proses Menghitung nilai rata-rata mahasiswa }
            Rata_Rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;

            { pake logika if untuk Menentukan kelulusan }
            if Rata_Rata[i] >= 70 then
                status[i] := 'LULUS'
            else
                status[i] := 'TIDAK LULUS';
        end;

        { Menampilkan hasil. tinggal pake perulangan lagi untuk memanggil setiap data pada array }
        writeln;
        writeln('==============================================================');
        writeln('                 HASIL NILAI MAHASISWA');
        writeln('==============================================================');
        writeln('No    Tugas   Kuis    UTS     UAS     Rata-rata    Status');
        writeln('--------------------------------------------------------------');

        for i := 1 to n do
        begin
            writeln(i:2, tugas[i]:8:2, kuis[i]:8:2, uts[i]:8:2, uas[i]:8:2, Rata_Rata[i]:10:2, status[i]:16);
        end;

        writeln('==============================================================');
    end;

    readln;
end.