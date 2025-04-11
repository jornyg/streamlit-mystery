CREATE TABLE IF NOT EXISTS _losning (
    id INTEGER PRIMARY KEY,
    spm_id INTEGER NOT NULL,
    losning_id INTEGER NOT NULL
);

DELETE FROM _losning;

INSERT INTO _losning (spm_id, losning_id) VALUES
(1, 21),
(2, 10)