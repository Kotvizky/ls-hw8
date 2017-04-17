-- MySQL dump 10.13  Distrib 5.5.53, for Win64 (AMD64)
--
-- Host: localhost    Database: hw7
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,0,'Autem quia non ut consequatur expedita.','Iure vitae et est et vel. Quidem quas occaecati suscipit dolorem non. Libero facere et eaque facere qui. Sunt iste vel sed harum recusandae fugiat aliquid quibusdam.'),(2,0,'Delectus saepe deleniti corrupti molestiae.','Voluptas quia repellendus et modi fugiat. Similique porro esse soluta qui eos in omnis vitae.'),(3,0,'Sed et repellendus neque eveniet occaecati nulla.','Nam impedit alias ea provident eos cupiditate. Consequatur omnis dolor repudiandae laboriosam. Soluta voluptatum et sit modi est iure. Occaecati accusamus eveniet omnis repellendus dolore excepturi.'),(4,0,'Iusto et sunt cum est. Dignissimos ut sed quas.','Aut optio sunt voluptatum quis similique. Sint ea itaque et omnis voluptas beatae provident. Amet in voluptatem in ex aperiam amet distinctio. Voluptas fugiat nobis dignissimos voluptatem.'),(5,0,'Accusantium dolores ea ut numquam maxime ipsa.','Consectetur animi consequatur totam. Aut asperiores eaque assumenda pariatur consequatur. Nihil enim rerum voluptatem iste doloremque. Et enim cumque exercitationem distinctio commodi.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `amount` decimal(10,3) NOT NULL DEFAULT '0.000',
  `price` decimal(7,2) unsigned NOT NULL,
  `published` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'Sequi libero dolor nam pariatur corrupti.','Dolor suscipit voluptates reprehenderit qui est non nam. Voluptatem et aspernatur voluptatibus molestiae. Minima eum velit numquam nesciunt cumque repellat sed.',4.000,41.09,0,'1970-05-17 23:15:24',NULL),(2,2,'Natus nam unde est.','Aut nisi nulla magni nulla reiciendis sunt nostrum. Odit unde id rem enim dolores. Delectus ipsam consequuntur dolorem dolore expedita dicta quasi.',1.000,96.03,0,'1974-08-21 17:27:37',NULL),(3,3,'Ut doloremque consequatur nihil consequatur aut.','Quo quia sed qui quam. Animi praesentium aperiam maiores. Blanditiis enim unde sit reprehenderit itaque dicta. Tempora sed in et eum quisquam.',4.000,44.56,0,'2010-03-31 14:20:57',NULL),(4,4,'Ut magnam placeat ratione.','Adipisci aliquid dolores eos qui quia esse. Aut dolorum ipsam aspernatur occaecati alias necessitatibus harum. Aut et autem distinctio voluptatibus. Deleniti minus amet dolor et.',1.000,82.77,0,'2002-12-05 17:56:09',NULL),(5,5,'Totam dolores quae et.','Ab nemo consequatur sit sed. Officiis laborum voluptatum laboriosam ex omnis asperiores.',6.000,7.61,0,'1997-10-30 21:15:46',NULL),(6,3,'Iusto laboriosam nisi sunt.','Quo occaecati tempora dolores est deserunt similique est. Illo aut velit beatae nihil impedit. Eos aut sit veniam debitis dignissimos fuga aperiam.',5.000,83.24,0,'2016-09-07 14:58:57',NULL),(7,3,'Doloribus qui tenetur minus est.','Et error inventore et qui ea et aut. Iste laborum doloremque velit dolor facere commodi laudantium porro. Consequatur voluptatibus odio et dignissimos.',8.000,26.16,0,'1972-12-20 11:43:50',NULL),(8,3,'A voluptatem amet iste veniam.','Omnis eum esse facere. Libero occaecati temporibus repellat aspernatur consequatur ipsum. Dolor non iste at quo aliquid. Temporibus suscipit ipsum consequuntur atque aut vero exercitationem.',3.000,69.59,0,'2004-04-02 13:37:58',NULL),(9,3,'Laboriosam dicta ea ut dolorum.','Id qui est ut autem. Assumenda quod voluptas aut enim nisi eum impedit.',1.000,47.61,0,'1993-09-08 07:46:08',NULL),(10,4,'Distinctio ipsa et eligendi quisquam.','Nisi et doloremque commodi. At culpa ab suscipit eum maxime. Quo velit qui numquam repellat voluptas expedita tempore. Laboriosam vel numquam qui et expedita et neque.',7.000,63.49,0,'2010-08-31 09:10:07',NULL),(11,5,'Aliquam velit at eos rerum et.','Expedita amet et impedit nulla sint id eveniet. Nam aut error mollitia magni dolores. Id adipisci a consequatur earum.',9.000,68.87,0,'2009-12-01 23:05:40',NULL),(12,4,'Ut dignissimos delectus sunt.','Doloremque enim laudantium non quos harum est. Reiciendis dignissimos hic vel natus consequuntur nobis.',2.000,37.08,0,'2001-05-20 11:48:18',NULL),(13,5,'Voluptas facere soluta enim itaque porro sed.','Sed dolores qui nisi deleniti dignissimos praesentium ut quis. Aliquid autem tenetur nostrum.',4.000,37.34,0,'2001-01-21 18:56:31',NULL),(14,3,'Nulla numquam labore delectus quisquam.','Aut odio eligendi placeat ea sint molestias. Occaecati atque beatae et placeat. Ducimus autem aspernatur deleniti ratione ut et blanditiis.',2.000,12.03,0,'2011-06-18 22:05:55',NULL),(15,2,'Est quaerat distinctio aut quaerat.','Dignissimos ratione et ab qui minus eum. Asperiores et occaecati dignissimos. Et consequatur delectus sunt inventore sed quasi. Quam ut voluptatem qui libero blanditiis aut.',5.000,48.93,0,'2006-10-21 05:26:56',NULL),(16,5,'Ipsum reprehenderit officiis fugiat.','Non ut voluptatem libero consequatur. Enim id natus voluptas id rem ea explicabo. Vitae soluta doloribus optio laudantium eligendi id et. Error nihil ut omnis soluta.',4.000,59.49,0,'1989-09-27 03:07:54',NULL),(17,4,'Commodi dolorem quas sit temporibus.','Nihil officia dolorum quaerat nemo. Dolor libero pariatur labore quia eos sint. Officiis qui perferendis quia atque consequatur.',9.000,51.05,0,'2004-08-25 02:45:17',NULL),(18,4,'Ab nemo assumenda sequi.','Ea dolore quos non dolorem asperiores. Sunt omnis porro occaecati optio voluptas id. Porro eum hic error blanditiis. Dolore dolorem veniam deleniti qui vero et est.',8.000,3.11,0,'1993-03-10 02:32:09',NULL),(19,4,'Quod inventore fuga delectus rem aut.','Nisi voluptas esse dolorem. Ut accusantium sed ut ut maiores laboriosam. Distinctio mollitia ab sunt dolor debitis quos doloremque perspiciatis. Odit est dolorum et est consequuntur quo.',6.000,40.59,0,'2007-03-12 08:27:23',NULL),(20,5,'Illo est et perspiciatis voluptates.','Qui minus nihil sint minus. Nemo repudiandae laborum minima et.',5.000,13.05,0,'1980-08-23 06:37:55',NULL),(21,4,'Distinctio aperiam veritatis debitis.','Adipisci tempora similique et laudantium. Sint aliquam quo aut ratione magnam impedit. Dignissimos labore hic est ducimus consequuntur.',6.000,63.98,0,'2015-03-24 01:56:40',NULL),(22,1,'Ipsam quo magnam ipsam eum esse magni molestias.','Ea non ipsam sint ullam dolor autem adipisci porro. Doloribus qui exercitationem sequi placeat. Officia molestiae dicta doloribus dicta eaque nemo. Libero eum harum consequatur totam laudantium.',1.000,11.98,0,'2015-06-06 19:45:19',NULL),(23,3,'Voluptatem molestiae blanditiis dolorem.','Odio molestiae et doloribus consequatur. Ullam error ut voluptates necessitatibus reprehenderit nesciunt unde perferendis.',9.000,19.10,0,'1996-10-31 23:43:24',NULL),(24,2,'Ut voluptate et sunt nesciunt.','Nesciunt qui nobis ut. Amet quae pariatur iusto sit autem. Quos impedit officiis suscipit sint.\nQuasi in nihil perferendis aut. Dolores minus impedit magnam ut non facere eum.',5.000,71.04,0,'2012-06-17 10:47:11',NULL),(25,4,'Quos est aut magnam est.','Error et quasi libero ut laboriosam. Laudantium incidunt rerum porro consequuntur fugit. Et nihil perspiciatis voluptas esse natus sint commodi autem.',1.000,51.39,0,'1971-10-31 16:44:48',NULL),(26,2,'Magni expedita temporibus fugit minus rerum.','Pariatur necessitatibus sunt soluta quia. Laborum qui qui aut iste. Veniam occaecati error neque architecto sint et.',5.000,13.89,0,'1995-08-02 06:20:00',NULL),(27,4,'Qui et id consequatur.','Sint consequatur et quos deleniti repellendus est inventore. Officia ex expedita et et velit. Quidem et rerum vitae architecto et sint nesciunt. Inventore qui quia beatae nulla animi.',5.000,58.72,0,'2010-04-19 01:24:23',NULL),(28,1,'Voluptatem dolorem assumenda consequuntur.','Sed tenetur pariatur consequatur quisquam dolor. Perspiciatis ut doloribus ex sunt. Odit recusandae ut nisi. Ut nobis modi cumque atque sed nobis. Ut amet ut vero dolorum.',6.000,10.69,0,'1974-03-06 10:40:04',NULL),(29,2,'Beatae et et et commodi fuga.','Neque vitae deleniti perspiciatis qui dolorem quas harum. Nisi dolorum sit repudiandae et quidem est voluptatibus.',6.000,87.52,0,'2009-09-03 05:59:02',NULL),(30,2,'Non a eos non dolor fuga.','Neque repellat est fugit quia. Culpa ea nesciunt impedit vero. Molestiae quam fuga animi voluptatem veniam reprehenderit autem. Aspernatur officia illum hic ad qui eaque.',3.000,83.09,0,'2012-04-04 23:23:03',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `description` text,
  `photo` varchar(500) DEFAULT '',
  `cookie` varchar(225) DEFAULT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (25,'semen1234','$2y$10$fedOE7oW2D3uYdTZ6vgEU.oGxlwp2/JqF/.K7r4iWNKauaK4LIe1C','Семен',255,'Это мое описание','25-25-den-rozhdenija-znakomoj-3.jpg','$2y$10$vYYPZpjplKa/swafHopLHuiB2J/KW.8DBAa/cQbePEJ3uLCyTZI/u',NULL,NULL,'2017-04-08 20:36:48'),(36,'tanya159','$2y$10$GbNrUvZE8FQMuHYGaWW4NOe/KIjp5p8I9VJ/eE975MPCUA504RA0O','Таня Рыжева',10,'Описание 1 ++++++++++ +++++++++ ++++++++++ +++++++++++-**','36-28-cat.jpg','$2y$10$hnr2NA0xVNYlx8AiN/NABuCj6HY9WIybr2w0bUvKcngr8UK.SnPK2',2130706434,'2017-04-08 15:04:41','2017-04-08 19:57:52'),(39,'test456','$2y$10$zh1kQD.sMm7bXfwVjcMhWu/txkBUApwdbTS1iWnCfPnW4oLmMMxWe','Новый Пользователь',15,'Описание 1 ++++++++++ +++++++++ ++++++++++ +++++++++++','39-3-fish.jpg',NULL,2130706689,'2017-04-08 20:50:04','2017-04-08 20:55:02'),(40,'newUser123','$2y$10$W7mj71pg4W0ULJtz8cPjx.W9abAVHBQG2j6EbWIlve94dyhqIkUEa','Новый Пользователь',75,'Еще один новый пользователь, но без картинки \r\n++++++++++++++\r\n+++++++++++','40-3-fish.jpg','$2y$10$ZKhF9a49Nl3kfCO3jnr2FOvyvHQkB7BP/CL5sfO2/C91YnNrX8nZa',2130706433,'2017-04-09 11:46:30','2017-04-10 13:27:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-17 13:28:00
