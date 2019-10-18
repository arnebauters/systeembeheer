DELIMITER //

USE check
CREATE TRIGGER trigger2
BEFORE DELETE
ON log FOR EACH ROW

	BEGIN
		SELECT COUNT(*) INTO @nr_rows FROM log;
		IF @nr_rows < 80 THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot delete row, min number of rows.';
		END IF;
	END; //

DELIMITER ;
