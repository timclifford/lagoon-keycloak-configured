-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Linux (x86_64)
--
-- Host: 0.0.0.0    Database: keycloak
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` varchar(2550) DEFAULT NULL,
  `REPRESENTATION` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
INSERT INTO `ASSOCIATED_POLICY` VALUES ('01e050ba-cda5-4182-a4a5-f4eadf553813','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('01e050ba-cda5-4182-a4a5-f4eadf553813','bf212810-7018-4bc8-82ca-b66aa9340be4'),('02fa29f0-6e3b-4867-92bb-499b2b8f927c','d9a89138-7be9-47b2-9d38-b654c04a212a'),('0a1ddc7f-9143-41cf-90da-efe3515d5540','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('0ed2b1a4-fa8c-40e1-a97e-7f75d2fde9db','bf212810-7018-4bc8-82ca-b66aa9340be4'),('0ed2b1a4-fa8c-40e1-a97e-7f75d2fde9db','e35e84bd-c7df-447b-8adc-0167eee701b7'),('1309ec76-f5fb-47e9-bca5-3603f3be9c5d','bf212810-7018-4bc8-82ca-b66aa9340be4'),('1309ec76-f5fb-47e9-bca5-3603f3be9c5d','e35e84bd-c7df-447b-8adc-0167eee701b7'),('139589f2-17b1-426b-ae88-5d2cd4d04d04','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('139589f2-17b1-426b-ae88-5d2cd4d04d04','bf212810-7018-4bc8-82ca-b66aa9340be4'),('16199e89-e6b9-46c1-af44-d9977ddd8721','bf212810-7018-4bc8-82ca-b66aa9340be4'),('16199e89-e6b9-46c1-af44-d9977ddd8721','e35e84bd-c7df-447b-8adc-0167eee701b7'),('180b8c81-1811-4bc1-8d78-bd521389e18e','05f6dff6-4380-432d-b02a-5d0ab4dfcc0c'),('25f5e98d-9790-4b84-997c-f4e69d624252','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('25f5e98d-9790-4b84-997c-f4e69d624252','bf212810-7018-4bc8-82ca-b66aa9340be4'),('265e9447-fb69-478c-bf2e-835527821576','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('265e9447-fb69-478c-bf2e-835527821576','bf212810-7018-4bc8-82ca-b66aa9340be4'),('2aa3eae6-d0bd-4841-9172-b14524be1f8a','bf212810-7018-4bc8-82ca-b66aa9340be4'),('2aa3eae6-d0bd-4841-9172-b14524be1f8a','e35e84bd-c7df-447b-8adc-0167eee701b7'),('2b43a9e1-94fa-4753-9a36-25921d77f7ae','348fb1cd-e97b-4415-8607-a36e6814ff84'),('2f0e598d-10c0-456b-b85f-c3ac188f72f9','bf212810-7018-4bc8-82ca-b66aa9340be4'),('2f0e598d-10c0-456b-b85f-c3ac188f72f9','e35e84bd-c7df-447b-8adc-0167eee701b7'),('2f78a70a-d41f-482a-9162-530d62f2650d','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('2f78a70a-d41f-482a-9162-530d62f2650d','bf212810-7018-4bc8-82ca-b66aa9340be4'),('303e7be3-a96d-443e-8a7c-1e85aa8fdd16','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('303e7be3-a96d-443e-8a7c-1e85aa8fdd16','bf212810-7018-4bc8-82ca-b66aa9340be4'),('30ff5506-07d9-4e3a-9cfa-7f680940bbb8','9d136373-eb50-4611-b3de-a26355705e4e'),('30ff5506-07d9-4e3a-9cfa-7f680940bbb8','d9a89138-7be9-47b2-9d38-b654c04a212a'),('40bd4bb3-6ee6-48c8-97ae-09737d960927','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('40bd4bb3-6ee6-48c8-97ae-09737d960927','bf212810-7018-4bc8-82ca-b66aa9340be4'),('41aeba5a-792d-42bb-acf8-b75788947e79','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('41aeba5a-792d-42bb-acf8-b75788947e79','bf212810-7018-4bc8-82ca-b66aa9340be4'),('450a8e46-c00b-471c-a7bc-f0c1e447155a','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('455e0fbb-af6c-4153-8d99-a8c1dde4afe2','a5ee5f99-45db-45cb-8407-3d4b649fee9b'),('455e0fbb-af6c-4153-8d99-a8c1dde4afe2','bf212810-7018-4bc8-82ca-b66aa9340be4'),('46729337-5eab-4646-a9c9-ca5e2e2773c8','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('46729337-5eab-4646-a9c9-ca5e2e2773c8','bf212810-7018-4bc8-82ca-b66aa9340be4'),('4a65e3e4-7d00-4be1-b8cd-51be3e9161b7','bf212810-7018-4bc8-82ca-b66aa9340be4'),('4a65e3e4-7d00-4be1-b8cd-51be3e9161b7','e35e84bd-c7df-447b-8adc-0167eee701b7'),('4b991679-2ace-43a2-adb2-cb366058d6cd','66d013ff-a0d2-415c-b881-3bbb41c3f08c'),('4b991679-2ace-43a2-adb2-cb366058d6cd','ac712f92-0892-4e8b-92d8-64824a980c0f'),('4bc5b69c-f921-49a7-8c04-bc5f4dafd361','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('4f2e0f96-2ccb-427e-a540-670021464024','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('51946cf5-c4eb-4965-9705-67b85b287a2e','bf212810-7018-4bc8-82ca-b66aa9340be4'),('51946cf5-c4eb-4965-9705-67b85b287a2e','e35e84bd-c7df-447b-8adc-0167eee701b7'),('559e8071-9d51-41eb-8d0d-c1faf50682be','bf212810-7018-4bc8-82ca-b66aa9340be4'),('59904505-6375-43b0-96d8-8728b7320330','9d136373-eb50-4611-b3de-a26355705e4e'),('59904505-6375-43b0-96d8-8728b7320330','d9a89138-7be9-47b2-9d38-b654c04a212a'),('5d116db1-5f24-4996-bddf-8f895ca6b202','bf212810-7018-4bc8-82ca-b66aa9340be4'),('5d116db1-5f24-4996-bddf-8f895ca6b202','e35e84bd-c7df-447b-8adc-0167eee701b7'),('60ab23ad-a6f1-4626-b8c4-8b148c5097eb','bf212810-7018-4bc8-82ca-b66aa9340be4'),('60ab23ad-a6f1-4626-b8c4-8b148c5097eb','e35e84bd-c7df-447b-8adc-0167eee701b7'),('6123d63b-2917-476d-be85-5526659cb102','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('6123d63b-2917-476d-be85-5526659cb102','bf212810-7018-4bc8-82ca-b66aa9340be4'),('64a062ff-3e1a-43ff-b5b4-44211f786026','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('64a062ff-3e1a-43ff-b5b4-44211f786026','bf212810-7018-4bc8-82ca-b66aa9340be4'),('68a769a5-dc96-4c22-b440-0fe3897b88f9','bf212810-7018-4bc8-82ca-b66aa9340be4'),('68a769a5-dc96-4c22-b440-0fe3897b88f9','e35e84bd-c7df-447b-8adc-0167eee701b7'),('692fe4b5-8b70-492d-8648-8a2b848d93d0','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('692fe4b5-8b70-492d-8648-8a2b848d93d0','bf212810-7018-4bc8-82ca-b66aa9340be4'),('699ea0e1-b8fd-4faf-a757-b411c0e12a6d','bf212810-7018-4bc8-82ca-b66aa9340be4'),('699ea0e1-b8fd-4faf-a757-b411c0e12a6d','e35e84bd-c7df-447b-8adc-0167eee701b7'),('7024a5a5-b157-41a8-b7f4-3a69552a3349','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('7024a5a5-b157-41a8-b7f4-3a69552a3349','bf212810-7018-4bc8-82ca-b66aa9340be4'),('71db75e6-95e4-42ef-a60d-666f7fc1cd91','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('742f21f5-85e3-4e58-a172-25a61aa368d5','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('742f21f5-85e3-4e58-a172-25a61aa368d5','bf212810-7018-4bc8-82ca-b66aa9340be4'),('74beae8e-35ff-4c9c-9a5f-34433ae7f7fa','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('754d6f04-bd52-4c41-9031-46427c40fae2','bf212810-7018-4bc8-82ca-b66aa9340be4'),('754d6f04-bd52-4c41-9031-46427c40fae2','e35e84bd-c7df-447b-8adc-0167eee701b7'),('77cfcda8-ce92-4b8f-b03b-a269b857c8b9','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('7deba0eb-e25f-4738-9c6d-893167373991','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('7deba0eb-e25f-4738-9c6d-893167373991','bf212810-7018-4bc8-82ca-b66aa9340be4'),('7e8e5b68-ac00-4029-b29d-7f07e1dca060','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('7e8e5b68-ac00-4029-b29d-7f07e1dca060','bf212810-7018-4bc8-82ca-b66aa9340be4'),('80294afd-62e8-4dac-95e9-b5d39eb05359','9d136373-eb50-4611-b3de-a26355705e4e'),('80294afd-62e8-4dac-95e9-b5d39eb05359','d9a89138-7be9-47b2-9d38-b654c04a212a'),('80b8ad0b-9c92-4541-a88c-a2da33f76470','bf212810-7018-4bc8-82ca-b66aa9340be4'),('80b8ad0b-9c92-4541-a88c-a2da33f76470','e35e84bd-c7df-447b-8adc-0167eee701b7'),('821e979e-367e-4fdb-bdbc-af559503c9d3','bf212810-7018-4bc8-82ca-b66aa9340be4'),('821e979e-367e-4fdb-bdbc-af559503c9d3','e35e84bd-c7df-447b-8adc-0167eee701b7'),('84459c24-c9bc-45ce-aafd-1b82b72d1d2e','348fb1cd-e97b-4415-8607-a36e6814ff84'),('855174d2-12a0-4a38-a5f6-6dcbbd74a3c1','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('855174d2-12a0-4a38-a5f6-6dcbbd74a3c1','bf212810-7018-4bc8-82ca-b66aa9340be4'),('88ef6dda-b4c0-4d77-ae86-d5d19956bd04','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('88ef6dda-b4c0-4d77-ae86-d5d19956bd04','bf212810-7018-4bc8-82ca-b66aa9340be4'),('890d5fd1-8d0e-40ec-be70-52fa537f1cb6','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('891c9490-82cb-419f-9f31-a4b3bf827f64','bf212810-7018-4bc8-82ca-b66aa9340be4'),('891c9490-82cb-419f-9f31-a4b3bf827f64','e35e84bd-c7df-447b-8adc-0167eee701b7'),('89b4641c-f37d-40aa-81cc-64cdbb0b3f39','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('89b4641c-f37d-40aa-81cc-64cdbb0b3f39','bf212810-7018-4bc8-82ca-b66aa9340be4'),('8e49d126-8b9f-477f-b047-d8e0b8728f30','d9a89138-7be9-47b2-9d38-b654c04a212a'),('8e7dc04f-db7c-4ab3-a626-18482c1958be','d9a89138-7be9-47b2-9d38-b654c04a212a'),('8f997715-922a-4411-90f3-af58abd54005','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('8f997715-922a-4411-90f3-af58abd54005','bf212810-7018-4bc8-82ca-b66aa9340be4'),('949cd503-172b-4636-a8b6-70f4039ee814','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('9532baa9-60cf-4367-94ee-d6ec7866865a','bf212810-7018-4bc8-82ca-b66aa9340be4'),('9532baa9-60cf-4367-94ee-d6ec7866865a','e35e84bd-c7df-447b-8adc-0167eee701b7'),('9a7ea562-5d6c-4119-81bb-cc0ff60eeb91','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('9a7ea562-5d6c-4119-81bb-cc0ff60eeb91','bf212810-7018-4bc8-82ca-b66aa9340be4'),('a71c6d2b-cffa-4871-a414-87d62c433006','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('a71c6d2b-cffa-4871-a414-87d62c433006','bf212810-7018-4bc8-82ca-b66aa9340be4'),('a7c350c8-9c03-4be0-bd2f-6fb4e026761b','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('a7c350c8-9c03-4be0-bd2f-6fb4e026761b','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ac9fb478-7eb4-45f4-ba07-b1c7afea31ad','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('b223f08d-9e65-4703-9d48-e0e4f67bbfff','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('b3e8022b-3384-45c3-b101-a3cc4e3cf4dc','a5ee5f99-45db-45cb-8407-3d4b649fee9b'),('b3e8022b-3384-45c3-b101-a3cc4e3cf4dc','bf212810-7018-4bc8-82ca-b66aa9340be4'),('b41a771f-ebcb-42ca-98f3-0ef2659fdf8f','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('bea3902c-d2ff-43da-83c9-1382af54ece5','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('bea3902c-d2ff-43da-83c9-1382af54ece5','bf212810-7018-4bc8-82ca-b66aa9340be4'),('c028d964-5be2-4591-b557-2ed096c8418f','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('c262fcd2-c14f-4027-8286-2d31b92842b0','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('c262fcd2-c14f-4027-8286-2d31b92842b0','bf212810-7018-4bc8-82ca-b66aa9340be4'),('c2acf775-76d9-40e8-9432-a3d8ef4d830c','a5ee5f99-45db-45cb-8407-3d4b649fee9b'),('c2acf775-76d9-40e8-9432-a3d8ef4d830c','bf212810-7018-4bc8-82ca-b66aa9340be4'),('c45bb5f4-63c0-4152-8bd8-ccf008b6dd9a','9d136373-eb50-4611-b3de-a26355705e4e'),('c45bb5f4-63c0-4152-8bd8-ccf008b6dd9a','d9a89138-7be9-47b2-9d38-b654c04a212a'),('c702e4a6-cbcc-4f3c-99b6-07635741131b','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('c702e4a6-cbcc-4f3c-99b6-07635741131b','bf212810-7018-4bc8-82ca-b66aa9340be4'),('c856fd34-cc70-41cf-a71d-def9ff9b8014','bf212810-7018-4bc8-82ca-b66aa9340be4'),('c856fd34-cc70-41cf-a71d-def9ff9b8014','e35e84bd-c7df-447b-8adc-0167eee701b7'),('cce8b8c3-870f-43b4-86d9-8bbbaeb4afdd','bf212810-7018-4bc8-82ca-b66aa9340be4'),('cce8b8c3-870f-43b4-86d9-8bbbaeb4afdd','e35e84bd-c7df-447b-8adc-0167eee701b7'),('ce236e7f-3cc1-4dcb-a1af-ef6bc168139e','348fb1cd-e97b-4415-8607-a36e6814ff84'),('ce9bf525-fcc5-4e11-95f0-61c12e25ae9a','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ce9bf525-fcc5-4e11-95f0-61c12e25ae9a','e35e84bd-c7df-447b-8adc-0167eee701b7'),('d004fbb8-4810-4e1e-987c-b5eb9af225cf','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('d004fbb8-4810-4e1e-987c-b5eb9af225cf','bf212810-7018-4bc8-82ca-b66aa9340be4'),('d0850d96-ce18-4aa1-aac9-3ee0357743c0','9d136373-eb50-4611-b3de-a26355705e4e'),('d0850d96-ce18-4aa1-aac9-3ee0357743c0','d9a89138-7be9-47b2-9d38-b654c04a212a'),('d4006748-ad2b-47c3-93c9-b066ce2d4786','348fb1cd-e97b-4415-8607-a36e6814ff84'),('d6c40dbe-f765-43e6-b624-2912f2959bd6','a5ee5f99-45db-45cb-8407-3d4b649fee9b'),('d6c40dbe-f765-43e6-b624-2912f2959bd6','bf212810-7018-4bc8-82ca-b66aa9340be4'),('d8b7b45e-883d-47b9-a3bf-2e135e910788','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('d8b7b45e-883d-47b9-a3bf-2e135e910788','bf212810-7018-4bc8-82ca-b66aa9340be4'),('dcf4e852-4410-467c-80fe-ae94a532ab0b','05f6dff6-4380-432d-b02a-5d0ab4dfcc0c'),('e0cf2860-f08a-4f94-ac5c-9489440c7423','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('e0cf2860-f08a-4f94-ac5c-9489440c7423','bf212810-7018-4bc8-82ca-b66aa9340be4'),('e294052a-f368-46cb-87b7-1a03945cc399','9d136373-eb50-4611-b3de-a26355705e4e'),('e294052a-f368-46cb-87b7-1a03945cc399','d9a89138-7be9-47b2-9d38-b654c04a212a'),('e369e557-aada-40c7-abcb-e0300ebec270','05f6dff6-4380-432d-b02a-5d0ab4dfcc0c'),('e375a6d9-5243-44eb-bf5d-17fe6c882464','06fc2831-57d3-4fb2-a6ce-e73c84ff0145'),('e375a6d9-5243-44eb-bf5d-17fe6c882464','bf212810-7018-4bc8-82ca-b66aa9340be4'),('e66186d8-f9c5-4ad6-9697-03969a4bb979','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('e66186d8-f9c5-4ad6-9697-03969a4bb979','bf212810-7018-4bc8-82ca-b66aa9340be4'),('e70dfa5e-fadd-464a-922a-c926000bf7ed','bf212810-7018-4bc8-82ca-b66aa9340be4'),('e70dfa5e-fadd-464a-922a-c926000bf7ed','e35e84bd-c7df-447b-8adc-0167eee701b7'),('e8ec967a-339d-415e-928a-6586a500cb89','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('e8ec967a-339d-415e-928a-6586a500cb89','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ed420720-a6ed-4930-80e2-347b9ce29a5c','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ed420720-a6ed-4930-80e2-347b9ce29a5c','e35e84bd-c7df-447b-8adc-0167eee701b7'),('ee0d2269-fedf-46aa-9fce-3a32097c2a11','1670872c-63d7-41e6-a3a3-cb3893aa0495'),('ee4a0a7f-561e-4afa-8582-f600f6bcc282','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ee4a0a7f-561e-4afa-8582-f600f6bcc282','e35e84bd-c7df-447b-8adc-0167eee701b7'),('efe8b6cd-331c-40ef-98e8-65f093dbe5d7','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('efe8b6cd-331c-40ef-98e8-65f093dbe5d7','bf212810-7018-4bc8-82ca-b66aa9340be4'),('f083a050-7356-46f9-b6fa-18b9d7d47e68','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('f083a050-7356-46f9-b6fa-18b9d7d47e68','bf212810-7018-4bc8-82ca-b66aa9340be4'),('f4b315bb-d7ed-426c-a762-3890ad107bd3','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('f4b315bb-d7ed-426c-a762-3890ad107bd3','bf212810-7018-4bc8-82ca-b66aa9340be4'),('fb78ffbf-5ead-4a96-8ce2-01f1e1c10e75','bf212810-7018-4bc8-82ca-b66aa9340be4'),('fb78ffbf-5ead-4a96-8ce2-01f1e1c10e75','e35e84bd-c7df-447b-8adc-0167eee701b7'),('fe6457bf-ac1e-4d1c-9e46-e8ddb0a709a1','ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9'),('fe6457bf-ac1e-4d1c-9e46-e8ddb0a709a1','bf212810-7018-4bc8-82ca-b66aa9340be4'),('ffbfe0f3-1cd5-4957-834a-70e163962e7f','d9a89138-7be9-47b2-9d38-b654c04a212a');
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES ('00f1fecf-1fd9-4c47-850f-f0bbd72c68ef',NULL,'idp-review-profile','master','7a6809c9-5fe2-4e10-b944-f34754193244',0,10,'\0',NULL,'c5c94387-3438-45b4-9968-01c331968345'),('0268d253-4a71-48ad-8ac9-38be4e0a4a6e',NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','7b8eda90-69e3-49f9-8ff8-c3f969014a0b',2,30,'','89a0e7ca-f903-4adf-811c-055dbb1c6fcd',NULL),('1791f8c6-30f5-40ea-ac13-152b7a9c3945',NULL,NULL,'master','8c6082a3-2c89-4454-9e3f-0f3b2d566bed',2,30,'','b15a1978-0f43-4e06-8d56-e7d12c53b099',NULL),('1934da78-e279-4af2-9114-df36b387721b',NULL,'direct-grant-validate-otp','9e68e28f-f43c-490b-85c1-4551eb0eb7af','1e4b049b-f415-419d-84dd-4a9c4ddd30ed',1,30,'\0',NULL,NULL),('1bbce0a7-e056-49c3-ae19-9337d690a1e3',NULL,'client-jwt','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e914d9f7-91b7-415b-b774-426fa704e56d',2,20,'\0',NULL,NULL),('1d686bec-f753-4237-98c3-6dd835b1ca87',NULL,'registration-password-action','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9e6262fd-897d-454c-a1d1-d6fe8ab12395',0,50,'\0',NULL,NULL),('1e35f6fa-8d0f-4d89-b1f6-4181e25aef49',NULL,'direct-grant-validate-password','master','321ebe0f-e6ef-4f1e-83ed-c7bc05f77511',0,20,'\0',NULL,NULL),('1fc170e6-2f20-4204-aaae-535a1e6e7beb',NULL,'reset-otp','9e68e28f-f43c-490b-85c1-4551eb0eb7af','d42f7219-1011-4be4-b2cd-dff659146bdf',1,40,'\0',NULL,NULL),('21097abf-a077-4220-a2c7-b2459057d434',NULL,'idp-confirm-link','9e68e28f-f43c-490b-85c1-4551eb0eb7af','7b8eda90-69e3-49f9-8ff8-c3f969014a0b',0,10,'\0',NULL,NULL),('263c3153-0ff0-45be-807e-f801aacc9e21',NULL,NULL,'master','22e6e275-adf1-4201-a422-9d698380632d',2,30,'','512634fe-c439-40c4-bbf4-417929555f33',NULL),('2801d82e-7225-4bdd-b5fc-553c1cce8a4a',NULL,'client-x509','master','f56ffc96-a8be-4045-9756-8eea4febac47',2,40,'\0',NULL,NULL),('2b52419f-0267-4104-8d59-dec1f9ae968b',NULL,'idp-email-verification','9e68e28f-f43c-490b-85c1-4551eb0eb7af','7b8eda90-69e3-49f9-8ff8-c3f969014a0b',2,20,'\0',NULL,NULL),('2e5b5a77-3172-46dd-8334-8311c0671956',NULL,'auth-username-password-form','master','512634fe-c439-40c4-bbf4-417929555f33',0,10,'\0',NULL,NULL),('312ca53f-104e-44d9-963a-60bdb4179c88',NULL,'registration-profile-action','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9e6262fd-897d-454c-a1d1-d6fe8ab12395',0,40,'\0',NULL,NULL),('32b2076d-7ff1-494f-b94b-b09474ee6c93',NULL,'identity-provider-redirector','9e68e28f-f43c-490b-85c1-4551eb0eb7af','499db961-e5da-4f7f-a65c-ffff67ef3591',2,25,'\0',NULL,NULL),('376db8e1-a533-4890-88ac-e553d6743def',NULL,'registration-profile-action','master','b226fe26-4c51-451a-a7af-9c8f358fe0f2',0,40,'\0',NULL,NULL),('3c05002f-53fc-4a4c-9a1c-ebd01a6d31a3',NULL,'client-secret-jwt','master','f56ffc96-a8be-4045-9756-8eea4febac47',2,30,'\0',NULL,NULL),('3d55e73c-06c0-47d2-a80c-9f80cb4fb8f1',NULL,'reset-otp','master','5da57143-b9e7-4955-a358-2b57ef8731c3',1,40,'\0',NULL,NULL),('410aad70-324b-4143-83ee-c3e714a5ab49',NULL,'client-secret-jwt','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e914d9f7-91b7-415b-b774-426fa704e56d',2,30,'\0',NULL,NULL),('42323e29-055c-4147-aa05-b52d937a7902',NULL,'docker-http-basic-authenticator','9e68e28f-f43c-490b-85c1-4551eb0eb7af','c4882a5e-2d24-4d0d-9a08-09ae6ada14e5',0,10,'\0',NULL,NULL),('43ecafae-772a-4985-83ef-aa59e37681b2',NULL,NULL,'master','7a6809c9-5fe2-4e10-b944-f34754193244',2,30,'','8c6082a3-2c89-4454-9e3f-0f3b2d566bed',NULL),('457bad55-9423-4899-b3ad-5959b4468d07',NULL,'registration-page-form','master','375a7d9a-61dc-4891-aa7f-0b31b5c867e0',0,10,'','b226fe26-4c51-451a-a7af-9c8f358fe0f2',NULL),('45cba14f-9cef-4742-8f08-328410bfd8fe',NULL,'reset-credentials-choose-user','master','5da57143-b9e7-4955-a358-2b57ef8731c3',0,10,'\0',NULL,NULL),('479b522d-e903-46ef-ae7f-7d855ffdccf5',NULL,'auth-username-password-form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9f71aa79-d555-4c2a-b649-7c0708397410',0,10,'\0',NULL,NULL),('47dd122e-56a6-4130-8303-08305942af2e',NULL,'basic-auth-otp','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e19788ef-8572-47bb-bca9-68b3d019b03a',3,30,'\0',NULL,NULL),('4a281234-fe95-4be9-9b31-c03e8c898a61',NULL,'reset-password','9e68e28f-f43c-490b-85c1-4551eb0eb7af','d42f7219-1011-4be4-b2cd-dff659146bdf',0,30,'\0',NULL,NULL),('537ba91a-b68f-48ab-a676-3a8bd3b61c52',NULL,'auth-otp-form','master','b15a1978-0f43-4e06-8d56-e7d12c53b099',1,20,'\0',NULL,NULL),('56594a3d-04a3-40ba-aaaa-8f9ee71d2154',NULL,'auth-cookie','9e68e28f-f43c-490b-85c1-4551eb0eb7af','499db961-e5da-4f7f-a65c-ffff67ef3591',2,10,'\0',NULL,NULL),('670d9cc2-5df1-40fc-80c6-145c54bec682',NULL,'no-cookie-redirect','master','d1f01225-98c8-4e3e-a2b6-104c4a6304d9',0,10,'\0',NULL,NULL),('73ad290e-af81-49a1-8f48-aafa57e2b702',NULL,'basic-auth-otp','master','d1f01225-98c8-4e3e-a2b6-104c4a6304d9',3,30,'\0',NULL,NULL),('7458294d-7124-416e-b02c-12bda431474b',NULL,'registration-recaptcha-action','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9e6262fd-897d-454c-a1d1-d6fe8ab12395',3,60,'\0',NULL,NULL),('75d39e62-3c8d-41d1-b70d-f1d5c9853e65',NULL,'registration-user-creation','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9e6262fd-897d-454c-a1d1-d6fe8ab12395',0,20,'\0',NULL,NULL),('78eac7bd-41d5-4f69-aaa8-8b52f4bb462f',NULL,'basic-auth','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e19788ef-8572-47bb-bca9-68b3d019b03a',0,20,'\0',NULL,NULL),('794cf680-0c27-4f1a-a1c4-2ee92cc57965',NULL,'reset-credentials-choose-user','9e68e28f-f43c-490b-85c1-4551eb0eb7af','d42f7219-1011-4be4-b2cd-dff659146bdf',0,10,'\0',NULL,NULL),('7f588351-6a01-4b05-8b10-12478785d8e4',NULL,'direct-grant-validate-username','9e68e28f-f43c-490b-85c1-4551eb0eb7af','1e4b049b-f415-419d-84dd-4a9c4ddd30ed',0,10,'\0',NULL,NULL),('81abdd79-3496-4783-9bf1-8c2c87b6c061',NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','c08636c3-07ce-424f-9205-e3a1ab8700bc',2,30,'','7b8eda90-69e3-49f9-8ff8-c3f969014a0b',NULL),('81dc4982-8d87-4ed6-84e1-98518e5ccd98',NULL,'registration-recaptcha-action','master','b226fe26-4c51-451a-a7af-9c8f358fe0f2',3,60,'\0',NULL,NULL),('84caf798-dd5c-4a2f-b962-18e1bed9065b',NULL,'auth-spnego','master','22e6e275-adf1-4201-a422-9d698380632d',3,20,'\0',NULL,NULL),('859354d4-1f10-4c43-a4ad-5da9d721aaf6',NULL,'idp-review-profile','9e68e28f-f43c-490b-85c1-4551eb0eb7af','c08636c3-07ce-424f-9205-e3a1ab8700bc',0,10,'\0',NULL,'1b3e56cc-456f-4a7f-81ed-e72940bfdbfd'),('88f7ac31-4648-411c-8fae-0a6a264f4ccc',NULL,'client-x509','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e914d9f7-91b7-415b-b774-426fa704e56d',2,40,'\0',NULL,NULL),('89b477ba-df18-4f18-9492-077ae28862e3',NULL,'basic-auth','master','d1f01225-98c8-4e3e-a2b6-104c4a6304d9',0,20,'\0',NULL,NULL),('9c7d74d3-75fe-4bf3-99d9-1e6edf251f1c',NULL,'client-secret','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e914d9f7-91b7-415b-b774-426fa704e56d',2,10,'\0',NULL,NULL),('a35327e1-3e7c-40ed-9846-bde8d81f6b5e',NULL,'idp-create-user-if-unique','master','7a6809c9-5fe2-4e10-b944-f34754193244',2,20,'\0',NULL,'2424592b-40a8-4403-b6da-4b1e0d120fab'),('a42da15f-16e4-4d72-a57e-53f8621ec637',NULL,'identity-provider-redirector','master','22e6e275-adf1-4201-a422-9d698380632d',2,25,'\0',NULL,NULL),('a64016ef-4331-4f74-8702-4fd4d06de7f0',NULL,'auth-spnego','9e68e28f-f43c-490b-85c1-4551eb0eb7af','499db961-e5da-4f7f-a65c-ffff67ef3591',3,20,'\0',NULL,NULL),('aac93327-8e87-4a03-837b-daf890573601',NULL,'direct-grant-validate-password','9e68e28f-f43c-490b-85c1-4551eb0eb7af','1e4b049b-f415-419d-84dd-4a9c4ddd30ed',0,20,'\0',NULL,NULL),('ab902719-5ea7-462a-b690-b68ece939eb4',NULL,'http-basic-authenticator','9e68e28f-f43c-490b-85c1-4551eb0eb7af','44ef4ff7-b4aa-4997-b0b9-4207f7ed8115',0,10,'\0',NULL,NULL),('b1e32c4d-a70e-4d76-adae-f2499ad3d0ad',NULL,'registration-user-creation','master','b226fe26-4c51-451a-a7af-9c8f358fe0f2',0,20,'\0',NULL,NULL),('b78692e9-4f5f-45fe-a92d-0c1e68801cc1',NULL,'client-secret','master','f56ffc96-a8be-4045-9756-8eea4febac47',2,10,'\0',NULL,NULL),('b807d9c3-674a-4107-8e1c-4768526ca55f',NULL,'registration-page-form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','c6cec925-ce95-4a77-822f-d0bdeffda5ca',0,10,'','9e6262fd-897d-454c-a1d1-d6fe8ab12395',NULL),('ba4bf4c6-66d7-4134-b726-9995ac6d2ae4',NULL,'auth-otp-form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9f71aa79-d555-4c2a-b649-7c0708397410',1,20,'\0',NULL,NULL),('bb27b5bb-f889-4e74-bf89-0f918e56d82d',NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','499db961-e5da-4f7f-a65c-ffff67ef3591',2,30,'','9f71aa79-d555-4c2a-b649-7c0708397410',NULL),('bf68dd35-0a43-4f06-b0bd-d70919a8b509',NULL,'http-basic-authenticator','master','f4df60d1-1f3a-47da-a686-7c7c8bc2a6df',0,10,'\0',NULL,NULL),('c73ca911-cec4-4bac-8a1d-2dc0b9cc1344',NULL,'direct-grant-validate-otp','master','321ebe0f-e6ef-4f1e-83ed-c7bc05f77511',1,30,'\0',NULL,NULL),('c90a8eee-c8d4-4306-bf31-a7391473a3d1',NULL,'reset-credential-email','9e68e28f-f43c-490b-85c1-4551eb0eb7af','d42f7219-1011-4be4-b2cd-dff659146bdf',0,20,'\0',NULL,NULL),('c95dc1cf-5642-40af-ab5b-25d3111dac12',NULL,'idp-username-password-form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','89a0e7ca-f903-4adf-811c-055dbb1c6fcd',0,10,'\0',NULL,NULL),('cbb11b2a-4ff5-436b-ac0c-772d39ef9465',NULL,'idp-create-user-if-unique','9e68e28f-f43c-490b-85c1-4551eb0eb7af','c08636c3-07ce-424f-9205-e3a1ab8700bc',2,20,'\0',NULL,'2e342ff2-5543-4f19-928d-181b4250f9a9'),('d2d5dedd-faf9-4470-a562-e04f1574e122',NULL,'idp-email-verification','master','8c6082a3-2c89-4454-9e3f-0f3b2d566bed',2,20,'\0',NULL,NULL),('d3ab6cad-aebd-465c-aaf9-a1d27600dd0d',NULL,'no-cookie-redirect','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e19788ef-8572-47bb-bca9-68b3d019b03a',0,10,'\0',NULL,NULL),('d59e08c0-d768-432b-95a0-5d875f9b3ab0',NULL,'client-jwt','master','f56ffc96-a8be-4045-9756-8eea4febac47',2,20,'\0',NULL,NULL),('dce799f0-03a6-425b-9e48-f5a34fdfd401',NULL,'reset-credential-email','master','5da57143-b9e7-4955-a358-2b57ef8731c3',0,20,'\0',NULL,NULL),('e10c0ddf-228d-475d-a92e-5fc601cd9921',NULL,'auth-otp-form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','89a0e7ca-f903-4adf-811c-055dbb1c6fcd',1,20,'\0',NULL,NULL),('e30ddacc-a91d-472d-b9d5-b9ad4e2c92a8',NULL,'auth-spnego','master','d1f01225-98c8-4e3e-a2b6-104c4a6304d9',3,40,'\0',NULL,NULL),('e6c77d26-66be-4c76-931a-c9f45a4dec45',NULL,'idp-confirm-link','master','8c6082a3-2c89-4454-9e3f-0f3b2d566bed',0,10,'\0',NULL,NULL),('e8852d9f-9c8a-423d-9fdc-931591430d0a',NULL,'idp-username-password-form','master','b15a1978-0f43-4e06-8d56-e7d12c53b099',0,10,'\0',NULL,NULL),('ea138d9f-3d79-4718-b955-442e5e5c8843',NULL,'docker-http-basic-authenticator','master','a7c89870-b137-4859-811f-507207aa085c',0,10,'\0',NULL,NULL),('eedfd24f-bc8b-40b1-ac33-5340f6639f43',NULL,'direct-grant-validate-username','master','321ebe0f-e6ef-4f1e-83ed-c7bc05f77511',0,10,'\0',NULL,NULL),('f081408b-2b6a-4759-80a6-4325ae7f01b4',NULL,'auth-spnego','9e68e28f-f43c-490b-85c1-4551eb0eb7af','e19788ef-8572-47bb-bca9-68b3d019b03a',3,40,'\0',NULL,NULL),('f0f0b197-2a19-492e-8c30-aeb809a8fffe',NULL,'reset-password','master','5da57143-b9e7-4955-a358-2b57ef8731c3',0,30,'\0',NULL,NULL),('f1e552ba-0932-4e27-8d33-8255f0e3f718',NULL,'auth-cookie','master','22e6e275-adf1-4201-a422-9d698380632d',2,10,'\0',NULL,NULL),('ff82d5e4-6719-41c7-a86c-a7c1810c1092',NULL,'registration-password-action','master','b226fe26-4c51-451a-a7af-9c8f358fe0f2',0,50,'\0',NULL,NULL),('ffec4657-3427-402f-9477-d0cee55d620d',NULL,'auth-otp-form','master','512634fe-c439-40c4-bbf4-417929555f33',1,20,'\0',NULL,NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES ('1e4b049b-f415-419d-84dd-4a9c4ddd30ed','direct grant','OpenID Connect Resource Owner Grant','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('22e6e275-adf1-4201-a422-9d698380632d','browser','browser based authentication','master','basic-flow','',''),('321ebe0f-e6ef-4f1e-83ed-c7bc05f77511','direct grant','OpenID Connect Resource Owner Grant','master','basic-flow','',''),('375a7d9a-61dc-4891-aa7f-0b31b5c867e0','registration','registration flow','master','basic-flow','',''),('44ef4ff7-b4aa-4997-b0b9-4207f7ed8115','saml ecp','SAML ECP Profile Authentication Flow','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('499db961-e5da-4f7f-a65c-ffff67ef3591','browser','browser based authentication','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('512634fe-c439-40c4-bbf4-417929555f33','forms','Username, password, otp and other auth forms.','master','basic-flow','\0',''),('5da57143-b9e7-4955-a358-2b57ef8731c3','reset credentials','Reset credentials for a user if they forgot their password or something','master','basic-flow','',''),('7a6809c9-5fe2-4e10-b944-f34754193244','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','master','basic-flow','',''),('7b8eda90-69e3-49f9-8ff8-c3f969014a0b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','\0',''),('89a0e7ca-f903-4adf-811c-055dbb1c6fcd','Verify Existing Account by Re-authentication','Reauthentication of existing account','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','\0',''),('8c6082a3-2c89-4454-9e3f-0f3b2d566bed','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','master','basic-flow','\0',''),('9e6262fd-897d-454c-a1d1-d6fe8ab12395','registration form','registration form','9e68e28f-f43c-490b-85c1-4551eb0eb7af','form-flow','\0',''),('9f71aa79-d555-4c2a-b649-7c0708397410','forms','Username, password, otp and other auth forms.','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','\0',''),('a7c89870-b137-4859-811f-507207aa085c','docker auth','Used by Docker clients to authenticate against the IDP','master','basic-flow','',''),('b15a1978-0f43-4e06-8d56-e7d12c53b099','Verify Existing Account by Re-authentication','Reauthentication of existing account','master','basic-flow','\0',''),('b226fe26-4c51-451a-a7af-9c8f358fe0f2','registration form','registration form','master','form-flow','\0',''),('c08636c3-07ce-424f-9205-e3a1ab8700bc','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('c4882a5e-2d24-4d0d-9a08-09ae6ada14e5','docker auth','Used by Docker clients to authenticate against the IDP','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('c6cec925-ce95-4a77-822f-d0bdeffda5ca','registration','registration flow','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('d1f01225-98c8-4e3e-a2b6-104c4a6304d9','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','master','basic-flow','',''),('d42f7219-1011-4be4-b2cd-dff659146bdf','reset credentials','Reset credentials for a user if they forgot their password or something','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('e19788ef-8572-47bb-bca9-68b3d019b03a','http challenge','An authentication flow based on challenge-response HTTP Authentication Schemes','9e68e28f-f43c-490b-85c1-4551eb0eb7af','basic-flow','',''),('e914d9f7-91b7-415b-b774-426fa704e56d','clients','Base authentication for clients','9e68e28f-f43c-490b-85c1-4551eb0eb7af','client-flow','',''),('f4df60d1-1f3a-47da-a686-7c7c8bc2a6df','saml ecp','SAML ECP Profile Authentication Flow','master','basic-flow','',''),('f56ffc96-a8be-4045-9756-8eea4febac47','clients','Base authentication for clients','master','client-flow','','');
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES ('1b3e56cc-456f-4a7f-81ed-e72940bfdbfd','review profile config','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('2424592b-40a8-4403-b6da-4b1e0d120fab','create unique user config','master'),('2e342ff2-5543-4f19-928d-181b4250f9a9','create unique user config','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('c5c94387-3438-45b4-9968-01c331968345','review profile config','master');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES ('1b3e56cc-456f-4a7f-81ed-e72940bfdbfd','missing','update.profile.on.first.login'),('2424592b-40a8-4403-b6da-4b1e0d120fab','false','require.password.update.after.registration'),('2e342ff2-5543-4f19-928d-181b4250f9a9','false','require.password.update.after.registration'),('c5c94387-3438-45b4-9968-01c331968345','missing','update.profile.on.first.login');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  CONSTRAINT `FK_P56CTINXXB9GSK57FO49F9TAC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES ('21b72ae5-638c-441c-a6b6-aac391d606c8','','','auth-server',0,'\0','f605b150-7636-4447-abd3-70988786b330',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','\0'),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','','\0','admin-cli',0,'','2f16c5df-9b74-491c-9664-7615a8c12292',NULL,'\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0',''),('4144f258-3524-4280-82f8-d0944712fea5','','\0','broker',0,'\0','8c702cf6-69d3-4714-92d4-b796992fab1a',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('59f86909-777c-459e-8246-53847f656538','','','service-api',0,'\0','',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','\0'),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','','','lagoon-opendistro-security',0,'\0','822c6877-72f6-49f0-9aa0-0695d08d715e',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','','\0','realm-management',0,'\0','1aeb2027-3e81-4967-a780-b006f63cf004',NULL,'',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',0,'\0','\0','${client_realm-management}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','','\0','account',0,'\0','ab8e0710-97bc-4013-820e-7864623145f5','/auth/realms/lagoon/account','\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',0,'\0','\0','${client_account}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('80682831-ddd5-489c-99d1-de18376281e4','','\0','account',0,'\0','712aa571-8e69-444e-a20c-1e5605e4db5a','/auth/realms/master/account','\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_account}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('9c0b99b8-7518-49ef-a253-cfcd899857d9','','','api',0,'\0','39d5282d-3684-4026-b4ed-04bbc034b61a',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',-1,'\0','\0',NULL,'','client-secret',NULL,NULL,NULL,'\0','\0','\0'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','','\0','security-admin-console',0,'','e650bcf6-e04c-4808-8018-ab44da4d730c','/auth/admin/lagoon/console/index.html','\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('b44dc36c-3640-4560-922c-524b00355f0b','','\0','broker',0,'\0','d9147e2a-f2a3-40fe-8722-74565a6dcb95',NULL,'\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_broker}','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('b477ca96-3489-493f-b00a-eab58fdb70ce','','\0','admin-cli',0,'','dcb03c31-1729-48e6-8750-b8e692c7b8d7',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',0,'\0','\0','${client_admin-cli}','\0','client-secret',NULL,NULL,NULL,'\0','\0',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','','','lagoon-ui',0,'','011111a2-09f8-4c5e-a771-9a0175ce51c1',NULL,'\0',NULL,'\0','9e68e28f-f43c-490b-85c1-4551eb0eb7af','openid-connect',-1,'\0','\0',NULL,'\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('d5943451-7ddf-4016-93f1-128ca7a34809','','','lagoon-realm',0,'\0','21d7c5a3-b034-41ff-b7df-1dbbed6ec776',NULL,'',NULL,'\0','master',NULL,0,'\0','\0','lagoon Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','','master-realm',0,'\0','9cba6925-2e39-4a76-9445-5d620519b95b',NULL,'',NULL,'\0','master',NULL,0,'\0','\0','master Realm','\0','client-secret',NULL,NULL,NULL,'','\0','\0'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','','\0','security-admin-console',0,'','53bd0f08-dc3b-4216-99df-ae8a8f2b1c4c','/auth/admin/master/console/index.html','\0',NULL,'\0','master','openid-connect',0,'\0','\0','${client_security-admin-console}','\0','client-secret',NULL,NULL,NULL,'','\0','\0');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_DEFAULT_ROLES`
--

DROP TABLE IF EXISTS `CLIENT_DEFAULT_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_DEFAULT_ROLES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  UNIQUE KEY `UK_8AELWNIBJI49AVXSRTUF6XJOW` (`ROLE_ID`),
  KEY `IDX_CLIENT_DEF_ROLES_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_8AELWNIBJI49AVXSRTUF6XJOW` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_NUILTS7KLWQW2H8M2B5JOYTKY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_DEFAULT_ROLES`
--

LOCK TABLES `CLIENT_DEFAULT_ROLES` WRITE;
/*!40000 ALTER TABLE `CLIENT_DEFAULT_ROLES` DISABLE KEYS */;
INSERT INTO `CLIENT_DEFAULT_ROLES` VALUES ('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','4eb19efe-c64c-4031-9def-b0658c5a8e7e'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','b618b696-6149-4cca-ba1a-0647f183b79d'),('80682831-ddd5-489c-99d1-de18376281e4','44c334af-3a3d-4509-af5b-8ed8a9645bcc'),('80682831-ddd5-489c-99d1-de18376281e4','682bdcae-d63e-475c-b8be-783e8bb57a41');
/*!40000 ALTER TABLE `CLIENT_DEFAULT_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`),
  CONSTRAINT `FK_REALM_CLI_SCOPE` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES ('087b6ed9-c9fc-4b2a-b0c9-17fc535a256c','email','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect built-in scope: email','openid-connect'),('0bcad6e1-8617-4683-9b3f-ec7412b24274','address','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect built-in scope: address','openid-connect'),('3b68e72d-870c-4818-87b9-2c26f574a9b4','roles','master','OpenID Connect scope for add user roles to the access token','openid-connect'),('3c1d53b1-f524-462c-853b-f9f47e4c0b0a','offline_access','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect built-in scope: offline_access','openid-connect'),('6018fec5-1b3e-4561-9d57-5c314709c011','profile','master','OpenID Connect built-in scope: profile','openid-connect'),('7ccc42b8-0e95-4ee9-a62a-0c6256743e54','web-origins','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),('87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','microprofile-jwt','master','Microprofile - JWT built-in scope','openid-connect'),('88157c5f-1f6f-4b92-9613-8ba47e6fdb12','email','master','OpenID Connect built-in scope: email','openid-connect'),('88982821-4edb-4797-bef9-d45a59cdc60d','phone','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect built-in scope: phone','openid-connect'),('8e2f383d-4d0c-4679-959c-834d45b3ca16','phone','master','OpenID Connect built-in scope: phone','openid-connect'),('8fe92e09-ca27-42b9-9fef-4694812fcbd4','microprofile-jwt','9e68e28f-f43c-490b-85c1-4551eb0eb7af','Microprofile - JWT built-in scope','openid-connect'),('90c0203c-e9ba-4930-bb65-80c4004547ca','role_list','9e68e28f-f43c-490b-85c1-4551eb0eb7af','SAML role list','saml'),('9afd17d0-c99e-48bd-bc15-13a79e4c2368','address','master','OpenID Connect built-in scope: address','openid-connect'),('beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18','profile','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect built-in scope: profile','openid-connect'),('c4162f99-1635-4756-a718-190d7171ec38','roles','9e68e28f-f43c-490b-85c1-4551eb0eb7af','OpenID Connect scope for add user roles to the access token','openid-connect'),('e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c','role_list','master','SAML role list','saml'),('e6315c90-93f4-48e7-86b1-1b25101e35bf','offline_access','master','OpenID Connect built-in scope: offline_access','openid-connect'),('ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','web-origins','master','OpenID Connect scope for add allowed web origins to the access token','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES ('087b6ed9-c9fc-4b2a-b0c9-17fc535a256c','${emailScopeConsentText}','consent.screen.text'),('087b6ed9-c9fc-4b2a-b0c9-17fc535a256c','true','display.on.consent.screen'),('087b6ed9-c9fc-4b2a-b0c9-17fc535a256c','true','include.in.token.scope'),('0bcad6e1-8617-4683-9b3f-ec7412b24274','${addressScopeConsentText}','consent.screen.text'),('0bcad6e1-8617-4683-9b3f-ec7412b24274','true','display.on.consent.screen'),('0bcad6e1-8617-4683-9b3f-ec7412b24274','true','include.in.token.scope'),('3b68e72d-870c-4818-87b9-2c26f574a9b4','${rolesScopeConsentText}','consent.screen.text'),('3b68e72d-870c-4818-87b9-2c26f574a9b4','true','display.on.consent.screen'),('3b68e72d-870c-4818-87b9-2c26f574a9b4','false','include.in.token.scope'),('3c1d53b1-f524-462c-853b-f9f47e4c0b0a','${offlineAccessScopeConsentText}','consent.screen.text'),('3c1d53b1-f524-462c-853b-f9f47e4c0b0a','true','display.on.consent.screen'),('6018fec5-1b3e-4561-9d57-5c314709c011','${profileScopeConsentText}','consent.screen.text'),('6018fec5-1b3e-4561-9d57-5c314709c011','true','display.on.consent.screen'),('6018fec5-1b3e-4561-9d57-5c314709c011','true','include.in.token.scope'),('7ccc42b8-0e95-4ee9-a62a-0c6256743e54','','consent.screen.text'),('7ccc42b8-0e95-4ee9-a62a-0c6256743e54','false','display.on.consent.screen'),('7ccc42b8-0e95-4ee9-a62a-0c6256743e54','false','include.in.token.scope'),('87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','false','display.on.consent.screen'),('87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','true','include.in.token.scope'),('88157c5f-1f6f-4b92-9613-8ba47e6fdb12','${emailScopeConsentText}','consent.screen.text'),('88157c5f-1f6f-4b92-9613-8ba47e6fdb12','true','display.on.consent.screen'),('88157c5f-1f6f-4b92-9613-8ba47e6fdb12','true','include.in.token.scope'),('88982821-4edb-4797-bef9-d45a59cdc60d','${phoneScopeConsentText}','consent.screen.text'),('88982821-4edb-4797-bef9-d45a59cdc60d','true','display.on.consent.screen'),('88982821-4edb-4797-bef9-d45a59cdc60d','true','include.in.token.scope'),('8e2f383d-4d0c-4679-959c-834d45b3ca16','${phoneScopeConsentText}','consent.screen.text'),('8e2f383d-4d0c-4679-959c-834d45b3ca16','true','display.on.consent.screen'),('8e2f383d-4d0c-4679-959c-834d45b3ca16','true','include.in.token.scope'),('8fe92e09-ca27-42b9-9fef-4694812fcbd4','false','display.on.consent.screen'),('8fe92e09-ca27-42b9-9fef-4694812fcbd4','true','include.in.token.scope'),('90c0203c-e9ba-4930-bb65-80c4004547ca','${samlRoleListScopeConsentText}','consent.screen.text'),('90c0203c-e9ba-4930-bb65-80c4004547ca','true','display.on.consent.screen'),('9afd17d0-c99e-48bd-bc15-13a79e4c2368','${addressScopeConsentText}','consent.screen.text'),('9afd17d0-c99e-48bd-bc15-13a79e4c2368','true','display.on.consent.screen'),('9afd17d0-c99e-48bd-bc15-13a79e4c2368','true','include.in.token.scope'),('beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18','${profileScopeConsentText}','consent.screen.text'),('beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18','true','display.on.consent.screen'),('beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18','true','include.in.token.scope'),('c4162f99-1635-4756-a718-190d7171ec38','${rolesScopeConsentText}','consent.screen.text'),('c4162f99-1635-4756-a718-190d7171ec38','true','display.on.consent.screen'),('c4162f99-1635-4756-a718-190d7171ec38','false','include.in.token.scope'),('e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c','${samlRoleListScopeConsentText}','consent.screen.text'),('e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c','true','display.on.consent.screen'),('e6315c90-93f4-48e7-86b1-1b25101e35bf','${offlineAccessScopeConsentText}','consent.screen.text'),('e6315c90-93f4-48e7-86b1-1b25101e35bf','true','display.on.consent.screen'),('ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','','consent.screen.text'),('ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','false','display.on.consent.screen'),('ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','false','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_C_CLI_SCOPE_CLIENT` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`),
  CONSTRAINT `FK_C_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES ('21b72ae5-638c-441c-a6b6-aac391d606c8','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('21b72ae5-638c-441c-a6b6-aac391d606c8','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('21b72ae5-638c-441c-a6b6-aac391d606c8','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('21b72ae5-638c-441c-a6b6-aac391d606c8','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('21b72ae5-638c-441c-a6b6-aac391d606c8','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('21b72ae5-638c-441c-a6b6-aac391d606c8','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('21b72ae5-638c-441c-a6b6-aac391d606c8','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('21b72ae5-638c-441c-a6b6-aac391d606c8','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('21b72ae5-638c-441c-a6b6-aac391d606c8','c4162f99-1635-4756-a718-190d7171ec38',''),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','6018fec5-1b3e-4561-9d57-5c314709c011',''),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('311b7e0c-b32d-4f38-86ac-d6c92ed14cd5','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b',''),('4144f258-3524-4280-82f8-d0944712fea5','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('4144f258-3524-4280-82f8-d0944712fea5','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('4144f258-3524-4280-82f8-d0944712fea5','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('4144f258-3524-4280-82f8-d0944712fea5','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('4144f258-3524-4280-82f8-d0944712fea5','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('4144f258-3524-4280-82f8-d0944712fea5','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('4144f258-3524-4280-82f8-d0944712fea5','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('4144f258-3524-4280-82f8-d0944712fea5','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('4144f258-3524-4280-82f8-d0944712fea5','c4162f99-1635-4756-a718-190d7171ec38',''),('59f86909-777c-459e-8246-53847f656538','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('59f86909-777c-459e-8246-53847f656538','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('59f86909-777c-459e-8246-53847f656538','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('59f86909-777c-459e-8246-53847f656538','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('59f86909-777c-459e-8246-53847f656538','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('59f86909-777c-459e-8246-53847f656538','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('59f86909-777c-459e-8246-53847f656538','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('59f86909-777c-459e-8246-53847f656538','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('59f86909-777c-459e-8246-53847f656538','c4162f99-1635-4756-a718-190d7171ec38',''),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('61831f3e-d644-463d-baa8-eff1bb4f5c8d','c4162f99-1635-4756-a718-190d7171ec38',''),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('738f5ead-ea8c-4254-9016-9eb16b0aa17f','c4162f99-1635-4756-a718-190d7171ec38',''),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','c4162f99-1635-4756-a718-190d7171ec38',''),('80682831-ddd5-489c-99d1-de18376281e4','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('80682831-ddd5-489c-99d1-de18376281e4','6018fec5-1b3e-4561-9d57-5c314709c011',''),('80682831-ddd5-489c-99d1-de18376281e4','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('80682831-ddd5-489c-99d1-de18376281e4','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('80682831-ddd5-489c-99d1-de18376281e4','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('80682831-ddd5-489c-99d1-de18376281e4','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('80682831-ddd5-489c-99d1-de18376281e4','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('80682831-ddd5-489c-99d1-de18376281e4','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('80682831-ddd5-489c-99d1-de18376281e4','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b',''),('9c0b99b8-7518-49ef-a253-cfcd899857d9','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('9c0b99b8-7518-49ef-a253-cfcd899857d9','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('9c0b99b8-7518-49ef-a253-cfcd899857d9','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('9c0b99b8-7518-49ef-a253-cfcd899857d9','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('9c0b99b8-7518-49ef-a253-cfcd899857d9','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('9c0b99b8-7518-49ef-a253-cfcd899857d9','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('9c0b99b8-7518-49ef-a253-cfcd899857d9','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('9c0b99b8-7518-49ef-a253-cfcd899857d9','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('9c0b99b8-7518-49ef-a253-cfcd899857d9','c4162f99-1635-4756-a718-190d7171ec38',''),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','c4162f99-1635-4756-a718-190d7171ec38',''),('b44dc36c-3640-4560-922c-524b00355f0b','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('b44dc36c-3640-4560-922c-524b00355f0b','6018fec5-1b3e-4561-9d57-5c314709c011',''),('b44dc36c-3640-4560-922c-524b00355f0b','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('b44dc36c-3640-4560-922c-524b00355f0b','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('b44dc36c-3640-4560-922c-524b00355f0b','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('b44dc36c-3640-4560-922c-524b00355f0b','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('b44dc36c-3640-4560-922c-524b00355f0b','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('b44dc36c-3640-4560-922c-524b00355f0b','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('b44dc36c-3640-4560-922c-524b00355f0b','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b',''),('b477ca96-3489-493f-b00a-eab58fdb70ce','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('b477ca96-3489-493f-b00a-eab58fdb70ce','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('b477ca96-3489-493f-b00a-eab58fdb70ce','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('b477ca96-3489-493f-b00a-eab58fdb70ce','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('b477ca96-3489-493f-b00a-eab58fdb70ce','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('b477ca96-3489-493f-b00a-eab58fdb70ce','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('b477ca96-3489-493f-b00a-eab58fdb70ce','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('b477ca96-3489-493f-b00a-eab58fdb70ce','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('b477ca96-3489-493f-b00a-eab58fdb70ce','c4162f99-1635-4756-a718-190d7171ec38',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('c08235fc-5d0a-493f-9f18-a4b55456f561','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('c08235fc-5d0a-493f-9f18-a4b55456f561','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('c08235fc-5d0a-493f-9f18-a4b55456f561','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('c08235fc-5d0a-493f-9f18-a4b55456f561','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('c08235fc-5d0a-493f-9f18-a4b55456f561','c4162f99-1635-4756-a718-190d7171ec38',''),('d5943451-7ddf-4016-93f1-128ca7a34809','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('d5943451-7ddf-4016-93f1-128ca7a34809','6018fec5-1b3e-4561-9d57-5c314709c011',''),('d5943451-7ddf-4016-93f1-128ca7a34809','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('d5943451-7ddf-4016-93f1-128ca7a34809','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('d5943451-7ddf-4016-93f1-128ca7a34809','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('d5943451-7ddf-4016-93f1-128ca7a34809','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('d5943451-7ddf-4016-93f1-128ca7a34809','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('d5943451-7ddf-4016-93f1-128ca7a34809','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('d5943451-7ddf-4016-93f1-128ca7a34809','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b',''),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','6018fec5-1b3e-4561-9d57-5c314709c011',''),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('f1f6d07f-b5f1-4747-b39a-72d9b300e38c','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b',''),('f3c47970-e2cb-4868-8d8c-89529967e5b1','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('f3c47970-e2cb-4868-8d8c-89529967e5b1','6018fec5-1b3e-4561-9d57-5c314709c011',''),('f3c47970-e2cb-4868-8d8c-89529967e5b1','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('f3c47970-e2cb-4868-8d8c-89529967e5b1','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('f3c47970-e2cb-4868-8d8c-89529967e5b1','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','');
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES ('3c1d53b1-f524-462c-853b-f9f47e4c0b0a','c6834368-9bf4-4edd-b607-7b4d741209ac'),('e6315c90-93f4-48e7-86b1-1b25101e35bf','0bc9d6f6-658f-44f3-94b6-4808015b7a71');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION`
--

DROP TABLE IF EXISTS `CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`),
  CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION`
--

LOCK TABLES `CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_AUTH_STATUS`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_AUTH_STATUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`),
  CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_AUTH_STATUS`
--

LOCK TABLES `CLIENT_SESSION_AUTH_STATUS` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_AUTH_STATUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_NOTE`
--

LOCK TABLES `CLIENT_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_PROT_MAPPER`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_PROT_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`),
  CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_PROT_MAPPER`
--

LOCK TABLES `CLIENT_SESSION_PROT_MAPPER` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_PROT_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_SESSION_ROLE`
--

DROP TABLE IF EXISTS `CLIENT_SESSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`),
  CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SESSION_ROLE`
--

LOCK TABLES `CLIENT_SESSION_ROLE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_SESSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `CLIENT_USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_SESSION`,`NAME`),
  CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_USER_SESSION_NOTE`
--

LOCK TABLES `CLIENT_USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES ('06bbd66d-a8ed-44b9-9146-b72090949372','Allowed Client Scopes','9e68e28f-f43c-490b-85c1-4551eb0eb7af','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('080d9a7c-589f-4321-b63a-f767f1e1b093','Full Scope Disabled','master','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('0c544e23-87fe-4511-ba01-b7e30bca2813','rsa-generated','9e68e28f-f43c-490b-85c1-4551eb0eb7af','rsa-generated','org.keycloak.keys.KeyProvider','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL),('288c5585-ea9f-415d-8990-14de32a4b385','Allowed Protocol Mapper Types','9e68e28f-f43c-490b-85c1-4551eb0eb7af','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','authenticated'),('313d67c9-507d-42bc-8a09-78ff0bd50e25','hmac-generated','9e68e28f-f43c-490b-85c1-4551eb0eb7af','hmac-generated','org.keycloak.keys.KeyProvider','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL),('3e3acf19-a418-4566-a8ff-d0e355a2acd4','Max Clients Limit','9e68e28f-f43c-490b-85c1-4551eb0eb7af','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('51498463-fbcb-466c-b0d2-821ce5df8418','Trusted Hosts','master','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('878032ed-7f71-467b-bbff-55cc89ced316','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('8bcd89b4-6786-4c04-91f6-185ce637e420','aes-generated','9e68e28f-f43c-490b-85c1-4551eb0eb7af','aes-generated','org.keycloak.keys.KeyProvider','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL),('946b6b7a-f03a-4ea2-ad7f-a71b66defc14','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('9eede6a1-6e73-408a-85b6-ba7387ae8b01','Full Scope Disabled','9e68e28f-f43c-490b-85c1-4551eb0eb7af','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('a55fddd5-3a39-466d-9398-ac9d813b851b','Consent Required','master','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('a7429f0a-3f0c-442d-af68-d22f8fc29b07','Max Clients Limit','master','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('bab020f6-16fe-436a-bc59-1add2bc363f1','Allowed Protocol Mapper Types','9e68e28f-f43c-490b-85c1-4551eb0eb7af','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('d12bff6f-d785-4bc9-921b-c70b7732a90c','Allowed Protocol Mapper Types','master','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','anonymous'),('d1f30c81-8f0d-4e32-bda3-779ed04df33d','hmac-generated','master','hmac-generated','org.keycloak.keys.KeyProvider','master',NULL),('d2509938-068a-4c50-ab43-459ca9883e8c','Allowed Client Scopes','master','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','master','authenticated'),('d331939a-6a28-4bea-9a3c-0afc87d3f912','rsa-generated','master','rsa-generated','org.keycloak.keys.KeyProvider','master',NULL),('de7519c6-c799-4af1-b841-97da6bb24275','Consent Required','9e68e28f-f43c-490b-85c1-4551eb0eb7af','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('e1810d6a-daac-4330-aaf8-85e2756c8f44','Trusted Hosts','9e68e28f-f43c-490b-85c1-4551eb0eb7af','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','anonymous'),('e3acfe67-d459-4024-ae74-ffb39c8d4888','aes-generated','master','aes-generated','org.keycloak.keys.KeyProvider','master',NULL),('f3c21d46-7321-4c72-aa69-d6eec2a2c59d','Allowed Client Scopes','9e68e28f-f43c-490b-85c1-4551eb0eb7af','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','9e68e28f-f43c-490b-85c1-4551eb0eb7af','authenticated');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES ('010a2d02-27ac-4ec9-b535-ad7434cd4c97','e3acfe67-d459-4024-ae74-ffb39c8d4888','priority','100'),('0256599b-60d3-4d3e-b596-8ca2873d60ad','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('02f99c7f-bf98-4298-9e19-bf91eb9ee34f','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','oidc-address-mapper'),('06b56acd-0395-47a6-83f2-72f4994fda60','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','saml-user-property-mapper'),('08359a64-e725-419c-90a7-dc9510170d26','3e3acf19-a418-4566-a8ff-d0e355a2acd4','max-clients','200'),('0f43b1bc-0ac8-4763-a9dc-47ded8cfca9f','e3acfe67-d459-4024-ae74-ffb39c8d4888','kid','a4c724d4-57d5-4eed-9c93-874b9f85726e'),('106dafd7-e8e5-4aa5-80ad-a1911eefb10a','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','oidc-full-name-mapper'),('191237c5-5b1f-43ae-babe-7b82687101f6','e1810d6a-daac-4330-aaf8-85e2756c8f44','host-sending-registration-request-must-match','true'),('210df538-22f1-44e0-a51f-2287090a25df','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('245f398e-e2e8-4f84-867f-7f7699c04fa2','06bbd66d-a8ed-44b9-9146-b72090949372','allow-default-scopes','true'),('25b0e9de-d19f-4989-a1ec-813d58f84e13','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','saml-user-property-mapper'),('2aa78e8a-4d5d-41c6-9bf1-07305218495c','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','saml-role-list-mapper'),('31fd0809-cf15-4e96-8f47-fe60a611171e','313d67c9-507d-42bc-8a09-78ff0bd50e25','priority','100'),('32158e52-8bff-4470-be01-66aa8853ccba','d1f30c81-8f0d-4e32-bda3-779ed04df33d','kid','3d44904c-b4a6-4d63-8dfa-474d634ddf02'),('331b69b2-c701-46ee-b166-9b61b613e98b','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','saml-user-property-mapper'),('35bba356-2adc-422d-84de-38e3f44644c3','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','oidc-full-name-mapper'),('45165481-6240-426a-95fb-2edc721190b7','e3acfe67-d459-4024-ae74-ffb39c8d4888','secret','vwQYcCCs7JP2LMIzyfjFig'),('457fdb13-c11a-44ab-9d01-7ab22ebb49d3','8bcd89b4-6786-4c04-91f6-185ce637e420','secret','i3opALPcvRpSoKw1D_TeWQ'),('4b665a74-0682-4121-b4bc-4c9de8057316','d331939a-6a28-4bea-9a3c-0afc87d3f912','privateKey','MIIEogIBAAKCAQEAio+ceovL8uQLrbU7KUvs/tSpBNt2UT7xdykVI2XvQXnTCE6VjE3jG6DhuaRdvpO7bpZcW0W6Z/jzE/o8odLput7n0tUrSzAhykpUrYloXuhZZ4+79s9lKf+lqIXrKG2rZWxeW+HgmrvryTmGICkrsce5FRjKfPIITzb+D4TCOyeCW/OZNXcMTe6042A06dPwFykEk1y+9bP528zmK9N/UstN8PtdtavtMvnjobxGNnKVDO7Vpk9Lby0P/13AvNoT2adTNOv4zI/ofQD1Jhjdja/z01mTTIWFAebpjXS7jKG1UucTbbpQNFgslblHX5l47rtCvDKB19lsjFpvPtFCiwIDAQABAoIBADPLbyDX9Qr8d+kdH9pWCWdQs0Wfi+De+IAkmUQ8LG17TomCZqCl1MlVIEu2x1wf+SZjim6L6BxJkQPcvKF5J+m0vU+wY5idi2QE2RZtkNg5XoI51ndyG0zRxWjzdm4MYM9u7O7Hxp/Qs1jq6dpHyY+RKvxZ4gdGqhiCZAIFDF3z3wPm1DEkn0e7pYbQ8bSTRr6m8cLwxSDet4jeDZiVTl3W/Vf3KFl8K1gD4T6jLj2MqVElyL1L0tpNUguFsNfmV64nxnlCPZn4f5HNiUQwUrG+XpwITIHbmDa6WD7SYZkbl0VxZVPRE+nkGWCY7G28jcxbxHM0gQ+oLsHdUzm5M9ECgYEA1RFx0yFd/J0dgzg6THT4R6yuAMy509mme7vsRoCLiF7LEH8MI43NUWhHRy+OojuwAe3Pdbem8XFzmHEO3mM3DpBggj46jAk350fY5yJOPoIfOAIUtuhEnl3yi27/5Jn/Nf1tKsDv2FdpYwv+DnrvhTKfyT30uiAvgK4A+t0ROwcCgYEApnrphMnKhBPEc/UbaTQUaFabso+feB+WHAv24IOap5skbQYLkFbYuiLcUE2Zc+cVhDOCVfkEmeFMk31siXfYZxzEGmpIGjpjIM4GpVonN+zvrVnGrxm0Dq5LR3jyBjUP90QqEGnYU9e/4AooGUk5CTsj2M5sYjTBk1DxAfH5Z10CgYBqnR0AkUyvL4rp8wOw6EKn0q8KtWYyrFDSzziuGno3VX90lK3lSHo5Rt2LsC9F3Gn4vR82/xto6uT1nXTcMHcHMZUo9qxjD+XKM7hEB3Vxb7jhVKE62MQlHktUG8mtgKUkRdgPMZWSAkM4jXKlmjwpwSgVEYxYaex7DhZtcJrDlwKBgBij8JQ62cKaumT/TkNP9gVLbFgNcejxo+Ia0zt/vxA3ojiQwH1onUNPjZRFKAVDmqeqiAv5g3jTI+ZglgPyvRDl7RCL0ogvRCTC2bD3mv5oD0F1HDcmcsQJgBLgD9JjYC2U5TTwtZgTQs8CMdUsRUjce/3G77vJWy1WuZU0H1nxAoGAYo+PIuPXtYdXKyK1EOCjz8EjUDRMRPYvqEUsdBT4kEWZkZ75bLXquteUoLzH3QVZtJbXcuCyssDVNBgfeqJkjhdSKmiCgWIaCMOMk2ZgZS+UOoEy9l9Y8T2787SqRaaBhGTiVWDU4Gz0zdhajTEyj0oNE6isikmhgqsZPGNijYM='),('4b9a49cd-3b47-45cc-baa4-39eeaa4e6b92','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('4f440227-4506-4f95-92ff-e3b56137dff5','d1f30c81-8f0d-4e32-bda3-779ed04df33d','priority','100'),('4fc80caa-3c0e-405a-af9b-bfd7b021d20e','878032ed-7f71-467b-bbff-55cc89ced316','allow-default-scopes','true'),('504944b5-3ab6-4b9c-948d-75eb45642313','313d67c9-507d-42bc-8a09-78ff0bd50e25','secret','uaobwe1wfxo0bK8mxT6Ppc3OQE6xGYcWg_vrwlGwpnTZaC-5lUVDL5macMmc2yWP5U-9bs1x2C9daaFA1pehsw'),('610807f3-9e94-4ca0-9ba4-d0c7c3ea49c3','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('6ffc2f24-9cbf-4463-b471-bdd61f3ff702','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','saml-role-list-mapper'),('70b22ed9-8ef4-4128-ac01-6eed46aa98a0','8bcd89b4-6786-4c04-91f6-185ce637e420','kid','36a82a0d-d626-415c-b521-3732a6ac92b4'),('70b9cc90-40f1-4bed-8d2f-59fa0cc71dde','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','oidc-full-name-mapper'),('757a2067-f940-41eb-8db9-95b4e0cc1ca5','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','saml-role-list-mapper'),('7dbb7a6d-ad76-4f40-ad02-55167a685129','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','oidc-address-mapper'),('7e0f6bf3-5f0c-400d-bf5e-2da5aa2bd896','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('8045bfbc-632a-41db-bc38-674f696586c3','f3c21d46-7321-4c72-aa69-d6eec2a2c59d','allow-default-scopes','true'),('8212b97a-fd23-4216-87f4-6a6b6f461705','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','oidc-address-mapper'),('82cf8dfc-79dc-472c-9b50-4c769f2f8231','d2509938-068a-4c50-ab43-459ca9883e8c','allow-default-scopes','true'),('859b7c95-a545-4a8c-93bb-2f08236fab28','d331939a-6a28-4bea-9a3c-0afc87d3f912','priority','100'),('8804b04d-7278-43d7-b597-0b9b9a9dd87b','0c544e23-87fe-4511-ba01-b7e30bca2813','certificate','MIICmzCCAYMCBgF//oqkcDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZsYWdvb24wHhcNMjIwNDA2MTEwMTEzWhcNMzIwNDA2MTEwMjUzWjARMQ8wDQYDVQQDDAZsYWdvb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCQLeWsVZuhA1kxJ3emBHMnq6gMZFV6ewUOGlhiwQ+rA9G4d2rFxfYxk4KGYndyTjLzhPUqOdJ8u+tU5bPzOFuNgVuX/bsFkelbGmIodhKNWy7khoEWLRb3En/Mvq+f+J1Fxbtx+6vQ5R/9f70sAQzcz3YFRvTmBU6V4LqP9HrHrE0QQFcpctYCR17a8bRedjcmIZrVvcVgymu8xdzu7PtGidemx+5f6zbx9krgetAamDwN94mF4O4ywJbpu3vFx+mFNwrEN8Tn8yGX1YClQKUcnBwJaN4IsTlXxS1n9F3UoNOwQsERN6d8juYjOVm6QqCw9ygLissCOP/AnJoBj1pFAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABly15I7T38rDSN7cjrX6UcdJ1TOwsZoU9D2OF4TDkwoIbLgfq45Wq3DaeUq/4DA32VAGxftOT6cDeKFeE5D6N2ut9eStPdlAoxINt6XISYo+1Jx5Y8DlCVWHR/4g3sxdf7xy/x6YortcvfgvTUOroJRec7tFkjbz8ihLRa7eF65CrfmvzYpNhW+rhvfU3ZVgRUN8awYsbl+f2aipHENmM05MU0lYNYkZYAPhjNwIgWmtzE8+aY788Yyv0LTq8HjMg3TqQ6qHYGtIk/BbBm71bfVz67t5mt7/fR1UHgy5Zc+f2EJ4nZZkwA4nSCVdbl1uCbtuv7Tb2XOhlRR4U9J0rg='),('891949fd-260d-4235-bbe2-9ea86b68914d','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','oidc-full-name-mapper'),('908fafa9-a636-484d-9d8c-979b554be2ae','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('94fcc24f-e1de-43b3-a59c-a5b71bda5baa','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','saml-user-property-mapper'),('9c8ee736-c7be-4153-9953-b44f601fda1f','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('a162da1c-b9d0-4694-b833-397a23a21ae9','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('a41aed6c-d86b-416e-9749-79e6a6ed12cf','d1f30c81-8f0d-4e32-bda3-779ed04df33d','algorithm','HS256'),('a5e3f9e1-0edc-4ec1-9d04-b98f11c942c6','d1f30c81-8f0d-4e32-bda3-779ed04df33d','secret','8QiGUg8IQuZt99VuGaGRIOQzIOpTCZRpR2y6OISyGDZe0PrgeA1GlWtsgFEL655z0sOAsWjEzNpd4ll5dKVxAA'),('a62fbd22-828b-4b80-8920-f2ad7d6e1517','0c544e23-87fe-4511-ba01-b7e30bca2813','priority','100'),('a98e7e32-faaa-4690-825c-bebcf902ce71','288c5585-ea9f-415d-8990-14de32a4b385','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('aa87e838-8262-4737-a601-d1e343a5eb2d','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ab41af43-6c71-401f-a54c-1c28f9ec9d20','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('af9a8ac3-4cad-4b66-abae-5b251d5c7179','313d67c9-507d-42bc-8a09-78ff0bd50e25','algorithm','HS256'),('b2d42295-518e-4e70-a86b-ac5d0d252474','51498463-fbcb-466c-b0d2-821ce5df8418','host-sending-registration-request-must-match','true'),('b6ea0091-d671-455e-aa67-4122d0e99780','0c544e23-87fe-4511-ba01-b7e30bca2813','privateKey','MIIEogIBAAKCAQEAkC3lrFWboQNZMSd3pgRzJ6uoDGRVensFDhpYYsEPqwPRuHdqxcX2MZOChmJ3ck4y84T1KjnSfLvrVOWz8zhbjYFbl/27BZHpWxpiKHYSjVsu5IaBFi0W9xJ/zL6vn/idRcW7cfur0OUf/X+9LAEM3M92BUb05gVOleC6j/R6x6xNEEBXKXLWAkde2vG0XnY3JiGa1b3FYMprvMXc7uz7RonXpsfuX+s28fZK4HrQGpg8DfeJheDuMsCW6bt7xcfphTcKxDfE5/Mhl9WApUClHJwcCWjeCLE5V8UtZ/Rd1KDTsELBETenfI7mIzlZukKgsPcoC4rLAjj/wJyaAY9aRQIDAQABAoIBADv9rPQBBul/ICyQtHsynMuj5B+L2/lDmL3efmpQ1Hke9LNhlN7H2QGV1BigffzkxtSGvRAd0RQviOLhVPfdulJtwbPDUn8l0Egk+TTGtD928lMKGEom5shVPTHvIdpZMu9mL/Fke4BG5gGvlgHqSfTSqdPWS24uRR2dzWK6oh/UVK7hFOtXy+z9xJMJ49pHpVb8+QhbscSjXAtTmGuoL2hn+62GYOh2yY5YhQYeSmjFsRiS9MASCuPUPCx/F+FQ9y2TM4RD3m+ms2nBtzDSYmkRCkllqU+WeiDEe42i4mVCCkcs9HDi3jJ6pSzQ0gOygkDxAkz7l5GHjlGQ2JzoW6ECgYEAxBk+V9BDqtshyQcbtl2kT9doAdKAn5Y2BBTXgr8zmPmmiu66Do9y+lPtAx/hKQehXFdMaEPi6t8qLswPG+7w3jhZCchzXS2DembTH+rE7n1sEXJHTReRSsrFOV28xnIFdT3p0FIJaBk2bttRkYgl+GMSB1LRmamValnpR0iRf5kCgYEAvDiahn5JwLIQLOjZ5gsmwWI2IPALBjA4yneTvf8p+4GRw7motKZntrwKF/PKLIq+h1U4mAir3moPpIU/gheNd1TrIwBCqqGc9W+KjPDOUNVcfXA8waTsu42as4PyU6ZYpMxFvHxOsQtymvD95tB7U3OmoUVWTec7POsptBjEi40CgYA5NqhC1Ke5hL/BuEo0lfOnu9BDn9gZN6lA3ZfXNNPoEQavSGGOd/ny4WOoYre90dUZbPsE/LGLF1tmVfEelENAgq4vtYU7LVlL8A4vJL8aWguat33oFzUz3h9W0muOdpvzDgJW3miSL7D6/RA6Zr+1Tapn6pjuvVSzt9HhE2IoGQKBgFHMA5OJVIHyoEb0FqX7mKcYCE/+IbxZvoR2vPUn69XKNE+r4p5HZvEp/PT11JnQ3gYwSf0AX7izvQKRicz+cVM3y0wVs+M1guHCzKJ9kBve7WfyG+VHyD2lx2JWaDxkIUfVIkVMfGJCiFa/fogNeFsG+pZBbMVERSEvTZtf3CKNAoGAWHWGL2ObBRrxy5wUADLK2Zxwgi0mqrH5h4iLRF6EZjZr5mci47gjt5X44RyA2jWyLpg1YCMbf/fCa7jLiGAruYO5JyTvUBuFXMLC/LS+CPPKee4hTpEnh4IDmWjPptQpLjewNL6lB2V210fDswYMTymOmFHoZsCDmEeKFlDg7FI='),('bb57980c-3d4a-4775-855d-966ac03dc386','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),('c692fb9f-5e13-4ed9-9b1b-2b99b5ebbc7d','a7429f0a-3f0c-442d-af68-d22f8fc29b07','max-clients','200'),('ccc9c668-fb64-427d-bc1a-0b3667c5b9af','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('dcfb7741-d104-4af2-a7ff-d55896f930b4','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),('ded6e2fe-b10b-46e6-bf02-f2f3382cb432','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','saml-role-list-mapper'),('e576eb4d-d9c8-4a15-8a5c-f8baf2fa13b9','e1810d6a-daac-4330-aaf8-85e2756c8f44','client-uris-must-match','true'),('e92d74ef-1dd9-4c53-9434-cb6de3233b14','8bcd89b4-6786-4c04-91f6-185ce637e420','priority','100'),('e97434c2-1a2c-49c9-b0ba-82c2024e1036','d12bff6f-d785-4bc9-921b-c70b7732a90c','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),('ef43e27a-764b-4746-a1ca-d1b86b363520','946b6b7a-f03a-4ea2-ad7f-a71b66defc14','allowed-protocol-mapper-types','saml-user-attribute-mapper'),('ef5812b5-b00f-44c6-a07b-5b6ffcfd2884','313d67c9-507d-42bc-8a09-78ff0bd50e25','kid','df05b527-bd51-443c-a155-bc10a09b666b'),('f7f55c0c-17ac-4135-9ea5-51fdbb6c50e6','d331939a-6a28-4bea-9a3c-0afc87d3f912','certificate','MIICmzCCAYMCBgF//op+kzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjIwNDA2MTEwMTAzWhcNMzIwNDA2MTEwMjQzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCKj5x6i8vy5AuttTspS+z+1KkE23ZRPvF3KRUjZe9BedMITpWMTeMboOG5pF2+k7tullxbRbpn+PMT+jyh0um63ufS1StLMCHKSlStiWhe6Flnj7v2z2Up/6WohesobatlbF5b4eCau+vJOYYgKSuxx7kVGMp88ghPNv4PhMI7J4Jb85k1dwxN7rTjYDTp0/AXKQSTXL71s/nbzOYr039Sy03w+121q+0y+eOhvEY2cpUM7tWmT0tvLQ//XcC82hPZp1M06/jMj+h9APUmGN2Nr/PTWZNMhYUB5umNdLuMobVS5xNtulA0WCyVuUdfmXjuu0K8MoHX2WyMWm8+0UKLAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAEx85ZcIHB6JRzmBEtMQJxX0j/rmJ5X4Dd7EDObxf3L2zHL47jk8LsUofoswDW/uduB4NA5BDPie0gHvKEWdAWw3wthU/nxo5UMt9u0/5+/n4IPp4jIoQqCVTVjzm8m1EGPkV9p939VQ3HGfCbHfWxGD9ANphJGTJj6DAyr+mQC2+qFA0GmI/r1u8/AWX/ZEGhPN0QtQbq/aP/d1U7whJG4NfdMQJjWDxyP3IVbFJ6pSYEL5iyg1A5t6KXFlYY2AvLnJ2C0W0Y6XznvjS8L+ClIE53Go1v2paVITm5HG0beNxCkfPAPHQYjV2xMcswy5o7plDNHZuB4TYrCEGzr2tZM='),('fb261504-7ec5-44d9-8919-9e47f84e326a','51498463-fbcb-466c-b0d2-821ce5df8418','client-uris-must-match','true'),('fd8d4a13-583c-483f-b149-4827b10fe92f','bab020f6-16fe-436a-bc59-1add2bc363f1','allowed-protocol-mapper-types','oidc-address-mapper');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES ('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','0150a640-a724-4243-9ef4-213c47f7876c'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','03dfdd50-3a59-478e-8b62-3e871960797e'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','09e06782-f4f7-468b-8925-e70d4d456047'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','0a3f4d4b-f90d-42b9-b9f6-2a925df6fa57'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','18beb4f8-cf3c-470c-bbb8-c0c80694ae15'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','1ddf304d-a8e4-45df-8c8f-599bc390e497'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','1f379e55-070c-4a47-8a10-4ba1fdf3ed6d'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','277affb7-d589-40ef-a036-3be58914840c'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','2ad49ea6-0d52-4721-8215-43bf08066bb8'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','33e5d438-d9d9-42bf-8ac1-e653df4572ad'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','38510391-c284-4e40-bed0-030f3dacc214'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','3e2adb01-5acd-4740-be76-d343073e43b9'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','495e2d3d-7b33-45ad-800a-04c333d3f115'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','4b6bcdea-db9b-4aff-96fe-504bbe5696e5'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','4c42d2b7-c689-44a5-b8d9-96ebd5ced884'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','4f44fc40-1905-435c-9288-529883251999'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','588875fd-a77f-4ace-8b3c-8c4a86e5dfeb'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','5a799370-b320-4ab8-9ee9-955186818f5e'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','5e5627ab-ffc2-41c1-8ce9-973649d377b7'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','64d3609b-d43c-4e87-a740-6132233a6b1c'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','72b8bfc8-f13e-46c1-acf5-5ebc63a266f3'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','72d5d2d6-6f2d-4bbf-a91c-5031d655b164'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','74c9738e-dc7f-4c49-bb9a-3a912c23fe12'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','75393350-d0cc-4d50-9fd2-3bd216b6cee2'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','78c0442c-f26d-46db-82ac-bb2d9fbd8f6d'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','9f9556c9-447d-4b73-856d-baf6071ea309'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','a267c80e-010b-4efa-ab60-e062adb435db'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','a4e3db3b-fef2-4358-be1c-f9d8e3bbaa8e'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','af17e70a-25bf-4efa-ba98-e245f4d098fb'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','b42d802b-09de-4730-bc53-010129de3c32'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','b91b4d7d-f6b7-4d1a-81b0-cc845f0a728f'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','c5bde373-fd93-439b-9ffd-aa65a35e63fb'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','cbd33c22-b5e0-45e2-b360-9b094381a546'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','cfda2267-0357-44b4-8fb9-a0eaf99516ba'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','dc4a003a-cea5-4e0f-8775-500b832ddf96'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','f1e9d919-12ac-4eb0-b1da-847d711e3c3d'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','f455874a-406a-477c-ab58-7d2617bfb737'),('18b49f43-68a8-43a3-8278-fbe9173d6050','277d9368-52fa-4919-ad51-f9cf9f04b2a7'),('18b49f43-68a8-43a3-8278-fbe9173d6050','641a4d17-49db-4b5b-8fbb-04a0c66174a5'),('18b49f43-68a8-43a3-8278-fbe9173d6050','e2c53844-2a60-4fcc-9cdb-7776f679df48'),('277d9368-52fa-4919-ad51-f9cf9f04b2a7','641a4d17-49db-4b5b-8fbb-04a0c66174a5'),('277d9368-52fa-4919-ad51-f9cf9f04b2a7','e2c53844-2a60-4fcc-9cdb-7776f679df48'),('2ad49ea6-0d52-4721-8215-43bf08066bb8','0a3f4d4b-f90d-42b9-b9f6-2a925df6fa57'),('2ad49ea6-0d52-4721-8215-43bf08066bb8','78c0442c-f26d-46db-82ac-bb2d9fbd8f6d'),('354a8263-c3ca-4182-9979-acf2dc80b2a9','18b49f43-68a8-43a3-8278-fbe9173d6050'),('354a8263-c3ca-4182-9979-acf2dc80b2a9','277d9368-52fa-4919-ad51-f9cf9f04b2a7'),('354a8263-c3ca-4182-9979-acf2dc80b2a9','641a4d17-49db-4b5b-8fbb-04a0c66174a5'),('354a8263-c3ca-4182-9979-acf2dc80b2a9','e2c53844-2a60-4fcc-9cdb-7776f679df48'),('37648df3-29ba-41cf-be33-cf85a2237ed5','32210d45-4c58-470c-8326-e94aedd3ff4a'),('37648df3-29ba-41cf-be33-cf85a2237ed5','46c641d3-a1a4-4ff3-b744-6a7ba99abd76'),('44c334af-3a3d-4509-af5b-8ed8a9645bcc','a36291cb-3025-4a36-b5d5-a7ee1db39e32'),('4f44fc40-1905-435c-9288-529883251999','18beb4f8-cf3c-470c-bbb8-c0c80694ae15'),('4f44fc40-1905-435c-9288-529883251999','588875fd-a77f-4ace-8b3c-8c4a86e5dfeb'),('74c9738e-dc7f-4c49-bb9a-3a912c23fe12','b91b4d7d-f6b7-4d1a-81b0-cc845f0a728f'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','034e0860-1910-497e-bff9-09ce05374c7b'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','1186b278-fcc6-415d-aa60-cba20a027d69'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','20c96ef2-db3f-4202-beff-f6049350ee92'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','20e145f3-4ed0-4aab-bbf8-1a9972dac561'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','32210d45-4c58-470c-8326-e94aedd3ff4a'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','329b8f0f-f716-4abe-8a41-57196531a61b'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','37648df3-29ba-41cf-be33-cf85a2237ed5'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','46c641d3-a1a4-4ff3-b744-6a7ba99abd76'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','4f1ebc4f-7c52-41db-9371-c044414e91f3'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','5e63e9df-7d1a-4671-9dde-da43026babcf'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','6186e713-95c7-471b-ac16-0fe07465ab74'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','908d85de-edae-4079-a4dd-bc46a80b4856'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','92777e8c-1c5f-4121-b9b9-2089cb07bf96'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','9519f385-19ef-4e15-ad76-0a38a6b8c54d'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','96a22e08-83f5-4345-a392-0c91e321eaac'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','d101c858-ca6d-4f31-b769-12fa14fbfb0b'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','f63d6d5d-6281-4260-96bd-8871bea68e07'),('8c869852-fa1b-4698-b38c-30fbeee86ea7','fa8dd3ec-8ddd-407f-92e0-fb119071d8f2'),('b618b696-6149-4cca-ba1a-0647f183b79d','c8613810-6a2e-4b3d-a6fe-4870c5b74f5d'),('c5bde373-fd93-439b-9ffd-aa65a35e63fb','f455874a-406a-477c-ab58-7d2617bfb737'),('d2ac1cdd-976b-4912-93d5-d7844dce1d78','55713437-7ca7-4537-bc0e-3e8b14b36570'),('e2c53844-2a60-4fcc-9cdb-7776f679df48','641a4d17-49db-4b5b-8fbb-04a0c66174a5'),('fa8dd3ec-8ddd-407f-92e0-fb119071d8f2','96a22e08-83f5-4345-a392-0c91e321eaac');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `DEVICE` varchar(255) DEFAULT NULL,
  `HASH_ITERATIONS` int(11) DEFAULT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `COUNTER` int(11) DEFAULT 0,
  `DIGITS` int(11) DEFAULT 6,
  `PERIOD` int(11) DEFAULT 30,
  `ALGORITHM` varchar(36),
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES ('5aca37c1-628e-43ad-9956-688aaf0d8773',NULL,27500,'V»#õOÆ˜•˜Kx#.Z','password','Yaeex9M9FWJDCh33sqmz/31CbD2QiQPFjWoUqQiXExnndSawFLSrIwLH3aOahRDkpzfLKGk7HvriPODNNY4FfA==','3a690290-00fc-46a2-8f38-edffadeab5cc',NULL,0,0,0,'pbkdf2-sha256'),('d4257c76-87fa-409a-be91-9abbc94f0607',NULL,27500,'˜‚»‹iÍ˜]Ÿ¶P.Î1×','password','B0PA5mYA1NjiuEW/u9vfd/2ZyhLl022y6dvWpS/dHjVHzxkTDSTA7SqLCkTtcy8PqKr7OCaRkRBmYvKIQMwTRA==','fbb93c54-07d6-4fce-bab0-6c9f48cea781',1649242983681,0,0,0,'pbkdf2-sha256');
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CREDENTIAL_ATTRIBUTE`
--

DROP TABLE IF EXISTS `CREDENTIAL_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CREDENTIAL_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `CREDENTIAL_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CREDENTIAL_ATTR_CRED` (`CREDENTIAL_ID`),
  CONSTRAINT `FK_CRED_ATTR` FOREIGN KEY (`CREDENTIAL_ID`) REFERENCES `CREDENTIAL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL_ATTRIBUTE`
--

LOCK TABLES `CREDENTIAL_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CREDENTIAL_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2022-04-06 11:02:29',1,'EXECUTED','7:4e70412f24a3f382c82183742ec79317','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2022-04-06 11:02:29',2,'MARK_RAN','7:cb16724583e9675711801c6875114f28','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2022-04-06 11:02:29',3,'EXECUTED','7:0310eb8ba07cec616460794d42ade0fa','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2022-04-06 11:02:29',4,'EXECUTED','7:5d25857e708c3233ef4439df1f93f012','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2022-04-06 11:02:29',5,'EXECUTED','7:c7a54a1041d58eb3817a4a883b4d4e84','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2022-04-06 11:02:30',6,'MARK_RAN','7:2e01012df20974c1c2a605ef8afe25b7','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2022-04-06 11:02:30',7,'EXECUTED','7:0f08df48468428e0f30ee59a8ec01a41','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2022-04-06 11:02:30',8,'MARK_RAN','7:a77ea2ad226b345e7d689d366f185c8c','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2022-04-06 11:02:30',9,'EXECUTED','7:a3377a2059aefbf3b90ebb4c4cc8e2ab','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2022-04-06 11:02:31',10,'EXECUTED','7:04c1dbedc2aa3e9756d1a1668e003451','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2022-04-06 11:02:31',11,'EXECUTED','7:36ef39ed560ad07062d956db861042ba','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2022-04-06 11:02:31',12,'MARK_RAN','7:d909180b2530479a716d3f9c9eaea3d7','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2022-04-06 11:02:31',13,'EXECUTED','7:cf12b04b79bea5152f165eb41f3955f6','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2022-04-06 11:02:31',14,'EXECUTED','7:7e32c8f05c755e8675764e7d5f514509','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2022-04-06 11:02:31',15,'MARK_RAN','7:980ba23cc0ec39cab731ce903dd01291','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2022-04-06 11:02:31',16,'MARK_RAN','7:2fa220758991285312eb84f3b4ff5336','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2022-04-06 11:02:31',17,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2022-04-06 11:02:32',18,'EXECUTED','7:91ace540896df890cc00a0490ee52bbc','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2022-04-06 11:02:32',19,'EXECUTED','7:c31d1646dfa2618a9335c00e07f89f24','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2022-04-06 11:02:32',20,'EXECUTED','7:df8bc21027a4f7cbbb01f6344e89ce07','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2022-04-06 11:02:32',21,'MARK_RAN','7:f987971fe6b37d963bc95fee2b27f8df','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2022-04-06 11:02:32',22,'MARK_RAN','7:df8bc21027a4f7cbbb01f6344e89ce07','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2022-04-06 11:02:33',23,'EXECUTED','7:ed2dc7f799d19ac452cbcda56c929e47','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2022-04-06 11:02:33',24,'EXECUTED','7:80b5db88a5dda36ece5f235be8757615','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2022-04-06 11:02:33',25,'MARK_RAN','7:1437310ed1305a9b93f8848f301726ce','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2022-04-06 11:02:33',26,'EXECUTED','7:b82ffb34850fa0836be16deefc6a87c4','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2022-04-06 11:02:33',27,'EXECUTED','7:9cc98082921330d8d9266decdd4bd658','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2022-04-06 11:02:33',28,'EXECUTED','7:03d64aeed9cb52b969bd30a7ac0db57e','update tableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2022-04-06 11:02:34',29,'EXECUTED','7:f1f9fd8710399d725b780f463c6b21cd','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2022-04-06 11:02:34',30,'EXECUTED','7:53188c3eb1107546e6f765835705b6c1','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2022-04-06 11:02:34',31,'EXECUTED','7:d6e6f3bc57a0c5586737d1351725d4d4','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2022-04-06 11:02:34',32,'EXECUTED','7:454d604fbd755d9df3fd9c6329043aa5','customChange','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2022-04-06 11:02:34',33,'EXECUTED','7:57e98a3077e29caf562f7dbf80c72600','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2022-04-06 11:02:34',34,'MARK_RAN','7:e4c7e8f2256210aee71ddc42f538b57a','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2022-04-06 11:02:34',35,'EXECUTED','7:09a43c97e49bc626460480aa1379b522','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2022-04-06 11:02:34',36,'EXECUTED','7:26bfc7c74fefa9126f2ce702fb775553','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2022-04-06 11:02:34',37,'EXECUTED','7:a161e2ae671a9020fff61e996a207377','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'3.5.4',NULL,NULL,'9242947530'),('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2022-04-06 11:02:34',38,'EXECUTED','7:37fc1781855ac5388c494f1442b3f717','addColumn tableName=FED_USER_CONSENT','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2022-04-06 11:02:34',39,'EXECUTED','7:13a27db0dae6049541136adad7261d27','addColumn tableName=IDENTITY_PROVIDER','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2022-04-06 11:02:34',40,'MARK_RAN','7:550300617e3b59e8af3a6294df8248a3','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2022-04-06 11:02:34',41,'MARK_RAN','7:e3a9482b8931481dc2772a5c07c44f17','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2022-04-06 11:02:34',42,'EXECUTED','7:72b07d85a2677cb257edb02b408f332d','customChange','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2022-04-06 11:02:34',43,'EXECUTED','7:a72a7858967bd414835d19e04d880312','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2022-04-06 11:02:34',44,'EXECUTED','7:94edff7cf9ce179e7e85f0cd78a3cf2c','addColumn tableName=USER_ENTITY','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2022-04-06 11:02:34',45,'EXECUTED','7:6a48ce645a3525488a90fbf76adf3bb3','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2022-04-06 11:02:34',46,'EXECUTED','7:e64b5dcea7db06077c6e57d3b9e5ca14','customChange','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2022-04-06 11:02:34',47,'MARK_RAN','7:fd8cf02498f8b1e72496a20afc75178c','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2022-04-06 11:02:35',48,'EXECUTED','7:542794f25aa2b1fbabb7e577d6646319','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2022-04-06 11:02:35',49,'EXECUTED','7:edad604c882df12f74941dac3cc6d650','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2022-04-06 11:02:35',50,'EXECUTED','7:0f88b78b7b46480eb92690cbf5e44900','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2022-04-06 11:02:35',51,'EXECUTED','7:d560e43982611d936457c327f872dd59','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2022-04-06 11:02:35',52,'EXECUTED','7:c155566c42b4d14ef07059ec3b3bbd8e','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2022-04-06 11:02:35',53,'EXECUTED','7:b40376581f12d70f3c89ba8ddf5b7dea','update tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2022-04-06 11:02:35',54,'EXECUTED','7:a1132cc395f7b95b3646146c2e38f168','update tableName=CLIENT','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2022-04-06 11:02:35',55,'EXECUTED','7:d8dc5d89c789105cfa7ca0e82cba60af','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2022-04-06 11:02:35',56,'EXECUTED','7:7822e0165097182e8f653c35517656a3','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2022-04-06 11:02:35',57,'EXECUTED','7:c6538c29b9c9a08f9e9ea2de5c2b6375','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2022-04-06 11:02:36',58,'EXECUTED','7:6d4893e36de22369cf73bcb051ded875','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2022-04-06 11:02:36',59,'EXECUTED','7:57960fc0b0f0dd0563ea6f8b2e4a1707','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2022-04-06 11:02:36',60,'EXECUTED','7:2b4b8bff39944c7097977cc18dbceb3b','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2022-04-06 11:02:36',61,'EXECUTED','7:2aa42a964c59cd5b8ca9822340ba33a8','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2022-04-06 11:02:36',62,'EXECUTED','7:9ac9e58545479929ba23f4a3087a0346','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2022-04-06 11:02:36',63,'EXECUTED','7:14d407c35bc4fe1976867756bcea0c36','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2022-04-06 11:02:36',64,'EXECUTED','7:241a8030c748c8548e346adee548fa93','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2022-04-06 11:02:36',65,'EXECUTED','7:7d3182f65a34fcc61e8d23def037dc3f','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2022-04-06 11:02:36',66,'EXECUTED','7:b30039e00a0b9715d430d1b0636728fa','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2022-04-06 11:02:36',67,'EXECUTED','7:3797315ca61d531780f8e6f82f258159','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2022-04-06 11:02:36',68,'EXECUTED','7:c7aa4c8d9573500c2d347c1941ff0301','addColumn tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2022-04-06 11:02:36',69,'EXECUTED','7:b207faee394fc074a442ecd42185a5dd','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'3.5.4',NULL,NULL,'9242947530'),('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2022-04-06 11:02:36',70,'EXECUTED','7:ab9a9762faaba4ddfa35514b212c4922','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'3.5.4',NULL,NULL,'9242947530'),('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2022-04-06 11:02:36',71,'EXECUTED','7:b9710f74515a6ccb51b72dc0d19df8c4','addColumn tableName=RESOURCE_SERVER','',NULL,'3.5.4',NULL,NULL,'9242947530');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL),(1000,'\0',NULL,NULL),(1001,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES ('9e68e28f-f43c-490b-85c1-4551eb0eb7af','087b6ed9-c9fc-4b2a-b0c9-17fc535a256c',''),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','0bcad6e1-8617-4683-9b3f-ec7412b24274','\0'),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','3c1d53b1-f524-462c-853b-f9f47e4c0b0a','\0'),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','7ccc42b8-0e95-4ee9-a62a-0c6256743e54',''),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','88982821-4edb-4797-bef9-d45a59cdc60d','\0'),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','8fe92e09-ca27-42b9-9fef-4694812fcbd4','\0'),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','90c0203c-e9ba-4930-bb65-80c4004547ca',''),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18',''),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','c4162f99-1635-4756-a718-190d7171ec38',''),('master','3b68e72d-870c-4818-87b9-2c26f574a9b4',''),('master','6018fec5-1b3e-4561-9d57-5c314709c011',''),('master','87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94','\0'),('master','88157c5f-1f6f-4b92-9613-8ba47e6fdb12',''),('master','8e2f383d-4d0c-4679-959c-834d45b3ca16','\0'),('master','9afd17d0-c99e-48bd-bc15-13a79e4c2368','\0'),('master','e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c',''),('master','e6315c90-93f4-48e7-86b1-1b25101e35bf','\0'),('master','ed6f9d91-b617-4a6a-bd27-5ae5a85d039b','');
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` varchar(2550) DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_CREDENTIAL_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_CREDENTIAL_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_CREDENTIAL_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `CREDENTIAL_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FED_CRED_ATTR_CRED` (`CREDENTIAL_ID`),
  CONSTRAINT `FK_FED_CRED_ATTR` FOREIGN KEY (`CREDENTIAL_ID`) REFERENCES `FED_USER_CREDENTIAL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_CREDENTIAL_ATTRIBUTE`
--

LOCK TABLES `FED_CREDENTIAL_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_CREDENTIAL_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_CREDENTIAL_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` varchar(2024) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `DEVICE` varchar(255) DEFAULT NULL,
  `HASH_ITERATIONS` int(11) DEFAULT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `COUNTER` int(11) DEFAULT 0,
  `DIGITS` int(11) DEFAULT 6,
  `PERIOD` int(11) DEFAULT 30,
  `ALGORITHM` varchar(36) DEFAULT 'HmacSHA1',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`),
  CONSTRAINT `FK_GROUP_ROLE_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_GROUP` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`),
  CONSTRAINT `FK_GROUP_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_GROUP` VALUES ('e3bee81e-54b3-486b-a69c-085982cb43d4','lagoonadmin',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af');
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(36) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`),
  CONSTRAINT `FK_KJHO5LE2C0RAL09FL8CM9WFW9` FOREIGN KEY (`CLIENT`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES ('0150a640-a724-4243-9ef4-213c47f7876c','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-authorization}','view-authorization','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('034e0860-1910-497e-bff9-09ce05374c7b','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-events}','manage-events','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('03cbfccb-36d2-4a8e-85e2-1f194c9e8595','master','\0','${role_uma_authorization}','uma_authorization','master',NULL,'master'),('03dfdd50-3a59-478e-8b62-3e871960797e','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-identity-providers}','manage-identity-providers','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','master','\0','${role_admin}','admin','master',NULL,'master'),('09e06782-f4f7-468b-8925-e70d4d456047','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_create-client}','create-client','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('0a3f4d4b-f90d-42b9-b9f6-2a925df6fa57','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_query-users}','query-users','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('0bc9d6f6-658f-44f3-94b6-4808015b7a71','master','\0','${role_offline-access}','offline_access','master',NULL,'master'),('1186b278-fcc6-415d-aa60-cba20a027d69','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-identity-providers}','view-identity-providers','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('18b49f43-68a8-43a3-8278-fbe9173d6050','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'maintainer','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('18beb4f8-cf3c-470c-bbb8-c0c80694ae15','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_query-users}','query-users','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('1ddf304d-a8e4-45df-8c8f-599bc390e497','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-identity-providers}','view-identity-providers','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('1f379e55-070c-4a47-8a10-4ba1fdf3ed6d','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-clients}','manage-clients','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('20c96ef2-db3f-4202-beff-f6049350ee92','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-authorization}','view-authorization','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('20e145f3-4ed0-4aab-bbf8-1a9972dac561','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-realm}','manage-realm','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('277affb7-d589-40ef-a036-3be58914840c','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-clients}','manage-clients','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('277d9368-52fa-4919-ad51-f9cf9f04b2a7','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'developer','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('2ad49ea6-0d52-4721-8215-43bf08066bb8','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-users}','view-users','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('32210d45-4c58-470c-8326-e94aedd3ff4a','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_query-users}','query-users','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('329b8f0f-f716-4abe-8a41-57196531a61b','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-users}','manage-users','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('33e5d438-d9d9-42bf-8ac1-e653df4572ad','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-realm}','manage-realm','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('354a8263-c3ca-4182-9979-acf2dc80b2a9','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'owner','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('37648df3-29ba-41cf-be33-cf85a2237ed5','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-users}','view-users','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('38510391-c284-4e40-bed0-030f3dacc214','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-events}','manage-events','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('3e2adb01-5acd-4740-be76-d343073e43b9','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_create-client}','create-client','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('44c334af-3a3d-4509-af5b-8ed8a9645bcc','80682831-ddd5-489c-99d1-de18376281e4','','${role_manage-account}','manage-account','master','80682831-ddd5-489c-99d1-de18376281e4',NULL),('46c641d3-a1a4-4ff3-b744-6a7ba99abd76','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_query-groups}','query-groups','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('495e2d3d-7b33-45ad-800a-04c333d3f115','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-identity-providers}','manage-identity-providers','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('4b6bcdea-db9b-4aff-96fe-504bbe5696e5','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-users}','manage-users','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('4c42d2b7-c689-44a5-b8d9-96ebd5ced884','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-realm}','view-realm','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('4eb19efe-c64c-4031-9def-b0658c5a8e7e','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','','${role_view-profile}','view-profile','9e68e28f-f43c-490b-85c1-4551eb0eb7af','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def',NULL),('4f1ebc4f-7c52-41db-9371-c044414e91f3','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-events}','view-events','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('4f44fc40-1905-435c-9288-529883251999','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-users}','view-users','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('4ff68bc1-1f03-49ca-8603-ae083c982843','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0','${role_uma_authorization}','uma_authorization','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('55713437-7ca7-4537-bc0e-3e8b14b36570','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'platform-owner','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('588875fd-a77f-4ace-8b3c-8c4a86e5dfeb','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_query-groups}','query-groups','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('5a799370-b320-4ab8-9ee9-955186818f5e','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-events}','view-events','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('5e5627ab-ffc2-41c1-8ce9-973649d377b7','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_impersonation}','impersonation','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('5e63e9df-7d1a-4671-9dde-da43026babcf','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-identity-providers}','manage-identity-providers','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('6186e713-95c7-471b-ac16-0fe07465ab74','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_query-realms}','query-realms','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('641a4d17-49db-4b5b-8fbb-04a0c66174a5','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'guest','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('64d3609b-d43c-4e87-a740-6132233a6b1c','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-realm}','view-realm','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('682bdcae-d63e-475c-b8be-783e8bb57a41','80682831-ddd5-489c-99d1-de18376281e4','','${role_view-profile}','view-profile','master','80682831-ddd5-489c-99d1-de18376281e4',NULL),('6b2fb4c4-6d5a-4ffe-93f6-8cc5644b02a4','9c0b99b8-7518-49ef-a253-cfcd899857d9','',NULL,'uma_protection','9e68e28f-f43c-490b-85c1-4551eb0eb7af','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('72b8bfc8-f13e-46c1-acf5-5ebc63a266f3','master','\0','${role_create-realm}','create-realm','master',NULL,'master'),('72d5d2d6-6f2d-4bbf-a91c-5031d655b164','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-events}','manage-events','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('74c9738e-dc7f-4c49-bb9a-3a912c23fe12','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-clients}','view-clients','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('75393350-d0cc-4d50-9fd2-3bd216b6cee2','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-identity-providers}','view-identity-providers','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('78c0442c-f26d-46db-82ac-bb2d9fbd8f6d','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_query-groups}','query-groups','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('8c869852-fa1b-4698-b38c-30fbeee86ea7','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_realm-admin}','realm-admin','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('908d85de-edae-4079-a4dd-bc46a80b4856','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_create-client}','create-client','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('92777e8c-1c5f-4121-b9b9-2089cb07bf96','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-authorization}','manage-authorization','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('9519f385-19ef-4e15-ad76-0a38a6b8c54d','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-realm}','view-realm','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('96a22e08-83f5-4345-a392-0c91e321eaac','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_query-clients}','query-clients','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('9f9556c9-447d-4b73-856d-baf6071ea309','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_impersonation}','impersonation','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('a267c80e-010b-4efa-ab60-e062adb435db','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_query-realms}','query-realms','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('a36291cb-3025-4a36-b5d5-a7ee1db39e32','80682831-ddd5-489c-99d1-de18376281e4','','${role_manage-account-links}','manage-account-links','master','80682831-ddd5-489c-99d1-de18376281e4',NULL),('a4e3db3b-fef2-4358-be1c-f9d8e3bbaa8e','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-events}','view-events','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('ad5565d4-56bb-46b2-9a7e-77d9965f0241','4144f258-3524-4280-82f8-d0944712fea5','','${role_read-token}','read-token','9e68e28f-f43c-490b-85c1-4551eb0eb7af','4144f258-3524-4280-82f8-d0944712fea5',NULL),('af17e70a-25bf-4efa-ba98-e245f4d098fb','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-users}','manage-users','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('b42d802b-09de-4730-bc53-010129de3c32','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-realm}','manage-realm','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('b618b696-6149-4cca-ba1a-0647f183b79d','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','','${role_manage-account}','manage-account','9e68e28f-f43c-490b-85c1-4551eb0eb7af','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def',NULL),('b91b4d7d-f6b7-4d1a-81b0-cc845f0a728f','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_query-clients}','query-clients','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('c5bde373-fd93-439b-9ffd-aa65a35e63fb','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_view-clients}','view-clients','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('c6834368-9bf4-4edd-b607-7b4d741209ac','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0','${role_offline-access}','offline_access','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('c8613810-6a2e-4b3d-a6fe-4870c5b74f5d','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','','${role_manage-account-links}','manage-account-links','9e68e28f-f43c-490b-85c1-4551eb0eb7af','7ffbc99c-44a7-4cf3-b1f6-50bf426f0def',NULL),('cbd33c22-b5e0-45e2-b360-9b094381a546','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_manage-authorization}','manage-authorization','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('cfda2267-0357-44b4-8fb9-a0eaf99516ba','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_view-authorization}','view-authorization','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('d101c858-ca6d-4f31-b769-12fa14fbfb0b','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_manage-clients}','manage-clients','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('d2ac1cdd-976b-4912-93d5-d7844dce1d78','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'admin','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('dc4a003a-cea5-4e0f-8775-500b832ddf96','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_manage-authorization}','manage-authorization','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('e2c53844-2a60-4fcc-9cdb-7776f679df48','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0',NULL,'reporter','9e68e28f-f43c-490b-85c1-4551eb0eb7af',NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('e70f7fbe-5b35-49bf-8404-9f21798b8590','b44dc36c-3640-4560-922c-524b00355f0b','','${role_read-token}','read-token','master','b44dc36c-3640-4560-922c-524b00355f0b',NULL),('f1e9d919-12ac-4eb0-b1da-847d711e3c3d','f1f6d07f-b5f1-4747-b39a-72d9b300e38c','','${role_query-realms}','query-realms','master','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',NULL),('f455874a-406a-477c-ab58-7d2617bfb737','d5943451-7ddf-4016-93f1-128ca7a34809','','${role_query-clients}','query-clients','master','d5943451-7ddf-4016-93f1-128ca7a34809',NULL),('f63d6d5d-6281-4260-96bd-8871bea68e07','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_impersonation}','impersonation','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('fa8dd3ec-8ddd-407f-92e0-fb119071d8f2','738f5ead-ea8c-4254-9016-9eb16b0aa17f','','${role_view-clients}','view-clients','9e68e28f-f43c-490b-85c1-4551eb0eb7af','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES ('SINGLETON','6.0.0');
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
INSERT INTO `POLICY_CONFIG` VALUES ('05f6dff6-4380-432d-b02a-5d0ab4dfcc0c','code','// by default, grants any permission associated with this policy\n$evaluation.grant();\n'),('06fc2831-57d3-4fb2-a6ce-e73c84ff0145','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 1,\n    guest: 1,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userProjectRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userProjectRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('1670872c-63d7-41e6-a3a3-cb3893aa0495','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\n\nif (!ctxAttr.exists(\'currentUser\')) {\n    $evaluation.deny();\n} else {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'admin\')) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}'),('348fb1cd-e97b-4415-8607-a36e6814ff84','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 0,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userGroupRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userGroupRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('54c5e4fa-2c5e-4a04-878d-9aa82efb1235','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 0,\n    developer: 0,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userGroupRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userGroupRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('66d013ff-a0d2-415c-b881-3bbb41c3f08c','clients','[\"59f86909-777c-459e-8246-53847f656538\"]'),('6b344dff-a70e-4e10-b243-dc9d13b3a5ca','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userGroupRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userGroupRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('9d136373-eb50-4611-b3de-a26355705e4e','code','var ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\n\nif (!ctxAttr.exists(\'usersQuery\') || !ctxAttr.exists(\'currentUser\')) {\n    $evaluation.deny();\n} else {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n    var users = ctxAttr.getValue(\'usersQuery\').asString(0);\n    var usersArr = users.split(\'|\');\n    var grant = false;\n    \n    for (var i=0; i<usersArr.length; i++) {\n        if (currentUser == usersArr[i]) {\n            grant = true;\n            break;\n        }\n    }\n\n    if (grant) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}'),('a5ee5f99-45db-45cb-8407-3d4b649fee9b','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 0,\n    developer: 0,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userProjectRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userProjectRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('ac712f92-0892-4e8b-92d8-64824a980c0f','clients','[\"21b72ae5-638c-441c-a6b6-aac391d606c8\"]'),('ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userProjectRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userProjectRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('bf212810-7018-4bc8-82ca-b66aa9340be4','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\n\n// Check projects calculated by lagoon\nif (!ctxAttr.exists(\'projectQuery\') || !ctxAttr.exists(\'userProjects\')) {\n    $evaluation.deny();\n} else {\n    var project = ctxAttr.getValue(\'projectQuery\').asString(0);\n    var projects = ctxAttr.getValue(\'userProjects\').asString(0);\n    var projectsArr = projects.split(\'-\');\n    var grant = false;\n\n    for (var i=0; i<projectsArr.length; i++) {\n        if (project == projectsArr[i]) {\n            grant = true;\n            break;\n        }\n    }\n\n    if (grant) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('c419d0d3-820a-4937-8846-a8fc4d63281d','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 1,\n    guest: 1,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userGroupRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userGroupRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('c886741c-52f1-4cc4-ab0c-5906a7810295','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 1,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userProjectRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userProjectRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('d9a89138-7be9-47b2-9d38-b654c04a212a','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\n\nif (!ctxAttr.exists(\'currentUser\')) {\n    $evaluation.deny();\n} else {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}'),('e35e84bd-c7df-447b-8adc-0167eee701b7','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 0,\n    reporter: 0,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userProjectRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userProjectRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}'),('efbbd054-c132-465f-acce-ed5c705d78c2','code','var realm = $evaluation.getRealm();\nvar ctx = $evaluation.getContext();\nvar ctxAttr = ctx.getAttributes();\nvar validRoles = {\n    owner: 1,\n    maintainer: 1,\n    developer: 1,\n    reporter: 1,\n    guest: 0,\n};\n\n// Check roles calculated by lagoon\nif (!ctxAttr.exists(\'userGroupRole\')) {\n    $evaluation.deny();\n} else {\n    var groupRole = ctxAttr.getValue(\'userGroupRole\').asString(0);\n\n    if (validRoles[groupRole.toLowerCase()]) {\n        $evaluation.grant();\n    } else {\n        $evaluation.deny();\n    }\n}\n\n// Check admin access\nif (ctxAttr.exists(\'currentUser\')) {\n    var currentUser = ctxAttr.getValue(\'currentUser\').asString(0);\n\n    if (realm.isUserInRealmRole(currentUser, \'platform-owner\')) {\n        $evaluation.grant();\n    }\n}');
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES ('0780b49a-77aa-4882-b12b-b38d77d82047','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('0a175d61-2571-415b-9f91-491eeaf5515c','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'88982821-4edb-4797-bef9-d45a59cdc60d'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('1154a909-d2a3-490b-a539-b8df722f45d8','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'3b68e72d-870c-4818-87b9-2c26f574a9b4'),('128165d3-7cd1-4ae9-999e-744f1666ce96','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'3b68e72d-870c-4818-87b9-2c26f574a9b4'),('1db42240-0425-4fae-b7f0-353804875635','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('2646f8a9-d436-4e2f-9648-f58fe0041620','email','openid-connect','oidc-usermodel-property-mapper',NULL,'88157c5f-1f6f-4b92-9613-8ba47e6fdb12'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','address','openid-connect','oidc-address-mapper',NULL,'9afd17d0-c99e-48bd-bc15-13a79e4c2368'),('2ecb5612-5b3a-452c-a318-3e106f31a013','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('335a3d32-a02b-490d-b022-49387ea67b9c','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('35bc1f52-4646-4d59-bec5-83d807928567','email','openid-connect','oidc-usermodel-property-mapper',NULL,'087b6ed9-c9fc-4b2a-b0c9-17fc535a256c'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','groups','openid-connect','oidc-script-based-protocol-mapper','61831f3e-d644-463d-baa8-eff1bb4f5c8d',NULL),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('412c408c-49e2-476f-9fca-8dc373ce5a25','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','21b72ae5-638c-441c-a6b6-aac391d606c8',NULL),('41e81b3c-867e-49fe-ba40-38e054ddf46f','username','openid-connect','oidc-usermodel-property-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('493a10d1-d958-4590-ab19-1dac9223c3b3','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','family name','openid-connect','oidc-usermodel-property-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('50f2b860-e04c-4c1e-818d-91b467cc631a','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','21b72ae5-638c-441c-a6b6-aac391d606c8',NULL),('528d0f73-eca3-4ff3-b878-1140a9747962','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('53108f4d-ca31-4b8e-940c-1b680bfc247d','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('5373f626-aa33-4cb1-86c3-da144bddf161','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5659630d-4d4a-4a4e-bddf-082a880e62d3','Lagoon User ID','openid-connect','oidc-usermodel-attribute-mapper','c08235fc-5d0a-493f-9f18-a4b55456f561',NULL),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'087b6ed9-c9fc-4b2a-b0c9-17fc535a256c'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','username','openid-connect','oidc-usermodel-property-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('742d3625-55f1-490d-830d-0c2faef8baa4','full name','openid-connect','oidc-full-name-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('76ae506e-4643-4c5f-a051-5af4c305b536','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94'),('77e5d933-3c4e-4e03-9ed6-0b64dca1021f','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'3b68e72d-870c-4818-87b9-2c26f574a9b4'),('7ae8761c-e092-484f-b44a-f61b091e5f44','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'88157c5f-1f6f-4b92-9613-8ba47e6fdb12'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','Client ID','openid-connect','oidc-usersessionmodel-note-mapper','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','Group Membership','openid-connect','oidc-group-membership-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('8a9aafd1-f736-41e6-9795-4ec898c34e62','address','openid-connect','oidc-address-mapper',NULL,'0bcad6e1-8617-4683-9b3f-ec7412b24274'),('8c839566-239c-43ee-b0a9-b66edd535501','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8e2f383d-4d0c-4679-959c-834d45b3ca16'),('8f431643-2f72-47cb-a819-6bc98ffddfe6','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'7ccc42b8-0e95-4ee9-a62a-0c6256743e54'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','locale','openid-connect','oidc-usermodel-attribute-mapper','f3c47970-e2cb-4868-8d8c-89529967e5b1',NULL),('93d70d91-be21-4b9d-88f1-e41e11f950ac','role list','saml','saml-role-list-mapper',NULL,'e1f4964a-7bcd-45bf-bc83-9fcd7363cb2c'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'c4162f99-1635-4756-a718-190d7171ec38'),('960ab5f6-1842-4851-8324-bf66fb593834','role list','saml','saml-role-list-mapper',NULL,'90c0203c-e9ba-4930-bb65-80c4004547ca'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','User Realm Roles','openid-connect','oidc-usermodel-realm-role-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8e2f383d-4d0c-4679-959c-834d45b3ca16'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('9bc1cc44-ea3e-4934-909d-8686b3911691','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'88982821-4edb-4797-bef9-d45a59cdc60d'),('a2e03353-47a8-4402-9fb3-1518377e661d','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('be739513-84d3-42b5-b395-1c514a3351a7','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','given name','openid-connect','oidc-usermodel-property-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('cc7a365f-501e-4a61-befb-2a38df78987c','Client Host','openid-connect','oidc-usersessionmodel-note-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('d611bca8-6d79-47e9-b564-20e5785adb57','full name','openid-connect','oidc-full-name-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'8fe92e09-ca27-42b9-9fef-4694812fcbd4'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'c4162f99-1635-4756-a718-190d7171ec38'),('e4be6a60-bad2-4262-9d83-4e6f0ec2230e','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'c4162f99-1635-4756-a718-190d7171ec38'),('e537444f-08cc-47bf-960a-1ab40b7f2782','upn','openid-connect','oidc-usermodel-property-mapper',NULL,'8fe92e09-ca27-42b9-9fef-4694812fcbd4'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','locale','openid-connect','oidc-usermodel-attribute-mapper','9f4efd0d-59c4-4b76-a45b-d8c2131c5420',NULL),('eaf9c366-ebcf-402f-be66-c2ff969bc887','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'ed6f9d91-b617-4a6a-bd27-5ae5a85d039b'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper','21b72ae5-638c-441c-a6b6-aac391d606c8',NULL),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','Group Lagoon Project IDs','openid-connect','oidc-usermodel-attribute-mapper','59f86909-777c-459e-8246-53847f656538',NULL),('f50acc15-a9da-474e-974d-9a53f6cb5f91','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'beb38ba7-ff10-4b2b-8a6c-ecc4811c0c18'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'6018fec5-1b3e-4561-9d57-5c314709c011'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'87961cb3-6d4b-48ec-a4bb-ac6e1bbffd94');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES ('0780b49a-77aa-4882-b12b-b38d77d82047','true','access.token.claim'),('0780b49a-77aa-4882-b12b-b38d77d82047','profile','claim.name'),('0780b49a-77aa-4882-b12b-b38d77d82047','true','id.token.claim'),('0780b49a-77aa-4882-b12b-b38d77d82047','String','jsonType.label'),('0780b49a-77aa-4882-b12b-b38d77d82047','profile','user.attribute'),('0780b49a-77aa-4882-b12b-b38d77d82047','true','userinfo.token.claim'),('0a175d61-2571-415b-9f91-491eeaf5515c','true','access.token.claim'),('0a175d61-2571-415b-9f91-491eeaf5515c','birthdate','claim.name'),('0a175d61-2571-415b-9f91-491eeaf5515c','true','id.token.claim'),('0a175d61-2571-415b-9f91-491eeaf5515c','String','jsonType.label'),('0a175d61-2571-415b-9f91-491eeaf5515c','birthdate','user.attribute'),('0a175d61-2571-415b-9f91-491eeaf5515c','true','userinfo.token.claim'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','true','access.token.claim'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','phone_number_verified','claim.name'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','true','id.token.claim'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','boolean','jsonType.label'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','phoneNumberVerified','user.attribute'),('0bbfae61-1425-4d31-a49d-e06d0dc7ef10','true','userinfo.token.claim'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','true','access.token.claim'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','family_name','claim.name'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','true','id.token.claim'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','String','jsonType.label'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','lastName','user.attribute'),('0e127717-25ef-4624-bb8e-4b1eafe0fc2f','true','userinfo.token.claim'),('1154a909-d2a3-490b-a539-b8df722f45d8','true','access.token.claim'),('1154a909-d2a3-490b-a539-b8df722f45d8','realm_access.roles','claim.name'),('1154a909-d2a3-490b-a539-b8df722f45d8','String','jsonType.label'),('1154a909-d2a3-490b-a539-b8df722f45d8','true','multivalued'),('1154a909-d2a3-490b-a539-b8df722f45d8','foo','user.attribute'),('128165d3-7cd1-4ae9-999e-744f1666ce96','true','access.token.claim'),('128165d3-7cd1-4ae9-999e-744f1666ce96','middle_name','claim.name'),('128165d3-7cd1-4ae9-999e-744f1666ce96','true','id.token.claim'),('128165d3-7cd1-4ae9-999e-744f1666ce96','String','jsonType.label'),('128165d3-7cd1-4ae9-999e-744f1666ce96','middleName','user.attribute'),('128165d3-7cd1-4ae9-999e-744f1666ce96','true','userinfo.token.claim'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','true','access.token.claim'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','clientAddress','claim.name'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','true','id.token.claim'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','String','jsonType.label'),('19ed9c87-025e-49fc-b616-b7fdf5f66f26','clientAddress','user.session.note'),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','true','access.token.claim'),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','resource_access.${client_id}.roles','claim.name'),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','String','jsonType.label'),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','true','multivalued'),('1cfd22cf-df91-47d4-ac43-d60ec3dd45e5','foo','user.attribute'),('1db42240-0425-4fae-b7f0-353804875635','true','access.token.claim'),('1db42240-0425-4fae-b7f0-353804875635','updated_at','claim.name'),('1db42240-0425-4fae-b7f0-353804875635','true','id.token.claim'),('1db42240-0425-4fae-b7f0-353804875635','String','jsonType.label'),('1db42240-0425-4fae-b7f0-353804875635','updatedAt','user.attribute'),('1db42240-0425-4fae-b7f0-353804875635','true','userinfo.token.claim'),('2646f8a9-d436-4e2f-9648-f58fe0041620','true','access.token.claim'),('2646f8a9-d436-4e2f-9648-f58fe0041620','email','claim.name'),('2646f8a9-d436-4e2f-9648-f58fe0041620','true','id.token.claim'),('2646f8a9-d436-4e2f-9648-f58fe0041620','String','jsonType.label'),('2646f8a9-d436-4e2f-9648-f58fe0041620','email','user.attribute'),('2646f8a9-d436-4e2f-9648-f58fe0041620','true','userinfo.token.claim'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','true','access.token.claim'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','gender','claim.name'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','true','id.token.claim'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','String','jsonType.label'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','gender','user.attribute'),('26c8bde3-bb40-4f3a-924b-b847b7989f76','true','userinfo.token.claim'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','true','access.token.claim'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','true','id.token.claim'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','country','user.attribute.country'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','formatted','user.attribute.formatted'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','locality','user.attribute.locality'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','postal_code','user.attribute.postal_code'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','region','user.attribute.region'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','street','user.attribute.street'),('2bed8f6c-b2c6-4dbd-8085-b932842db2c7','true','userinfo.token.claim'),('2ecb5612-5b3a-452c-a318-3e106f31a013','true','access.token.claim'),('2ecb5612-5b3a-452c-a318-3e106f31a013','zoneinfo','claim.name'),('2ecb5612-5b3a-452c-a318-3e106f31a013','true','id.token.claim'),('2ecb5612-5b3a-452c-a318-3e106f31a013','String','jsonType.label'),('2ecb5612-5b3a-452c-a318-3e106f31a013','zoneinfo','user.attribute'),('2ecb5612-5b3a-452c-a318-3e106f31a013','true','userinfo.token.claim'),('335a3d32-a02b-490d-b022-49387ea67b9c','true','access.token.claim'),('335a3d32-a02b-490d-b022-49387ea67b9c','website','claim.name'),('335a3d32-a02b-490d-b022-49387ea67b9c','true','id.token.claim'),('335a3d32-a02b-490d-b022-49387ea67b9c','String','jsonType.label'),('335a3d32-a02b-490d-b022-49387ea67b9c','website','user.attribute'),('335a3d32-a02b-490d-b022-49387ea67b9c','true','userinfo.token.claim'),('35bc1f52-4646-4d59-bec5-83d807928567','true','access.token.claim'),('35bc1f52-4646-4d59-bec5-83d807928567','email','claim.name'),('35bc1f52-4646-4d59-bec5-83d807928567','true','id.token.claim'),('35bc1f52-4646-4d59-bec5-83d807928567','String','jsonType.label'),('35bc1f52-4646-4d59-bec5-83d807928567','email','user.attribute'),('35bc1f52-4646-4d59-bec5-83d807928567','true','userinfo.token.claim'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','true','access.token.claim'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','groups','claim.name'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','true','id.token.claim'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','String','jsonType.label'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','true','multivalued'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','var ArrayList = Java.type(\"java.util.ArrayList\");\nvar groupsAndRoles = new ArrayList();\nvar forEach = Array.prototype.forEach;\n\n// add all groups the user is part of\nforEach.call(user.getGroups().toArray(), function(group) {\n  // remove the group role suffixes\n  //lets check if the group has a parent if this is a child\n  if(group.getFirstAttribute(\"type\") == \"role-subgroup\") {\n    var parent = group.getParent();\n    if(parent.getFirstAttribute(\"type\") == \"project-default-group\") {\n        var projectIds = parent.getFirstAttribute(\"lagoon-projects\");\n        if(projectIds !== null) {\n            forEach.call(projectIds.split(\",\"), function(g) {\n              groupsAndRoles.add(\"p\" + g);  \n            });\n            return;\n        }\n    }\n  }\n \n  var groupName = group.getName().replace(/-owner|-maintainer|-developer|-reporter|-guest/gi,\"\");\n  groupsAndRoles.add(groupName);\n  return;\n});\n\n// add all roles the user is part of\nforEach.call(user.getRoleMappings().toArray(), function(role) {\n   var roleName = role.getName();\n   groupsAndRoles.add(roleName);\n});\n\nexports = groupsAndRoles;','script'),('3676c713-2a2d-4d50-a2d5-c97151cc976e','true','userinfo.token.claim'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','true','access.token.claim'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','given_name','claim.name'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','true','id.token.claim'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','String','jsonType.label'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','firstName','user.attribute'),('40e0bdff-7bab-4c46-9b57-cc68c9f2f13e','true','userinfo.token.claim'),('412c408c-49e2-476f-9fca-8dc373ce5a25','true','access.token.claim'),('412c408c-49e2-476f-9fca-8dc373ce5a25','clientAddress','claim.name'),('412c408c-49e2-476f-9fca-8dc373ce5a25','true','id.token.claim'),('412c408c-49e2-476f-9fca-8dc373ce5a25','String','jsonType.label'),('412c408c-49e2-476f-9fca-8dc373ce5a25','clientAddress','user.session.note'),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','true','access.token.claim'),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','clientHost','claim.name'),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','true','id.token.claim'),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','String','jsonType.label'),('41367ac8-bd0c-47cc-af50-8f6c202ebe00','clientHost','user.session.note'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','true','access.token.claim'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','preferred_username','claim.name'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','true','id.token.claim'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','String','jsonType.label'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','username','user.attribute'),('41e81b3c-867e-49fe-ba40-38e054ddf46f','true','userinfo.token.claim'),('493a10d1-d958-4590-ab19-1dac9223c3b3','true','access.token.claim'),('493a10d1-d958-4590-ab19-1dac9223c3b3','birthdate','claim.name'),('493a10d1-d958-4590-ab19-1dac9223c3b3','true','id.token.claim'),('493a10d1-d958-4590-ab19-1dac9223c3b3','String','jsonType.label'),('493a10d1-d958-4590-ab19-1dac9223c3b3','birthdate','user.attribute'),('493a10d1-d958-4590-ab19-1dac9223c3b3','true','userinfo.token.claim'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','true','access.token.claim'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','family_name','claim.name'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','true','id.token.claim'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','String','jsonType.label'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','lastName','user.attribute'),('4cf63a82-fb0e-4528-baaf-6645ee53964b','true','userinfo.token.claim'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','true','access.token.claim'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','locale','claim.name'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','true','id.token.claim'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','String','jsonType.label'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','locale','user.attribute'),('4d86faa6-ed3a-4f3e-986f-ca30e535c97b','true','userinfo.token.claim'),('50f2b860-e04c-4c1e-818d-91b467cc631a','true','access.token.claim'),('50f2b860-e04c-4c1e-818d-91b467cc631a','clientId','claim.name'),('50f2b860-e04c-4c1e-818d-91b467cc631a','true','id.token.claim'),('50f2b860-e04c-4c1e-818d-91b467cc631a','String','jsonType.label'),('50f2b860-e04c-4c1e-818d-91b467cc631a','clientId','user.session.note'),('528d0f73-eca3-4ff3-b878-1140a9747962','true','access.token.claim'),('528d0f73-eca3-4ff3-b878-1140a9747962','clientId','claim.name'),('528d0f73-eca3-4ff3-b878-1140a9747962','true','id.token.claim'),('528d0f73-eca3-4ff3-b878-1140a9747962','String','jsonType.label'),('528d0f73-eca3-4ff3-b878-1140a9747962','clientId','user.session.note'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','true','access.token.claim'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','locale','claim.name'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','true','id.token.claim'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','String','jsonType.label'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','locale','user.attribute'),('53108f4d-ca31-4b8e-940c-1b680bfc247d','true','userinfo.token.claim'),('5373f626-aa33-4cb1-86c3-da144bddf161','true','access.token.claim'),('5373f626-aa33-4cb1-86c3-da144bddf161','clientHost','claim.name'),('5373f626-aa33-4cb1-86c3-da144bddf161','true','id.token.claim'),('5373f626-aa33-4cb1-86c3-da144bddf161','String','jsonType.label'),('5373f626-aa33-4cb1-86c3-da144bddf161','clientHost','user.session.note'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','true','access.token.claim'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','lagoon.user_id','claim.name'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','true','id.token.claim'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','int','jsonType.label'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','lagoon-uid','user.attribute'),('5659630d-4d4a-4a4e-bddf-082a880e62d3','true','userinfo.token.claim'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','true','access.token.claim'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','email_verified','claim.name'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','true','id.token.claim'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','boolean','jsonType.label'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','emailVerified','user.attribute'),('59dd0f1e-a224-49c9-8363-1880c7b21bb4','true','userinfo.token.claim'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','true','access.token.claim'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','zoneinfo','claim.name'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','true','id.token.claim'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','String','jsonType.label'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','zoneinfo','user.attribute'),('6e8a1bbc-c948-4fc0-9763-e5b079058f21','true','userinfo.token.claim'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','true','access.token.claim'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','preferred_username','claim.name'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','true','id.token.claim'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','String','jsonType.label'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','username','user.attribute'),('73d8bbea-3036-4483-b3f2-3b5c8c5843af','true','userinfo.token.claim'),('742d3625-55f1-490d-830d-0c2faef8baa4','true','access.token.claim'),('742d3625-55f1-490d-830d-0c2faef8baa4','true','id.token.claim'),('742d3625-55f1-490d-830d-0c2faef8baa4','true','userinfo.token.claim'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','true','access.token.claim'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','nickname','claim.name'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','true','id.token.claim'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','String','jsonType.label'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','nickname','user.attribute'),('74878aa7-fd35-4a5c-9f53-76b5628dc632','true','userinfo.token.claim'),('76ae506e-4643-4c5f-a051-5af4c305b536','true','access.token.claim'),('76ae506e-4643-4c5f-a051-5af4c305b536','upn','claim.name'),('76ae506e-4643-4c5f-a051-5af4c305b536','true','id.token.claim'),('76ae506e-4643-4c5f-a051-5af4c305b536','String','jsonType.label'),('76ae506e-4643-4c5f-a051-5af4c305b536','username','user.attribute'),('76ae506e-4643-4c5f-a051-5af4c305b536','true','userinfo.token.claim'),('7ae8761c-e092-484f-b44a-f61b091e5f44','true','access.token.claim'),('7ae8761c-e092-484f-b44a-f61b091e5f44','email_verified','claim.name'),('7ae8761c-e092-484f-b44a-f61b091e5f44','true','id.token.claim'),('7ae8761c-e092-484f-b44a-f61b091e5f44','boolean','jsonType.label'),('7ae8761c-e092-484f-b44a-f61b091e5f44','emailVerified','user.attribute'),('7ae8761c-e092-484f-b44a-f61b091e5f44','true','userinfo.token.claim'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','true','access.token.claim'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','clientId','claim.name'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','true','id.token.claim'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','String','jsonType.label'),('818be968-9ce9-4ece-af6b-1b4341f0efc5','clientId','user.session.note'),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','true','access.token.claim'),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','group_membership','claim.name'),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','true','full.path'),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','false','id.token.claim'),('83682f8e-39f6-4ec5-aa9a-ad268b39cf5c','false','userinfo.token.claim'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','true','access.token.claim'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','true','id.token.claim'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','country','user.attribute.country'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','formatted','user.attribute.formatted'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','locality','user.attribute.locality'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','postal_code','user.attribute.postal_code'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','region','user.attribute.region'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','street','user.attribute.street'),('8a9aafd1-f736-41e6-9795-4ec898c34e62','true','userinfo.token.claim'),('8c839566-239c-43ee-b0a9-b66edd535501','true','access.token.claim'),('8c839566-239c-43ee-b0a9-b66edd535501','picture','claim.name'),('8c839566-239c-43ee-b0a9-b66edd535501','true','id.token.claim'),('8c839566-239c-43ee-b0a9-b66edd535501','String','jsonType.label'),('8c839566-239c-43ee-b0a9-b66edd535501','picture','user.attribute'),('8c839566-239c-43ee-b0a9-b66edd535501','true','userinfo.token.claim'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','true','access.token.claim'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','phone_number_verified','claim.name'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','true','id.token.claim'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','boolean','jsonType.label'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','phoneNumberVerified','user.attribute'),('8ebd2cb4-1b3e-4592-9af2-53b6289d2712','true','userinfo.token.claim'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','true','access.token.claim'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','locale','claim.name'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','true','id.token.claim'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','String','jsonType.label'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','locale','user.attribute'),('9255b4a5-d4cd-470f-83d4-cb4a4d50ac20','true','userinfo.token.claim'),('93d70d91-be21-4b9d-88f1-e41e11f950ac','Role','attribute.name'),('93d70d91-be21-4b9d-88f1-e41e11f950ac','Basic','attribute.nameformat'),('93d70d91-be21-4b9d-88f1-e41e11f950ac','false','single'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','true','access.token.claim'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','resource_access.${client_id}.roles','claim.name'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','String','jsonType.label'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','true','multivalued'),('95c6d80f-6400-4438-8cfb-7ce95f8cad99','foo','user.attribute'),('960ab5f6-1842-4851-8324-bf66fb593834','Role','attribute.name'),('960ab5f6-1842-4851-8324-bf66fb593834','Basic','attribute.nameformat'),('960ab5f6-1842-4851-8324-bf66fb593834','false','single'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','true','access.token.claim'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','realm_roles','claim.name'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','false','id.token.claim'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','true','multivalued'),('97ae8c19-f1c1-4147-9dc1-508f33cb54e4','false','userinfo.token.claim'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','true','access.token.claim'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','phone_number','claim.name'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','true','id.token.claim'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','String','jsonType.label'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','phoneNumber','user.attribute'),('97b4e95f-8fa7-4743-9c49-8a1fe3424065','true','userinfo.token.claim'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','true','access.token.claim'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','gender','claim.name'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','true','id.token.claim'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','String','jsonType.label'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','gender','user.attribute'),('9a7b25cd-5e93-4684-8742-3ab2f1c9505d','true','userinfo.token.claim'),('9bc1cc44-ea3e-4934-909d-8686b3911691','true','access.token.claim'),('9bc1cc44-ea3e-4934-909d-8686b3911691','phone_number','claim.name'),('9bc1cc44-ea3e-4934-909d-8686b3911691','true','id.token.claim'),('9bc1cc44-ea3e-4934-909d-8686b3911691','String','jsonType.label'),('9bc1cc44-ea3e-4934-909d-8686b3911691','phoneNumber','user.attribute'),('9bc1cc44-ea3e-4934-909d-8686b3911691','true','userinfo.token.claim'),('a2e03353-47a8-4402-9fb3-1518377e661d','true','access.token.claim'),('a2e03353-47a8-4402-9fb3-1518377e661d','updated_at','claim.name'),('a2e03353-47a8-4402-9fb3-1518377e661d','true','id.token.claim'),('a2e03353-47a8-4402-9fb3-1518377e661d','String','jsonType.label'),('a2e03353-47a8-4402-9fb3-1518377e661d','updatedAt','user.attribute'),('a2e03353-47a8-4402-9fb3-1518377e661d','true','userinfo.token.claim'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','true','access.token.claim'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','middle_name','claim.name'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','true','id.token.claim'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','String','jsonType.label'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','middleName','user.attribute'),('b14f6d08-6d02-4716-9618-80d8f24dc90a','true','userinfo.token.claim'),('be739513-84d3-42b5-b395-1c514a3351a7','true','access.token.claim'),('be739513-84d3-42b5-b395-1c514a3351a7','nickname','claim.name'),('be739513-84d3-42b5-b395-1c514a3351a7','true','id.token.claim'),('be739513-84d3-42b5-b395-1c514a3351a7','String','jsonType.label'),('be739513-84d3-42b5-b395-1c514a3351a7','nickname','user.attribute'),('be739513-84d3-42b5-b395-1c514a3351a7','true','userinfo.token.claim'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','true','access.token.claim'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','given_name','claim.name'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','true','id.token.claim'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','String','jsonType.label'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','firstName','user.attribute'),('c173530b-0d0d-4c24-9a0c-b6e9bb41c84d','true','userinfo.token.claim'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','true','access.token.claim'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','website','claim.name'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','true','id.token.claim'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','String','jsonType.label'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','website','user.attribute'),('c7a445e8-9852-426e-a0d9-9c3e58bd73db','true','userinfo.token.claim'),('cc7a365f-501e-4a61-befb-2a38df78987c','true','access.token.claim'),('cc7a365f-501e-4a61-befb-2a38df78987c','clientHost','claim.name'),('cc7a365f-501e-4a61-befb-2a38df78987c','true','id.token.claim'),('cc7a365f-501e-4a61-befb-2a38df78987c','String','jsonType.label'),('cc7a365f-501e-4a61-befb-2a38df78987c','clientHost','user.session.note'),('d611bca8-6d79-47e9-b564-20e5785adb57','true','access.token.claim'),('d611bca8-6d79-47e9-b564-20e5785adb57','true','id.token.claim'),('d611bca8-6d79-47e9-b564-20e5785adb57','true','userinfo.token.claim'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','true','access.token.claim'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','groups','claim.name'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','true','id.token.claim'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','String','jsonType.label'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','true','multivalued'),('dd0c100c-fe1f-4345-9aa3-346b8da7b764','foo','user.attribute'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','true','access.token.claim'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','realm_access.roles','claim.name'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','String','jsonType.label'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','true','multivalued'),('e28a7839-f836-4f9c-bc02-88cd291da5cf','foo','user.attribute'),('e537444f-08cc-47bf-960a-1ab40b7f2782','true','access.token.claim'),('e537444f-08cc-47bf-960a-1ab40b7f2782','upn','claim.name'),('e537444f-08cc-47bf-960a-1ab40b7f2782','true','id.token.claim'),('e537444f-08cc-47bf-960a-1ab40b7f2782','String','jsonType.label'),('e537444f-08cc-47bf-960a-1ab40b7f2782','username','user.attribute'),('e537444f-08cc-47bf-960a-1ab40b7f2782','true','userinfo.token.claim'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','true','access.token.claim'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','locale','claim.name'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','true','id.token.claim'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','String','jsonType.label'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','locale','user.attribute'),('ead522e1-dd3e-41d6-85f9-867812b4c4e6','true','userinfo.token.claim'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','true','access.token.claim'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','clientAddress','claim.name'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','true','id.token.claim'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','String','jsonType.label'),('eb739c8d-1114-441d-b1e8-7df4a8a9a9f9','clientAddress','user.session.note'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','true','access.token.claim'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','true','aggregate.attrs'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','group_lagoon_project_ids','claim.name'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','false','id.token.claim'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','String','jsonType.label'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','true','multivalued'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','group-lagoon-project-ids','user.attribute'),('f2e52fdb-e131-4d82-b232-e4e1b4bf88f3','false','userinfo.token.claim'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','true','access.token.claim'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','profile','claim.name'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','true','id.token.claim'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','String','jsonType.label'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','profile','user.attribute'),('f50acc15-a9da-474e-974d-9a53f6cb5f91','true','userinfo.token.claim'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','true','access.token.claim'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','picture','claim.name'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','true','id.token.claim'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','String','jsonType.label'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','picture','user.attribute'),('f9574659-c540-4aed-aa5f-321c7c5dd2c1','true','userinfo.token.claim'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','true','access.token.claim'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','groups','claim.name'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','true','id.token.claim'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','String','jsonType.label'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','true','multivalued'),('ff9f2447-f654-4707-b7ab-5d502fc08e83','foo','user.attribute');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` varchar(2550) DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT 0,
  `OTP_POLICY_WINDOW` int(11) DEFAULT 1,
  `OTP_POLICY_PERIOD` int(11) DEFAULT 30,
  `OTP_POLICY_DIGITS` int(11) DEFAULT 6,
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT 0,
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`),
  CONSTRAINT `FK_TRAF444KK6QRKMS7N56AIWQ5Y` FOREIGN KEY (`MASTER_ADMIN_CLIENT`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES ('9e68e28f-f43c-490b-85c1-4551eb0eb7af',60,300,300,NULL,NULL,NULL,'','\0',0,NULL,'lagoon',0,NULL,'\0','\0','\0','\0','EXTERNAL',1800,36000,'\0','\0','d5943451-7ddf-4016-93f1-128ca7a34809',1800,'\0',NULL,'\0','\0','\0','',0,1,30,6,'HmacSHA1','totp','499db961-e5da-4f7f-a65c-ffff67ef3591','c6cec925-ce95-4a77-822f-d0bdeffda5ca','1e4b049b-f415-419d-84dd-4a9c4ddd30ed','d42f7219-1011-4be4-b2cd-dff659146bdf','e914d9f7-91b7-415b-b774-426fa704e56d',2592000,'\0',900,'','\0','c4882a5e-2d24-4d0d-9a08-09ae6ada14e5',0,'\0',0,0),('master',60,300,60,NULL,NULL,NULL,'','\0',0,NULL,'master',0,NULL,'\0','\0','\0','\0','EXTERNAL',1800,36000,'\0','\0','f1f6d07f-b5f1-4747-b39a-72d9b300e38c',1800,'\0',NULL,'\0','\0','\0','\0',0,1,30,6,'HmacSHA1','totp','22e6e275-adf1-4201-a422-9d698380632d','375a7d9a-61dc-4891-aa7f-0b31b5c867e0','321ebe0f-e6ef-4f1e-83ed-c7bc05f77511','5da57143-b9e7-4955-a358-2b57ef8731c3','f56ffc96-a8be-4045-9756-8eea4febac47',2592000,'\0',900,'','\0','a7c89870-b137-4859-811f-507207aa085c',0,'\0',0,0);
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES ('actionTokenGeneratedByAdminLifespan','43200','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('actionTokenGeneratedByUserLifespan','300','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('bruteForceProtected','false','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('bruteForceProtected','false','master'),('displayName','Keycloak','master'),('displayNameHtml','<div class=\"kc-logo-text\"><span>Keycloak</span></div>','master'),('failureFactor','30','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('failureFactor','30','master'),('maxDeltaTimeSeconds','43200','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('maxDeltaTimeSeconds','43200','master'),('maxFailureWaitSeconds','900','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('maxFailureWaitSeconds','900','master'),('minimumQuickLoginWaitSeconds','60','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('minimumQuickLoginWaitSeconds','60','master'),('offlineSessionMaxLifespan','5184000','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('offlineSessionMaxLifespan','5184000','master'),('offlineSessionMaxLifespanEnabled','false','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('offlineSessionMaxLifespanEnabled','false','master'),('permanentLockout','false','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('permanentLockout','false','master'),('quickLoginCheckMilliSeconds','1000','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('quickLoginCheckMilliSeconds','1000','master'),('waitIncrementSeconds','60','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('waitIncrementSeconds','60','master'),('_browser_header.contentSecurityPolicy','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.contentSecurityPolicy','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';','master'),('_browser_header.contentSecurityPolicyReportOnly','','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.contentSecurityPolicyReportOnly','','master'),('_browser_header.strictTransportSecurity','max-age=31536000; includeSubDomains','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.strictTransportSecurity','max-age=31536000; includeSubDomains','master'),('_browser_header.xContentTypeOptions','nosniff','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.xContentTypeOptions','nosniff','master'),('_browser_header.xFrameOptions','SAMEORIGIN','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.xFrameOptions','SAMEORIGIN','master'),('_browser_header.xRobotsTag','none','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.xRobotsTag','none','master'),('_browser_header.xXSSProtection','1; mode=block','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('_browser_header.xXSSProtection','1; mode=block','master');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_DEFAULT_ROLES`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_DEFAULT_ROLES` (
  `REALM_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`ROLE_ID`),
  UNIQUE KEY `UK_H4WPD7W4HSOOLNI3H0SW7BTJE` (`ROLE_ID`),
  KEY `IDX_REALM_DEF_ROLES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_EVUDB1PPW84OXFAX2DRS03ICC` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`),
  CONSTRAINT `FK_H4WPD7W4HSOOLNI3H0SW7BTJE` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_ROLES`
--

LOCK TABLES `REALM_DEFAULT_ROLES` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_ROLES` DISABLE KEYS */;
INSERT INTO `REALM_DEFAULT_ROLES` VALUES ('9e68e28f-f43c-490b-85c1-4551eb0eb7af','4ff68bc1-1f03-49ca-8603-ae083c982843'),('9e68e28f-f43c-490b-85c1-4551eb0eb7af','c6834368-9bf4-4edd-b607-7b4d741209ac'),('master','03cbfccb-36d2-4a8e-85e2-1f194c9e8595'),('master','0bc9d6f6-658f-44f3-94b6-4808015b7a71');
/*!40000 ALTER TABLE `REALM_DEFAULT_ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES ('9e68e28f-f43c-490b-85c1-4551eb0eb7af','jboss-logging'),('master','jboss-logging');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES ('password','password','','','9e68e28f-f43c-490b-85c1-4551eb0eb7af'),('password','password','','','master');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES ('61831f3e-d644-463d-baa8-eff1bb4f5c8d','*'),('7ffbc99c-44a7-4cf3-b1f6-50bf426f0def','/auth/realms/lagoon/account/*'),('80682831-ddd5-489c-99d1-de18376281e4','/auth/realms/master/account/*'),('9f4efd0d-59c4-4b76-a45b-d8c2131c5420','/auth/admin/lagoon/console/*'),('c08235fc-5d0a-493f-9f18-a4b55456f561','*'),('f3c47970-e2cb-4868-8d8c-89529967e5b1','/auth/admin/master/console/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES ('10e36a76-1686-468b-a097-28c1bc7ab247','UPDATE_PASSWORD','Update Password','master','','\0','UPDATE_PASSWORD',30),('1107fb78-ffa6-48f4-ad24-31af26872d62','CONFIGURE_TOTP','Configure OTP','9e68e28f-f43c-490b-85c1-4551eb0eb7af','','\0','CONFIGURE_TOTP',10),('395377cc-db0b-46cf-8eda-301783a4b71b','UPDATE_PASSWORD','Update Password','9e68e28f-f43c-490b-85c1-4551eb0eb7af','','\0','UPDATE_PASSWORD',30),('6d043eaf-ffff-4e2d-9fbb-ca18ad5e8567','CONFIGURE_TOTP','Configure OTP','master','','\0','CONFIGURE_TOTP',10),('75c14680-9e94-4f1a-bec5-bdc8fc5d466f','UPDATE_PROFILE','Update Profile','9e68e28f-f43c-490b-85c1-4551eb0eb7af','','\0','UPDATE_PROFILE',40),('870308f9-f761-492a-ae02-5e8cc335b05c','VERIFY_EMAIL','Verify Email','9e68e28f-f43c-490b-85c1-4551eb0eb7af','','\0','VERIFY_EMAIL',50),('8cb10d49-bc89-4fdd-8ef5-49527b6983d5','UPDATE_PROFILE','Update Profile','master','','\0','UPDATE_PROFILE',40),('b1b86c2b-dcf9-4f0a-aee4-1fd315c57261','terms_and_conditions','Terms and Conditions','master','\0','\0','terms_and_conditions',20),('b911627c-39be-45fc-9072-4ac79a365e2e','VERIFY_EMAIL','Verify Email','master','','\0','VERIFY_EMAIL',50),('c5d826b7-f5e2-4973-85c0-6d0f0aaf99af','terms_and_conditions','Terms and Conditions','9e68e28f-f43c-490b-85c1-4551eb0eb7af','\0','\0','terms_and_conditions',20);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
INSERT INTO `RESOURCE_POLICY` VALUES ('3930d3e9-318c-4053-b978-9505ecbe3df7','16199e89-e6b9-46c1-af44-d9977ddd8721'),('3930d3e9-318c-4053-b978-9505ecbe3df7','2f78a70a-d41f-482a-9162-530d62f2650d'),('3930d3e9-318c-4053-b978-9505ecbe3df7','303e7be3-a96d-443e-8a7c-1e85aa8fdd16'),('3930d3e9-318c-4053-b978-9505ecbe3df7','4a65e3e4-7d00-4be1-b8cd-51be3e9161b7'),('3930d3e9-318c-4053-b978-9505ecbe3df7','64a062ff-3e1a-43ff-b5b4-44211f786026'),('3930d3e9-318c-4053-b978-9505ecbe3df7','692fe4b5-8b70-492d-8648-8a2b848d93d0'),('3930d3e9-318c-4053-b978-9505ecbe3df7','7024a5a5-b157-41a8-b7f4-3a69552a3349'),('3930d3e9-318c-4053-b978-9505ecbe3df7','9a7ea562-5d6c-4119-81bb-cc0ff60eeb91'),('3930d3e9-318c-4053-b978-9505ecbe3df7','a71c6d2b-cffa-4871-a414-87d62c433006'),('3930d3e9-318c-4053-b978-9505ecbe3df7','bea3902c-d2ff-43da-83c9-1382af54ece5'),('3930d3e9-318c-4053-b978-9505ecbe3df7','c702e4a6-cbcc-4f3c-99b6-07635741131b'),('3930d3e9-318c-4053-b978-9505ecbe3df7','d004fbb8-4810-4e1e-987c-b5eb9af225cf'),('3930d3e9-318c-4053-b978-9505ecbe3df7','e66186d8-f9c5-4ad6-9697-03969a4bb979'),('3930d3e9-318c-4053-b978-9505ecbe3df7','e70dfa5e-fadd-464a-922a-c926000bf7ed'),('3930d3e9-318c-4053-b978-9505ecbe3df7','f083a050-7356-46f9-b6fa-18b9d7d47e68'),('3930d3e9-318c-4053-b978-9505ecbe3df7','f4b315bb-d7ed-426c-a762-3890ad107bd3'),('3930d3e9-318c-4053-b978-9505ecbe3df7','fb78ffbf-5ead-4a96-8ce2-01f1e1c10e75'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','01e050ba-cda5-4182-a4a5-f4eadf553813'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','8f997715-922a-4411-90f3-af58abd54005'),('3af81601-f3c0-4a92-b208-dc1316dd317b','2b43a9e1-94fa-4753-9a36-25921d77f7ae'),('3af81601-f3c0-4a92-b208-dc1316dd317b','84459c24-c9bc-45ce-aafd-1b82b72d1d2e'),('3af81601-f3c0-4a92-b208-dc1316dd317b','8e7dc04f-db7c-4ab3-a626-18482c1958be'),('3af81601-f3c0-4a92-b208-dc1316dd317b','c028d964-5be2-4591-b557-2ed096c8418f'),('3af81601-f3c0-4a92-b208-dc1316dd317b','ce236e7f-3cc1-4dcb-a1af-ef6bc168139e'),('3af81601-f3c0-4a92-b208-dc1316dd317b','d4006748-ad2b-47c3-93c9-b066ce2d4786'),('3af81601-f3c0-4a92-b208-dc1316dd317b','dcf4e852-4410-467c-80fe-ae94a532ab0b'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','30ff5506-07d9-4e3a-9cfa-7f680940bbb8'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','77cfcda8-ce92-4b8f-b03b-a269b857c8b9'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','80294afd-62e8-4dac-95e9-b5d39eb05359'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','d0850d96-ce18-4aa1-aac9-3ee0357743c0'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','e294052a-f368-46cb-87b7-1a03945cc399'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','74beae8e-35ff-4c9c-9a5f-34433ae7f7fa'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','949cd503-172b-4636-a8b6-70f4039ee814'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','b223f08d-9e65-4703-9d48-e0e4f67bbfff'),('82935420-8389-4795-af3d-f7f7ea809f5c','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('82935420-8389-4795-af3d-f7f7ea809f5c','b41a771f-ebcb-42ca-98f3-0ef2659fdf8f'),('82935420-8389-4795-af3d-f7f7ea809f5c','c262fcd2-c14f-4027-8286-2d31b92842b0'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','4f2e0f96-2ccb-427e-a540-670021464024'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','559e8071-9d51-41eb-8d0d-c1faf50682be'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','71db75e6-95e4-42ef-a60d-666f7fc1cd91'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','891c9490-82cb-419f-9f31-a4b3bf827f64'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','fe6457bf-ac1e-4d1c-9e46-e8ddb0a709a1'),('86f963fa-4630-4431-b9e6-ee5505650e0e','23f2422f-79fd-4c66-8aae-27e1036fa04f'),('86f963fa-4630-4431-b9e6-ee5505650e0e','419838fb-5b01-4555-a5e6-2a29bcc5957e'),('86f963fa-4630-4431-b9e6-ee5505650e0e','97411989-04c9-42ea-b778-4a95488335ac'),('86f963fa-4630-4431-b9e6-ee5505650e0e','a2390908-f0cb-4465-a147-a35bbd49fb5e'),('86f963fa-4630-4431-b9e6-ee5505650e0e','a31d96a2-eb22-43b1-8cf7-272eb2df86e8'),('86f963fa-4630-4431-b9e6-ee5505650e0e','a9cb9999-9c98-4715-8696-df7f5da351b1'),('86f963fa-4630-4431-b9e6-ee5505650e0e','e984a02a-bd9f-4889-97ec-5ba3ee482cc4'),('983d1e85-6bd5-4945-949f-b04be86a2931','59904505-6375-43b0-96d8-8728b7320330'),('983d1e85-6bd5-4945-949f-b04be86a2931','890d5fd1-8d0e-40ec-be70-52fa537f1cb6'),('983d1e85-6bd5-4945-949f-b04be86a2931','c45bb5f4-63c0-4152-8bd8-ccf008b6dd9a'),('983d1e85-6bd5-4945-949f-b04be86a2931','e369e557-aada-40c7-abcb-e0300ebec270'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','0a1ddc7f-9143-41cf-90da-efe3515d5540'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','180b8c81-1811-4bc1-8d78-bd521389e18e'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','2f0e598d-10c0-456b-b85f-c3ac188f72f9'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','60ab23ad-a6f1-4626-b8c4-8b148c5097eb'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','699ea0e1-b8fd-4faf-a757-b411c0e12a6d'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','821e979e-367e-4fdb-bdbc-af559503c9d3'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','b3e8022b-3384-45c3-b101-a3cc4e3cf4dc'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','d6c40dbe-f765-43e6-b624-2912f2959bd6'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','e375a6d9-5243-44eb-bf5d-17fe6c882464'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','ee4a0a7f-561e-4afa-8582-f600f6bcc282'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','ffbfe0f3-1cd5-4957-834a-70e163962e7f'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','0ed2b1a4-fa8c-40e1-a97e-7f75d2fde9db'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','1309ec76-f5fb-47e9-bca5-3603f3be9c5d'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','ce9bf525-fcc5-4e11-95f0-61c12e25ae9a'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','d8b7b45e-883d-47b9-a3bf-2e135e910788'),('a5ca171c-f057-4373-8f01-870ab8624fd1','2aa3eae6-d0bd-4841-9172-b14524be1f8a'),('a5ca171c-f057-4373-8f01-870ab8624fd1','51946cf5-c4eb-4965-9705-67b85b287a2e'),('a5ca171c-f057-4373-8f01-870ab8624fd1','754d6f04-bd52-4c41-9031-46427c40fae2'),('a5ca171c-f057-4373-8f01-870ab8624fd1','7deba0eb-e25f-4738-9c6d-893167373991'),('a5ca171c-f057-4373-8f01-870ab8624fd1','9532baa9-60cf-4367-94ee-d6ec7866865a'),('a5ca171c-f057-4373-8f01-870ab8624fd1','c2acf775-76d9-40e8-9432-a3d8ef4d830c'),('a5ca171c-f057-4373-8f01-870ab8624fd1','e8ec967a-339d-415e-928a-6586a500cb89'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','265e9447-fb69-478c-bf2e-835527821576'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','40bd4bb3-6ee6-48c8-97ae-09737d960927'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','41aeba5a-792d-42bb-acf8-b75788947e79'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','455e0fbb-af6c-4153-8d99-a8c1dde4afe2'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','4bc5b69c-f921-49a7-8c04-bc5f4dafd361'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','5d116db1-5f24-4996-bddf-8f895ca6b202'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','68a769a5-dc96-4c22-b440-0fe3897b88f9'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','80b8ad0b-9c92-4541-a88c-a2da33f76470'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','855174d2-12a0-4a38-a5f6-6dcbbd74a3c1'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','89b4641c-f37d-40aa-81cc-64cdbb0b3f39'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','a7c350c8-9c03-4be0-bd2f-6fb4e026761b'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','cce8b8c3-870f-43b4-86d9-8bbbaeb4afdd'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','ed420720-a6ed-4930-80e2-347b9ce29a5c'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','ee0d2269-fedf-46aa-9fce-3a32097c2a11'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','02fa29f0-6e3b-4867-92bb-499b2b8f927c'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','450a8e46-c00b-471c-a7bc-f0c1e447155a'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','efe8b6cd-331c-40ef-98e8-65f093dbe5d7'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','139589f2-17b1-426b-ae88-5d2cd4d04d04'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','7e8e5b68-ac00-4029-b29d-7f07e1dca060'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','88ef6dda-b4c0-4d77-ae86-d5d19956bd04'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','25f5e98d-9790-4b84-997c-f4e69d624252'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','6123d63b-2917-476d-be85-5526659cb102'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','ac9fb478-7eb4-45f4-ba07-b1c7afea31ad'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','c856fd34-cc70-41cf-a71d-def9ff9b8014'),('cf139b86-0574-403b-bd4d-b72269ef7388','46729337-5eab-4646-a9c9-ca5e2e2773c8'),('cf139b86-0574-403b-bd4d-b72269ef7388','742f21f5-85e3-4e58-a172-25a61aa368d5'),('cf139b86-0574-403b-bd4d-b72269ef7388','e0cf2860-f08a-4f94-ac5c-9489440c7423'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','348f86bc-3c37-4f00-824c-3c75911d4380'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','36862091-ba3a-4159-8dd9-b8ab7a9f257c'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','411b0bc2-5897-4db0-ad0a-ea45527c83c7'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','4b991679-2ace-43a2-adb2-cb366058d6cd'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','5128bf35-c1de-4f89-8fa1-1a6dd7193d87'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','f7c373dc-10d2-4894-bc0e-f54e8628ba29'),('fd345ba3-265b-4319-b8c9-0809190ccacc','3390986d-282e-413c-b6c2-36fd90974c82'),('fd345ba3-265b-4319-b8c9-0809190ccacc','3f8ff439-6d18-47a0-9008-5591a37b44ec'),('fd345ba3-265b-4319-b8c9-0809190ccacc','76765c3a-6856-476b-81c1-5f95d6645715'),('fd345ba3-265b-4319-b8c9-0809190ccacc','95a4e823-ea5c-4a34-9ecd-182c47bb9a10'),('fd345ba3-265b-4319-b8c9-0809190ccacc','9fa2d41a-3ca6-4949-ab53-a8434eb425fe'),('fd345ba3-265b-4319-b8c9-0809190ccacc','a31be88f-190e-452a-9ea1-7030f59866f8'),('fd345ba3-265b-4319-b8c9-0809190ccacc','ea53ca1f-35b2-4eaa-9083-52ed79505756');
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
INSERT INTO `RESOURCE_SCOPE` VALUES ('3930d3e9-318c-4053-b978-9505ecbe3df7','079a33a1-9336-44ea-8d52-66b89529b4ee'),('3930d3e9-318c-4053-b978-9505ecbe3df7','1192472e-2098-4ad0-9e57-c72eda1f269a'),('3930d3e9-318c-4053-b978-9505ecbe3df7','12404311-00fc-4101-997d-7e01170e06af'),('3930d3e9-318c-4053-b978-9505ecbe3df7','16b2128d-4c0e-498f-9fc9-8312bde5133b'),('3930d3e9-318c-4053-b978-9505ecbe3df7','2507cca7-e833-47c3-b0aa-09c560d0aed6'),('3930d3e9-318c-4053-b978-9505ecbe3df7','25ab146e-aacc-4807-b779-0d87281060ac'),('3930d3e9-318c-4053-b978-9505ecbe3df7','3152b118-92a4-480d-93b6-37c966cda646'),('3930d3e9-318c-4053-b978-9505ecbe3df7','39a34aa4-eecb-491c-98b7-5507525dc20f'),('3930d3e9-318c-4053-b978-9505ecbe3df7','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('3930d3e9-318c-4053-b978-9505ecbe3df7','4b7abad6-a4ea-4757-8ecc-794db467929e'),('3930d3e9-318c-4053-b978-9505ecbe3df7','5b69cafb-8f77-4859-9ba0-6007408441a5'),('3930d3e9-318c-4053-b978-9505ecbe3df7','638a1ede-3cce-46ce-9240-a63317f98e96'),('3930d3e9-318c-4053-b978-9505ecbe3df7','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('3930d3e9-318c-4053-b978-9505ecbe3df7','8d8a389a-7ad8-4376-8c3f-67f4bdc67992'),('3930d3e9-318c-4053-b978-9505ecbe3df7','a3b25414-7490-4d5c-94e3-2eb5e45b21ec'),('3930d3e9-318c-4053-b978-9505ecbe3df7','b467cb78-4837-4fbd-8918-8fa2bf8720dd'),('3930d3e9-318c-4053-b978-9505ecbe3df7','b82b250c-9a7c-41d8-93d7-0399e494df0d'),('3930d3e9-318c-4053-b978-9505ecbe3df7','d1bb8443-c79c-415e-86cd-983dc5cb7bf9'),('3930d3e9-318c-4053-b978-9505ecbe3df7','de24e15f-8ef5-4c4d-a4d4-9ece88f32806'),('3930d3e9-318c-4053-b978-9505ecbe3df7','deca5cac-c5b9-4fc9-906d-b1a45fea7f5b'),('3930d3e9-318c-4053-b978-9505ecbe3df7','e370323e-1f41-4383-869e-a4402bea8e2d'),('3930d3e9-318c-4053-b978-9505ecbe3df7','ed6f9ae6-2220-44c9-a25d-53ce76935142'),('3930d3e9-318c-4053-b978-9505ecbe3df7','f7c86dab-9381-481f-a747-6d6279670a42'),('3930d3e9-318c-4053-b978-9505ecbe3df7','f96563f0-61d9-4dcc-b0ee-c8947d84b6eb'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','1192472e-2098-4ad0-9e57-c72eda1f269a'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','deca5cac-c5b9-4fc9-906d-b1a45fea7f5b'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','e35b7123-5738-4e7e-9069-b86e183e3497'),('3af81601-f3c0-4a92-b208-dc1316dd317b','08ef50bf-f056-49d6-aade-1669ec08e480'),('3af81601-f3c0-4a92-b208-dc1316dd317b','1192472e-2098-4ad0-9e57-c72eda1f269a'),('3af81601-f3c0-4a92-b208-dc1316dd317b','57ae64fa-8311-4e75-b238-53e32fb31220'),('3af81601-f3c0-4a92-b208-dc1316dd317b','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('3af81601-f3c0-4a92-b208-dc1316dd317b','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('3af81601-f3c0-4a92-b208-dc1316dd317b','e35b7123-5738-4e7e-9069-b86e183e3497'),('3af81601-f3c0-4a92-b208-dc1316dd317b','f929bbdd-3559-464d-914d-d59bdfb709b7'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','1192472e-2098-4ad0-9e57-c72eda1f269a'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','343b7f7a-d42e-4427-bf4f-b81aa78e4a07'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','5cd23959-9953-4ed4-be7e-87dec2b82a37'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','a9c8552d-7000-4252-a1d9-01d237d3253a'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','e35b7123-5738-4e7e-9069-b86e183e3497'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','e35b7123-5738-4e7e-9069-b86e183e3497'),('82935420-8389-4795-af3d-f7f7ea809f5c','1192472e-2098-4ad0-9e57-c72eda1f269a'),('82935420-8389-4795-af3d-f7f7ea809f5c','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('82935420-8389-4795-af3d-f7f7ea809f5c','57ae64fa-8311-4e75-b238-53e32fb31220'),('82935420-8389-4795-af3d-f7f7ea809f5c','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('82935420-8389-4795-af3d-f7f7ea809f5c','82a8f64f-139b-4035-a6e0-cd612cb76db2'),('82935420-8389-4795-af3d-f7f7ea809f5c','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('82935420-8389-4795-af3d-f7f7ea809f5c','e35b7123-5738-4e7e-9069-b86e183e3497'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','0624886b-f3b1-471a-a0dc-b1af77554137'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','1110d8f6-6d51-4d6b-b1cf-cf0a5ff5d1f5'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','266b79e0-33fd-4121-82f6-39fba5dcd850'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','50daf044-e799-4598-9a8c-da24390d20e1'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','91803b16-0bb5-4523-a7dd-d6b95fb7ee61'),('86f963fa-4630-4431-b9e6-ee5505650e0e','1c10ef27-ba01-4fd7-9013-91c07eef7290'),('86f963fa-4630-4431-b9e6-ee5505650e0e','29efe384-9e40-458a-bc32-38bdf1a876a5'),('86f963fa-4630-4431-b9e6-ee5505650e0e','5cada167-d70b-4102-9bdb-217ed10fd4e5'),('86f963fa-4630-4431-b9e6-ee5505650e0e','651ee2ca-d917-4b0a-a58c-e9c7842261b1'),('86f963fa-4630-4431-b9e6-ee5505650e0e','6c56d11f-8ab9-4855-962d-038ebdfe6a02'),('86f963fa-4630-4431-b9e6-ee5505650e0e','8b947ad3-ea59-49f5-8ac0-ad7285cb284a'),('86f963fa-4630-4431-b9e6-ee5505650e0e','d88424b0-cb5c-4e0d-86c6-01d344e95376'),('983d1e85-6bd5-4945-949f-b04be86a2931','1192472e-2098-4ad0-9e57-c72eda1f269a'),('983d1e85-6bd5-4945-949f-b04be86a2931','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('983d1e85-6bd5-4945-949f-b04be86a2931','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('983d1e85-6bd5-4945-949f-b04be86a2931','93ae4a35-cbbc-472f-9c8f-d9b953e97760'),('983d1e85-6bd5-4945-949f-b04be86a2931','e35b7123-5738-4e7e-9069-b86e183e3497'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','1192472e-2098-4ad0-9e57-c72eda1f269a'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','3f9a711d-2a18-4287-81f5-14744a689cf7'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','57ae64fa-8311-4e75-b238-53e32fb31220'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','6736531e-3e14-4750-9c16-7c09fbb5f84b'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','8a633bda-a303-4830-8f02-454dc3e60825'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','d4c69961-ad8a-4fc5-ba71-f5e5f9284af9'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','e35b7123-5738-4e7e-9069-b86e183e3497'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','fc95e2f3-1d18-4622-993b-11462648e7e2'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','1192472e-2098-4ad0-9e57-c72eda1f269a'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','656acc70-81d8-43ee-aade-b64cc2defda2'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('a5ca171c-f057-4373-8f01-870ab8624fd1','3c471a46-f103-4188-a78b-c0e13d751286'),('a5ca171c-f057-4373-8f01-870ab8624fd1','50e4fdd3-7400-4208-ae59-857f52bf46c2'),('a5ca171c-f057-4373-8f01-870ab8624fd1','5e93e267-acb4-4498-9354-07db7e91efb4'),('a5ca171c-f057-4373-8f01-870ab8624fd1','660b7eb8-b34e-4dc6-a020-2ca0e1b3990d'),('a5ca171c-f057-4373-8f01-870ab8624fd1','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('a5ca171c-f057-4373-8f01-870ab8624fd1','7b1a78ec-d742-43d0-a2e8-81d1036ae358'),('a5ca171c-f057-4373-8f01-870ab8624fd1','d6c452eb-8844-4351-803d-c3da7cbfa44b'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','316c6697-b079-40b4-bd8e-602019395be6'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','57ae64fa-8311-4e75-b238-53e32fb31220'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','7ec61b46-9389-4807-a080-f6daa51992aa'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','8a3a9112-e29c-4770-b7e2-7721ed5124ea'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','9d9ac858-3796-48dd-8ac4-5dfa20a10d12'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','9de1cd16-7e55-4c62-bf99-34b554fd07fb'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','a41b5420-aa19-498d-bd07-71e7bdb25433'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','a77839b1-31b2-4f9c-8d6e-1948438c2d52'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','b7d85c4e-d319-448b-98ed-0a441c0301d6'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','b873a331-68f1-499b-8ce3-f607a83d5681'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','bfd71b13-552e-44bc-b0df-98b3c8004cd9'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','e61f0b76-3221-44d3-a425-8794138e22d9'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','f201fc18-902d-4cb3-8263-1a574aceb7ea'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','1192472e-2098-4ad0-9e57-c72eda1f269a'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','a9c8552d-7000-4252-a1d9-01d237d3253a'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','e35b7123-5738-4e7e-9069-b86e183e3497'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','e35b7123-5738-4e7e-9069-b86e183e3497'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','8cfe5083-cd6a-4a24-8ea1-c409c00e4329'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','e35b7123-5738-4e7e-9069-b86e183e3497'),('cf139b86-0574-403b-bd4d-b72269ef7388','41b37080-5ac7-4c4a-8582-d4bb5258660c'),('cf139b86-0574-403b-bd4d-b72269ef7388','6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5'),('cf139b86-0574-403b-bd4d-b72269ef7388','e35b7123-5738-4e7e-9069-b86e183e3497'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','573a7854-58d7-4fe8-bff2-7b50bd1a9c03'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','5cada167-d70b-4102-9bdb-217ed10fd4e5'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','651ee2ca-d917-4b0a-a58c-e9c7842261b1'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','826c9b63-835e-4ed1-9930-2eba3d323f4a'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','865efdc2-e1f6-49c6-b57a-6cbb5eeb8ae0'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','d88424b0-cb5c-4e0d-86c6-01d344e95376'),('fd345ba3-265b-4319-b8c9-0809190ccacc','1c10ef27-ba01-4fd7-9013-91c07eef7290'),('fd345ba3-265b-4319-b8c9-0809190ccacc','29efe384-9e40-458a-bc32-38bdf1a876a5'),('fd345ba3-265b-4319-b8c9-0809190ccacc','5cada167-d70b-4102-9bdb-217ed10fd4e5'),('fd345ba3-265b-4319-b8c9-0809190ccacc','651ee2ca-d917-4b0a-a58c-e9c7842261b1'),('fd345ba3-265b-4319-b8c9-0809190ccacc','6c56d11f-8ab9-4855-962d-038ebdfe6a02'),('fd345ba3-265b-4319-b8c9-0809190ccacc','8b947ad3-ea59-49f5-8ac0-ad7285cb284a'),('fd345ba3-265b-4319-b8c9-0809190ccacc','d88424b0-cb5c-4e0d-86c6-01d344e95376');
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER` VALUES ('738f5ead-ea8c-4254-9016-9eb16b0aa17f','\0','0',1),('9c0b99b8-7518-49ef-a253-cfcd899857d9','','0',1);
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(36) NOT NULL,
  `REQUESTER` varchar(36) NOT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_POLICY` VALUES ('01e050ba-cda5-4182-a4a5-f4eadf553813','Add Restore',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('02fa29f0-6e3b-4867-92bb-499b2b8f927c','CUD Notification',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('05f6dff6-4380-432d-b02a-5d0ab4dfcc0c','Default Policy','A policy that grants access only for users within this realm','js','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('06fc2831-57d3-4fb2-a6ce-e73c84ff0145','Users role for project is Guest','Checks the users role for a project is Guest or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('0a1ddc7f-9143-41cf-90da-efe3515d5540','Delete All Projects',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('0ed2b1a4-fa8c-40e1-a97e-7f75d2fde9db','Cancel Deployment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('1309ec76-f5fb-47e9-bca5-3603f3be9c5d','Delete Deployment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('139589f2-17b1-426b-ae88-5d2cd4d04d04','Delete Fact',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('16199e89-e6b9-46c1-af44-d9977ddd8721','Run Drush rsync to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('1670872c-63d7-41e6-a3a3-cb3893aa0495','Users role for realm is Admin','Checks the users role for the realm is Admin','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('180b8c81-1811-4bc1-8d78-bd521389e18e','Add Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('23f2422f-79fd-4c66-8aae-27e1036fa04f','view.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('25f5e98d-9790-4b84-997c-f4e69d624252','Add Backup',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('265e9447-fb69-478c-bf2e-835527821576','Add Deployment to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('2aa3eae6-d0bd-4841-9172-b14524be1f8a','View Environment Variable for Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('2b43a9e1-94fa-4753-9a36-25921d77f7ae','Update Group',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('2f0e598d-10c0-456b-b85f-c3ac188f72f9','Add Notification to Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('2f78a70a-d41f-482a-9162-530d62f2650d','Run Drush cron',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('303e7be3-a96d-443e-8a7c-1e85aa8fdd16','Run Drush archive-dump',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('30ff5506-07d9-4e3a-9cfa-7f680940bbb8','Get SSH Keys for User',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('3390986d-282e-413c-b6c2-36fd90974c82','manage.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('348f86bc-3c37-4f00-824c-3c75911d4380','map-roles.permission.users',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('348fb1cd-e97b-4415-8607-a36e6814ff84','Users role for group is Maintainer','Checks the users role for a group is Maintainer or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('36862091-ba3a-4159-8dd9-b8ab7a9f257c','view.permission.users',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('3f8ff439-6d18-47a0-9008-5591a37b44ec','map-roles.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('40bd4bb3-6ee6-48c8-97ae-09737d960927','View Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('411b0bc2-5897-4db0-ad0a-ea45527c83c7','manage.permission.users',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('419838fb-5b01-4555-a5e6-2a29bcc5957e','map-roles-composite.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('41aeba5a-792d-42bb-acf8-b75788947e79','Update Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('450a8e46-c00b-471c-a7bc-f0c1e447155a','Delete All Notifications',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('455e0fbb-af6c-4153-8d99-a8c1dde4afe2','Delete Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('46729337-5eab-4646-a9c9-ca5e2e2773c8','Add Problem',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('4a65e3e4-7d00-4be1-b8cd-51be3e9161b7','Add Task to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('4b991679-2ace-43a2-adb2-cb366058d6cd','admin-impersonating.permission.users',NULL,'scope','0','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('4bc5b69c-f921-49a7-8c04-bc5f4dafd361','View Environment Metrics',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('4f2e0f96-2ccb-427e-a540-670021464024','Create Image Based Task',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5128bf35-c1de-4f89-8fa1-1a6dd7193d87','manage-group-membership.permission.users',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('51946cf5-c4eb-4965-9705-67b85b287a2e','Add Environment Variable to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('54c5e4fa-2c5e-4a04-878d-9aa82efb1235','Users role for group is Owner','Checks the users role for a group is Owner or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('559e8071-9d51-41eb-8d0d-c1faf50682be','Invoke Task Guest',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('59904505-6375-43b0-96d8-8728b7320330','Update User',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5d116db1-5f24-4996-bddf-8f895ca6b202','Add Deployment to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('60ab23ad-a6f1-4626-b8c4-8b148c5097eb','Add Groups to Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('6123d63b-2917-476d-be85-5526659cb102','View Backups',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('64a062ff-3e1a-43ff-b5b4-44211f786026','Run Drush cache-clear',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('66d013ff-a0d2-415c-b881-3bbb41c3f08c','Client service-api Policy',NULL,'client','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('68a769a5-dc96-4c22-b440-0fe3897b88f9','Delete Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('692fe4b5-8b70-492d-8648-8a2b848d93d0','Run Drush rsync to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('699ea0e1-b8fd-4faf-a757-b411c0e12a6d','Remove Notification from Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('6b344dff-a70e-4e10-b243-dc9d13b3a5ca','Users role for group is Developer','Checks the users role for a group is Developer or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('7024a5a5-b157-41a8-b7f4-3a69552a3349','Update Task',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('71db75e6-95e4-42ef-a60d-666f7fc1cd91','Delete Advanced Task',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('742f21f5-85e3-4e58-a172-25a61aa368d5','View Problems',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('74beae8e-35ff-4c9c-9a5f-34433ae7f7fa','Delete Harbor Scan Match',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('754d6f04-bd52-4c41-9031-46427c40fae2','View Environment Variable for Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('76765c3a-6856-476b-81c1-5f95d6645715','view.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('77cfcda8-ce92-4b8f-b03b-a269b857c8b9','Delete All SSH Keys',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('7deba0eb-e25f-4738-9c6d-893167373991','View Environment Variable for Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('7e8e5b68-ac00-4029-b29d-7f07e1dca060','Add Fact',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('80294afd-62e8-4dac-95e9-b5d39eb05359','Delete SSH Key',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('80b8ad0b-9c92-4541-a88c-a2da33f76470','Add or Update Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('821e979e-367e-4fdb-bdbc-af559503c9d3','Remove Groups from Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('84459c24-c9bc-45ce-aafd-1b82b72d1d2e','Delete Group',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('855174d2-12a0-4a38-a5f6-6dcbbd74a3c1','User can SSH to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('88ef6dda-b4c0-4d77-ae86-d5d19956bd04','View Facts',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('890d5fd1-8d0e-40ec-be70-52fa537f1cb6','Delete All Users',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('891c9490-82cb-419f-9f31-a4b3bf827f64','Invoke Task Maintainer',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('89b4641c-f37d-40aa-81cc-64cdbb0b3f39','Add or Update Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8e49d126-8b9f-477f-b047-d8e0b8728f30','Manage Openshift',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8e7dc04f-db7c-4ab3-a626-18482c1958be','View All Groups',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8f997715-922a-4411-90f3-af58abd54005','Update Restore',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('949cd503-172b-4636-a8b6-70f4039ee814','Add Harbor Scan Match',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('9532baa9-60cf-4367-94ee-d6ec7866865a','Delete Environment Variable',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('95a4e823-ea5c-4a34-9ecd-182c47bb9a10','map-roles-client-scope.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('97411989-04c9-42ea-b778-4a95488335ac','map-roles-client-scope.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('9a7ea562-5d6c-4119-81bb-cc0ff60eeb91','Run Drush sql-dump',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('9d136373-eb50-4611-b3de-a26355705e4e','User has access to own data','Checks that the current user is same as queried','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('9fa2d41a-3ca6-4949-ab53-a8434eb425fe','token-exchange.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('a2390908-f0cb-4465-a147-a35bbd49fb5e','token-exchange.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('a31be88f-190e-452a-9ea1-7030f59866f8','map-roles-composite.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('a31d96a2-eb22-43b1-8cf7-272eb2df86e8','configure.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('a5ee5f99-45db-45cb-8407-3d4b649fee9b','Users role for project is Owner','Checks the users role for a project is Owner or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a71c6d2b-cffa-4871-a414-87d62c433006','Run Drush rsync from Any Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a7c350c8-9c03-4be0-bd2f-6fb4e026761b','Delete Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a9cb9999-9c98-4715-8696-df7f5da351b1','manage.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('ac712f92-0892-4e8b-92d8-64824a980c0f','Client auth-server Policy',NULL,'client','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('ac9fb478-7eb4-45f4-ba07-b1c7afea31ad','Delete All Backups',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ad7d5c14-6d87-48e0-86e8-93e5bdbe76b9','Users role for project is Developer','Checks the users role for a project is Developer or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b223f08d-9e65-4703-9d48-e0e4f67bbfff','View Harbor Scan Match',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b3e8022b-3384-45c3-b101-a3cc4e3cf4dc','View Project Private Key',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b41a771f-ebcb-42ca-98f3-0ef2659fdf8f','View All Openshifts',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('bea3902c-d2ff-43da-83c9-1382af54ece5','Add Task to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('bf212810-7018-4bc8-82ca-b66aa9340be4','User has access to project','Checks that the user has access to a project via groups','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c028d964-5be2-4591-b557-2ed096c8418f','Delete All Groups',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c262fcd2-c14f-4027-8286-2d31b92842b0','View Openshift',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c2acf775-76d9-40e8-9432-a3d8ef4d830c','Add Environment Variable to Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c419d0d3-820a-4937-8846-a8fc4d63281d','Users role for group is Guest','Checks the users role for a group is Guest or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c45bb5f4-63c0-4152-8bd8-ccf008b6dd9a','Delete User',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c702e4a6-cbcc-4f3c-99b6-07635741131b','View Task',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c856fd34-cc70-41cf-a71d-def9ff9b8014','Delete Backup',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('c886741c-52f1-4cc4-ab0c-5906a7810295','Users role for project is Reporter','Checks the users role for a project is Reporter or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('cce8b8c3-870f-43b4-86d9-8bbbaeb4afdd','User can SSH to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ce236e7f-3cc1-4dcb-a1af-ef6bc168139e','Add User to Group',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ce9bf525-fcc5-4e11-95f0-61c12e25ae9a','Update Deployment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d004fbb8-4810-4e1e-987c-b5eb9af225cf','Delete Task',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d0850d96-ce18-4aa1-aac9-3ee0357743c0','Add SSH Key',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d4006748-ad2b-47c3-93c9-b066ce2d4786','Remove User from Group',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d6c40dbe-f765-43e6-b624-2912f2959bd6','Delete Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d8b7b45e-883d-47b9-a3bf-2e135e910788','View Deployments',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d9a89138-7be9-47b2-9d38-b654c04a212a','Users role for realm is Platform Owner','Checks the users role for the realm is Platform Owner or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('dcf4e852-4410-467c-80fe-ae94a532ab0b','Add Group',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e0cf2860-f08a-4f94-ac5c-9489440c7423','Delete Problem',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e294052a-f368-46cb-87b7-1a03945cc399','Update SSH Key',NULL,'scope','0','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e35e84bd-c7df-447b-8adc-0167eee701b7','Users role for project is Maintainer','Checks the users role for a project is Maintainer or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e369e557-aada-40c7-abcb-e0300ebec270','Add User',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e375a6d9-5243-44eb-bf5d-17fe6c882464','View Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e66186d8-f9c5-4ad6-9697-03969a4bb979','Run Drush sql-sync to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e70dfa5e-fadd-464a-922a-c926000bf7ed','Run Drush sql-sync to Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e8ec967a-339d-415e-928a-6586a500cb89','Add Environment Variable to Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e984a02a-bd9f-4889-97ec-5ba3ee482cc4','map-roles.permission.client.59f86909-777c-459e-8246-53847f656538',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('ea53ca1f-35b2-4eaa-9083-52ed79505756','configure.permission.client.21b72ae5-638c-441c-a6b6-aac391d606c8',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('ed420720-a6ed-4930-80e2-347b9ce29a5c','Update Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ee0d2269-fedf-46aa-9fce-3a32097c2a11','Delete All Environments',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ee4a0a7f-561e-4afa-8582-f600f6bcc282','Update Project',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('efbbd054-c132-465f-acce-ed5c705d78c2','Users role for group is Reporter','Checks the users role for a group is Reporter or higher','js','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('efe8b6cd-331c-40ef-98e8-65f093dbe5d7','View Notification',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f083a050-7356-46f9-b6fa-18b9d7d47e68','Run Drush uli on Development Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f4b315bb-d7ed-426c-a762-3890ad107bd3','Run Drush sql-sync from Any Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f7c373dc-10d2-4894-bc0e-f54e8628ba29','user-impersonated.permission.users',NULL,'scope','1','0','738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('fb78ffbf-5ead-4a96-8ce2-01f1e1c10e75','Run Drush uli on Production Environment',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('fe6457bf-ac1e-4d1c-9e46-e8ddb0a709a1','Invoke Task Developer',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ffbfe0f3-1cd5-4957-834a-70e163962e7f','View All Projects',NULL,'scope','1','0','9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(36) NOT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_RESOURCE` VALUES ('29106181-f348-4f7b-b48c-4176fbbac8d2','Default Resource','urn:api:resources:default',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0',NULL),('3930d3e9-318c-4053-b978-9505ecbe3df7','task',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','task'),('39c2361a-9ad5-4823-836f-7ffe9f1627ed','restore',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','restore'),('3af81601-f3c0-4a92-b208-dc1316dd317b','group',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','group'),('3ed6ecf2-b500-4677-80c4-60675e7b7822','ssh_key',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','ssh_key'),('7548b322-9e8e-4c30-afc0-30a62b55b3a1','harbor_scan_match',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','Harbor scan match'),('82935420-8389-4795-af3d-f7f7ea809f5c','openshift',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','openshift'),('85a52ff7-8683-40a8-a07b-63d1ae70c128','advanced_task',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','advanced_task'),('86f963fa-4630-4431-b9e6-ee5505650e0e','client.resource.59f86909-777c-459e-8246-53847f656538','Client',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f','738f5ead-ea8c-4254-9016-9eb16b0aa17f','\0',NULL),('983d1e85-6bd5-4945-949f-b04be86a2931','user',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','user'),('9c6916d5-1c69-42e3-9db5-a9c1e7d648c5','project',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','project'),('a06ce297-2b1e-4f1e-847b-0e22639ae995','deployment',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','deployment'),('a5ca171c-f057-4373-8f01-870ab8624fd1','env_var',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','env_var'),('aff8c4f5-4f75-416d-b56f-2500f5e3feac','environment',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','environment'),('b74b1cee-fc40-4cc1-8ad3-f3b2ae8f270f','notification',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','notification'),('c763e812-5e57-43e6-9975-4bc5ce6a38e9','fact',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','fact'),('c892c4b8-0ee6-4324-92c2-a8ffc29e5e61','backup',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','backup'),('cf139b86-0574-403b-bd4d-b72269ef7388','problem',NULL,NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9','9c0b99b8-7518-49ef-a253-cfcd899857d9','\0','problem'),('dc76459b-522b-48d4-a246-cc0213e3ea9d','Users',NULL,NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f','738f5ead-ea8c-4254-9016-9eb16b0aa17f','\0',NULL),('fd345ba3-265b-4319-b8c9-0809190ccacc','client.resource.21b72ae5-638c-441c-a6b6-aac391d606c8','Client',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f','738f5ead-ea8c-4254-9016-9eb16b0aa17f','\0',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
INSERT INTO `RESOURCE_SERVER_SCOPE` VALUES ('0624886b-f3b1-471a-a0dc-b1af77554137','invoke:maintainer',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('079a33a1-9336-44ea-8d52-66b89529b4ee','drushArchiveDump:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('08ef50bf-f056-49d6-aade-1669ec08e480','addUser',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('1110d8f6-6d51-4d6b-b1cf-cf0a5ff5d1f5','invoke:developer',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('1192472e-2098-4ad0-9e57-c72eda1f269a','update',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('12404311-00fc-4101-997d-7e01170e06af','drushArchiveDump:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('16b2128d-4c0e-498f-9fc9-8312bde5133b','add:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('1c10ef27-ba01-4fd7-9013-91c07eef7290','map-roles-client-scope',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('2507cca7-e833-47c3-b0aa-09c560d0aed6','drushCacheClear:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('25ab146e-aacc-4807-b779-0d87281060ac','drushRsync:destination:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('266b79e0-33fd-4121-82f6-39fba5dcd850','delete:advanced',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('29efe384-9e40-458a-bc32-38bdf1a876a5','token-exchange',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('3152b118-92a4-480d-93b6-37c966cda646','drushSqlSync:source:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('316c6697-b079-40b4-bd8e-602019395be6','addOrUpdate:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('343b7f7a-d42e-4427-bf4f-b81aa78e4a07','view:user',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('39a34aa4-eecb-491c-98b7-5507525dc20f','drushRsync:source:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('3c471a46-f103-4188-a78b-c0e13d751286','environment:add:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('3f9a711d-2a18-4287-81f5-14744a689cf7','removeNotification',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('41b37080-5ac7-4c4a-8582-d4bb5258660c','view',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('4b7abad6-a4ea-4757-8ecc-794db467929e','drushUserLogin:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('50daf044-e799-4598-9a8c-da24390d20e1','create:advanced',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('50e4fdd3-7400-4208-ae59-857f52bf46c2','environment:add:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('573a7854-58d7-4fe8-bff2-7b50bd1a9c03','manage-group-membership',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('57ae64fa-8311-4e75-b238-53e32fb31220','viewAll',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5b69cafb-8f77-4859-9ba0-6007408441a5','drushUserLogin:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5cada167-d70b-4102-9bdb-217ed10fd4e5','manage',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('5cd23959-9953-4ed4-be7e-87dec2b82a37','view:project',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('5e93e267-acb4-4498-9354-07db7e91efb4','environment:view:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('638a1ede-3cce-46ce-9240-a63317f98e96','drushSqlSync:destination:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('651ee2ca-d917-4b0a-a58c-e9c7842261b1','view',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('656acc70-81d8-43ee-aade-b64cc2defda2','cancel',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('660b7eb8-b34e-4dc6-a020-2ca0e1b3990d','project:add',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('6736531e-3e14-4750-9c16-7c09fbb5f84b','removeGroup',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','delete',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('6c56d11f-8ab9-4855-962d-038ebdfe6a02','map-roles-composite',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('7b1a78ec-d742-43d0-a2e8-81d1036ae358','project:view',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('7ec61b46-9389-4807-a080-f6daa51992aa','deploy:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('826c9b63-835e-4ed1-9930-2eba3d323f4a','impersonate',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('82a8f64f-139b-4035-a6e0-cd612cb76db2','view:token',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('865efdc2-e1f6-49c6-b57a-6cbb5eeb8ae0','user-impersonated',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('8a3a9112-e29c-4770-b7e2-7721ed5124ea','deleteNoExec',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8a633bda-a303-4830-8f02-454dc3e60825','addNotification',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8b947ad3-ea59-49f5-8ac0-ad7285cb284a','configure',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','deleteAll',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('8d8a389a-7ad8-4376-8c3f-67f4bdc67992','drushRsync:source:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('91803b16-0bb5-4523-a7dd-d6b95fb7ee61','invoke:guest',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('93ae4a35-cbbc-472f-9c8f-d9b953e97760','getBySshKey',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('9d9ac858-3796-48dd-8ac4-5dfa20a10d12','delete:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('9de1cd16-7e55-4c62-bf99-34b554fd07fb','delete:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a3b25414-7490-4d5c-94e3-2eb5e45b21ec','drushSqlSync:source:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a41b5420-aa19-498d-bd07-71e7bdb25433','update:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a77839b1-31b2-4f9c-8d6e-1948438c2d52','ssh:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('a9c8552d-7000-4252-a1d9-01d237d3253a','removeAll',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b467cb78-4837-4fbd-8918-8fa2bf8720dd','drushCron:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b7d85c4e-d319-448b-98ed-0a441c0301d6','deploy:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b82b250c-9a7c-41d8-93d7-0399e494df0d','drushCron:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('b873a331-68f1-499b-8ce3-f607a83d5681','ssh:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('bfd71b13-552e-44bc-b0df-98b3c8004cd9','storage',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d1bb8443-c79c-415e-86cd-983dc5cb7bf9','drushCacheClear:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d4c69961-ad8a-4fc5-ba71-f5e5f9284af9','addGroup',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d6c452eb-8844-4351-803d-c3da7cbfa44b','environment:view:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('d88424b0-cb5c-4e0d-86c6-01d344e95376','map-roles',NULL,'738f5ead-ea8c-4254-9016-9eb16b0aa17f',NULL),('de24e15f-8ef5-4c4d-a4d4-9ece88f32806','drushRsync:destination:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('deca5cac-c5b9-4fc9-906d-b1a45fea7f5b','addNoExec',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e35b7123-5738-4e7e-9069-b86e183e3497','add',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e370323e-1f41-4383-869e-a4402bea8e2d','drushSqlSync:destination:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('e61f0b76-3221-44d3-a425-8794138e22d9','addOrUpdate:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('ed6f9ae6-2220-44c9-a25d-53ce76935142','add:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f201fc18-902d-4cb3-8263-1a574aceb7ea','update:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f7c86dab-9381-481f-a747-6d6279670a42','drushSqlDump:production',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f929bbdd-3559-464d-914d-d59bdfb709b7','removeUser',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('f96563f0-61d9-4dcc-b0ee-c8947d84b6eb','drushSqlDump:development',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('facad9b1-c0c8-471a-b8ca-2a8a169a7e80','invoke',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL),('fc95e2f3-1d18-4622-993b-11462648e7e2','viewPrivateKey',NULL,'9c0b99b8-7518-49ef-a253-cfcd899857d9',NULL);
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
INSERT INTO `RESOURCE_URIS` VALUES ('29106181-f348-4f7b-b48c-4176fbbac8d2','/*');
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`),
  CONSTRAINT `FK_P3RH9GRKU11KQFRS4FLTT7RNQ` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
INSERT INTO `SCOPE_POLICY` VALUES ('0624886b-f3b1-471a-a0dc-b1af77554137','891c9490-82cb-419f-9f31-a4b3bf827f64'),('079a33a1-9336-44ea-8d52-66b89529b4ee','303e7be3-a96d-443e-8a7c-1e85aa8fdd16'),('08ef50bf-f056-49d6-aade-1669ec08e480','ce236e7f-3cc1-4dcb-a1af-ef6bc168139e'),('1110d8f6-6d51-4d6b-b1cf-cf0a5ff5d1f5','fe6457bf-ac1e-4d1c-9e46-e8ddb0a709a1'),('1192472e-2098-4ad0-9e57-c72eda1f269a','02fa29f0-6e3b-4867-92bb-499b2b8f927c'),('1192472e-2098-4ad0-9e57-c72eda1f269a','2b43a9e1-94fa-4753-9a36-25921d77f7ae'),('1192472e-2098-4ad0-9e57-c72eda1f269a','59904505-6375-43b0-96d8-8728b7320330'),('1192472e-2098-4ad0-9e57-c72eda1f269a','7024a5a5-b157-41a8-b7f4-3a69552a3349'),('1192472e-2098-4ad0-9e57-c72eda1f269a','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('1192472e-2098-4ad0-9e57-c72eda1f269a','8f997715-922a-4411-90f3-af58abd54005'),('1192472e-2098-4ad0-9e57-c72eda1f269a','ce9bf525-fcc5-4e11-95f0-61c12e25ae9a'),('1192472e-2098-4ad0-9e57-c72eda1f269a','e294052a-f368-46cb-87b7-1a03945cc399'),('1192472e-2098-4ad0-9e57-c72eda1f269a','ee4a0a7f-561e-4afa-8582-f600f6bcc282'),('12404311-00fc-4101-997d-7e01170e06af','303e7be3-a96d-443e-8a7c-1e85aa8fdd16'),('16b2128d-4c0e-498f-9fc9-8312bde5133b','4a65e3e4-7d00-4be1-b8cd-51be3e9161b7'),('1c10ef27-ba01-4fd7-9013-91c07eef7290','95a4e823-ea5c-4a34-9ecd-182c47bb9a10'),('1c10ef27-ba01-4fd7-9013-91c07eef7290','97411989-04c9-42ea-b778-4a95488335ac'),('2507cca7-e833-47c3-b0aa-09c560d0aed6','64a062ff-3e1a-43ff-b5b4-44211f786026'),('25ab146e-aacc-4807-b779-0d87281060ac','692fe4b5-8b70-492d-8648-8a2b848d93d0'),('266b79e0-33fd-4121-82f6-39fba5dcd850','71db75e6-95e4-42ef-a60d-666f7fc1cd91'),('29efe384-9e40-458a-bc32-38bdf1a876a5','9fa2d41a-3ca6-4949-ab53-a8434eb425fe'),('29efe384-9e40-458a-bc32-38bdf1a876a5','a2390908-f0cb-4465-a147-a35bbd49fb5e'),('3152b118-92a4-480d-93b6-37c966cda646','f4b315bb-d7ed-426c-a762-3890ad107bd3'),('316c6697-b079-40b4-bd8e-602019395be6','89b4641c-f37d-40aa-81cc-64cdbb0b3f39'),('343b7f7a-d42e-4427-bf4f-b81aa78e4a07','30ff5506-07d9-4e3a-9cfa-7f680940bbb8'),('39a34aa4-eecb-491c-98b7-5507525dc20f','a71c6d2b-cffa-4871-a414-87d62c433006'),('3c471a46-f103-4188-a78b-c0e13d751286','e8ec967a-339d-415e-928a-6586a500cb89'),('3f9a711d-2a18-4287-81f5-14744a689cf7','699ea0e1-b8fd-4faf-a757-b411c0e12a6d'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','40bd4bb3-6ee6-48c8-97ae-09737d960927'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','6123d63b-2917-476d-be85-5526659cb102'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','742f21f5-85e3-4e58-a172-25a61aa368d5'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','88ef6dda-b4c0-4d77-ae86-d5d19956bd04'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','b223f08d-9e65-4703-9d48-e0e4f67bbfff'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','c262fcd2-c14f-4027-8286-2d31b92842b0'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','c702e4a6-cbcc-4f3c-99b6-07635741131b'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','d8b7b45e-883d-47b9-a3bf-2e135e910788'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','e375a6d9-5243-44eb-bf5d-17fe6c882464'),('41b37080-5ac7-4c4a-8582-d4bb5258660c','efe8b6cd-331c-40ef-98e8-65f093dbe5d7'),('4b7abad6-a4ea-4757-8ecc-794db467929e','f083a050-7356-46f9-b6fa-18b9d7d47e68'),('50daf044-e799-4598-9a8c-da24390d20e1','4f2e0f96-2ccb-427e-a540-670021464024'),('50e4fdd3-7400-4208-ae59-857f52bf46c2','51946cf5-c4eb-4965-9705-67b85b287a2e'),('573a7854-58d7-4fe8-bff2-7b50bd1a9c03','5128bf35-c1de-4f89-8fa1-1a6dd7193d87'),('57ae64fa-8311-4e75-b238-53e32fb31220','8e7dc04f-db7c-4ab3-a626-18482c1958be'),('57ae64fa-8311-4e75-b238-53e32fb31220','b41a771f-ebcb-42ca-98f3-0ef2659fdf8f'),('57ae64fa-8311-4e75-b238-53e32fb31220','ffbfe0f3-1cd5-4957-834a-70e163962e7f'),('5b69cafb-8f77-4859-9ba0-6007408441a5','fb78ffbf-5ead-4a96-8ce2-01f1e1c10e75'),('5cada167-d70b-4102-9bdb-217ed10fd4e5','3390986d-282e-413c-b6c2-36fd90974c82'),('5cada167-d70b-4102-9bdb-217ed10fd4e5','411b0bc2-5897-4db0-ad0a-ea45527c83c7'),('5cada167-d70b-4102-9bdb-217ed10fd4e5','a9cb9999-9c98-4715-8696-df7f5da351b1'),('5e93e267-acb4-4498-9354-07db7e91efb4','7deba0eb-e25f-4738-9c6d-893167373991'),('638a1ede-3cce-46ce-9240-a63317f98e96','e70dfa5e-fadd-464a-922a-c926000bf7ed'),('651ee2ca-d917-4b0a-a58c-e9c7842261b1','23f2422f-79fd-4c66-8aae-27e1036fa04f'),('651ee2ca-d917-4b0a-a58c-e9c7842261b1','36862091-ba3a-4159-8dd9-b8ab7a9f257c'),('651ee2ca-d917-4b0a-a58c-e9c7842261b1','76765c3a-6856-476b-81c1-5f95d6645715'),('656acc70-81d8-43ee-aade-b64cc2defda2','0ed2b1a4-fa8c-40e1-a97e-7f75d2fde9db'),('660b7eb8-b34e-4dc6-a020-2ca0e1b3990d','c2acf775-76d9-40e8-9432-a3d8ef4d830c'),('6736531e-3e14-4750-9c16-7c09fbb5f84b','821e979e-367e-4fdb-bdbc-af559503c9d3'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','02fa29f0-6e3b-4867-92bb-499b2b8f927c'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','1309ec76-f5fb-47e9-bca5-3603f3be9c5d'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','139589f2-17b1-426b-ae88-5d2cd4d04d04'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','68a769a5-dc96-4c22-b440-0fe3897b88f9'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','74beae8e-35ff-4c9c-9a5f-34433ae7f7fa'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','80294afd-62e8-4dac-95e9-b5d39eb05359'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','84459c24-c9bc-45ce-aafd-1b82b72d1d2e'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','9532baa9-60cf-4367-94ee-d6ec7866865a'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','c45bb5f4-63c0-4152-8bd8-ccf008b6dd9a'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','c856fd34-cc70-41cf-a71d-def9ff9b8014'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','d004fbb8-4810-4e1e-987c-b5eb9af225cf'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','d6c40dbe-f765-43e6-b624-2912f2959bd6'),('6aaa8863-8ee1-43ee-a2e0-81995f7c6fb5','e0cf2860-f08a-4f94-ac5c-9489440c7423'),('6c56d11f-8ab9-4855-962d-038ebdfe6a02','419838fb-5b01-4555-a5e6-2a29bcc5957e'),('6c56d11f-8ab9-4855-962d-038ebdfe6a02','a31be88f-190e-452a-9ea1-7030f59866f8'),('7b1a78ec-d742-43d0-a2e8-81d1036ae358','2aa3eae6-d0bd-4841-9172-b14524be1f8a'),('7ec61b46-9389-4807-a080-f6daa51992aa','5d116db1-5f24-4996-bddf-8f895ca6b202'),('826c9b63-835e-4ed1-9930-2eba3d323f4a','4b991679-2ace-43a2-adb2-cb366058d6cd'),('82a8f64f-139b-4035-a6e0-cd612cb76db2','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('865efdc2-e1f6-49c6-b57a-6cbb5eeb8ae0','f7c373dc-10d2-4894-bc0e-f54e8628ba29'),('8a633bda-a303-4830-8f02-454dc3e60825','2f0e598d-10c0-456b-b85f-c3ac188f72f9'),('8b947ad3-ea59-49f5-8ac0-ad7285cb284a','a31d96a2-eb22-43b1-8cf7-272eb2df86e8'),('8b947ad3-ea59-49f5-8ac0-ad7285cb284a','ea53ca1f-35b2-4eaa-9083-52ed79505756'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','0a1ddc7f-9143-41cf-90da-efe3515d5540'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','450a8e46-c00b-471c-a7bc-f0c1e447155a'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','77cfcda8-ce92-4b8f-b03b-a269b857c8b9'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','890d5fd1-8d0e-40ec-be70-52fa537f1cb6'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','ac9fb478-7eb4-45f4-ba07-b1c7afea31ad'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','c028d964-5be2-4591-b557-2ed096c8418f'),('8cfe5083-cd6a-4a24-8ea1-c409c00e4329','ee0d2269-fedf-46aa-9fce-3a32097c2a11'),('8d8a389a-7ad8-4376-8c3f-67f4bdc67992','a71c6d2b-cffa-4871-a414-87d62c433006'),('91803b16-0bb5-4523-a7dd-d6b95fb7ee61','559e8071-9d51-41eb-8d0d-c1faf50682be'),('9d9ac858-3796-48dd-8ac4-5dfa20a10d12','455e0fbb-af6c-4153-8d99-a8c1dde4afe2'),('9de1cd16-7e55-4c62-bf99-34b554fd07fb','a7c350c8-9c03-4be0-bd2f-6fb4e026761b'),('a3b25414-7490-4d5c-94e3-2eb5e45b21ec','f4b315bb-d7ed-426c-a762-3890ad107bd3'),('a41b5420-aa19-498d-bd07-71e7bdb25433','ed420720-a6ed-4930-80e2-347b9ce29a5c'),('a77839b1-31b2-4f9c-8d6e-1948438c2d52','cce8b8c3-870f-43b4-86d9-8bbbaeb4afdd'),('a9c8552d-7000-4252-a1d9-01d237d3253a','450a8e46-c00b-471c-a7bc-f0c1e447155a'),('a9c8552d-7000-4252-a1d9-01d237d3253a','77cfcda8-ce92-4b8f-b03b-a269b857c8b9'),('b467cb78-4837-4fbd-8918-8fa2bf8720dd','2f78a70a-d41f-482a-9162-530d62f2650d'),('b7d85c4e-d319-448b-98ed-0a441c0301d6','265e9447-fb69-478c-bf2e-835527821576'),('b82b250c-9a7c-41d8-93d7-0399e494df0d','2f78a70a-d41f-482a-9162-530d62f2650d'),('b873a331-68f1-499b-8ce3-f607a83d5681','855174d2-12a0-4a38-a5f6-6dcbbd74a3c1'),('bfd71b13-552e-44bc-b0df-98b3c8004cd9','4bc5b69c-f921-49a7-8c04-bc5f4dafd361'),('d1bb8443-c79c-415e-86cd-983dc5cb7bf9','64a062ff-3e1a-43ff-b5b4-44211f786026'),('d4c69961-ad8a-4fc5-ba71-f5e5f9284af9','60ab23ad-a6f1-4626-b8c4-8b148c5097eb'),('d6c452eb-8844-4351-803d-c3da7cbfa44b','754d6f04-bd52-4c41-9031-46427c40fae2'),('d88424b0-cb5c-4e0d-86c6-01d344e95376','348f86bc-3c37-4f00-824c-3c75911d4380'),('d88424b0-cb5c-4e0d-86c6-01d344e95376','3f8ff439-6d18-47a0-9008-5591a37b44ec'),('d88424b0-cb5c-4e0d-86c6-01d344e95376','e984a02a-bd9f-4889-97ec-5ba3ee482cc4'),('de24e15f-8ef5-4c4d-a4d4-9ece88f32806','16199e89-e6b9-46c1-af44-d9977ddd8721'),('e35b7123-5738-4e7e-9069-b86e183e3497','01e050ba-cda5-4182-a4a5-f4eadf553813'),('e35b7123-5738-4e7e-9069-b86e183e3497','02fa29f0-6e3b-4867-92bb-499b2b8f927c'),('e35b7123-5738-4e7e-9069-b86e183e3497','180b8c81-1811-4bc1-8d78-bd521389e18e'),('e35b7123-5738-4e7e-9069-b86e183e3497','25f5e98d-9790-4b84-997c-f4e69d624252'),('e35b7123-5738-4e7e-9069-b86e183e3497','46729337-5eab-4646-a9c9-ca5e2e2773c8'),('e35b7123-5738-4e7e-9069-b86e183e3497','7e8e5b68-ac00-4029-b29d-7f07e1dca060'),('e35b7123-5738-4e7e-9069-b86e183e3497','8e49d126-8b9f-477f-b047-d8e0b8728f30'),('e35b7123-5738-4e7e-9069-b86e183e3497','949cd503-172b-4636-a8b6-70f4039ee814'),('e35b7123-5738-4e7e-9069-b86e183e3497','d0850d96-ce18-4aa1-aac9-3ee0357743c0'),('e35b7123-5738-4e7e-9069-b86e183e3497','dcf4e852-4410-467c-80fe-ae94a532ab0b'),('e35b7123-5738-4e7e-9069-b86e183e3497','e369e557-aada-40c7-abcb-e0300ebec270'),('e370323e-1f41-4383-869e-a4402bea8e2d','e66186d8-f9c5-4ad6-9697-03969a4bb979'),('e61f0b76-3221-44d3-a425-8794138e22d9','80b8ad0b-9c92-4541-a88c-a2da33f76470'),('ed6f9ae6-2220-44c9-a25d-53ce76935142','bea3902c-d2ff-43da-83c9-1382af54ece5'),('f201fc18-902d-4cb3-8263-1a574aceb7ea','41aeba5a-792d-42bb-acf8-b75788947e79'),('f7c86dab-9381-481f-a747-6d6279670a42','9a7ea562-5d6c-4119-81bb-cc0ff60eeb91'),('f929bbdd-3559-464d-914d-d59bdfb709b7','d4006748-ad2b-47c3-93c9-b066ce2d4786'),('f96563f0-61d9-4dcc-b0ee-c8947d84b6eb','9a7ea562-5d6c-4119-81bb-cc0ff60eeb91'),('fc95e2f3-1d18-4622-993b-11462648e7e2','b3e8022b-3384-45c3-b101-a3cc4e3cf4dc');
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERNAME_LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `USERNAME_LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL,
  PRIMARY KEY (`REALM_ID`,`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERNAME_LOGIN_FAILURE`
--

LOCK TABLES `USERNAME_LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERNAME_LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(36) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES ('116ff49e-e2fd-4406-80a4-a28dc7d73473','service-account-api@placeholder.org','service-account-api@placeholder.org','\0','',NULL,NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','service-account-api',1649243054928,'9c0b99b8-7518-49ef-a253-cfcd899857d9',0),('3a690290-00fc-46a2-8f38-edffadeab5cc',NULL,'d97548bc-36bb-44a0-bd9d-1b5fe6313afd','\0','',NULL,NULL,NULL,'master','admin',1649242964269,NULL,0),('617a12f6-2e50-4b72-aa4e-8f26d52805d2','service-account-service-api@placeholder.org','service-account-service-api@placeholder.org','\0','',NULL,NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','service-account-service-api',1649243480103,'59f86909-777c-459e-8246-53847f656538',0),('c579404c-ac83-47de-ab66-3147a685ef81','service-account-auth-server@placeholder.org','service-account-auth-server@placeholder.org','\0','',NULL,NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','service-account-auth-server',1649243006516,'21b72ae5-638c-441c-a6b6-aac391d606c8',0),('fbb93c54-07d6-4fce-bab0-6c9f48cea781',NULL,'31f95619-5d94-4f1f-9667-6819b0451ba1','\0','',NULL,NULL,NULL,'9e68e28f-f43c-490b-85c1-4551eb0eb7af','lagoonadmin',1649242981619,NULL,0);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
INSERT INTO `USER_GROUP_MEMBERSHIP` VALUES ('e3bee81e-54b3-486b-a69c-085982cb43d4','fbb93c54-07d6-4fce-bab0-6c9f48cea781');
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES ('03cbfccb-36d2-4a8e-85e2-1f194c9e8595','3a690290-00fc-46a2-8f38-edffadeab5cc'),('06b68973-7b1c-4bcb-b4d0-84ebfbcb7524','3a690290-00fc-46a2-8f38-edffadeab5cc'),('0bc9d6f6-658f-44f3-94b6-4808015b7a71','3a690290-00fc-46a2-8f38-edffadeab5cc'),('44c334af-3a3d-4509-af5b-8ed8a9645bcc','3a690290-00fc-46a2-8f38-edffadeab5cc'),('4eb19efe-c64c-4031-9def-b0658c5a8e7e','116ff49e-e2fd-4406-80a4-a28dc7d73473'),('4eb19efe-c64c-4031-9def-b0658c5a8e7e','617a12f6-2e50-4b72-aa4e-8f26d52805d2'),('4eb19efe-c64c-4031-9def-b0658c5a8e7e','c579404c-ac83-47de-ab66-3147a685ef81'),('4eb19efe-c64c-4031-9def-b0658c5a8e7e','fbb93c54-07d6-4fce-bab0-6c9f48cea781'),('4ff68bc1-1f03-49ca-8603-ae083c982843','116ff49e-e2fd-4406-80a4-a28dc7d73473'),('4ff68bc1-1f03-49ca-8603-ae083c982843','617a12f6-2e50-4b72-aa4e-8f26d52805d2'),('4ff68bc1-1f03-49ca-8603-ae083c982843','c579404c-ac83-47de-ab66-3147a685ef81'),('4ff68bc1-1f03-49ca-8603-ae083c982843','fbb93c54-07d6-4fce-bab0-6c9f48cea781'),('682bdcae-d63e-475c-b8be-783e8bb57a41','3a690290-00fc-46a2-8f38-edffadeab5cc'),('6b2fb4c4-6d5a-4ffe-93f6-8cc5644b02a4','116ff49e-e2fd-4406-80a4-a28dc7d73473'),('b618b696-6149-4cca-ba1a-0647f183b79d','116ff49e-e2fd-4406-80a4-a28dc7d73473'),('b618b696-6149-4cca-ba1a-0647f183b79d','617a12f6-2e50-4b72-aa4e-8f26d52805d2'),('b618b696-6149-4cca-ba1a-0647f183b79d','c579404c-ac83-47de-ab66-3147a685ef81'),('b618b696-6149-4cca-ba1a-0647f183b79d','fbb93c54-07d6-4fce-bab0-6c9f48cea781'),('c6834368-9bf4-4edd-b607-7b4d741209ac','116ff49e-e2fd-4406-80a4-a28dc7d73473'),('c6834368-9bf4-4edd-b607-7b4d741209ac','617a12f6-2e50-4b72-aa4e-8f26d52805d2'),('c6834368-9bf4-4edd-b607-7b4d741209ac','c579404c-ac83-47de-ab66-3147a685ef81'),('c6834368-9bf4-4edd-b607-7b4d741209ac','fbb93c54-07d6-4fce-bab0-6c9f48cea781'),('d2ac1cdd-976b-4912-93d5-d7844dce1d78','fbb93c54-07d6-4fce-bab0-6c9f48cea781');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION`
--

DROP TABLE IF EXISTS `USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int(11) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int(11) DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION`
--

LOCK TABLES `USER_SESSION` WRITE;
/*!40000 ALTER TABLE `USER_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_SESSION_NOTE`
--

DROP TABLE IF EXISTS `USER_SESSION_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION`,`NAME`),
  CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_SESSION_NOTE`
--

LOCK TABLES `USER_SESSION_NOTE` WRITE;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_SESSION_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES ('61831f3e-d644-463d-baa8-eff1bb4f5c8d','*'),('c08235fc-5d0a-493f-9f18-a4b55456f561','*');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06 11:12:01
