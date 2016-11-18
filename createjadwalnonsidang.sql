CREATE TABLE JADWAL_NON_SIDANG (
IdJadwal INT NOT NULL,
TanggalMulai DATE NOT NULL,
TanggalSelesai DATE NOT NULL,
Alasan VARCHAR(100) NOT NULL,
Repetisi VARCHAR(50),
NIPdosen VARCHAR(10) NOT NULL,
PRIMARY KEY(IdJadwal),
FOREIGN KEY(NIPdosen) REFERENCES DOSEN(NIP) ON DELETE CASCADE ON UPDATE CASCADE
);