-- MariaDB dump 10.19  Distrib 10.9.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mohmedebeid_larajobs
-- ------------------------------------------------------
-- Server version	10.9.8-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `la_failed_jobs`
--

DROP TABLE IF EXISTS `la_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `la_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_failed_jobs`
--

LOCK TABLES `la_failed_jobs` WRITE;
/*!40000 ALTER TABLE `la_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `la_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_listings`
--

DROP TABLE IF EXISTS `la_listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_listings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `la_listings_user_id_foreign` (`user_id`),
  CONSTRAINT `la_listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `la_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_listings`
--

LOCK TABLES `la_listings` WRITE;
/*!40000 ALTER TABLE `la_listings` DISABLE KEYS */;
INSERT INTO `la_listings` VALUES
(1,1,'Qui tempora alias est neque facilis.','Laravel, PHP, JavaScript','DuBuque, Dooley and Barrows',NULL,'Maddisonburgh','adah26@becker.com','http://www.damore.com/','Recusandae sunt fugit non non. Tempore nulla et ab facere nam est. Omnis ullam repellendus officiis cumque. Sunt accusantium consequatur non. Qui eligendi ex ut.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(2,1,'Nisi dicta nisi voluptatem ipsa nesciunt.','Laravel, PHP, JavaScript','Kemmer, Crooks and Stark',NULL,'Roobville','amelia.botsford@hills.com','http://frami.com/eos-voluptatem-ullam-voluptas-doloribus-veritatis.html','Quisquam dolor tempora sed nihil et minima. Voluptate sit consequuntur est ea numquam maxime. Placeat id et eos odit at quidem. Officia ipsa tenetur reprehenderit delectus officiis qui. Veritatis dolore sed delectus aut rerum nihil. Quae dolores voluptatem minima et facilis laudantium veritatis. Est aut quaerat at perferendis esse eaque.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(3,1,'Dolorum explicabo fugiat quasi fuga atque enim.','Laravel, PHP, JavaScript','Lehner-Gaylord',NULL,'North Vinnieborough','oconnell.ryder@altenwerth.com','http://www.fadel.com/sed-nostrum-qui-incidunt-nam-tempora-pariatur-deleniti','Est fuga amet ut dolorum. Laudantium voluptas nobis ea dolorem ducimus adipisci laboriosam consequatur. Sit dolore accusamus doloremque. Ipsum numquam ipsam rem. Itaque fugiat alias sed ut. Eos quia cum tenetur ducimus sed.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(4,1,'Cumque rerum eum temporibus aut praesentium corporis officiis.','Laravel, PHP, JavaScript','Turner Inc',NULL,'Lake Americo','ohessel@harris.info','http://swift.info/est-dolorem-dolor-corrupti','Eaque saepe pariatur libero ipsam. Et eos commodi a sed tenetur perferendis impedit. Soluta voluptatum ut unde nihil aliquam. Consectetur sint aliquid atque nihil recusandae quaerat. Consequatur vitae quibusdam ut aut quam dignissimos magnam. Enim ut aut mollitia.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(5,1,'Sed dignissimos nesciunt deleniti iusto consectetur quod eligendi aperiam.','Laravel, PHP, JavaScript','Grimes, Auer and Wilderman',NULL,'Lake Zita','eleanora.kuhlman@wisoky.com','http://www.tremblay.biz/','Quia ullam voluptatem et nesciunt. Aliquid facilis dicta id eveniet consequuntur maiores. Autem quod eius et perspiciatis quisquam. Molestiae recusandae quos qui maxime est.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(6,1,'Aliquam harum autem corrupti non suscipit.','Laravel, PHP, JavaScript','Powlowski Group',NULL,'Huelsburgh','mireille.von@gorczany.com','http://marks.com/similique-iste-quidem-quas-qui-exercitationem-voluptatem-aliquam.html','Omnis dolor non omnis sed. Ullam quia illum est nemo id eius provident. Dolor aut cum laboriosam enim. Illum omnis qui laboriosam natus. Vel quam voluptas earum tempora aut suscipit. Excepturi accusantium quo illum suscipit ipsam dolor ea.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(7,1,'Aliquid dolores enim cupiditate.','Laravel, PHP, JavaScript','Eichmann-Hoeger',NULL,'South Reynold','douglas.werner@wuckert.com','http://www.ankunding.biz/','Architecto dolore velit velit vel similique. Totam sunt aperiam et nobis officia. Cumque qui aliquam sed perspiciatis nemo a sunt. Nulla perferendis rem rerum dolorum dicta facilis amet. At quas officia fugit quo. Omnis quas quis magni impedit voluptas quia. Omnis facere magni tempore blanditiis quis et pariatur.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(8,1,'Voluptatem rem eos quis quia ab ut.','Laravel, PHP, JavaScript','Franecki-Stamm',NULL,'Dickibury','lcrona@reilly.com','https://dooley.net/sit-dolor-rem-vitae-nihil.html','Beatae illo aut reiciendis veritatis eaque cumque perferendis sint. Voluptatibus vel omnis iure aut porro alias aspernatur accusantium. Velit facilis adipisci reiciendis qui sint et. Impedit quos alias voluptate praesentium aut. Error impedit id consequatur voluptas totam.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(9,1,'Autem nihil non deserunt enim qui quisquam.','Laravel, PHP, JavaScript','Raynor-Gislason',NULL,'Moenstad','nikko37@harris.org','http://blanda.com/','Pariatur similique fugit et dicta ad sint. Aut qui ipsa culpa aspernatur. Et aut atque harum quis deleniti ut. Dolorem odit nisi nesciunt. Qui aut doloribus rerum perspiciatis.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(10,1,'Quas esse cumque ratione impedit.','Laravel, PHP, JavaScript','Dooley Inc',NULL,'Jasonbury','mkovacek@yost.com','http://stehr.com/repellat-amet-nam-ducimus-consequuntur-et-quisquam-ut','Est non perferendis libero cum cupiditate itaque. Explicabo sapiente itaque veritatis nobis eius unde. Quibusdam illo ratione ullam enim. Dolorum vero voluptatum delectus recusandae.','2024-06-15 12:44:25','2024-06-15 12:44:25'),
(11,2,'Software Developer','Laravel, Tailwind, Blade, MySQL','Ebeid LTD',NULL,'Riyadh, SA','mohmedalhkim@gmail.com','/','dggggggggggggggggggggggggggg','2024-06-15 12:46:40','2024-06-15 12:46:40');
/*!40000 ALTER TABLE `la_listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_migrations`
--

DROP TABLE IF EXISTS `la_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_migrations`
--

LOCK TABLES `la_migrations` WRITE;
/*!40000 ALTER TABLE `la_migrations` DISABLE KEYS */;
INSERT INTO `la_migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_08_21_111245_create_listings_table',1);
/*!40000 ALTER TABLE `la_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_password_resets`
--

DROP TABLE IF EXISTS `la_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `la_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_password_resets`
--

LOCK TABLES `la_password_resets` WRITE;
/*!40000 ALTER TABLE `la_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `la_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_personal_access_tokens`
--

DROP TABLE IF EXISTS `la_personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `la_personal_access_tokens_token_unique` (`token`),
  KEY `la_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_personal_access_tokens`
--

LOCK TABLES `la_personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `la_personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `la_personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `la_users`
--

DROP TABLE IF EXISTS `la_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `la_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `la_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `la_users`
--

LOCK TABLES `la_users` WRITE;
/*!40000 ALTER TABLE `la_users` DISABLE KEYS */;
INSERT INTO `la_users` VALUES
(1,'John Doe','john@gmail.com','2024-06-15 12:44:24','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LQrgmE8no9','2024-06-15 12:44:24','2024-06-15 12:44:24'),
(2,'Mohamed Ebeid','mohmedalhkim@gmail.com',NULL,'$2y$10$qilpAVUaGusl1NcQVVvQuuucauNc3JhjAFd09QTVlcFbBELKswxCS',NULL,'2024-06-15 12:45:34','2024-06-15 12:45:34');
/*!40000 ALTER TABLE `la_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mohmedebeid_larajobs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17  8:45:12
