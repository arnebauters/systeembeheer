DELIMITER //

USE check
CREATE TRIGGER trigger1
BEFORE INSERT 
ON log FOR EACH ROW

	BEGIN
		SELECT COUNT(*) INTO @nr_rows FROM log;
		IF @nr_rows >= 100 THEN
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Cannot add row, max number of rows reached.';
		END IF;
	END; //

DELIMITER ;
