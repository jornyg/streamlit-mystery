CREATE TABLE IF NOT EXISTS tabeller (
    navn TEXT                       
);

DELETE FROM tabeller;

INSERT INTO tabeller (navn) VALUES
('adgang_logg'),
('ansatt'),
('utstyr_logg'),
('utstyr');