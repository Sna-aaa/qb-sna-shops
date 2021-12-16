DROP TABLE `shopitems`;

CREATE TABLE `shopitems` (
	`id` int NOT NULL AUTO_INCREMENT,
	`store` varchar(20) NOT NULL,
	`item` varchar(30) NOT NULL,
	`stock` int NOT NULL,
	PRIMARY KEY (`id`)
);

INSERT INTO `shopitems` (store, item, stock) VALUES
	('ltdgasoline','tosti', 10),
	('ltdgasoline','water_bottle', 10),
	('ltdgasoline','kurkakola', 50),
	('ltdgasoline','twerks_candy', 50),
	('ltdgasoline','snikkel_candy', 50),
	('ltdgasoline','sandwich', 50),
	('ltdgasoline','beer', 50),
	('ltdgasoline','whiskey', 50),
	('ltdgasoline','vodka', 50),

	('247supermarket','tosti', 10),
	('247supermarket','water_bottle', 10),
	('247supermarket','kurkakola', 50),
	('247supermarket','twerks_candy', 50),
	('247supermarket','snikkel_candy', 50),
	('247supermarket','sandwich', 50),
	('247supermarket','beer', 50),
	('247supermarket','whiskey', 50),
	('247supermarket','vodka', 50),

	('robsliquor6','tosti', 10),
	('robsliquor6','water_bottle', 10),
	('robsliquor6','kurkakola', 50),
	('robsliquor6','twerks_candy', 50),
	('robsliquor6','snikkel_candy', 50),
	('robsliquor6','sandwich', 50),
	('robsliquor6','beer', 50),
	('robsliquor6','whiskey', 50),
	('robsliquor6','vodka', 50),

	('robsliquor','tosti', 10),
	('robsliquor','water_bottle', 10),
	('robsliquor','kurkakola', 50),
	('robsliquor','twerks_candy', 50),
	('robsliquor','snikkel_candy', 50),
	('robsliquor','sandwich', 50),
	('robsliquor','beer', 50),
	('robsliquor','whiskey', 50),
	('robsliquor','vodka', 50),

	('ltdgasoline2','tosti', 10),
	('ltdgasoline2','water_bottle', 10),
	('ltdgasoline2','kurkakola', 50),
	('ltdgasoline2','twerks_candy', 50),
	('ltdgasoline2','snikkel_candy', 50),
	('ltdgasoline2','sandwich', 50),
	('ltdgasoline2','beer', 50),
	('ltdgasoline2','whiskey', 50),
	('ltdgasoline2','vodka', 50),

	('robsliquor2','tosti', 10),
	('robsliquor2','water_bottle', 10),
	('robsliquor2','kurkakola', 50),
	('robsliquor2','twerks_candy', 50),
	('robsliquor2','snikkel_candy', 50),
	('robsliquor2','sandwich', 50),
	('robsliquor2','beer', 50),
	('robsliquor2','whiskey', 50),
	('robsliquor2','vodka', 50),

	('ltdgasoline3','tosti', 10),
	('ltdgasoline3','water_bottle', 10),
	('ltdgasoline3','kurkakola', 50),
	('ltdgasoline3','twerks_candy', 50),
	('ltdgasoline3','snikkel_candy', 50),
	('ltdgasoline3','sandwich', 50),
	('ltdgasoline3','beer', 50),
	('ltdgasoline3','whiskey', 50),
	('ltdgasoline3','vodka', 50),

	('robsliquor3','tosti', 10),
	('robsliquor3','water_bottle', 10),
	('robsliquor3','kurkakola', 50),
	('robsliquor3','twerks_candy', 50),
	('robsliquor3','snikkel_candy', 50),
	('robsliquor3','sandwich', 50),
	('robsliquor3','beer', 50),
	('robsliquor3','whiskey', 50),
	('robsliquor3','vodka', 50),

	('247supermarket2','tosti', 10),
	('247supermarket2','water_bottle', 10),
	('247supermarket2','kurkakola', 50),
	('247supermarket2','twerks_candy', 50),
	('247supermarket2','snikkel_candy', 50),
	('247supermarket2','sandwich', 50),
	('247supermarket2','beer', 50),
	('247supermarket2','whiskey', 50),
	('247supermarket2','vodka', 50),

	('247supermarket3','tosti', 10),
	('247supermarket3','water_bottle', 10),
	('247supermarket3','kurkakola', 50),
	('247supermarket3','twerks_candy', 50),
	('247supermarket3','snikkel_candy', 50),
	('247supermarket3','sandwich', 50),
	('247supermarket3','beer', 50),
	('247supermarket3','whiskey', 50),
	('247supermarket3','vodka', 50),

	('247supermarket4','tosti', 10),
	('247supermarket4','water_bottle', 10),
	('247supermarket4','kurkakola', 50),
	('247supermarket4','twerks_candy', 50),
	('247supermarket4','snikkel_candy', 50),
	('247supermarket4','sandwich', 50),
	('247supermarket4','beer', 50),
	('247supermarket4','whiskey', 50),
	('247supermarket4','vodka', 50),

	('247supermarket5','tosti', 10),
	('247supermarket5','water_bottle', 10),
	('247supermarket5','kurkakola', 50),
	('247supermarket5','twerks_candy', 50),
	('247supermarket5','snikkel_candy', 50),
	('247supermarket5','sandwich', 50),
	('247supermarket5','beer', 50),
	('247supermarket5','whiskey', 50),
	('247supermarket5','vodka', 50),

	('247supermarket6','tosti', 10),
	('247supermarket6','water_bottle', 10),
	('247supermarket6','kurkakola', 50),
	('247supermarket6','twerks_candy', 50),
	('247supermarket6','snikkel_candy', 50),
	('247supermarket6','sandwich', 50),
	('247supermarket6','beer', 50),
	('247supermarket6','whiskey', 50),
	('247supermarket6','vodka', 50),

	('robsliquor4','tosti', 10),
	('robsliquor4','water_bottle', 10),
	('robsliquor4','kurkakola', 50),
	('robsliquor4','twerks_candy', 50),
	('robsliquor4','snikkel_candy', 50),
	('robsliquor4','sandwich', 50),
	('robsliquor4','beer', 50),
	('robsliquor4','whiskey', 50),
	('robsliquor4','vodka', 50),

	('247supermarket7','tosti', 10),
	('247supermarket7','water_bottle', 10),
	('247supermarket7','kurkakola', 50),
	('247supermarket7','twerks_candy', 50),
	('247supermarket7','snikkel_candy', 50),
	('247supermarket7','sandwich', 50),
	('247supermarket7','beer', 50),
	('247supermarket7','whiskey', 50),
	('247supermarket7','vodka', 50),

	('247supermarket8','tosti', 10),
	('247supermarket8','water_bottle', 10),
	('247supermarket8','kurkakola', 50),
	('247supermarket8','twerks_candy', 50),
	('247supermarket8','snikkel_candy', 50),
	('247supermarket8','sandwich', 50),
	('247supermarket8','beer', 50),
	('247supermarket8','whiskey', 50),
	('247supermarket8','vodka', 50),

	('247supermarket9','tosti', 10),
	('247supermarket9','water_bottle', 10),
	('247supermarket9','kurkakola', 50),
	('247supermarket9','twerks_candy', 50),
	('247supermarket9','snikkel_candy', 50),
	('247supermarket9','sandwich', 50),
	('247supermarket9','beer', 50),
	('247supermarket9','whiskey', 50),
	('247supermarket9','vodka', 50),

	('delvecchioliquor','tosti', 10),
	('delvecchioliquor','water_bottle', 10),
	('delvecchioliquor','kurkakola', 50),
	('delvecchioliquor','twerks_candy', 50),
	('delvecchioliquor','snikkel_candy', 50),
	('delvecchioliquor','sandwich', 50),
	('delvecchioliquor','beer', 50),
	('delvecchioliquor','whiskey', 50),
	('delvecchioliquor','vodka', 50),

	('donscountrystore','tosti', 10),
	('donscountrystore','water_bottle', 10),
	('donscountrystore','kurkakola', 50),
	('donscountrystore','twerks_candy', 50),
	('donscountrystore','snikkel_candy', 50),
	('donscountrystore','sandwich', 50),
	('donscountrystore','beer', 50),
	('donscountrystore','whiskey', 50),
	('donscountrystore','vodka', 50),

	('ltdgasoline4','tosti', 10),
	('ltdgasoline4','water_bottle', 10),
	('ltdgasoline4','kurkakola', 50),
	('ltdgasoline4','twerks_candy', 50),
	('ltdgasoline4','snikkel_candy', 50),
	('ltdgasoline4','sandwich', 50),
	('ltdgasoline4','beer', 50),
	('ltdgasoline4','whiskey', 50),
	('ltdgasoline4','vodka', 50),

	('robsliquor5','tosti', 10),
	('robsliquor5','water_bottle', 10),
	('robsliquor5','kurkakola', 50),
	('robsliquor5','twerks_candy', 50),
	('robsliquor5','snikkel_candy', 50),
	('robsliquor5','sandwich', 50),
	('robsliquor5','beer', 50),
	('robsliquor5','whiskey', 50),
	('robsliquor5','vodka', 50),

	('247supermarket10','tosti', 10),
	('247supermarket10','water_bottle', 10),
	('247supermarket10','kurkakola', 50),
	('247supermarket10','twerks_candy', 50),
	('247supermarket10','snikkel_candy', 50),
	('247supermarket10','sandwich', 50),
	('247supermarket10','beer', 50),
	('247supermarket10','whiskey', 50),
	('247supermarket10','vodka', 50),

	('hardware','lockpick', 10),
	('hardware','weapon_wrench', 10),
	('hardware','weapon_hammer', 10),
	('hardware','repairkit', 10),
	('hardware','screwdriverset', 10),
	('hardware','phone', 10),
	('hardware','radio', 10),
	('hardware','fitbit', 10),
	('hardware','cleaningkit', 10),
	('hardware','advancedrepairkit', 10),

	('hardware2','lockpick', 10),
	('hardware2','weapon_wrench', 10),
	('hardware2','weapon_hammer', 10),
	('hardware2','repairkit', 10),
	('hardware2','screwdriverset', 10),
	('hardware2','phone', 10),
	('hardware2','radio', 10),
	('hardware2','fitbit', 10),
	('hardware2','cleaningkit', 10),
	('hardware2','advancedrepairkit', 10),

	('hardware3','lockpick', 10),
	('hardware3','weapon_wrench', 10),
	('hardware3','weapon_hammer', 10),
	('hardware3','repairkit', 10),
	('hardware3','screwdriverset', 10),
	('hardware3','phone', 10),
	('hardware3','radio', 10),
	('hardware3','fitbit', 10),
	('hardware3','cleaningkit', 10),
	('hardware3','advancedrepairkit', 10),

	('coffeeshop','joint', 10),
	('coffeeshop','weapon_poolcue', 10),
	('coffeeshop','weed_nutrition', 10),
	('coffeeshop','empty_weed_bag', 10),
	('coffeeshop','rolling_paper', 10),
	('coffeeshop','lighter', 10),

	('seaword1','parachute', 10),
	('seaword1','binoculars', 10),
	('seaword1','diving_gear', 10),
	('seaword1','firework1', 10),
	('seaword1','firework2', 10),
	('seaword1','firework3', 10),
	('seaword1','firework4', 10),
	('seaword1','bandage', 10),

	('leisureshop','parachute', 10),
	('leisureshop','binoculars', 10),
	('leisureshop','diving_gear', 10),
	('leisureshop','firework1', 10),
	('leisureshop','firework2', 10),
	('leisureshop','firework3', 10),
	('leisureshop','firework4', 10),
	('leisureshop','bandage', 10),

	('beancoffee','coffee', 10)
;

beancoffee		coffeeplace

ltdgasoline		normal
247supermarket
robsliquor6
robsliquor
ltdgasoline2
robsliquor2
ltdgasoline3
robsliquor3
247supermarket2
247supermarket3
247supermarket4
247supermarket5
247supermarket6
robsliquor4
247supermarket7
247supermarket8
247supermarket9
delvecchioliquor
donscountrystore
ltdgasoline4
robsliquor5
247supermarket10

hardware		hardware
hardware2
hardware3

coffeeshop		coffeeshop

seaword1		leisureshop
leisureshop		


No Stock
casino			casino
ammunation1		weapons
ammunation2
ammunation3
ammunation4
ammunation5
ammunation6
ammunation7
ammunation8
ammunation9
