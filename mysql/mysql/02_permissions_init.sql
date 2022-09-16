USE `app`;

CREATE TABLE `permissions`(
    `id`          BIGINT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `description` VARCHAR(50) NOT NULL
);
 
INSERT INTO `permissions` (id, description) VALUES (1, 'can_edit_article'), (2, 'can_edit_top_page');
INSERT INTO `permissions` (id, description) VALUES (3, 'admin'), (4, 'visitor'), (5, 'normal');
