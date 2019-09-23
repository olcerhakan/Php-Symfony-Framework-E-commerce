# Host: localhost  (Version 5.5.5-10.1.36-MariaDB)
# Date: 2019-01-23 15:16:45
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (2,0,'İktisadi ve İdari Bilimler','iibf Kitapları','İibfKitapları içerir','True'),(3,0,'Üniversite Hazırlık','Üniversite Hazırlık Key','Üniversite Hazırlık Desc','True'),(4,0,'İlahiyat Fakültesi','İlahiyat','İlahiyat Fk.için ders notları','True'),(5,0,'Tıp Fakültesi','Tıp','Tıp Notları','True'),(6,0,'Hemşirelik','Hemşirelik Notları','Hemşirelik','True'),(7,21,'Bilgisayar Mühendisliği','BilgMüh','Bilg.Müh Ders Notları','True'),(10,21,'Makina Mühendisliği','MakinaMüh','Mak.Müh','True'),(11,21,'İnşaat Mühendisliği','İnşaatMüh','İnş.Müh','True'),(12,1,'Endüstri Mühendisliği','EndüstriMüh','End.Müh','True'),(13,2,'Edebiyat','Edebiyat','Edebiyat','True'),(14,2,'İşletme','İşletme Notları','İşletme','True'),(15,2,'İktisat','İktisatNotları','İktisat','True'),(16,3,'ALES','ALES','ALES','True'),(17,3,'YDS','YDS','YDS','True'),(18,4,'Din Kültürü','Din','Din','True'),(19,6,'Tıbbi Terminoloji','TıbbiTer.','TıbbiTer.','True'),(20,5,'Anatomi','Anatomi','Anatomi','True'),(21,0,'Mühendislik','MühKitapları','Mühendislik Kitapları','True'),(22,4,'Dinimiz İslam','İslam Dini ile alakalı notlar içerir.','İslam Dini ile alakalı notlar içerir.','True'),(23,5,'Fizyoloji Notları','Fizyoloji ile ilgili notlar mevcuttur. Tıp,Fizyoloji','Fizyoloji ile ilgili notlar mevcuttur.','True'),(24,6,'İş Sağlığı Notları','İş Sağlığı notlarını barındırır.','İş Sağlığı notlarını barındırır.','True');

#
# Structure for table "image"
#

CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (1,2,'test1.jpg'),(8,2,'e390d7c54c7e0e5ada1b577edd542874.jpeg'),(9,11,'0e62b95208a6f7e549c829d6062ada95.jpeg'),(10,11,'b36337c269d4e75bfd2323189d20c4e3.jpeg'),(11,11,'3e284f7f706587e444b4ae5a83901f9f.jpeg'),(12,11,'98d17ff51e8976f5f91b66df48b7d615.jpeg'),(13,11,'e711b6735a9a39f9f34c1a1234cf252f.jpeg'),(14,12,'16a3cf0c10a6fc51384b4b50281a62dc.jpeg'),(15,12,'a010a9711539a4cce070397bf4340c57.jpeg'),(16,12,'f4213f2b7d40e34e884d9c3c97b95061.jpeg'),(17,12,'1324b6dd5e16b79680f3a3a0eb0d1a01.jpeg'),(18,12,'639e14667071b9be727129e05c4d7127.jpeg'),(19,8,'1db76326ddfe8279af9d83a8125ccc87.png'),(20,8,'1904e8af99c5f553c67b60ea88046e6f.jpeg'),(21,8,'8e31e154447019a3e0a174020f55d717.jpeg'),(22,8,'8736a0836b646302a2fd02631a30dc28.jpeg'),(23,8,'d95054fe37a239bec177686a74bc7ef8.jpeg'),(24,1,'c14b13f1185f0dfd6d8f952ba568638f.png'),(25,1,'eb27f83a4b8a8448393332f6a1d564b4.jpeg'),(26,1,'61ecebfe56b8a055c8a6a9e420f4073e.jpeg'),(27,1,'53b0817db1ebb174f034ca284bf1fed6.jpeg'),(28,1,'4dd286f17eafeeb7ad3031259264a9c6.png'),(29,2,'c4de253f88b751d89e0b545501120727.jpeg'),(30,2,'0543cf70083b19dd268d815e91676426.png'),(31,2,'5c1ddfc83248505830e8c18e90e9565f.png'),(32,9,'ea951b0677ed9fab28f328faf3995384.jpeg'),(33,9,'922e92b227971a8af7a1e18522b3d81e.jpeg'),(34,9,'b2e86665712a013bea71f73b4a088526.jpeg'),(35,9,'6f2bbeda1cf1dda0b96f9e330ba56e54.jpeg'),(36,9,'8b73e652eca651cd4b04398a4b848cf7.jpeg'),(37,3,'5d4ca760cfbefb85345f2307b8940496.png'),(38,3,'f1846cf601277b953745832427f00325.png'),(39,3,'896d7b7374e6eb94499d7baa8fefccb5.jpeg'),(40,3,'593e8883702347dfde77354b34da7375.jpeg'),(41,3,'ce6adbc62a475b9b2ad824eb02beafe2.jpeg'),(42,4,'d39741a974d55a9d7c99877f9bb62971.jpeg'),(43,4,'f479cff7459f66abc4d083873f8a3b7f.jpeg'),(44,4,'42dda298edf60af307fe8eace36d9514.png'),(45,4,'1d122259be2014758f7cfc8f87018aa8.jpeg'),(46,4,'3f6dcf4fad52727c8df74ec5f696d54f.jpeg'),(47,5,'ae882e0366ad2d0996377937d15099d2.jpeg'),(48,5,'268c3cc513323ffbdad7e13401f249da.png'),(49,5,'9b80a2e54c28068ced6ca78c2c9cdb44.jpeg'),(50,5,'47f60888cfddc12634866792d1e3a1a5.jpeg'),(51,5,'ddc46cf3ff8bda3b3756072d9d3b5dcb.jpeg'),(52,6,'fb3b79ce4d3a314aa101446462404ce3.png'),(53,6,'5646dca69fe09574a805bd27da8b70d1.jpeg'),(54,6,'c19a95bbe06ac6aaf3013501a0b42d54.jpeg'),(55,6,'b50877aad1b47c560474803e4318accc.jpeg'),(56,6,'3c643e302beacf9e6b461c4026c0b8fd.jpeg'),(57,7,'962bd0ff3a728b60d89013eeff8274a9.jpeg'),(58,7,'d13f067987fb069cf906d225d3240fa7.jpeg'),(59,7,'3c657bd52bb83269b31bc8bff151ca4b.jpeg'),(60,7,'012b9e9a5294be5ac8f6ede6bdda504f.jpeg'),(61,7,'5504b81493582d1d1904e9d22119c22e.jpeg'),(62,10,'5a6b7246ec4cef2bdc878deee00e6928.png'),(63,10,'8d428d1fe9bb71770ee3eb3095091789.jpeg'),(64,10,'54dd80be9410002512a4aff91e6ec44a.jpeg'),(65,10,'eae4c04d7f96f7ded28022db8bfcc2c3.png'),(66,10,'1c8a170f95ba60bc12bd248acd66f877.png'),(67,13,'b652492dbd85300a4c91e006544ce192.jpeg'),(68,13,'01cbdf0614e9ccf2a6cfd46478d50779.jpeg'),(69,13,'beba89af38c513b99c8c4430164bfc00.jpeg'),(70,13,'7fc40fe3d41b654586ba099ce6b4bf4d.jpeg'),(71,13,'c1fbbcebb4a9852567b10fe9ec1dec4a.jpeg'),(72,14,'d81c98b74472175056e52e556889bcb9.png'),(73,14,'815f29d83ede8df8e13e498ffe1f6ba3.png'),(74,14,'23c59dcbb46d3298c073bbd2eeab25a2.jpeg'),(75,14,'39fca343a1db2b5734faef35cea7930d.jpeg'),(76,14,'6c003d9ebe7cf27f1c043812fbd4fafc.jpeg'),(77,15,'ecf7b0d9d54d5de6e3bfe5e7f39b6274.jpeg'),(78,15,'94e276bf954a6e906d6d391b2e4c4536.png'),(79,15,'66ebc7455d6d48fc010fc8beb82131dc.jpeg'),(80,15,'52f1fb65d2b5f2e78e1b8b328918a981.jpeg'),(81,15,'c3b596402fd2bdc8d1e81cc35ba7b315.jpeg'),(82,16,'e918bb8fd56f559b6c6f692d707e87bf.jpeg'),(83,16,'8cdb210fb8ca5610bfbf761fcb1ba7d3.jpeg'),(85,16,'3fa37bd73568d09bf501ad2e9f5c1c13.jpeg'),(86,16,'82cbf468fa118f225dd58eef2e6f9981.jpeg'),(87,16,'00e41409abd71a4dd969797036f063bb.jpeg'),(88,17,'0643503ed640498b9b23123e451478e0.png'),(89,17,'548c157c86a3283c58e4a3fe90471de2.png'),(90,17,'c00c367c9004a25f9e86f39194c7f615.jpeg'),(91,17,'0d1d04187c9d3fd138a3af52dab6431c.png'),(92,17,'c8ce76e885bb1b77adee451579ee24bc.jpeg'),(93,18,'58c4d11dca75e7d9691476a822a7b5dc.jpeg'),(94,18,'617e0e7484e7f664621f4a9a9e5f06ad.jpeg'),(95,18,'e6b8d5d655c963ef984fb6f4932ac674.jpeg'),(96,18,'87fa3d1e4780892e158b4eff11fafa05.png'),(97,18,'693e1932555d7c50e9ae6dc9a12363a3.png'),(98,19,'cd27aac85d49fa137ebde14e0c0a1fe9.png'),(99,19,'fbd430a3342fba1634330a8eb9fc41c3.jpeg'),(100,19,'e3d6c024b1e4b7e52920fc4eb58cffb4.jpeg'),(101,19,'5eaea0a90db3ec388e248cefbd2c1e50.jpeg'),(103,19,'985b0b3ca794fe69405d967fc4d9ae06.png'),(104,20,'ea8ccd08ec24c00ca4b0cdbb460ed45a.jpeg'),(105,20,'43920515e2443b4440c47ba5f6f701c6.jpeg'),(106,20,'25a866f46e722abeeba7be52d74a0225.jpeg'),(107,20,'d587ed2d8d2147ce7f18809724ee6c1b.png'),(108,20,'210e46431da79f184ce4b9733206a92c.png'),(109,21,'47baffb1e40ba0429dbf451ecbbd3370.jpeg'),(110,21,'2220910561439d40775f6e07d7504e94.jpeg'),(111,21,'89e58788cefa036e9aeb208e2e99455d.jpeg'),(112,21,'599dcb13eb676f58c1392124b01c1155.png'),(113,21,'dc03e9c47f21227faa7d337bf7752e41.jpeg'),(114,22,'3dd23df193317b3b295db29f9effe8db.png'),(115,22,'6308ea4247eacd852a3ac7f2c84481d5.png'),(116,22,'d362807938057865f496cdc94138b144.jpeg'),(117,22,'afc7a8dee78c29cd9c2d1cd99ae04ee3.jpeg'),(118,22,'56d7fa3249bb0fb1d0fc1bb1a2f9b248.jpeg'),(119,23,'9fc1d30dba399c50cbcf31a7a90f416a.png'),(120,23,'21f7ef7053b7932cf63658873af64c0f.png'),(121,23,'1ebf7ddc7ec551d0f1aea32ee4070d4d.png'),(122,23,'79cc746755706da5f8f3b8fc01aaf2d5.png'),(123,23,'34cf89355aca83af977bc02f443c8831.png'),(124,24,'58ba22d6f4a4336ea0b1e75db1c5648b.jpeg'),(125,24,'5230b119bb235567369e004f479cb309.jpeg'),(126,24,'93e92078e9f67a6b093d8ab177b45a36.png'),(127,24,'554a9f92e451238bafe320887a58fb0a.jpeg'),(128,24,'f33c741d67de08a1b2ffc3c1896693a0.jpeg'),(129,25,'52b0d2be0643bd41ee62012cbf04e7a7.jpeg'),(130,25,'d65e3c08cd37ebc3e91bf8d4f738765d.jpeg'),(131,25,'a28dedd746df61cc660b243b37b0b359.jpeg'),(132,25,'c7351432214af1d2dc4db675f403dd4f.png'),(133,25,'7ca9042ec3bc6c317927204471f9fb8d.jpeg');

#
# Structure for table "messages"
#

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "messages"
#

INSERT INTO `messages` VALUES (1,'Ali Kemal','phpcokguzel@mynet.com','İlk Fikir','Siteniz çok güzel.',' Telefonla görüşüldü','Okundu'),(2,'Ayşe Can','ayscan@mynet.com','Site','Emeğinize Sağlık',NULL,'New'),(3,'Hasan Ali','hasanali@mynet.com','SiteHk','Bu sitede aradığım tüm notları buluyorum.',NULL,'New'),(4,'Defne','defne19@gmail.com','Kötü','Site biraz daha iyi olabilirdi.',' İletişime geçildi.','Okundu'),(5,'Beyza Kaptan','beyza@mynet.com','Site','Siteniz harika olmuş',NULL,NULL),(6,'Cengiz','cengiz@mynet.com','Proje','Projeniz güzel',NULL,NULL),(7,'AHSGDOIUASDH','ASKJDHASIOUD@mynet.com','asjdhaskhdl','Siteniz berbat',NULL,NULL);

#
# Structure for table "migration_versions"
#

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20190119153635'),('20190120133814'),('20190120134108'),('20190120134627');

#
# Structure for table "order_detail"
#

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,4,2,2,10,4,40,'Php Notları','Ordered'),(2,4,2,3,3,3,9,'Makina Müh. Notları','Ordered'),(3,4,2,3,3,2,6,'Makina Müh. Notları','Ordered'),(4,4,2,1,5,2,10,'C Programlama Dili','Ordered'),(5,4,2,3,3,2,6,'Makina Müh. Notları','Ordered'),(6,4,2,1,5,2,10,'C Programlama Dili','Ordered'),(7,5,2,6,10,6,120,'YDS Fransızca Notları','Ordered'),(8,5,2,3,3,3,45,'Makina Müh. Notları','Ordered'),(9,6,19,10,10,6,90,'Edebiyat Notları','Ordered'),(10,6,19,9,20,1,40,'Anatomi Notları','Ordered'),(11,7,19,1,5,3,30,'C Programlama Dili','Ordered'),(12,7,19,10,10,4,60,'Edebiyat Notları','Ordered'),(13,7,19,24,13,1,21,'Hemşirelik Notları','Ordered'),(14,8,19,9,20,4,160,'Anatomi Notları','Ordered'),(15,9,19,13,9,3,42,'Tıbbi Terminoloji Notları','Ordered'),(16,10,19,2,10,3,60,'Php Notları','Ordered'),(17,11,19,3,3,3,45,'Makina Müh. Notları','Ordered'),(18,12,19,25,60,3,270,'Mühendislik Notları','Ordered');

#
# Structure for table "orders"
#

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,2,225,'Ali CANxx','Fatih Mh. Ali Cepken Sk. No:20 D:15','MANİSA','5175842354','xxxxxxx','Completed','Aras Kargo',NULL,'2019-01-21 00:17:13'),(2,2,225,'Ali CANxx','Fatih Mh. Ali Cepken Sk. No:20 D:15','MANİSA','5175842354','Kargo Takip Numarası:25415422115756','InShipping','Kargoda',NULL,'2019-01-21 00:10:40'),(3,2,225,'Ali CANxx','Fatih Mh. Ali Cepken Sk. No:20 D:15','MANİSA','5175842354','Denememm','Canceled','Ürün Stokta Kalmadı',NULL,'2019-01-21 00:16:42'),(4,2,225,'Ali CANxx','Fatih Mh. Ali Cepken Sk. No:20 D:15','MANİSA','5175842354','','Accepted','2 Gün sonra onayla',NULL,'2019-01-20 23:31:02'),(5,2,165,'Beyza KAPTANN','Pınarbaşı Mh','Konya','5175842354',NULL,'New',NULL,NULL,NULL),(6,19,130,'Cengiz Topel','Tepebaşı','Hatay','654789321','','Completed','İşlem tamamlandı',NULL,'2019-01-22 14:50:39'),(7,19,111,'Cengiz Topel','Tepebaşı','Hatay','654789321','','Accepted','Onaylandı',NULL,'2019-01-23 11:19:06'),(8,19,160,'Ali Musa','Tepebaşı','Hatay','654789321','','InShipping','Aras Kargo Güvencesiye',NULL,'2019-01-23 11:21:13'),(9,19,42,'Cengiz Topel','Tepebaşı','Hatay','654789321','','Canceled','Ürün Stokta Kalmadı',NULL,'2019-01-23 11:23:05'),(10,19,60,'Cengiz Topel','Tepebaşı','Hatay','654789321',NULL,'New',NULL,NULL,NULL),(11,19,45,'Cengiz Topel','Tepebaşı','Hatay','654789321','','Completed','Tamamlandı',NULL,'2019-01-23 11:26:15'),(12,19,270,'Cengiz Topel','Tepebaşı','Hatay','654789321','','Completed','',NULL,'2019-01-23 12:37:12');

#
# Structure for table "product"
#

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sprice` double NOT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marka_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'C Programlama Dili','C Dili','bbbb',NULL,NULL,NULL,5,5,10,NULL,'<p>C Dili için Temel bilgiler içermekle birlikte bu kitap;</p><ol><li><i>Temel Programlama Mantığı</i></li><li><i>Programlama Dillerini anlama</i></li></ol><p>gibi <strong>bilgiler katacaktır.</strong></p>','f8b0dbdd5a00e357301a32426b0d9457.png',NULL,7,NULL,'True'),(2,'Php Notları','Php','Php',NULL,NULL,NULL,200,10,20,NULL,'<p>asdasdasdasd<strong>asdadasdas</strong></p><p>&nbsp;</p><ul><li>wqeqw</li><li>qewqe</li></ul><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure>','c49ac51f8365d5fe268e778f06578499.jpeg',NULL,7,NULL,'True'),(3,'Makina Müh. Notları','Makina','Makina Notları içerir.',NULL,NULL,NULL,10,3,15,NULL,'<p>&nbsp;</p>','89f2d44effa53551383d57687cb46596.jpeg',NULL,10,NULL,'True'),(4,'İnşaat Müh.Notları','İnş Müh','İnşaat Mühendisliği notlarını içerir.',NULL,NULL,NULL,NULL,5,10,NULL,'<p>&nbsp;</p>','9fd52b0850046a472834caa3b4b7a2e6.jpeg',NULL,11,NULL,'True'),(6,'YDS Fransızca Notları','YDS','YDS notları',NULL,NULL,NULL,NULL,10,20,NULL,'<p>&nbsp;</p>','04717fd0b9e55549f84436ff0ab096a7.jpeg',NULL,17,NULL,'True'),(7,'Din Kültürü Notları','Din','Din Kültürü notları içerir.',NULL,NULL,NULL,NULL,5,10,NULL,'<p>&nbsp;</p>','f9a663116e784ba5fc4fa5d54fa766a2.jpeg',NULL,18,NULL,'True'),(8,'Muhasebe Notları','Muhasebe','Muhasebe',NULL,NULL,NULL,NULL,20,25,NULL,'<p>&nbsp;</p>','a2c052bc7ff0c4e6165417f93f05586e.png',NULL,15,NULL,'False'),(9,'Anatomi Notları','Anatomi','Anatomi notları içerir.',NULL,NULL,NULL,15,20,40,NULL,'<p>&nbsp;</p>','a7ec6de008b762c8fb6d6e2e0616b21e.jpeg',NULL,20,NULL,'True'),(10,'Edebiyat Notları','Edebiyat','Divan Edebiyatı ve Halk Edebiyatı notları içerir.',NULL,NULL,NULL,20,10,15,NULL,'<p>&nbsp;</p>','24023b59adf65eed1ae3614ce18b6b41.jpeg',NULL,13,NULL,'True'),(12,'Dinimiz İslam Notları','Dinimiz islam notları içerir','Dinimiz islam notları içerir',NULL,NULL,NULL,100,5,9,NULL,'<ol><li><strong>İslâm dîni, Allah\'ın, son peygamberi Hz. Muhammed (asm) vasıtasıyla bütün insanlara gönderdiği en son ve </strong><i><strong>en mükemmel dindir.</strong> İslâm\'ın gelmesiyle, diğer dinlerin hükmü sona ermiştir. </i>İslâm dînini kabul eden kimseye Müslüman denir.</li></ol>','711d1f1ba88f49189bb60105c41e3153.jpeg',NULL,22,NULL,'True'),(13,'Tıbbi Terminoloji Notları','Tıbbi Terminoloji notlarını içerir.','Tıbbi Terminoloji notlarını içerir',NULL,NULL,NULL,1000,9,14,NULL,'<p><strong>Tıbbi terminoloji</strong> vücudu, vücudun parçalarını, fonksiyonlarını, hastalıkları, teşhis ve tedavi işlemlerini, tıbbi araç ve ölçümleri, cerrahi, klinik ve patolojik durumları ve<i><strong> insan sağlığını ilgilendiren daha birçok durumu tanımlamada kullanılır.</strong></i></p>','3cbfb2fd29d193a7ea66e10cbe47bf69.jpeg',NULL,19,NULL,'True'),(14,'İş Sağlığı Notları','İş Sağlığı Notları , İş Sağlığı','İş Sağlığı Notlarını içerir ve mevcuttur',NULL,NULL,NULL,1000,8,13,NULL,'<ul><li><strong>İş</strong> yerindeki fiziki çevre şartları,<i><strong> çalışma ortamı gibi sebeplerden ötürü işçilerin karşılaşabilecekleri sağlık sorunları ve mesleki sorunların en aza indirilmesi</strong></i> veya ortadan kaldırılması için analizler ve çalışmalar yapılmasına <strong>İş Sağlığı</strong> ve Güvenliği denir.</li></ul><figure class=\"table\"><table><tbody><tr><td>İş Sağlığı&nbsp;</td><td>ve Güvenliği</td></tr></tbody></table></figure>','ddf60ac3972018f8e82d116b30c42839.png',NULL,24,NULL,'True'),(15,'İktisadi İdari Birimler','İibf Notları','İibf Notları içerir',NULL,NULL,NULL,500,7,12,NULL,'<p>içerisinde <strong>iktisadi ve idari bilimler alanında yer alan</strong> <a href=\"https://eksisozluk.com/?q=kamu+y%c3%b6netimi\"><i>kamu yönetimi</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=iktisat\"><i>iktisat</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=maliye\"><i>maliye</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=i%c5%9fletme\"><i>işletme</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=%c3%a7al%c4%b1%c5%9fma+ekonomisi+ve+end%c3%bcstri+ili%c5%9fkileri\"><i>çalışma ekonomisi ve endüstri ilişkileri</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=ekonometri\"><i>ekonometri</i></a><i>,</i><a href=\"https://eksisozluk.com/?q=uluslararas%c4%b1+ili%c5%9fkiler\"><i>uluslararası ilişkiler &nbsp;</i></a></p><ol><li>gibi ana bilim dallarını barındıran fakültedir</li><li>içerisinde iktisadi ve idari bilimler alanında yer alan <a href=\"https://eksisozluk.com/?q=kamu+y%c3%b6netimi\">kamu yönetimi</a>,<a href=\"https://eksisozluk.com/?q=iktisat\">iktisat</a>,<a href=\"https://eksisozluk.com/?q=maliye\">maliye</a>,<a href=\"https://eksisozluk.com/?q=i%c5%9fletme\">işletme</a>,<a href=\"https://eksisozluk.com/?q=%c3%a7al%c4%b1%c5%9fma+ekonomisi+ve+end%c3%bcstri+ili%c5%9fkileri\">çalışma ekonomisi ve endüstri ilişkileri</a>,<a href=\"https://eksisozluk.com/?q=ekonometri\">ekonometri</a>,<a href=\"https://eksisozluk.com/?q=uluslararas%c4%b1+ili%c5%9fkiler\">uluslararası ilişkiler</a>gibi ana bilim dallarını barındıran fakültedir.hemen hemen bütün üniversitelerde vardır.</li></ol>','7ea813be72c17f047a4c142708306e78.png',NULL,2,NULL,'True'),(16,'İşletme Notları','İşletme Notları içerir.','İşletme Notları içerir.',NULL,NULL,NULL,500,10,18,NULL,'<p>İşletme ile ilgili tüm notlar ve dahası&nbsp;</p><ol><li><i><strong>İşletme</strong></i></li><li><i><strong>Ekonomi</strong></i></li><li><i><strong>Muhasebe</strong></i></li><li><i><strong>Kredi Yönetimi</strong></i></li></ol><p>&nbsp;</p>','4da035f560916bfe82a1416ff4475b38.jpeg',NULL,14,NULL,'True'),(17,'İktisat Notları','İktisat Notları içerir','İktisat Notları içerir',NULL,NULL,NULL,250,8,16,NULL,'<p><a href=\"https://eksisozluk.com/?q=birey\"><strong>birey</strong></a><strong>lerin ve toplumların</strong></p><ol><li>&nbsp;sınırlı kaynaklarını,</li><li>&nbsp;sınırsız ihtiyaçlarını karşılamak&nbsp;</li></ol><p>için ne biçimde kullandıklarını inceleyen<i> bilim ağacıdır.</i><strong> </strong><a href=\"https://eksisozluk.com/?q=mal\"><strong>mal</strong></a><strong> ve üretimlerin faaliyetlerini irdeler, işi gücü </strong><a href=\"https://eksisozluk.com/?q=para\"><strong>para</strong></a><strong>dır daha da kısaca.</strong></p>','5736ae1f22cdcf6b5e67a0ca4d26ca62.png',NULL,15,NULL,'True'),(19,'Ales Notları','Ales Notları  ve daha devamı','Ales Notları  ile ilgili herşeyi içerir.',NULL,NULL,NULL,200,16,32,NULL,'<p>Ülkemizde lisansüstü eğitime girişte,&nbsp;</p><ol><li><i>yükseköğretim kurumlarında öğretim görevlisi,&nbsp;</i></li><li><i>okutman,&nbsp;</i></li><li><i>araştırma görevlisi,&nbsp;</i></li><li><i>uzman, çevirici ve eğitim öğretim planlamacısı&nbsp;</i></li></ol><p>kadrolarına yapılacak atamalarda, yurt dışına lisansüstü eğitim için gönderilecek adayların seçiminde ilgili kurumların kullanacakları puanları veren ve tam adı Akademik Personel ve Lisansüstü Eğitimi Giriş sınavı olan <a href=\"http://www.hurriyet.com.tr/haberleri/ales\">ALES</a>,&nbsp; <strong>ilkbahar döneminde 1 ve sonbahar döneminde 2 olmak üzere yıl içerisinden toplamda 3 kez yapılır.</strong></p>','4c559adad0a42ec029d47ab2dcfcea30.jpeg',NULL,16,NULL,'True'),(20,'Üniversite Hazırlık','LYS MATEMATİK','LYS Matematik bilgileri ve notları içerir.',NULL,NULL,NULL,500,2,4,NULL,'<p>Lys Matematik bilgileri ve soruları içerir.</p><ol><li><strong>Matematik</strong></li><li><strong>Geometr</strong>i</li></ol>','beb2f35b459a1a19251f1a549dc18a06.png',NULL,3,NULL,'True'),(21,'İlahiyat Notları','İlahiyat Notları','İlahiyat Notları içerir.',NULL,NULL,NULL,250,8,17,NULL,'<p><strong>İslam dinini incelemek ve öğrenmek için eğitim ve araştırma yapılır. Mezunlar önemli bir kısmı İmam Hatip Liselerinde meslek dersleri yapabilecekleri gibi diğer bir kısmında, vaiz veya müftü olarak çalışabilmektedirler.</strong></p><ol><li><strong>Programın Amacı:</strong>&nbsp;İlahiyat programının amacı<i><strong> başta İslam dini olmak üzere, çeşitli dinleri bilimsel yöntemlerle inceleyerek</strong></i> bilimsel tutumu benimsemiş ve geniş görüşlü aydın din adamı yetiştirmek için eğitim ve bu alanda araştırma yapmaktır.</li></ol><ul><li><strong>Programda Okutulan Belli Başlı Dersler:</strong>&nbsp;İlahiyat fakültesinde Arapça Kur’an-ı Kerim öğretiminden oluşan bir yıllık hazırlık sınıfı vardır. Hazırlık sınıfından sonraki yıllarda ise Kur’an-ı Kerim’in yorumu (Tefsir), Hz. Peygamber’in sözlerinin yorumu (Hadis), İslam hukuku, din felsefesi, dinler tarihi, din sosyolojisi ve din psikolojisi gibi lisans dersleri verilmektedir.</li></ul>','902dd432c619f8a87d410b3e987a6357.jpeg',NULL,4,NULL,'True'),(22,'Tıp Notları Mevcuttur','Tıp Fakültesi Ders Notları','Tıp Fakültesi Ders Notları',NULL,NULL,NULL,500,15,40,NULL,'<p>En yaygın <i>biçimde doktor yetiştirmek</i> için var olan tıp fakülteleri insan sağlığı ile ilgili her alanda çalışma yapmak için kurulmuş fakültelerdir.&nbsp;</p><ol><li><strong>Tıp bölümü insanların hastalıklarını gidermek, bu hastalıklara kalıcı çözümler üretmek, kabaca insanların sağlıklı bir biçimde hayatta kalmalarını sağlamak amacıyla doktor yetiştirmek ve bu alanla</strong>rda incelemeler, araştırmalar yapmak amacıyla faaliyet gösteren programlardır.</li></ol>','83ab354682cc0195c29ab594804e5d5e.jpeg',NULL,5,NULL,'True'),(23,'Fizyoloji Notları','Fizyoloji Notları içerir','Fizyoloji Notları  ve önemli kısımlar',NULL,NULL,NULL,200,9,19,NULL,'<p><i><strong>Yunanca doğa anlamına gelen “physis” kelimesi ile, bilim anlamına gelen “logos” kelimesinin birleşmesi ile ortaya çıkmış olan fizyolojiterimi</strong></i>, moleküler düzeyden</p><ol><li><i><strong>&nbsp;doku,</strong></i></li><li><i><strong>&nbsp;organ,&nbsp;</strong></i></li><li><i><strong>sistem ve organizma düzeylerine kadar fonksiyonu ve bu fonksiyonun altında yatan mekanizmaları araştırır.</strong></i></li></ol><ul><li>tıp fakültesinde 2. senenin en kazık dersidir. ilk başta anatomi\'nin tekinsiz sularında yüzen öğrenciler fizyoloji\'nin potansiyel düşman olduğunu göremezler. ama zamanla fizyoloji gerçek şeytani yüzünü göstermeye başladıkça anatomi\'nin ne kadar kurtarıcı bir ders olduğu anlaşılır.&nbsp;</li></ul>','5d6626eb1c98221f52eb65c57915145a.jpeg',NULL,23,NULL,'True'),(24,'Hemşirelik Notları','Hemşirelik le ilgili notlar','4 senelik fakülte ile ilgili tüm notlar burada.',NULL,NULL,NULL,250,13,21,NULL,'<p>tıp fakültesinde 2. senenin en kazık dersidir.<strong> ilk başta anatomi\'nin tekinsiz sularında yüzen öğrenciler fizyoloji\'nin potansiyel düşman olduğunu göremezler</strong>. ama zamanla fizyoloji gerçek şeytani yüzünü göstermeye başladıkça anatomi\'nin ne kadar kurtarıcı bir ders olduğu anlaşılır.&nbsp;</p>','c347ccb5d06c9af8f96539ca15acae13.png',NULL,6,NULL,'True'),(25,'Mühendislik Notları','Mühendislik , Bilgisayar, İnşaat, Makine, Endüstri','5 Senelik Mühendislik Fakültesi notlarını içerir',NULL,NULL,NULL,1000,60,90,NULL,'<p><strong>Türk Dil Kurumu’na göre&nbsp;mühendis,&nbsp;</strong>İnsanların her türlü ihtiyacını karşılamaya dayalı çeşitli yapılar<i>&nbsp;yol,&nbsp;köprü,&nbsp;bina,&nbsp;peyzaj,&nbsp;çevre&nbsp;gibi şehircilik ve imar dışı alanların ilkeleri,&nbsp;&nbsp; bayındırlık;&nbsp;tarım,&nbsp;beslenme&nbsp;gibi&nbsp;gıda;&nbsp;fizik,&nbsp;kimya,&nbsp;biyoloji,&nbsp;elektrik,&nbsp;elektronik&nbsp;gibi&nbsp;fen;&nbsp;uçak,&nbsp;gemi,&nbsp;otomobil,&nbsp;motor,&nbsp;iş makineleri</i>&nbsp;gibi&nbsp;teknik&nbsp;ve&nbsp;sosyal&nbsp;alanlarda uzmanlaşmış, belli bir eğitim görmüş kimsedir.</p><h4><strong>Modern anlamda ise;</strong></h4><h4>&nbsp;</h4><ol><li>Bilim insanlarının ürettiği teorik bilgiyi tekniker ve teknisyenlerin uygulayabileceği pratik bilgiye dönüştüren kişidir.&nbsp;Arthur Mellen Wellington&nbsp;(demir yolları inşaat mühendisi)’a göre,&nbsp;</li></ol><ul><li>“Beceriksiz birinin iki dolara kötü yaptığı bir şeyi bir dolara iyi yapma sanatıdır.</li></ul>','04be15529e2d727b3876137dfaed4e55.png',NULL,21,NULL,'True');

#
# Structure for table "setting"
#

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (2,'Üniversiteliler için 2.El Not','Saat 15.00 a kadar olan siparişler aynı gün kargo , Kargo Alıcı Ödemelidir.','Ders Notları, Vize Notları, Final Notları','Her şey Hakan\'da','100.Yıl Mh. 1010.Cadde','5555555555',NULL,NULL,'smtp.gmail.com','deneme@gmail.com','1234',587,'<h4><i>Modern hayatı şekillendiren yeni keşiflerin öncülüğünü üstlenerek daha iyi bir yaşamın standartlarını oluşturmak için çalışan Doğuş Grubu, 1951 yılında kuruldu.</i></h4><blockquote><p>Müşterilerinin yanı sıra çalışanları, iş ortakları ve hatta rakipleri için bir tutkuya dönüşecek, sınıfının en iyisi yaşam tarzı markalarını bünyesinde barındıran Doğuş, çalıştığı alanlarda küresel bir oyuncu olma hedefiyle çalışmalarına devam ediyor.</p></blockquote><p><strong>Otomotiv, inşaat, medya, turizm ve hizmetler, gayrimenkul, enerji ve yeme-içme olmak üzere yedi sektörde faaliyet gösteren Doğuş Grubu ayrıca, mevcut hizmet verdiği sektörlerin yanı sıra teknoloji, spor ve eğlence alanındaki yeni yatırımlarıyla da büyümesini sürdürüyor. Grup 300’ün üzerindeki şirketi ve 35 bini aşkın çalışanıyla müşterilerine üstün teknoloji, yüksek marka kalitesi ve dinamik bir insan kaynağı ile hizmet veriyor.</strong></p><p><i>Doğuş Grubu’nun ulaştığı başarının arkasında, müşteri odaklı ve verimliliği merkez alan bir yönetim yaklaşımı yer alıyor. Bu yaklaşımın bir sonucu olarak, Grup dünya ölçeğinde saygın markalarla yaptığı iş birlikleriyle, Türkiye’yi bütün dünyada temsil ediyor. Doğuş Grubu’nun, otomotivde Volkswagen AG ve TÜVSÜD, medyada Condé Nast (Vogue, GQ, Traveller), turizmde Hyatt International Ltd, marinacılıkta Latsis Grubu, Kiriacoulis Grubu ve Adriatic Croatia International (ACI) Grubu’nun yanı sıra yeme-içme ve eğlence sektöründe de bünyesinde Coya, Roka, Zuma ve Oblix gibi markaları bulunduran uluslararası Azumi Grubu ve e-ticaret alanında Güney Koreli SK Group gibi büyük küresel oyuncularla iş birlikleri ve ortaklıkları bulunuyor.</i></p><ul><li>Doğuş Grubu’nun yönetim yaklaşımı, bütün toplumun yararlandığı ve yararlanacağı kurumsal yurttaşlık bilincini de yansıtıyor. Doğuş Grubu, sosyal sorumluluk çalışmalarını yürütürken insanların hayatlarında bir iz bırakmayı ve günlük yaşamı daha iyi bir hale getirmeyi amaçlıyor. Grubun sosyal sorumluluk projeleri toplumun sürekli ileriye giden ve gelişen bir gelecek yaratmasına katkıda bulunmak hedefiyle yönetiliyor.</li></ul>','<figure class=\"table\"><table><tbody><tr><td>GSM</td><td>:</td><td>+90 584 120 1715</td></tr><tr><td>E-Posta</td><td>:</td><td>iletisim@ogrenci.com</td></tr><tr><td>Konum</td><td>:</td><td>100.Yıl Mh. 1010.Cadde</td></tr><tr><td>Ofis Adresi</td><td>:</td><td>Hamdi Kan Apt. KARABÜK</td></tr></tbody></table></figure><p>Yukarıda tüm iletişim adreslerimizi bulabilirsiniz.</p><p>&nbsp;</p><p>&nbsp;</p>','<p>referanslar:</p><p><a href=\"www.google.com.tr\">www.google.com.tr</a></p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=XNyltOzO1rw\"></oembed></figure><p>Google Türkiye</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>',NULL),(5,'Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Deneme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

#
# Structure for table "shopcart"
#

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#

INSERT INTO `shopcart` VALUES (17,2,4,2),(18,2,11,3),(19,2,9,2),(20,2,6,1);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isim` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `durumu` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'hakan@mynet.com','ROLE_ADMIN','$2y$12$PLpK8TedsV7k5gREYpM6Q.xMMGmlZ2eHm8ZK8BHrTa8N4ExBJe43q','Hakan OLCER','True','100.Yıl Mh. 1010.Cd No:18','KARABÜK','5376558412'),(2,'beyza@mynet.com','ROLE_USER','$2y$10$CmSQnatsyrM25/7wOQUpiO9sq3j1R7Lql6deDFREVZSW8t6fOHA9y','Beyza KAPTANN','True','Ali Mh. Ali Cepken Sk. No:20 D:15','DENİZLİ','05425552197'),(3,'alican@mynet.com','ROLE_USER','$2y$12$PLpK8TedsV7k5gREYpM6Q.xMMGmlZ2eHm8ZK8BHrTa8N4ExBJe43q','Ali CAN','True','50.Yıl Mh. Ayşe Cad. No:15','DENİZLİ','5412522124'),(4,'kahtali@mynwet.com','ROLE_USER','$2y$10$ofrXKYbytM.5QujvpJRriuQlwQHENXzMjg1wjuQuKnAJMb/iZ3P2i','Kahtalı Miçe','True',NULL,NULL,NULL),(5,'hakan1@mynesat.com','ROLE_USER','$2y$10$iE56OxlHB/P2ErzFeLHxr.H1mK55SQKlLD0CO7dIBHgE38IEnGvlq','asd','True',NULL,NULL,NULL),(6,'ali@mynexxt.com','ROLE_USER','$2y$10$7QASJK38XFuvcyAKk8NDDu2fwr8YDPltHwCOaZkgpwol7LDA.riNq','asda','True',NULL,NULL,NULL),(7,'kahtali@yahoo.com',NULL,'$2y$10$nvhhYU4IaYV6AzUE8TEFbeIpOuj5DYYfEh9/XbDHq6Wd3Kp1bNXi.','Kahtalı Miçe',NULL,NULL,NULL,NULL),(11,'kahtali@yahoo.com',NULL,'$2y$10$bA5Eoc6R8NatX0868Lt0W.00HITvTTlVz3B9HyNjyDunKlhmP2FkO','Kahtalı Miçe',NULL,NULL,NULL,NULL),(12,'kahtali@yahoo.com',NULL,'$2y$10$BadeLm6CHWa5BVht7QRhVOcQP.nI4uXmof5RSjwxAGPygGwmUV7d2','Kahtalı Miçe',NULL,NULL,NULL,NULL),(13,'peterpan@mynet.com','ROLE_USER','$2y$10$XTFjApvvn5tS6C.bBfXm1eBG4qtWczL.Azm6ppJabAgLYIK8WPPkO','Peter Dinklage',NULL,NULL,NULL,NULL),(14,'yagmur@gmail.com','ROLE_USER','$2y$10$6mkmbuoFBBX0MRoJhahnJut1XsWe2sqmZ8G0Fno7Nol5PXWHDrC/i','Yağmur Deli',NULL,NULL,NULL,NULL),(15,'amusa@mynet.com','ROLE_USER','$2y$10$2SBKR1QWS1o3hMzFhwmNQeSy919v0AvalMJ38mUsA2q1Sn.bGvpXK','Ali Musa',NULL,'Yavuz Sultan Selim Caddesi','Kastamonu','64645464564'),(16,'cccsoylu@mynet.com','ROLE_USER','$2y$10$ZEKHuHlYx3a7HlEfwbsbTOjG60VRVz69vcPMg8mA4WyjKVByvrM5K','Ceren Soylu',NULL,'İlginç Cadde Enteresan Sokak Güzel Apartman','Eskişehir','19684949496'),(17,'fyza@youtube.com','ROLE_USER','$2y$10$mmHNA1VhMez4CidFjjADu.ZJKofHXHKFGYe7OTwBubND7OsrfNYvm','Feyza Akbaş',NULL,'Fuatpaşa Mahallesi','Bursa','5494961311'),(18,'cccsoylux@mynet.com','ROLE_USER','$2y$10$bkyKKLU6Fl72FEdYtY/KteduDFUBTvhVszcjfMzMbcCNFH68WG6Na','ccc',NULL,'adres sokak','Antalya','515646161'),(19,'cengiz@mynet.com','ROLE_USER','$2y$10$x4Wn2Klo8ZCxSEQYFzRorukMFjxhRgA97L0yV5ZbfYu1HeW8widqy','Cengiz Topel',NULL,'Tepebaşı','Hatay','654789321');

#
# Structure for table "users"
#

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipi` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durumu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdd_at` datetime NOT NULL,
  `updatedd_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'Ferdi Kadıoğlu','ferdikadi@mynet.com','123','admin','True','2018-12-03 18:58:38','2018-12-03 19:00:37'),(2,'Elif Elmas','elfelms@gmail.com','456','uye','True','2018-12-03 19:00:28','2018-12-03 19:02:00'),(3,'Hasan Ali','hasansio@hotmail.com','789','uye','False','2018-12-03 19:01:46','2018-12-03 19:01:57'),(4,'Hakan ÇINAR','hcinar@mynet.com','258','Kargocu','True','2018-12-07 17:21:45','0000-00-00 00:00:00'),(5,'Berke ÖZER','b.ozer@gmail.com','147','Üye','False','2018-12-13 18:45:58','2018-12-13 18:46:24');
