CREATE TABLE accounts (
id INTEGER PRIMARY KEY AUTOINCREMENT,
username VARCHAR(64) NOT NULL,
user_password VARCHAR(64) NOT NULL,
email_address VARCHAR(128) UNIQUE NOT NULL,
email_id INTEGER NOT NULL,
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL);

INSERT INTO accounts
(username, user_password, email_address, email_id, date_created, date_updated)
VALUES
('JessicaTatham','cheese','jectatham@gmail.com','123',DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM accounts;


CREATE TABLE emails (
id INTEGER PRIMARY KEY AUTOINCREMENT,
email_id INTEGER NOT NULL,
email_status VARCHAR(64) NOT NULL,
email_recipients VARCHAR(64) NOT NULL,
email_subject VARCHAR(128) UNIQUE NOT NULL,
email_content VARCHAR(64) NOT NULL,
email_attachments VARCHAR(64) NOT NULL,
date_created DATETIME NOT NULL,
date_updated DATETIME NOT NULL);

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('1','read','mtatham@mac.com','Hi', 'How are you?', 'none', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('2','read','mtatham@mac.com','Weekend', 'Im working this weekend', 'work_schedule', DATETIME('2014-04-13'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('3','unread','aneliquetatham@mac.com','School', 'What time do you get out of school?', 'none', DATETIME('2014-04-01'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('4','trash','xxx@yahoo.com','Hello', 'blah blah blah money', 'none', DATETIME('2014-02-23'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('5','read','sabrina.tatham@mac.com','Tonight', 'Are you going to be home tonight?', 'none', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('6','unread','mtatham@mac.com','DBC', 'The DBC payment is due.', 'DBC tuition form', DATETIME('2014-04-10'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('7','junk','345@mac.com','SALE', 'Buy something', 'none', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('8','unread','jt@mac.com','Sup?', 'How are you?', 'none', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('9','read','mike@mac.com','Movie?','I want to go and see this movie.', 'movie trailer', DATETIME('2014-04-23'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('10','unread','mtatham@mac.com','Tutorial', 'You should watch this tutorial on SQL.', 'tutorial', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

INSERT INTO emails
(email_id, email_status, email_recipients, email_subject, email_content, email_attachments, date_created, date_updated)
VALUES
('123','unread','mtatham@mac.com','Joining', 'Lets join this email.', 'none', DATETIME('2014-04-29'),DATETIME('2014-04-29'));
SELECT * FROM emails;

