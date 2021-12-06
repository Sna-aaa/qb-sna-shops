DROP TABLE `shopitems`;

CREATE TABLE `shopitems` (
	`id` int NOT NULL AUTO_INCREMENT,
	`store` varchar(20) NOT NULL,
	`item` varchar(30) NOT NULL,
	`stock` int NOT NULL,
	PRIMARY KEY (`id`)
);

INSERT INTO `shopitems` (store, item, stock) VALUES
	('ltdgasoline','tosti', 50),
	('ltdgasoline','water_bottle', 50),
	('ltdgasoline','kurkakola', 50),
	('ltdgasoline','twerks_candy', 50),
	('ltdgasoline','snikkel_candy', 50),
	('ltdgasoline','sandwich', 50),
	('ltdgasoline','beer', 50),
	('ltdgasoline','whiskey', 50),
	('ltdgasoline','vodka', 50),
	('ltdgasoline','bandage', 50),
	('ltdgasoline','lighter', 50),
	('ltdgasoline','rolling_paper', 50)
;
