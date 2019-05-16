START TRANSACTION;
INSERT INTO table_name (name) VALUES ("some-value");
SELECT @ID:=LAST_INSERT_ID();
INSERT INTO other_table (external_id) VALUES (@ID);
COMMIT;