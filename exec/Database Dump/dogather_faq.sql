-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: i6e104.p.ssafy.io    Database: dogather
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_no` int NOT NULL AUTO_INCREMENT,
  `group_no` int NOT NULL,
  `category_no` int NOT NULL,
  `faq_question` varchar(1000) NOT NULL,
  `faq_answer` text NOT NULL,
  PRIMARY KEY (`faq_no`),
  KEY `group_fk_idx` (`group_no`),
  KEY `category_fk_idx` (`category_no`),
  CONSTRAINT `category_fk` FOREIGN KEY (`category_no`) REFERENCES `faq_category` (`category_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `group_fk1` FOREIGN KEY (`group_no`) REFERENCES `group` (`group_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,291,1,'배송은 언제 되나요?','수제화로 주문이 들어오면 제작에 들어가기 때문에, 2주정도 시간이 소요됩니다.'),(2,291,2,'사이즈 문의','사이즈는 사이트에 게시된 카카오오픈계정을 통해서 문의 주시면 친절히 답변 드리겠습니다!'),(3,291,3,'제작시작시기','모든 모임인원이 모두 모인 후에 주문에 들어가기 때문에 마감이후에 제작이 시작됩니다.'),(130,300,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(131,307,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(132,308,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(133,309,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(134,310,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(135,312,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(136,313,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(137,314,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(138,315,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(139,316,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(140,317,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(141,318,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(142,319,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(143,320,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(144,321,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(145,322,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(146,323,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(147,324,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(148,325,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(149,326,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(150,327,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(151,328,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(152,329,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(153,330,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(154,333,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(155,335,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(156,334,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(157,336,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(158,337,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(159,338,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(160,339,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(161,340,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(162,341,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(166,345,1,'testQuestion==== update','testAnswer==== update'),(167,345,1,'testQuestion==== update2','testAnswer==== update'),(177,349,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(185,361,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(186,362,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(187,363,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(188,364,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(189,365,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(190,367,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(191,368,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(192,369,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(193,370,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(194,371,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(195,372,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(196,373,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(197,374,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(198,375,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(199,376,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(200,377,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(201,378,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(202,379,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(203,380,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(204,381,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(205,382,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(206,383,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(207,384,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(208,385,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(209,386,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(210,387,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(211,388,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(212,389,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(213,390,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(214,393,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(215,394,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(216,395,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(217,396,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(218,397,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(219,398,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(220,399,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(221,400,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(222,401,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(223,402,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(224,403,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(225,404,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(226,405,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(227,406,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(228,407,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(229,408,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(230,409,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(231,410,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(232,411,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(233,412,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(234,413,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(235,414,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(236,415,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(237,416,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(238,417,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(239,418,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(240,419,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(241,434,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(242,421,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(243,422,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(244,423,1,'배송은 얼마나 걸리나요?','3~4일 정도 걸립니다.'),(245,443,1,'test','test'),(246,447,1,'ef','ewf');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18 10:23:08
