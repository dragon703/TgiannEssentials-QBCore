CREATE TABLE IF NOT EXISTS `tgiann_multichar` (
  `identifier` varchar(50) DEFAULT NULL,
  `customerId` varchar(50) DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT 1,
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `tgiann_multichar_img` (
  `citizenid` varchar(50) DEFAULT NULL,
  `img` longtext DEFAULT NULL,
  UNIQUE KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE IF NOT EXISTS `tgiann_multichar_last_logout` (
  `citizenid` varchar(50) DEFAULT NULL,
  `unixtime` int(11) DEFAULT NULL,
  UNIQUE KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;