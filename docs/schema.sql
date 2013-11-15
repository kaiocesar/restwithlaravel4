create schema if not exists `restlaravel4`;

use restlaravel4;

create table if not exists `restlaravel4`.`users` (
  `id` int unsigned not null auto_increment primary key,
  `username` varchar(255) null, 
  `password` varchar(255) null, 
  `created_at` timestamp default 0 not null, 
  `updated_at` timestamp default 0 not null  
);


create table if not exists `restlaravel4`.`urls` (
 `id` int not null auto_increment,
 `url` varchar(100) null, 
 `status` decimal(10,2) null, 
 `description` text null,
 `user_id` int unsigned -not null,
 `create_at` date null,
 PRIMARY KEY(`id`),
 INDEX `fk_urls_users_idx` (`user_id` ASC), CONSTRAINT `fk_urls_users`
 FOREIGN KEY (`user_id`)
 REFERENCES `restlaravel4`.`users` (`id`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION
);
