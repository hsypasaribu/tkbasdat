CREATE TABLE MAHASISWA(
NPM char(10) not null,
Nama varchar(100) not null,
Username varchar(30) not null,
Password varchar(20) not null,
Email varchar(100) not null,
Email_alternatif varchar(100),
Telepon varchar(100),
Notelp varchar(100),
Primary key(NPM)
);