SELECT * FROM todo_list_db.task;

SELECT * FROM todo_list_db.task where title = 'irons';

INSERT INTO `todo_list_db`.`task` (`title`, `description`, `category`, `status`, `date_created`, `date_completed`, `comment`) 
	VALUES ('International resume', 'Resume for canadian job', 'work', 'Completed', Date('2022-04-01'), Date('2022-04-15'), 'Abhi provided few comments');

UPDATE `todo_list_db`.`task` SET `description` = 'Iron new cloths along with washed ones' WHERE (`id` = '5' and `title` = 'Ironing');
commit;

DELETE FROM `todo_list_db`.`task` WHERE (`id` = '6' and `title` = 'test');
commit;

UPDATE `todo_list_db`.`task` 
SET `title` = 'irons', `description` = 'Iron new cloths along with washed ones, today', `status` = 'Completed', `date_completed` = '2022-04-01 00:00:00', `comment` = 'finished' WHERE (`id` = '5' and `title` = 'Ironingg');
commit;

UPDATE `todo_list_db`.`task` SET `title` = 'baaaa', `description` = 'baa', `date_completed` = null, `category` = 'baa' WHERE (`id` = '10');
