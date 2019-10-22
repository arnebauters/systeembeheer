Terminal close -- exit!
ET GLOBAL event_scheduler = ON;
CREATE EVENT delete_rows_when_table_to_full
	ON SCHEDULE EVERY 1 HOUR STARTS '2019-10-20 11:00:00'
	DO
	BEGIN IF (SELECT COUNT(*) FROM log) > 90 THEN
		DELETE FROM log ORDER BY id DESC limit 10;
	END IF;
END //
