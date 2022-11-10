create database db_fakultas;  
use db_fakultas;

create table jurusan(
    id int primary key auto_increment,
    kode_jurusan char(5) not null,
    nama_jurusan varchar(60) not null
);

desc jurusan;

create table mahasiswa(
    id int primary key auto_increment,
    id_jurusan int not null,
    nim char(15) not null,
    nama varchar(60) not null,
    jenis_kelamin enum ('p','l') not null,
    tempat_lahir varchar(50) not null,
    tanggal_lahir date not null,
    alamat varchar(100) not null,
    foreign key (id_jurusan) references jurusan(id)
);
-- melihat deskripsi tabel
desc mahasiswa;
desc jurusan;
-- melihat tables
show tables;
-- menginput field jurusan
insert into jurusan (kode_jurusan,nama_jurusan) values ('TRPL','Teknik Informatika');
-- menginput field mahasiswa
insert into mahasiswa (id_jurusan,nim,nama,jenis_kelamin,tempat_lahir,tanggal_lahir,alamat) values ('1','362055401033','resti','p','bwi','2002-03-17','jln johar dsn pekarangan');
-- melihat inputan field
select*from nama_tabel;
-- update data tabel
update nama_tabel set (field) = "data field" where (foreign key) = ;
update mahasiswa set nama = "Rohmawati";
-- delete data tabel
delete from mahasiswa where id = 1;