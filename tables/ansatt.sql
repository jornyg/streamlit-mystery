CREATE TABLE ansatt (
    ansatt_id INTEGER PRIMARY KEY,
    navn TEXT NOT NULL,
    kort_nr INTEGER NOT NULL,
    stilling TEXT,
    avdeling TEXT,
    ansatt_dato DATE,
    epost TEXT
);

INSERT INTO ansatt (ansatt_id, navn, kort_nr, stilling, avdeling, ansatt_dato, epost) VALUES
-- Kort_nr 1001-1005
(1, 'Erik', 1001, 'Seniorrådgiver', 'Markedsføring', '2020-03-15', 'erik@bedrift.no'),
(2, 'Anna', 1002, 'Produktsjef', 'Markedsføring', '2019-08-23', 'anna@bedrift.no'),
(3, 'Thomas', 1003, 'Markedskoordinator', 'Markedsføring', '2021-05-10', 'thomas@bedrift.no'),
(4, 'Mia', 1004, 'Økonomisjef', 'Økonomi', '2018-11-05', 'mia@bedrift.no'),
(5, 'Jonas', 1005, 'Regnskapsfører', 'Økonomi', '2022-01-15', 'jonas@bedrift.no'),

-- Kort_nr 1006-1010
(6, 'Sofie', 1006, 'HR-direktør', 'HR', '2017-09-20', 'sofie@bedrift.no'),
(7, 'Lars', 1007, 'HR-konsulent', 'HR', '2021-02-01', 'lars@bedrift.no'),
(8, 'Ida', 1008, 'Systemutvikler', 'IT', '2019-04-12', 'ida@bedrift.no'),
(9, 'Magnus', 1009, 'IT-sjef', 'IT', '2016-08-30', 'magnus@bedrift.no'),
(10, 'Asgeir', 1010, 'Utvikler', 'IT', '2020-11-15', 'asgeir@bedrift.no'),

-- Kort_nr 1011-1015
(11, 'Andreas', 1011, 'Lagersjef', 'Logistikk', '2018-05-20', 'andreas@bedrift.no'),
(12, 'Hanna', 1012, 'Logistikkkoordinator', 'Logistikk', '2022-03-10', 'hanna@bedrift.no'),
(13, 'Petter', 1013, 'Markedsføringssjef', 'Markedsføring', '2017-07-01', 'petter@bedrift.no'),
(14, 'Lena', 1014, 'Produktutvikler', 'Produktutvikling', '2019-11-10', 'lena@bedrift.no'),
(15, 'Markus', 1015, 'Prosjektleder', 'Produktutvikling', '2020-09-15', 'markus@bedrift.no'),

-- Kort_nr 1016-1020
(16, 'Sara', 1016, 'UX-designer', 'IT', '2021-01-20', 'sara@bedrift.no'),
(17, 'Fredrik', 1017, 'Frontend-utvikler', 'IT', '2022-05-05', 'fredrik@bedrift.no'),
(18, 'Marie', 1018, 'Backend-utvikler', 'IT', '2020-08-10', 'marie@bedrift.no'),
(19, 'Kristian', 1019, 'Bibliotekansvarlig', 'Administrasjon', '2019-06-15', 'kristian@bedrift.no'),
(20, 'Silje', 1020, 'IT-konsulent', 'IT', '2021-03-30', 'silje@bedrift.no'),

-- Kort_nr 1021-1023
(21, 'Vegard', 1021, 'Salgskonsulent', 'Salg', '2018-10-01', 'vegard@bedrift.no'),
(22, 'Ingrid', 1022, 'Kontorsjef', 'Administrasjon', '2017-04-15', 'ingrid@bedrift.no'),
(23, 'Martin', 1023, 'Resepsjonsansvarlig', 'Administrasjon', '2021-07-01', 'martin@bedrift.no');