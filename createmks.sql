CREATE TABLE MATA_KULIAH_SPESIAL (
IdMKS INT unique not null,
NPM char(10) not null,
Tahun int not null,
Semester int not null,
Judul varchar(250) not null,
IsSiapSidang boolean default false,
PengumpulanHardCopy boolean default false,
IjinMajuSidang boolean default false,
IdJenisMKS int not null,
Primary key(IdMKS, NPM, Tahun, Semester),
FOREIGN KEY(NPM) REFERENCES Mahasiswa(npm) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(Tahun,Semester) REFERENCES TERM(Tahun,Semester) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(IdJenisMKS) REFERENCES JenisMKS(Id) ON DELETE CASCADE ON UPDATE CASCADE
);