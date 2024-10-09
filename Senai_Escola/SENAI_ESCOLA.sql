-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola_senai
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `RA` int(11) NOT NULL,
  `Nome` text DEFAULT NULL,
  `CPF` text DEFAULT NULL,
  `Sexo` text DEFAULT NULL,
  `Data_de_Nascimento` date DEFAULT NULL,
  PRIMARY KEY (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'João Silva','12345678900','M',NULL),(2,'Maria Souza','98765432100','F',NULL),(3,'Pedro Santos','45678912300','M',NULL),(4,'Ana Oliveira','32165498700','F',NULL),(5,'Lucas Pereira','78912345600','M',NULL),(6,'Juliana Lima','65498732100','F',NULL),(7,'Rafael Costa','23456789000','M',NULL),(8,'Camila Martins','87654321000','F',NULL),(9,'Gabriel Alves','34567890100','M',NULL),(10,'Letícia Silva','21054387600','F',NULL),(11,'Bruno Santos','56789012300','M',NULL),(12,'Larissa Lima','43210987600','F',NULL),(13,'Thiago Oliveira','90123456700','M',NULL),(14,'Marina Costa','67890123400','F',NULL),(15,'André Pereira','34567891200','M',NULL),(16,'Carolina Souza','12345678901','F',NULL),(17,'Marcelo Silva','78901234500','M',NULL),(18,'Bruna Oliveira','56789012301','F',NULL),(19,'Eduardo Santos','21054367801','M',NULL),(20,'Vanessa Costa','90123456701','F',NULL),(21,'Ricardo Martins','65498732101','M',NULL),(22,'Fernanda Lima','43210987601','F',NULL),(23,'Gabriel Oliveira','67890123401','M',NULL),(24,'Amanda Pereira','34567891201','F',NULL),(25,'Gustavo Souza','12345678902','M',NULL),(26,'Mariana Silva','78901234501','F',NULL),(27,'Lucas Oliveira','56789012302','M',NULL),(28,'Letícia Santos','21054367802','F',NULL),(29,'Rafael Costa','90123456702','M',NULL),(30,'Camila Martins','65498732102','F',NULL),(31,'Guilherme Lima','43210987602','M',NULL),(32,'Larissa Silva','67890123402','F',NULL),(33,'Pedro Pereira','34567891202','M',NULL),(34,'Ana Souza','12345678903','F',NULL),(35,'Bruno Silva','78901234502','M',NULL),(36,'Mariana Oliveira','56789012303','F',NULL),(37,'André Santos','21054367803','M',NULL),(38,'Carolina Costa','90123456703','F',NULL),(39,'Eduardo Lima','65498732103','M',NULL),(40,'Fernanda Silva','43210987603','F',NULL),(41,'Gabriel Costa','67890123403','M',NULL),(42,'Amanda Oliveira','34567891203','F',NULL),(43,'Gustavo Martins','12345678904','M',NULL),(44,'Mariana Lima','78901234503','F',NULL),(45,'Lucas Santos','56789012304','M',NULL),(46,'Letícia Costa','21054367804','F',NULL),(47,'Rafael Oliveira','90123456704','M',NULL),(48,'Camila Silva','65498732104','F',NULL),(49,'Guilherme Costa','43210987604','M',NULL),(50,'Larissa Santos','67890123404','F',NULL),(51,'Pedro Amanso','12348915618','M',NULL),(52,'Cleide de Freitas','15806615628','C',NULL),(53,'Machado de Assis','26824868228','M',NULL),(54,'Amanda de Jesus','36389248962','F',NULL),(55,'Joacyr Algoz','86245648684','M',NULL),(56,'Cristiano Ronaldo Júnior','68564598253','M',NULL),(57,'Romáro Neto','31246589769','M',NULL),(58,'Gerlaine Bastos','96328517562','F',NULL),(59,'Oséias Júnior','15948266392','M',NULL),(60,'Lorrany Urias','37568246986','F',NULL);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `Codigo_do_Campus` int(11) NOT NULL,
  `Cidade` text DEFAULT NULL,
  `Endereço` text DEFAULT NULL,
  PRIMARY KEY (`Codigo_do_Campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'Serra','Avenida João Palácio - N° 300'),(2,'Vitória','Avenida Américo Buaiz - N° 200 '),(3,'Vila Velha','Avenida Dr. Olivio Lira - Nº 353');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `Codigo_de_Curso` int(11) NOT NULL,
  `Nome_do_Curso` text DEFAULT NULL,
  `Turno` text DEFAULT NULL,
  `Duração` int(11) DEFAULT NULL,
  `Valor` int(11) DEFAULT NULL,
  `Campus` int(11) DEFAULT NULL,
  PRIMARY KEY (`Codigo_de_Curso`),
  KEY `Campus` (`Campus`),
  CONSTRAINT `Campus` FOREIGN KEY (`Campus`) REFERENCES `campus` (`Codigo_do_Campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Engenharia Civil','Diurno',10,1500,1),(2,'Administração de Empresas','Noturno',8,1200,2),(3,'Medicina','Integral',12,2000,3),(4,'Ciência da Computação','Diurno',8,1400,1),(5,'Direito','Matutino',10,2000,2),(6,'Psicologia','Vespertino',9,1100,2),(7,'Arquitetura e Urbanismo','Integral',11,1450,1),(8,'Engenharia Elétrica','Diurno',10,1400,1),(9,'Pedagogia','Noturno',8,1000,3),(10,'Nutrição','Matutino',9,1300,3),(11,'Fisioterapia','Vespertino',9,1250,3),(12,'Odontologia','Integral',11,1450,3),(13,'Engenharia Mecânica','Diurno',10,1350,1),(14,'Ciências Contábeis','Noturno',8,1100,1),(15,'Comunicação Social - Jornalismo','Matutino',8,1000,2),(16,'Artes Visuais','Diurno',5,1000,2),(17,'Design Gráfico','Matutino',6,1300,2),(18,'Jogos Digitais','Noturno',8,1400,2),(19,'Multimídia','Noturno',4,1800,2);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriculas`
--

DROP TABLE IF EXISTS `matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matriculas` (
  `Codigo_de_Matricula` int(11) DEFAULT NULL,
  `Data_de_Matricula` text DEFAULT NULL,
  `Registro_Academico` int(11) DEFAULT NULL,
  `Codigo_de_Curso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriculas`
--

LOCK TABLES `matriculas` WRITE;
/*!40000 ALTER TABLE `matriculas` DISABLE KEYS */;
INSERT INTO `matriculas` VALUES (1,'2023-03-05',23,9),(2,'2022-08-12',7,3),(3,'2021-06-28',42,14),(4,'2020-10-17',31,2),(5,'2024-05-03',18,6),(6,'2023-09-19',2,8),(7,'2022-11-10',35,5),(8,'2021-04-07',12,12),(9,'2020-08-25',29,7),(10,'2024-02-14',8,1),(11,'2023-06-01',14,15),(12,'2022-12-20',27,10),(13,'2021-09-09',5,4),(14,'2020-03-26',20,11),(15,'2024-07-13',48,13),(16,'2023-11-04',3,2),(17,'2022-05-21',44,3),(18,'2021-10-08',11,6),(19,'2020-04-27',25,1),(20,'2024-08-14',39,10),(21,'2023-01-02',16,8),(22,'2022-06-19',33,14),(23,'2021-11-06',9,12),(24,'2020-03-23',47,7),(25,'2024-07-10',4,9),(26,'2023-11-27',22,15),(27,'2022-05-15',37,4),(28,'2021-10-01',15,11),(29,'2020-04-18',30,3),(30,'2024-08-05',45,6),(31,'2023-12-22',10,13),(32,'2022-09-09',28,1),(33,'2022-02-26',6,10),(34,'2021-07-14',41,8),(35,'2021-01-01',13,2),(36,'2020-06-18',26,9),(37,'2024-11-06',49,4),(38,'2023-03-23',21,15),(39,'2022-05-09',36,7),(40,'2021-10-25',17,5),(41,'2020-04-11',32,12),(42,'2024-08-28',50,1),(43,'2023-02-15',1,14),(44,'2022-07-03',38,11),(45,'2021-11-20',19,3),(46,'2021-04-07',34,6),(47,'2020-09-24',24,9),(48,'2024-03-11',43,2),(49,'2023-06-29',40,8),(50,'2022-10-16',46,15),(51,'2022-02-03',7,7),(52,'2021-05-20',26,4),(53,'2020-09-06',10,13),(54,'2024-01-23',29,1),(55,'2023-07-10',45,14),(56,'2022-11-27',3,11),(57,'2022-03-15',38,3),(58,'2021-08-01',14,12),(59,'2020-12-18',30,6),(60,'2024-05-05',5,9),(61,'2023-09-22',34,5),(62,'2023-02-09',19,10),(63,'2022-05-27',50,15),(64,'2021-10-14',2,2),(65,'2021-04-01',37,7),(66,'2020-08-19',12,4),(67,'2024-01-06',49,13),(68,'2023-06-23',17,1),(69,'2022-11-10',41,14),(70,'2022-03-28',8,11),(71,'2021-08-14',44,3),(72,'2021-01-01',21,12),(73,'2020-04-18',36,6),(74,'2024-09-05',11,9),(75,'2023-12-22',46,5),(76,'2023-06-09',1,10),(77,'2022-10-26',28,15),(78,'2022-03-13',43,2),(79,'2021-07-30',16,7),(80,'2020-12-15',33,4),(81,'2024-05-01',20,13),(82,'2023-09-18',35,1),(83,'2023-02-06',9,14),(84,'2022-06-24',24,3),(85,'2021-11-10',39,12),(86,'2021-03-27',6,6),(87,'2020-08-14',31,9),(88,'2024-01-01',48,5),(89,'2023-05-19',15,10),(90,'2022-10-05',32,15),(91,'2022-02-22',47,2),(92,'2021-07-11',4,7),(93,'2020-11-28',41,4),(94,'2024-04-15',18,13),(95,'2023-09-02',36,1),(96,'2023-01-19',3,14),(97,'2022-06-06',29,3),(98,'2021-10-23',46,12),(99,'2021-03-10',8,6),(100,'2020-07-26',20,9);
/*!40000 ALTER TABLE `matriculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 21:35:43
