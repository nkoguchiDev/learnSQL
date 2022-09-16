USE `app`;

CREATE TABLE `user_permissions`(
    `user_id`       BIGINT NOT NULL,
    `permission_id` BIGINT NOT NULL
);

INSERT INTO `user_permissions` (user_id, permission_id) VALUES (1, 1);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (2, 2);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (3, 3);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (4, 1);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (5, 2);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (6, 3);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (7, 4);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (8, 5);
INSERT INTO `user_permissions` (user_id, permission_id) VALUES (9, 3);
