-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryId` int NOT NULL,
  `CategoryName` varchar(45) NOT NULL,
  `StoreId` int NOT NULL,
  PRIMARY KEY (`CategoryId`),
  KEY `fk_Category_Store1_idx` (`StoreId`),
  CONSTRAINT `fk_Category_Store1` FOREIGN KEY (`StoreId`) REFERENCES `store` (`StoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Beverages',1),(2,'Bread and Bakery',1),(3,'Canned Food',1),(4,'Meat',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL,
  `CustomerName` varchar(150) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) NOT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `AddressLine1` varchar(150) DEFAULT NULL,
  `AddressLine2` varchar(150) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  `PostalCode` varchar(15) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alice','Alice','Wonder','000566978','alice@xmail.com','Road-7','Gulsha-1','Dhaka',NULL,'1100','Bangladesh'),(2,'Bob','Bob','Cook','0899566978','bob@ymail.com','Road-5','Dhanmondi-1','Dhaka',NULL,'1100','Bangladesh'),(3,'Hasib','Hasib','Bashar','110566978','hasib@gmail.com','Road-7, Sector -3','Uttara','Dhaka',NULL,'1200','Bangladesh');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `QuantityOrdered` int DEFAULT NULL,
  `PriceEach` decimal(10,0) DEFAULT NULL,
  `StoreId` int NOT NULL,
  PRIMARY KEY (`OrderId`,`ProductId`),
  KEY `fk_OrderDetails_Orders1_idx` (`OrderId`),
  KEY `fk_OrderDetails_Products1_idx` (`ProductId`),
  KEY `fk_OrderDetails_Store1_idx` (`StoreId`),
  CONSTRAINT `fk_OrderDetails_Orders1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`),
  CONSTRAINT `fk_OrderDetails_Products1` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`),
  CONSTRAINT `fk_OrderDetails_Store1` FOREIGN KEY (`StoreId`) REFERENCES `store` (`StoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,2,10,25,1),(2,3,5,15,1),(3,5,2,650,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderId` int NOT NULL,
  `OrderDate` datetime NOT NULL,
  `DeliveryDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `Status` varchar(45) NOT NULL,
  `CustomerId` int NOT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `fk_Orders_Customer1_idx` (`CustomerId`),
  CONSTRAINT `fk_Orders_Customer1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`CustomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-01-01 10:10:10','2021-01-01 10:10:10',NULL,'Hold',1),(2,'2021-02-01 10:10:10','2021-02-01 10:10:10',NULL,'On Process',2),(3,'2021-02-02 10:10:10','2021-02-02 10:10:10',NULL,'Delivered',3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `Ownerid` int NOT NULL,
  `OwnerName` varchar(150) NOT NULL,
  PRIMARY KEY (`Ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Aarong');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductId` int NOT NULL,
  `ProductName` varchar(150) NOT NULL,
  `ProductDescription` varchar(200) DEFAULT NULL,
  `InStock` int NOT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Discount` decimal(10,0) DEFAULT NULL,
  `Deleted` tinyint(1) DEFAULT NULL,
  `CategoryId` int NOT NULL,
  PRIMARY KEY (`ProductId`),
  KEY `fk_Products_Category1_idx` (`CategoryId`),
  CONSTRAINT `fk_Products_Category1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'CocaCola','Soft Drink',100,45,NULL,0,1),(2,'7UP','Soft Drink',200,25,NULL,0,1),(3,'PranUP','Soft Drink',50,15,NULL,0,1),(4,'GiraPani','Soft Drink',100,NULL,NULL,0,1),(5,'Beef','Soft Tender',500,650,NULL,0,4),(6,'Canned Tomato','Best for tomato Sauce',400,250,NULL,0,3),(7,'AllTime Bread','Milk Bread',1500,50,NULL,0,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `StoreId` int NOT NULL,
  `Location` varchar(150) NOT NULL,
  `ContactNumber` varchar(45) NOT NULL,
  `Deleted` tinyint(1) DEFAULT NULL,
  `Ownerid` int NOT NULL,
  PRIMARY KEY (`StoreId`),
  KEY `fk_Store_Owner_idx` (`Ownerid`),
  CONSTRAINT `fk_Store_Owner` FOREIGN KEY (`Ownerid`) REFERENCES `owner` (`Ownerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Gulshan','1234567',0,1),(2,'Dhanmondi','14446989',0,1),(3,'Uttara','1444690',0,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-25 16:56:07
