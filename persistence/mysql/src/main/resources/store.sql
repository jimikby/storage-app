CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `FK_city_country` (`country_id`),
  CONSTRAINT `FK_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `FK_feedback_user` (`user_id`),
  KEY `FK_feedback_user_2` (`author_id`),
  CONSTRAINT `FK_feedback_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_feedback_user_2` FOREIGN KEY (`author_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`location_id`),
  KEY `FK_location_city` (`city_id`),
  CONSTRAINT `FK_location_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `lenght` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `order_price` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_order_user` (`user_id`),
  KEY `FK_order_store` (`store_id`),
  KEY `FK_order_order_status` (`order_status_id`),
  CONSTRAINT `FK_order_order_status` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`),
  CONSTRAINT `FK_order_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  CONSTRAINT `FK_order_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `order_status_name` (`order_status_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `lenght` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `store_type_id` int(11) DEFAULT NULL,
  `rating` int(1) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `base_price` int(11) DEFAULT NULL,
  `descripton` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_id`),
  KEY `FK_store_user` (`user_id`),
  KEY `FK_store_store_type` (`store_type_id`),
  KEY `FK_store_location` (`location_id`),
  CONSTRAINT `FK_store_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `FK_store_store_type` FOREIGN KEY (`store_type_id`) REFERENCES `store_type` (`store_type_id`),
  CONSTRAINT `FK_store_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `store_image` (
  `store_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_image_id`),
  UNIQUE KEY `url` (`url`),
  KEY `FK_store_image_store` (`store_id`),
  CONSTRAINT `FK_store_image_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `store_option` (
  `store_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_option_name` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`store_option_id`),
  UNIQUE KEY `store_option_name` (`store_option_name`),
  KEY `FK_store_option_store` (`store_id`),
  CONSTRAINT `FK_store_option_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `store_type` (
  `store_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`store_type_id`),
  UNIQUE KEY `store_type_name` (`store_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(24) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `FK_user_location` (`location_id`),
  KEY `FK_user_user_type` (`user_type_id`),
  CONSTRAINT `FK_user_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `FK_user_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`),
  UNIQUE KEY `user_type_name` (`user_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;