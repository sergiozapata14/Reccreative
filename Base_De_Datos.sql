-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: reccreative
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `clave` varchar(60) NOT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `instagram` varchar(120) DEFAULT NULL,
  `tiktok` varchar(120) DEFAULT NULL,
  `calendario` varchar(120) DEFAULT NULL,
  `reportes` varchar(120) DEFAULT NULL,
  `estudio_de_mercado` varchar(120) DEFAULT NULL,
  `reels` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('Super administrador','superadmin','soporte',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Terapias Holísticas Tila','terapiasholisticastila@gmail.com','terapiasholisticastila','https://www.facebook.com/profile.php?id=100089875637442&mibextid=ZbWKwL','terapiasholisticastila','terapiasholisticastila','https://drive.google.com/drive/folders/1AMpqnYp6snmoaM8kvp3QOpxjaHHCOLI7?usp=drive_link','https://drive.google.com/drive/folders/1hhIU3hh6DTd3bU9zLhxRDVZ2vKXawDYS?usp=drive_link','https://drive.google.com/drive/folders/1KvbInnylKIE1XBnjYslApVE8uLbHzojo?usp=drive_link','https://drive.google.com/drive/folders/1k62i1ZPEf8g5pR2eNu4aWxTw9MFWeH0T?usp=drive_link'),('Inmobiliaria Gagnant','gagnantinmobiliaria@gmail.com','gagnantinmobiliaria','https://www.facebook.com/profile.php?id=61560058477431&mibextid=ZbWKwL','gagnantinmobiliaria','gagnantinmobiliaria','https://drive.google.com/drive/folders/1cDhhcgdc8T4Z919NY5K0jKNgOZpGMUM2?usp=drive_link','https://drive.google.com/drive/folders/1bSyUfsnbMMdnrgtwfPHUnJInzzly7vTY?usp=drive_link','https://drive.google.com/drive/folders/1y4JVamzLPrNfKhphAlQk0h-3Eo7TICR9?usp=drive_link','https://drive.google.com/drive/folders/1HR9zJwV6ZXatV-Ec5CIK6oP4HnmtvroS?usp=drive_link'),('Hipotecaria Hogar','hipotecariahogar.puebla@gmail.com','hipotecariahogar.pue','https://www.facebook.com/profile.php?id=61563356662161&mibextid=ZbWKwL','hipotecariahogar.pue','hipotecariahogar.pue','https://drive.google.com/drive/folders/1YRx-jSOcOESQBDJXlWZ2-Gex8kPDS5F_?usp=drive_link','https://drive.google.com/drive/folders/1ep_w8MRNfQK0Y973-LynBCj-oQDAhgkp?usp=drive_link','https://drive.google.com/drive/folders/1RmkbXXMXWExtwgCwmABpRR0bVZzOOwl2?usp=drive_link','https://drive.google.com/drive/folders/19R5_MqMSkvuF0BE3A8CODlU9j8XgKM_z?usp=drive_link'),('Kooa Luxury Housing','kooaluxuryhousing@gmail.com','kooa_lucury_housing','https://www.facebook.com/KOOAluxuryhousing?mibextid=ZbWKwL','kooa_lucury_housing','kooa.lucury.housing','https://drive.google.com/drive/folders/1bOwgyPWb5LOTPyt1S1ap1S010yKa38Vb?usp=drive_link','https://drive.google.com/drive/folders/1YA3kev_Q36DLAcTEnWIc0oum1m_aswxu?usp=drive_link','https://drive.google.com/drive/folders/1XOO-yoZtpmOJq9qZ-tJm74aof4bwMJdj?usp=drive_link','https://drive.google.com/drive/folders/1fO3iIri_MvbYUYulg5CAYpDHyHZAS2SS?usp=drive_link'),('Gravedad Cero','gravedadcero.mx@gmail.com','gravedad.cero_mx','https://www.facebook.com/SegurosGravedadCero','gravedad.cero_mx',NULL,'https://drive.google.com/drive/folders/1xv4stewmpi9OjEd6tyQDrR5OdMr50zfR?usp=drive_link','https://drive.google.com/drive/folders/1n8Bj1N0GnIXzv3iHYmpHYKVctfu5Er3x?usp=drive_link','https://drive.google.com/drive/folders/1fHMVRvdo3J1TER0jVIK_ws3xL9eYqtPH?usp=drive_link','https://drive.google.com/drive/folders/1zESKDqXdud16VUTDxYejfQ-FHp801tPW?usp=drive_link'),('Kire Kire','kirekire.mexico@gmail.com','kire_kire','https://www.facebook.com/profile.php?id=61566375844104','kire_kire',NULL,'https://drive.google.com/drive/folders/1loib7IPFkcF6xxjOQMAQVP5XjhVPEFlb?usp=drive_link','https://drive.google.com/drive/folders/1teFQfJBAYN3gLC8UeRKAqUGFz0bEieW5?usp=drive_link','https://drive.google.com/drive/folders/1DRvyTg86T7n5hZ9-VF70qTlTck9Ev9Fc?usp=drive_link','https://drive.google.com/drive/folders/1Qmxg1HhlF4sb93VgEXGUu-GaJEme2gWv?usp=drive_link'),('Fausta I. Zuviri','faustaivettezuviri@gmail.com','fausta.zuviri',NULL,'fausta.zuviri','fausta.i.zuviri','https://drive.google.com/drive/folders/10CuI_STzpxxCCUgwvXgEH1SRJ8Owk1aY?usp=drive_link','https://drive.google.com/drive/folders/1PQ0gRtzoeCiRjqQxBKthsIxLrWRhoK-Z?usp=drive_link','https://drive.google.com/drive/folders/1eNe1adf-l8dAFEtYcQRv1zKtI-lrNL59?usp=drive_link','https://drive.google.com/drive/folders/1QoQCxJ4weGAG9_GikuTd3dw-vuvi3Yy8?usp=drive_link'),('Glitter Bar by Shine Studio','shinestudio.mx@gmail.com','shine.estudio.mx','shinestudio.mx@gmail.com','shine.estudio.mx','shine.estudio.mx','https://drive.google.com/drive/folders/1aDHvnn9yRQEKhWn7SJ8ofKI59WN2ev8o?usp=drive_link','https://drive.google.com/drive/folders/1RPscVH3k8mJ1lIa4Fdnmy7_-THJK4PJe?usp=drive_link','https://drive.google.com/drive/folders/1DkdjpkIHIgONxtVwqDfjFy_aEQ1MrxIa?usp=drive_link','https://drive.google.com/drive/folders/1B-3fyio50hw6BxAYXf8THQr4jvPVInDc?usp=drive_link'),('Grand Albergo','grandalbergo@gmail.com','grandalbergo',NULL,'grandalbergo',NULL,'https://drive.google.com/drive/folders/17vIUzYU4tkWIkTuSoIYMtmw0n1AUazUy?usp=drive_link','https://drive.google.com/drive/folders/1yo1kfcTG4uacgqe_lS2f0yQQYMvdGXaW?usp=drive_link','https://drive.google.com/drive/folders/122_H-OYVMvQdhZvtLbQRAoVvYvzRMT7g?usp=drive_link','https://drive.google.com/drive/folders/1yWs6EBCd-v8XT7wK8KNhkZfadAY1qfyI?usp=drive_link');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 13:48:59
