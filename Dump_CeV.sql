CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int unsigned DEFAULT NULL,
  `totaulas` int unsigned DEFAULT NULL,
  `ano` year DEFAULT '2016',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','Curso de HTML5',40,37,2014),(2,'Algoritmos','Lógica de Programação',20,15,2014),(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),(4,'PHP','Curso de PHP para iniciantes',40,20,2015),(5,'Java','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Banco de Dados MySQL',30,15,2016),(7,'Word','Curso completo de Word',40,30,2016),(8,'Excel','Curso avançado de Excel',50,40,2017),(9,'PowerPoint','Apresentações profissionais',30,25,2017),(10,'TypeScript','JavaScript com tipagem estática',55,40,2023),(11,'Python','Programação Python básico ao avançado',80,60,2018),(12,'HTML5 e CSS3','Desenvolvimento web front-end',45,35,2019),(13,'JavaScript','Programação para web',70,50,2019),(14,'Linux Terminal','Comandos avançados do terminal Linux',45,35,2024),(15,'React','Biblioteca JavaScript para interfaces',65,45,2020),(16,'Node.js','JavaScript no back-end',75,55,2021),(17,'Google Sheets Avançado','Planilhas online e automação',40,30,2024),(18,'C#','Desenvolvimento .NET',70,50,2022),(19,'Kotlin para Android','Desenvolvimento moderno Android',70,50,2024),(20,'Redes de Computadores','Fundamentos de redes',40,30,2016),(21,'Segurança da Informação','Proteção de dados e sistemas',50,35,2017),(22,'Android Studio','Desenvolvimento de apps Android',90,65,2018),(23,'Swift','Desenvolvimento iOS',80,60,2019),(24,'Flutter','Desenvolvimento mobile multiplataforma',75,55,2020),(25,'Data Science','Ciência de dados com Python',95,70,2021),(26,'Machine Learning','Introdução à inteligência artificial',100,75,2022),(27,'UI/UX Design','Design de interface e experiência',45,35,2023),(28,'Figma','Design de interfaces colaborativo',35,25,2023),(29,'Git e GitHub','Controle de versão',25,20,2022),(30,'Docker','Containerização de aplicações',40,30,2023);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'Roger','Desenvolvedor','2000-02-26','M',85.50,1.86,'Brasil'),(2,'victor','Motorista','1987-05-12','M',75.20,1.98,'Argentina'),(3,'Creuza','Farmaceutica','1960-05-12','F',80.50,1.55,'Romenia'),(4,'Francisco','Padeiro','1965-04-15','M',78.90,1.75,'França'),(5,'Gabriel','Porteiro','1999-07-20','M',81.90,1.89,'Russia'),(6,'Roginho','Youtuber','2004-12-23','M',67.30,1.78,'Brasil'),(7,'Janaina','Jornalista','1987-02-07','F',54.40,1.56,'India'),(8,'Carlos Silva','Engenheiro','1990-03-15','M',78.50,1.80,'Brasil'),(9,'Maria Santos','Médica','1985-07-22','F',62.30,1.68,'Brasil'),(10,'Pedro Oliveira','Professor','1992-11-30','M',85.20,1.85,'Portugal'),(11,'Ana Costa','Advogada','1988-04-18','F',58.70,1.65,'Brasil'),(12,'João Pereira','Desenvolvedor','1995-09-10','M',72.10,1.78,'Brasil'),(13,'Juliana Lima','Designer','1993-12-05','F',55.80,1.62,'Brasil'),(14,'Ricardo Alves','Analista','1989-06-25','M',90.30,1.90,'Brasil'),(15,'Fernanda Rocha','Enfermeira','1991-08-14','F',63.50,1.70,'Brasil'),(16,'Lucas Martins','Contador','1986-02-28','M',79.80,1.82,'Brasil'),(17,'Patrícia Nunes','Psicóloga','1994-05-20','F',59.20,1.66,'Brasil'),(18,'Marcos Souza','Arquiteto','1987-10-12','M',82.40,1.88,'Brasil'),(19,'Camila Torres','Jornalista','1996-03-08','F',57.90,1.64,'Brasil'),(20,'Diego Ramos','Chef','1990-11-15','M',88.60,1.92,'Argentina'),(21,'Letícia Castro','Dentista','1984-07-30','F',61.80,1.69,'Brasil'),(22,'Eduardo Barros','Policial','1983-12-22','M',92.50,1.94,'Brasil'),(23,'Sofia Mendes','Veterinária','1997-01-18','F',56.30,1.63,'Brasil'),(24,'Roberto Dias','Eletricista','1979-09-05','M',86.70,1.86,'Brasil'),(25,'Beatriz Lopes','Administradora','1992-04-25','F',60.10,1.67,'Brasil'),(26,'Felipe Cardoso','Farmacêutico','1988-08-11','M',75.90,1.79,'Brasil'),(27,'Amanda Reis','Professora','1995-06-19','F',58.40,1.65,'Brasil'),(28,'Thiago Monteiro','Engenheiro Civil','1991-02-14','M',84.20,1.87,'Brasil'),(29,'Isabela Fonseca','Nutricionista','1993-10-03','F',62.70,1.71,'Brasil'),(30,'Renato Neves','Motorista','1985-05-27','M',91.80,1.93,'Brasil'),(31,'Vanessa Pires','Cientista de Dados','1994-07-16','F',59.60,1.66,'Brasil'),(32,'Gustavo Henrique','Marceneiro','1982-03-09','M',87.30,1.89,'Brasil'),(33,'Larissa Duarte','Fisioterapeuta','1996-11-24','F',57.20,1.64,'Brasil'),(34,'Alexandre Cruz','Corretor','1989-12-07','M',77.50,1.81,'Brasil'),(35,'Tatiane Rios','Empresária','1990-04-29','F',63.90,1.70,'Brasil'),(36,'Bruno Teixeira','Músico','1997-08-22','M',68.40,1.75,'Brasil'),(37,'Cristina Almeida','Consultora','1986-06-13','F',61.50,1.68,'Brasil'),(38,'Daniel Santos','Programador','1993-01-31','M',73.80,1.77,'Brasil'),(39,'Elaine Costa','Marketing','1991-09-26','F',60.80,1.67,'Brasil'),(40,'Hugo Lima','Bombeiro','1984-02-17','M',89.10,1.91,'Brasil'),(41,'Irene Silva','Aposentada','1962-11-08','F',70.20,1.58,'Brasil'),(42,'Jorge Oliveira','Aposentado','1960-07-04','M',82.60,1.76,'Brasil'),(43,'Karen Souza','Estudante','2002-05-15','F',54.90,1.62,'Brasil'),(44,'Leandro Martins','Estudante','2003-03-22','M',65.30,1.74,'Brasil'),(45,'Mariana Costa','Bióloga','1987-12-11','F',62.10,1.69,'Brasil'),(46,'Nicolas Alves','Professor','1992-10-09','M',76.40,1.80,'Brasil'),(47,'Olívia Pereira','Arquiteta','1995-04-18','F',58.90,1.66,'Brasil'),(48,'Paulo Rocha','Economista','1988-09-23','M',81.70,1.84,'Brasil'),(49,'Quintino Nunes','Agricultor','1975-06-30','M',88.90,1.82,'Brasil'),(50,'Raquel Torres','Advogada','1994-02-14','F',59.30,1.65,'Brasil'),(51,'Samuel Souza','Engenheiro Mecânico','1990-11-28','M',83.50,1.86,'Brasil'),(52,'Talita Ramos','Enfermeira','1993-07-07','F',61.20,1.68,'Brasil'),(53,'Ubirajara Castro','Militar','1986-03-19','M',90.80,1.92,'Brasil'),(54,'Valéria Barros','Psicóloga','1991-12-25','F',60.50,1.67,'Brasil'),(55,'Wagner Mendes','Taxista','1978-08-16','M',85.60,1.85,'Brasil'),(56,'Xavier Dias','Pintor','1983-05-21','M',79.20,1.79,'Brasil'),(57,'Yasmin Lopes','Dentista','1996-10-31','F',57.80,1.64,'Brasil'),(58,'Zacarias Cardoso','Aposentado','1958-04-12','M',78.40,1.73,'Brasil'),(59,'Adriana Reis','Professora','1989-01-26','F',63.10,1.70,'Brasil'),(60,'Breno Monteiro','Estudante','2005-06-08','M',62.70,1.72,'Brasil');
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-12 19:28:23
