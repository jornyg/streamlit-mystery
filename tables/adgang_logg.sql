CREATE TABLE IF NOT EXISTS adgang_logg (
    logg_id INTEGER PRIMARY KEY,
    rom TEXT NOT NULL,
    kort_nr TEXT NOT NULL,
    timestamp TIMESTAMP,                     
    type TEXT            
);

DELETE FROM adgang_logg;

INSERT INTO adgang_logg (rom, kort_nr, timestamp, type) VALUES
('Rom 201', 1001, '2025-01-05 08:00:12', 'inn'),
('Rom 201', 1001, '2025-01-05 16:30:45', 'ut'),
('Rom 201', 1002, '2025-01-12 08:15:37', 'inn'),
('Rom 201', 1002, '2025-01-12 16:05:21', 'ut'),
('Rom 201', 1001, '2025-01-19 08:30:10', 'inn'),
('Rom 201', 1001, '2025-01-19 17:15:42', 'ut'),
('Rom 201', 1001, '2025-02-03 08:10:22', 'inn'),
('Rom 201', 1001, '2025-02-03 16:25:33', 'ut'),
('Rom 201', 1003, '2025-02-10 08:05:37', 'inn'),
('Rom 201', 1003, '2025-02-10 16:15:21', 'ut'),
('Rom 201', 1001, '2025-03-07 08:20:15', 'inn'),
('Rom 201', 1001, '2025-03-07 16:45:32', 'ut'),
('Rom 201', 1002, '2025-03-14 08:10:37', 'inn'),
('Rom 201', 1002, '2025-03-14 16:25:21', 'ut'),
('Rom 201', 1001, '2025-04-04 08:15:18', 'inn'),
('Rom 201', 1001, '2025-04-04 16:35:42', 'ut'),
('Rom 201', 1003, '2025-04-11 08:05:37', 'inn'),
('Rom 201', 1003, '2025-04-11 16:20:21', 'ut'),
('Rom 202', 1004, '2025-01-08 09:00:22', 'inn'),
('Rom 202', 1004, '2025-01-08 16:45:18', 'ut'),
('Rom 202', 1005, '2025-01-22 08:45:33', 'inn'),
('Rom 202', 1005, '2025-01-22 15:30:56', 'ut'),
('Rom 202', 1004, '2025-02-15 08:55:22', 'inn'),
('Rom 202', 1004, '2025-02-15 16:40:18', 'ut'),
('Rom 202', 1005, '2025-03-18 08:50:33', 'inn'),
('Rom 202', 1005, '2025-03-18 15:35:56', 'ut'),
('Rom 202', 1004, '2025-04-21 09:05:22', 'inn'),
('Rom 202', 1004, '2025-04-21 16:50:18', 'ut'),
('Rom 203', 1006, '2025-01-14 08:05:47', 'inn'),
('Rom 203', 1006, '2025-01-14 17:20:13', 'ut'),
('Rom 203', 1007, '2025-02-18 08:25:42', 'inn'),
('Rom 203', 1007, '2025-02-18 16:55:38', 'ut'),
('Rom 203', 1006, '2025-03-25 08:15:47', 'inn'),
('Rom 203', 1006, '2025-03-25 17:10:13', 'ut'),
('Rom 203', 1007, '2025-04-08 08:20:42', 'inn'),
('Rom 203', 1007, '2025-04-08 16:45:38', 'ut'),
('Rom 204', 1008, '2025-01-07 08:20:11', 'inn'),
('Rom 204', 1008, '2025-01-07 16:10:24', 'ut'),
('Rom 204', 1009, '2025-02-11 09:15:33', 'inn'),
('Rom 204', 1009, '2025-02-11 17:25:12', 'ut'),
('Rom 204', 1008, '2025-03-04 08:30:11', 'inn'),
('Rom 204', 1008, '2025-03-04 16:20:24', 'ut'),
('Rom 204', 1009, '2025-04-15 09:10:33', 'inn'),
('Rom 204', 1009, '2025-04-15 17:15:12', 'ut'),
('Rom 205', 1010, '2025-01-10 08:10:55', 'inn'),
('Rom 205', 1010, '2025-01-10 16:35:28', 'ut'),
('Rom 205', 1011, '2025-02-17 08:35:47', 'inn'),
('Rom 205', 1011, '2025-02-17 15:40:19', 'ut'),
('Rom 205', 1010, '2025-03-21 08:15:55', 'inn'),
('Rom 205', 1010, '2025-03-21 16:25:28', 'ut'),
('Rom 205', 1011, '2025-04-16 08:25:47', 'inn'),
('Rom 205', 1011, '2025-04-16 15:35:19', 'ut'),
('Rom 206', 1012, '2025-01-16 09:30:22', 'inn'),
('Rom 206', 1012, '2025-01-16 17:05:14', 'ut'),
('Rom 206', 1013, '2025-02-20 09:25:38', 'inn'),
('Rom 206', 1013, '2025-02-20 16:15:42', 'ut'),
('Rom 206', 1012, '2025-03-17 09:20:22', 'inn'),
('Rom 206', 1012, '2025-03-17 17:10:14', 'ut'),
('Rom 206', 1013, '2025-04-22 09:15:38', 'inn'),
('Rom 206', 1013, '2025-04-22 16:05:42', 'ut'),
('Rom 207', 1012, '2025-01-16 09:30:22', 'inn'),
('Rom 207', 1012, '2025-01-16 17:05:14', 'ut'),
('Rom 207', 1013, '2025-02-20 09:25:38', 'inn'),
('Rom 207', 1013, '2025-02-20 16:15:42', 'ut'),
('Rom 207', 1012, '2025-03-17 09:20:22', 'inn'),
('Rom 207', 1012, '2025-03-17 17:10:14', 'ut'),
('Rom 207', 1010, '2025-04-04 16:30:38', 'inn'),
('Rom 207', 1010, '2025-04-04 16:42:42', 'ut'),
('Møterom A', 1001, '2025-01-06 10:00:12', 'inn'),
('Møterom A', 1002, '2025-01-06 10:00:25', 'inn'),
('Møterom A', 1003, '2025-01-06 10:01:48', 'inn'),
('Møterom A', 1006, '2025-01-06 10:02:33', 'inn'),
('Møterom A', 1001, '2025-01-06 11:15:22', 'ut'),
('Møterom A', 1002, '2025-01-06 11:15:33', 'ut'),
('Møterom A', 1003, '2025-01-06 11:15:41', 'ut'),
('Møterom A', 1006, '2025-01-06 11:16:03', 'ut'),
('Møterom B', 1008, '2025-02-05 13:30:18', 'inn'),
('Møterom B', 1009, '2025-02-05 13:31:24', 'inn'),
('Møterom B', 1012, '2025-02-05 13:31:47', 'inn'),
('Møterom B', 1008, '2025-02-05 14:45:10', 'ut'),
('Møterom B', 1009, '2025-02-05 14:45:22', 'ut'),
('Møterom B', 1012, '2025-02-05 14:46:05', 'ut'),
('Møterom C', 1014, '2025-03-12 10:30:26', 'inn'),
('Møterom C', 1015, '2025-03-12 10:30:42', 'inn'),
('Møterom C', 1016, '2025-03-12 10:31:15', 'inn'),
('Møterom C', 1014, '2025-03-12 11:30:05', 'ut'),
('Møterom C', 1015, '2025-03-12 11:30:13', 'ut'),
('Møterom C', 1016, '2025-03-12 11:30:21', 'ut'),
('Møterom D', 1018, '2025-04-09 14:00:33', 'inn'),
('Møterom D', 1019, '2025-04-09 14:01:12', 'inn'),
('Møterom D', 1022, '2025-04-09 14:01:47', 'inn'),
('Møterom D', 1018, '2025-04-09 15:15:28', 'ut'),
('Møterom D', 1019, '2025-04-09 15:15:36', 'ut'),
('Møterom D', 1022, '2025-04-09 15:16:04', 'ut'),
('Kjøkken 1. etasje', 1001, '2025-01-15 12:10:22', 'inn'),
('Kjøkken 1. etasje', 1001, '2025-01-15 12:30:14', 'ut'),
('Kjøkken 2. etasje', 1008, '2025-02-12 12:15:33', 'inn'),
('Kjøkken 2. etasje', 1008, '2025-02-12 12:35:47', 'ut'),
('Kjøkken 3. etasje', 1016, '2025-03-19 12:20:18', 'inn'),
('Kjøkken 3. etasje', 1016, '2025-03-19 12:40:26', 'ut'),
('Pauserom 1. etasje', 1003, '2025-01-23 14:15:42', 'inn'),
('Pauserom 1. etasje', 1003, '2025-01-23 14:30:15', 'ut'),
('Pauserom 2. etasje', 1010, '2025-02-27 14:20:33', 'inn'),
('Pauserom 2. etasje', 1010, '2025-02-27 14:35:22', 'ut'),
('Pauserom 1. etasje', 1007, '2025-03-11 14:10:42', 'inn'),
('Pauserom 1. etasje', 1007, '2025-03-11 14:25:15', 'ut'),
('Pauserom 2. etasje', 1014, '2025-04-17 14:15:33', 'inn'),
('Pauserom 2. etasje', 1014, '2025-04-17 14:30:22', 'ut'),
('Resepsjon', 1023, '2025-01-03 08:00:05', 'inn'),
('Resepsjon', 1023, '2025-01-03 17:00:33', 'ut'),
('IT-avdeling', 1020, '2025-01-18 09:45:18', 'inn'),
('IT-avdeling', 1020, '2025-01-18 10:15:42', 'ut'),
('Kopirom 1. etasje', 1005, '2025-02-25 11:00:26', 'inn'),
('Kopirom 1. etasje', 1005, '2025-02-25 11:10:18', 'ut'),
('Kopirom 2. etasje', 1012, '2025-02-19 11:05:33', 'inn'),
('Kopirom 2. etasje', 1012, '2025-02-19 11:15:47', 'ut'),
('Markedsføringsavdeling', 1013, '2025-03-28 09:45:22', 'inn'),
('Markedsføringsavdeling', 1013, '2025-03-28 16:30:14', 'ut'),
('Arkivrom', 1007, '2025-03-16 13:00:33', 'inn'),
('Arkivrom', 1007, '2025-03-16 13:15:26', 'ut'),
('Lagerrom', 1011, '2025-04-05 10:30:41', 'inn'),
('Lagerrom', 1011, '2025-04-05 10:45:19', 'ut'),
('Bibliotek', 1019, '2025-04-25 13:30:22', 'inn'),
('Bibliotek', 1019, '2025-04-25 13:50:15', 'ut');
