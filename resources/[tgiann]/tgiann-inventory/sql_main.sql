CREATE TABLE IF NOT EXISTS `tgiann_inventory_gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext DEFAULT NULL,
  `lastopen` int(11) DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `tgiann_inventory_player` (
  `citizenid` varchar(50) NOT NULL,
  `lvl` int(11) DEFAULT NULL,
  `clotheinventory` longtext DEFAULT '[]',
  `realisticArmorInventory` longtext NOT NULL DEFAULT '[]',
  `inventory` longtext DEFAULT '[]',
  `fastSlots` longtext DEFAULT '[]',
  UNIQUE KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `tgiann_inventory_stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `items` longtext DEFAULT NULL,
  `lastopen` int(11) DEFAULT NULL,
  `player` longtext DEFAULT NULL,
  `family` int(11) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `tgiann_inventory_trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext DEFAULT NULL,
  `lastopen` int(11) DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;