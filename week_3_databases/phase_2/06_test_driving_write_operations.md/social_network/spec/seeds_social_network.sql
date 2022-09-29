TRUNCATE TABLE user_accounts, posts RESTART IDENTITY;

INSERT INTO user_accounts (email, username) VALUES ('example@email.com', 'Exampler, the first of his name');
INSERT INTO user_accounts (email, username) VALUES ('example2@email.com', 'Exampler, the second of his name');

INSERT INTO posts (title, content, views, user_account_id) VALUES ('A great year', 'Or is it?', 2, 1);
INSERT INTO posts (title, content, views, user_account_id) VALUES ('How to make tea', 'Google it', 300, 1);