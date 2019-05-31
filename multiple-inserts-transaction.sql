-- MYSQL
START TRANSACTION;
INSERT INTO table_name (name) VALUES ("some-value");
SELECT @ID:=LAST_INSERT_ID();
INSERT INTO other_table (external_id) VALUES (@ID);
COMMIT;

-- POSTGRES
BEGIN;
WITH inserted AS (
	INSERT INTO table1 (name) VALUES ('somename') RETURNING id
), another_insert AS (
	INSERT INTO table2 (name, foreign_id) VALUES ('someothername', (SELECT id FROM inserted)) RETURNING id
)
INSERT INTO table3 (external_id) VALUES ((SELECT id FROM inserted)) RETURNING id;
COMMIT;