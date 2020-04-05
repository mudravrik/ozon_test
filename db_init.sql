DROP TABLE IF EXISTS "CUSTOMER";

CREATE TABLE "CUSTOMER" (
  CUSTOMER_KEY integer NULL PRIMARY KEY,
  FIO varchar(255) default NULL,
  AGE integer NULL
);

INSERT INTO "CUSTOMER" (CUSTOMER_KEY,FIO,AGE) VALUES (1,'Joshua Chapman',87),(2,'Berk Wong',28),(3,'Ciaran Campos',19),(4,'Dolan Levy',39),(5,'Duncan Nicholson',78),(6,'Brock Flowers',26),(7,'Gray Skinner',36),(8,'Kieran Brady',34),(9,'Charles Thompson',54),(10,'Ferdinand Guy',83);
INSERT INTO "CUSTOMER" (CUSTOMER_KEY,FIO,AGE) VALUES (11,'Trevor Murphy',43),(12,'Buckminster Davis',39),(13,'Vaughan Jensen',19),(14,'Herrod Griffin',44),(15,'Clayton Douglas',12),(16,'Alexander Kinney',85),(17,'Orson Rasmussen',63),(18,'Keegan Vaughan',90),(19,'Reuben Chaney',17),(20,'Ezekiel Dalton',27);
INSERT INTO "CUSTOMER" (CUSTOMER_KEY,FIO,AGE) VALUES (21,'Neil Pacheco',62),(22,'Kane Armstrong',62),(23,'Malik Neal',72),(24,'Vaughan Prince',38),(25,'Linus Mcgowan',78),(26,'Dean Dorsey',32),(27,'August Bradford',41),(28,'Myles Mann',47),(29,'Tyler Mccray',16),(30,'Bruce Baird',49);

DROP TABLE IF EXISTS "PRODUCT_CATEGORY";

CREATE TABLE "PRODUCT_CATEGORY" (
  CATEGORY_KEY integer NULL PRIMARY KEY,
  CATEGORY varchar(255)
);

INSERT INTO "PRODUCT_CATEGORY" (CATEGORY_KEY,CATEGORY) VALUES (1,'Tellus Nunc Lectus Incorporated'),(2,'Congue Elit Incorporated'),(3,'Vitae Purus Institute'),(4,'Nascetur Corp.'),(5,'Sollicitudin Adipiscing Foundation'),(6,'Vel Vulputate Eu Consulting'),(7,'Ultrices Iaculis Odio LLP'),(8,'Quisque Libero Lacus Corp.'),(9,'Consequat Company'),(10,'Sodales Nisi Magna Foundation');
INSERT INTO "PRODUCT_CATEGORY" (CATEGORY_KEY,CATEGORY) VALUES (11,'Augue Eu Corporation'),(12,'A Institute'),(13,'Torquent Limited'),(14,'Ligula Donec Limited'),(15,'Gravida Company'),(16,'Quis Pede Praesent Limited'),(17,'Eu Industries'),(18,'Natoque Penatibus Et Associates'),(19,'Ligula Aliquam Corporation'),(20,'Donec Dignissim Company');


DROP TABLE IF EXISTS "PRODUCT";

CREATE TABLE "PRODUCT" (
  PRODUCT_KEY integer NULL PRIMARY KEY,
  CATEGORY_KEY integer NULL REFERENCES PRODUCT_CATEGORY(CATEGORY_KEY),
  NAME varchar(255),
  PRICE integer NULL
);

INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (1,12,'Berwick-upon-Tweed',736),(2,20,'Las Vegas',780),(3,6,'Ciudad Madero',962),(4,3,'Cockburn',354),(5,20,'Raipur',665),(6,7,'Dumbarton',150),(7,14,'Goderich',338),(8,3,'Kulti-Barakar',330),(9,19,'Heide',898),(10,5,'Castiglione del Lago',299);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (11,15,'Laken',731),(12,9,'Cheongju',403),(13,9,'Pumanque',302),(14,6,'Bad Dürkheim',573),(15,19,'Luton',668),(16,20,'Hartford',828),(17,9,'Tula',197),(18,5,'Casciana Terme',666),(19,11,'Limón (Puerto Limón)',328),(20,6,'Verrès',513);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (21,5,'Pınarbaşı',583),(22,12,'Boryeong',255),(23,14,'Cumberland County',274),(24,1,'Ayr',558),(25,18,'Amqui',895),(26,8,'Mildura',558),(27,1,'Rakitnoye',761),(28,16,'Comblain-Fairon',807),(29,6,'Waardamme',913),(30,9,'Osgoode',916);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (31,2,'Namyangju',960),(32,12,'Ponsacco',976),(33,13,'Vlezenbeek',343),(34,18,'Montgomery',867),(35,11,'Chattanooga',797),(36,7,'Gattatico',954),(37,2,'Płock',536),(38,14,'Casina',736),(39,7,'Timaukel',850),(40,19,'Ligny',621);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (41,13,'Kingussie',451),(42,7,'El Retorno',456),(43,3,'Lincoln',510),(44,11,'Malle',270),(45,18,'Gudivada',131),(46,5,'Campobasso',714),(47,9,'Braunau am Inn',110),(48,17,'Asansol',362),(49,8,'Gijzelbrechtegem',241),(50,1,'Renca',785);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (51,5,'Thame',918),(52,10,'Warrington',128),(53,15,'Perugia',724),(54,11,'San Isidro de El General',261),(55,10,'Vetlanda',222),(56,6,'Wolvertem',299),(57,17,'Rosarno',160),(58,1,'Xhoris',572),(59,20,'Bernau',563),(60,17,'Merchtem',756);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (61,1,'Przemyśl',102),(62,13,'Palagianello',338),(63,13,'Serrata',659),(64,19,'Bastogne',200),(65,2,'Lasne-Chapelle-Saint-Lambert',183),(66,6,'Hathras',607),(67,11,'Carahue',810),(68,7,'White Rock',924),(69,20,'Pocheon',805),(70,7,'Buguma',295);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (71,4,'Gbongan',963),(72,20,'Caledon',998),(73,19,'Bregenz',660),(74,19,'Raychikhinsk',619),(75,5,'Wiekevorst',449),(76,6,'Erpion',167),(77,12,'Burin',789),(78,14,'Carcassonne',221),(79,3,'Springfield',399),(80,3,'Blankenberge',928);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (81,7,'Boo',681),(82,18,'Phoenix',696),(83,12,'Chatteris',306),(84,1,'Roermond',867),(85,1,'Bastia Umbra',625),(86,6,'Joncret',752),(87,16,'Victoria',654),(88,16,'Caldarola',845),(89,18,'Funtua',235),(90,3,'Lenna',902);
INSERT INTO "PRODUCT" (PRODUCT_KEY,CATEGORY_KEY,NAME,PRICE) VALUES (91,5,'Warri',243),(92,10,'Meeuwen-Gruitrode',441),(93,13,'Leers-et-Fosteau',886),(94,13,'Coleville Lake',904),(95,16,'Pamel',131),(96,7,'Romeral',408),(97,6,'Cobourg',203),(98,4,'Wilmont',765),(99,18,'Mojokerto',890),(100,3,'Glossop',213);

DROP TABLE IF EXISTS "PURCHASE";

CREATE TABLE "PURCHASE" (
  PURCHASE_KEY integer NULL PRIMARY KEY,
  CUSTOMER_KEY integer NULL REFERENCES CUSTOMER(CUSTOMER_KEY),
  PRODUCT_KEY integer NULL REFERENCE PRODUCT(PRODUCT_KEY),
  QTY integer NULL,
  DATE varchar(255)
);

INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (1,29,18,5,'2019-11-18T23:26:43-08:00'),(2,5,49,1,'2019-12-11T10:20:50-08:00'),(3,13,33,2,'2019-11-23T21:23:54-08:00'),(4,20,24,4,'2018-03-29T03:41:18-07:00'),(5,21,9,4,'2019-09-13T10:47:41-07:00'),(6,5,46,5,'2019-01-04T18:08:45-08:00'),(7,4,34,3,'2018-03-30T11:53:56-07:00'),(8,9,37,4,'2019-06-24T16:00:21-07:00'),(9,26,15,2,'2018-11-03T01:14:41-07:00'),(10,20,17,2,'2019-10-18T10:21:22-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (11,3,22,1,'2018-01-30T14:26:46-08:00'),(12,28,8,5,'2018-03-28T12:01:42-07:00'),(13,27,43,2,'2018-10-20T03:33:40-07:00'),(14,5,38,3,'2018-07-21T18:12:18-07:00'),(15,7,47,1,'2019-05-09T06:10:32-07:00'),(16,8,19,2,'2018-05-21T13:14:12-07:00'),(17,14,34,2,'2019-11-01T22:04:06-07:00'),(18,23,21,4,'2019-05-26T04:38:14-07:00'),(19,26,20,5,'2019-02-03T21:36:51-08:00'),(20,5,43,2,'2018-04-23T08:32:27-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (21,24,14,2,'2019-02-19T23:10:33-08:00'),(22,18,7,1,'2019-02-04T07:29:02-08:00'),(23,14,19,3,'2019-04-29T18:01:36-07:00'),(24,4,17,3,'2019-03-12T04:24:07-07:00'),(25,11,17,5,'2018-09-13T03:48:46-07:00'),(26,6,22,5,'2019-05-28T21:30:19-07:00'),(27,20,40,5,'2019-11-10T17:56:00-08:00'),(28,6,44,2,'2019-08-04T08:46:06-07:00'),(29,12,12,3,'2018-03-24T23:43:10-07:00'),(30,28,22,1,'2019-01-02T13:02:48-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (31,28,33,1,'2019-08-17T04:10:42-07:00'),(32,8,16,2,'2019-01-18T07:28:57-08:00'),(33,12,19,2,'2019-07-08T03:42:09-07:00'),(34,12,43,2,'2019-04-23T01:00:02-07:00'),(35,25,45,4,'2019-05-15T18:24:35-07:00'),(36,29,20,2,'2019-01-20T09:15:59-08:00'),(37,28,29,5,'2019-11-25T20:38:43-08:00'),(38,9,26,3,'2019-06-05T22:02:52-07:00'),(39,17,17,4,'2018-02-23T09:30:19-08:00'),(40,5,42,5,'2018-12-15T11:39:26-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (41,19,34,2,'2018-06-20T21:36:00-07:00'),(42,1,14,5,'2019-05-26T16:05:01-07:00'),(43,22,7,4,'2018-04-16T17:45:10-07:00'),(44,16,45,3,'2018-09-30T18:07:31-07:00'),(45,5,6,5,'2018-02-05T19:00:07-08:00'),(46,12,31,4,'2018-11-08T12:22:36-08:00'),(47,6,17,2,'2019-08-25T08:57:49-07:00'),(48,5,11,1,'2019-07-12T14:27:25-07:00'),(49,14,7,4,'2018-01-06T07:06:31-08:00'),(50,22,23,1,'2019-03-04T02:20:00-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (51,30,22,2,'2019-04-24T13:17:37-07:00'),(52,22,4,4,'2019-03-29T07:51:16-07:00'),(53,15,12,3,'2019-04-12T20:10:20-07:00'),(54,20,10,4,'2019-07-13T15:17:36-07:00'),(55,5,37,2,'2019-06-06T06:22:22-07:00'),(56,8,43,3,'2018-04-26T22:21:09-07:00'),(57,21,10,2,'2019-06-13T22:06:16-07:00'),(58,19,17,3,'2019-07-07T21:04:07-07:00'),(59,1,33,3,'2019-10-03T01:42:04-07:00'),(60,13,41,3,'2019-07-25T03:29:52-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (61,15,7,3,'2019-10-03T08:38:54-07:00'),(62,14,12,5,'2018-05-19T23:02:31-07:00'),(63,20,3,4,'2018-02-12T08:50:28-08:00'),(64,3,25,5,'2018-11-24T23:04:02-08:00'),(65,12,40,4,'2018-10-17T06:34:03-07:00'),(66,23,25,2,'2019-12-06T13:10:58-08:00'),(67,3,8,3,'2019-08-31T05:24:34-07:00'),(68,12,44,2,'2019-03-13T22:24:15-07:00'),(69,15,46,5,'2019-12-06T22:08:49-08:00'),(70,11,34,3,'2019-11-28T18:41:55-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (71,30,42,5,'2019-08-04T12:00:16-07:00'),(72,9,37,5,'2019-08-16T05:00:54-07:00'),(73,7,27,1,'2018-10-03T09:09:52-07:00'),(74,4,31,2,'2018-01-31T14:08:35-08:00'),(75,8,12,4,'2019-04-20T01:37:53-07:00'),(76,17,33,5,'2018-10-20T17:41:38-07:00'),(77,15,25,1,'2019-01-11T05:44:15-08:00'),(78,24,26,2,'2018-04-02T20:11:08-07:00'),(79,30,2,1,'2018-12-05T07:49:09-08:00'),(80,11,44,3,'2018-07-17T10:57:43-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (81,23,5,1,'2019-05-28T08:06:14-07:00'),(82,5,39,5,'2018-01-21T21:08:11-08:00'),(83,27,29,3,'2018-05-07T23:51:30-07:00'),(84,20,49,2,'2018-09-12T15:32:39-07:00'),(85,19,39,5,'2018-05-08T20:57:40-07:00'),(86,7,9,4,'2018-02-12T23:02:24-08:00'),(87,15,21,5,'2019-01-11T11:32:45-08:00'),(88,6,13,4,'2019-06-22T16:30:54-07:00'),(89,27,31,1,'2018-10-04T13:29:09-07:00'),(90,1,26,3,'2018-03-01T08:09:51-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (91,9,17,5,'2019-08-12T14:13:51-07:00'),(92,19,34,2,'2018-01-04T09:25:27-08:00'),(93,21,35,5,'2018-09-30T07:52:38-07:00'),(94,29,39,1,'2019-09-15T19:59:49-07:00'),(95,30,31,3,'2018-10-01T23:44:46-07:00'),(96,1,14,1,'2018-08-23T19:10:57-07:00'),(97,19,18,5,'2018-01-12T05:18:57-08:00'),(98,12,25,4,'2018-03-25T07:26:29-07:00'),(99,20,2,1,'2019-07-20T00:28:25-07:00'),(100,21,23,1,'2019-12-16T13:12:02-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (101,29,16,5,'2019-11-24T15:03:22-08:00'),(102,24,41,5,'2018-09-12T11:23:47-07:00'),(103,12,19,5,'2018-10-20T01:48:55-07:00'),(104,24,28,5,'2018-07-03T04:09:59-07:00'),(105,20,46,3,'2018-06-03T13:27:35-07:00'),(106,26,25,1,'2019-08-08T19:31:42-07:00'),(107,22,47,5,'2019-09-11T04:51:15-07:00'),(108,19,47,2,'2018-05-08T20:02:28-07:00'),(109,2,10,1,'2019-04-29T07:54:34-07:00'),(110,5,43,5,'2019-07-02T09:05:17-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (111,28,50,3,'2018-04-14T13:37:51-07:00'),(112,27,4,1,'2018-09-04T23:48:51-07:00'),(113,28,47,3,'2018-09-25T06:27:46-07:00'),(114,20,13,2,'2018-05-13T02:26:36-07:00'),(115,30,16,3,'2019-02-20T08:01:13-08:00'),(116,14,48,4,'2018-01-29T15:50:00-08:00'),(117,30,28,3,'2018-10-09T02:30:35-07:00'),(118,28,8,1,'2018-04-25T14:47:11-07:00'),(119,8,50,2,'2019-12-17T15:59:26-08:00'),(120,13,34,2,'2018-09-18T23:48:29-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (121,17,47,1,'2018-01-03T05:39:06-08:00'),(122,15,29,3,'2019-02-17T22:26:13-08:00'),(123,29,39,3,'2018-09-10T07:36:20-07:00'),(124,14,28,1,'2019-04-12T04:41:58-07:00'),(125,15,17,4,'2019-12-07T23:57:44-08:00'),(126,23,41,5,'2018-07-18T23:08:58-07:00'),(127,30,24,5,'2018-06-26T20:38:47-07:00'),(128,25,28,5,'2018-05-14T12:46:35-07:00'),(129,22,44,4,'2019-09-05T14:52:53-07:00'),(130,24,47,5,'2018-10-31T11:40:32-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (131,26,30,3,'2018-02-23T03:48:43-08:00'),(132,8,32,1,'2019-03-06T06:02:40-08:00'),(133,10,34,5,'2019-06-07T22:01:24-07:00'),(134,25,29,2,'2019-07-08T10:57:06-07:00'),(135,16,23,3,'2019-12-14T21:09:02-08:00'),(136,22,12,1,'2019-11-02T04:01:32-07:00'),(137,5,31,3,'2018-04-25T14:53:33-07:00'),(138,21,21,2,'2018-09-30T16:42:36-07:00'),(139,7,31,4,'2018-11-21T01:45:45-08:00'),(140,23,11,5,'2019-11-03T19:36:50-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (141,29,41,4,'2018-07-26T21:16:53-07:00'),(142,1,21,5,'2018-08-17T17:03:42-07:00'),(143,7,1,5,'2018-03-08T12:21:51-08:00'),(144,12,38,1,'2019-01-13T01:17:34-08:00'),(145,27,30,4,'2018-02-27T01:53:22-08:00'),(146,15,4,1,'2019-12-27T13:36:58-08:00'),(147,25,27,3,'2018-09-10T20:40:01-07:00'),(148,18,26,2,'2019-07-22T07:17:44-07:00'),(149,7,50,4,'2019-05-18T16:38:32-07:00'),(150,20,24,3,'2019-12-05T07:05:42-08:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (151,6,16,1,'2019-08-29T14:01:49-07:00'),(152,14,6,5,'2018-08-17T20:50:28-07:00'),(153,16,19,5,'2018-08-28T12:39:43-07:00'),(154,11,34,1,'2018-05-14T22:38:13-07:00'),(155,29,17,4,'2019-07-02T11:21:43-07:00'),(156,6,47,4,'2018-11-16T03:17:52-08:00'),(157,7,36,2,'2018-04-13T18:37:12-07:00'),(158,11,18,5,'2019-09-17T22:44:05-07:00'),(159,27,44,1,'2018-05-13T03:26:05-07:00'),(160,26,29,2,'2019-03-16T02:39:32-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (161,19,6,1,'2018-12-04T10:21:16-08:00'),(162,1,45,1,'2019-02-05T17:43:21-08:00'),(163,8,49,2,'2018-12-05T14:29:32-08:00'),(164,4,14,3,'2019-02-13T14:07:47-08:00'),(165,5,10,3,'2019-05-18T23:46:35-07:00'),(166,20,46,3,'2018-09-29T09:23:00-07:00'),(167,1,32,3,'2018-03-09T07:49:58-08:00'),(168,11,13,2,'2018-11-08T19:50:16-08:00'),(169,9,40,5,'2018-04-03T06:11:06-07:00'),(170,16,39,5,'2018-09-22T07:56:40-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (171,1,38,4,'2019-10-09T10:30:58-07:00'),(172,14,34,4,'2018-05-22T06:32:07-07:00'),(173,27,11,5,'2019-11-23T04:27:35-08:00'),(174,29,11,3,'2018-12-02T11:56:51-08:00'),(175,4,48,4,'2019-10-25T22:02:07-07:00'),(176,10,4,4,'2019-09-28T03:32:36-07:00'),(177,19,19,5,'2019-09-05T21:17:57-07:00'),(178,16,44,4,'2019-10-28T04:48:47-07:00'),(179,3,25,3,'2019-12-26T07:29:33-08:00'),(180,9,33,4,'2019-06-21T15:30:34-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (181,29,2,3,'2019-04-24T23:24:38-07:00'),(182,6,12,1,'2019-09-17T05:52:36-07:00'),(183,29,14,5,'2019-06-28T01:23:59-07:00'),(184,16,34,2,'2018-03-23T02:48:21-07:00'),(185,21,33,3,'2019-10-29T21:58:40-07:00'),(186,6,15,5,'2019-06-29T02:44:18-07:00'),(187,24,20,5,'2019-06-14T22:40:36-07:00'),(188,29,23,5,'2019-09-01T12:28:40-07:00'),(189,9,17,2,'2018-01-24T22:19:14-08:00'),(190,11,9,2,'2019-08-08T07:30:10-07:00');
INSERT INTO "PURCHASE" (PURCHASE_KEY,CUSTOMER_KEY,PRODUCT_KEY,QTY,DATE) VALUES (191,25,8,2,'2018-11-02T17:13:14-07:00'),(192,1,24,4,'2018-09-11T08:13:47-07:00'),(193,8,1,5,'2018-01-17T04:20:45-08:00'),(194,28,6,2,'2018-05-01T01:21:51-07:00'),(195,30,23,3,'2019-12-30T22:52:05-08:00'),(196,23,34,4,'2018-11-01T19:26:15-07:00'),(197,26,17,5,'2019-05-31T19:55:04-07:00'),(198,4,1,5,'2018-03-04T05:43:27-08:00'),(199,7,33,4,'2019-01-21T02:53:11-08:00'),(200,14,22,3,'2019-04-25T18:37:05-07:00');
