-- 1
-- SELECT id, username, first_name, last_name, created_at, updated_at
-- FROM users;

-- 2
-- SELECT id, url, title, content, created_at, updated_at, users_id
-- FROM posts
-- WHERE users_id = 100;

-- 3
-- SELECT p.id, p.url, p.title, p.content,
--        p.created_at, p.updated_at, p.users_id,
--        u.first_name, u.last_name
-- FROM   posts p
-- JOIN   users u ON u.id = p.users_id
-- WHERE  users_id = 200;

-- 4
-- SELECT p.id, p.url, p.title, p.content,
--        p.created_at, p.updated_at, p.users_id,
--        u.username, u.first_name
-- FROM posts p
-- JOIN users u ON u.id = p.users_id
-- WHERE u.first_name = 'Norene'
-- AND u.last_name = 'Schmitt';

-- 5
-- SELECT u.username
-- FROM users u
-- JOIN posts p ON p.users_id = u.id
-- WHERE p.created_at > '2015-01-01';

-- 6
-- SELECT p.title, p.content, u.username
-- FROM users u
-- JOIN posts p ON p.users_id = u.id
-- WHERE u.created_at > '2015-01-01';

-- 7
-- SELECT c.id, c.body, c.created_at, c.updated_at, c.users_id, c.posts_id,
--        p.title AS "Post Title"
-- FROM comments c
-- JOIN posts p ON c.posts_id = p.id;

-- 8
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id,
--        p.title AS "post_title", p.url AS "post_url"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- WHERE  p.created_at < '2015-01-01'::TIMESTAMPTZ;

-- 9
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id,
--        p.title AS "post_title", p.url AS "post_url"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- WHERE  p.created_at > '2015-01-01'::TIMESTAMPTZ;

-- 10
-- SELECT c.id, c.body AS "comment_body", c.created_at, c.updated_at, c.users_id, c.posts_id,
--        p.title AS "post_title", p.url AS "post_url"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- WHERE  c.body LIKE '%USB%';

-- 11
-- SELECT p.title AS "post_title", u.first_name, u.last_name, c.body AS "comment_body"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- JOIN   users u ON u.id = p.users_id
-- WHERE  c.body LIKE '%matrix%';

-- 12
-- SELECT u.first_name, u.last_name, c.body AS "comment_body"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- JOIN   users u ON u.id = c.users_id
-- WHERE  c.body LIKE '%SSL%'
-- AND    p.content LIKE '%dolorum%';

-- 13
-- SELECT u.first_name AS "post_author_first_name", u.last_name AS "post_author_last_name",
--        p.title AS "post_title", u.username AS "comment_author_username", c.body AS "comment_body"
-- FROM   comments c
-- JOIN   posts p ON p.id = c.posts_id
-- JOIN   users u ON u.id = c.users_id
-- WHERE  p.content LIKE '%nemo%'
-- AND    (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%');


-- Additional Queries

-- 1
-- SELECT COUNT (c.id)
-- FROM   posts p
-- JOIN   comments c ON p.id = c.posts_id
-- WHERE  p.created_at > '2015-07-14'::TIMESTAMPTZ;

-- 2
-- SELECT DISTINCT u.username AS "Users"
-- FROM   comments c
-- JOIN   users u ON u.id = c.users_id
-- WHERE  c.body LIKE '%programming%';