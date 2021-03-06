CREATE TABLE `drugcode` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `drug` varchar(100) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `pack_size` varchar(10) NOT NULL,
  `safety_quantity` varchar(4) NOT NULL,
  `generic_name` varchar(100) NOT NULL,
  `supported_by` varchar(30) NOT NULL,
  `classification` varchar(50) NOT NULL,
  `none_arv` varchar(1) NOT NULL,
  `tb_drug` varchar(1) NOT NULL,
  `drug_in_use` varchar(1) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `dose` varchar(20) NOT NULL,
  `duration` varchar(4) NOT NULL,
  `quantity` varchar(4) NOT NULL,
  `source` varchar(10) NOT NULL DEFAULT '0',
  `type` varchar(1) NOT NULL DEFAULT '0',
  `supplied` varchar(1) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `strength` varchar(20) NOT NULL,
  `merged_to` varchar(50) NOT NULL,
  `map` int(11) NOT NULL,
  `ccc_store_sp` int(11) NOT NULL DEFAULT '2',
  `instructions` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ccc_store_sp` (`ccc_store_sp`),
  CONSTRAINT `drugcode_ibfk_1` FOREIGN KEY (`ccc_store_sp`) REFERENCES `ccc_store_service_point` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1