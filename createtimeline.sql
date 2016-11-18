CREATE TABLE TIMELINE(
IdTimeline int not null,
NamaEvent varchar(100) not null,
Tanggal date not null,
Tahun int not null,
Semester int not null,
Primary key(IdTimeline),
Foreign key (tahun, semester) references term(tahun, semester) ON DELETE CASCADE ON UPDATE CASCADE,
);