CREATE TABLE `shopitems` (
	`store` varchar(20) NOT NULL,
	`type` varchar(20) NOT NULL,
	`cash` int,
    `stock` text NOT NULL,
	PRIMARY KEY (`store`)
);

INSERT INTO `shopitems` (store, type, cash, stock) VALUES
	('247supermarket1', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket2', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket3', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket4', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket5', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket6', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket7', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket8', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('247supermarket9', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),

	('ltdgasoline1', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('ltdgasoline2', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('ltdgasoline3', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('ltdgasoline4', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('ltdgasoline5', 'shop', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),

	('robsliquor1', 'liquor', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('robsliquor2', 'liquor', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('robsliquor3', 'liquor', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('robsliquor4', 'liquor', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),
	('robsliquor5', 'liquor', 1000, '{"tosti":50,"water_bottle":50,"kurkakola":50,"twerks_candy":50,"snikkel_candy":50,"sandwich":50,"beer":50,"whiskey":50,"vodka":50,"coffee":50}'),

	('hardware1', 'hardware', 1000, '{"lockpick":50,"weapon_wrench":50,"weapon_hammer":50,"repairkit":50,"screwdriverset":50,"phone":50,"radio":50,"fitbit":50,"cleaningkit":50,"advancedrepairkit":50}'),
	('hardware2', 'hardware', 1000, '{"lockpick":50,"weapon_wrench":50,"weapon_hammer":50,"repairkit":50,"screwdriverset":50,"phone":50,"radio":50,"fitbit":50,"cleaningkit":50,"advancedrepairkit":50}'),

	('weedshop', 'shop', 1000, '{"joint":100,"weapon_poolcue":20,"weed_nutrition":50,"empty_weed_bag":1000,"rolling_paper":1000,"lighter":50}'),
	('seaword', 'leisure', 1000, '{"parachute":20,"binoculars":50,"diving_gear":20,"fishingrod":50,"fishingbait":200,"firework1":50,"firework2":50,"firework3":50,"firework4":50}'),
	('leisureshop', 'leisure', 1000, '{"parachute":20,"binoculars":50,"diving_gear":20,"fishingrod":50,"fishingbait":200,"firework1":50,"firework2":50,"firework3":50,"firework4":50}'),
;
--	('hardware3', 'hardware', 1000, '{"lockpick":50,"weapon_wrench":50,"weapon_hammer":50,"repairkit":50,"screwdriverset":50,"phone":50,"radio":50,"fitbit":50,"cleaningkit":50,"advancedrepairkit":50}'),
