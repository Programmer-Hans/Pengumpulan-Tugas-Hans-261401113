program Soal3;

uses crt;

label a;

var
    nama: array[1..10] of string;
    nilai: array[1..10] of real;
    n, i, j: integer;
    Nilai_Sementara: real;
    Nama_Sementara: string;

begin
    clrscr;

    writeln('================================');
    writeln('     PROGRAM PENGURUTAN NILAI');
    writeln('================================');
    a:
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    {disini pake logika if. biar orang kalo input diluar yg di minta
    bakal diperingati itu tidak valid, dan bakal punya kesempatan 
    buat input ulang angka yg valid. itu di bantu goto ya bg}
    if (n < 1) or (n > 10) then
    begin
        writeln('Jumlah mahasiswa tidak valid! input kembali sesuai ketentuan');
        goto a;
    end
    else
    begin
        {Input data mahasiswa pake perulangan for}
        for i := 1 to n do
        begin
            writeln;
            writeln('Mahasiswa ke-', i);

            write('Nama mahasiswa : ');
            readln(nama[i]);

            write('Nilai UAS      : ');
            readln(nilai[i]);
        end;

        { Mengurutkan nilai dari terendah ke tertinggi, 
         pake perulangan for dan tentunya logika if 
         (pake algoritma bubble sort untuk mengurutkan nilainya) }
        for i := 1 to n-1 do
        begin
            for j := 1 to n-i do
            begin
                if nilai[j] > nilai[j+1] then
                begin
                    Nilai_Sementara := nilai[j];
                    nilai[j] := nilai[j+1];
                    nilai[j+1] := Nilai_Sementara;

                    Nama_Sementara := nama[j];
                    nama[j] := nama[j+1];
                    nama[j+1] := Nama_Sementara;
                end;
            end;
        end;

        {rekapan outputnya }
        writeln;
        writeln('================================');
        writeln('   DAFTAR PERINGKAT NILAI UAS');
        writeln(' RANGKING TERTINGGI KE TERENDAH');
        writeln('================================');

        for i := n downto 1 do
        begin
            writeln(i, '. ', nama[i], ' - ', nilai[i]:0:2);
        end;

        writeln('================================');
    end;

    readln;
end.