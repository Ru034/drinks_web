-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: beverage
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinks` (
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` (`name`, `image`, `id`, `price`, `description`) VALUES ('青檸生乳塔','images/青檸生乳塔.png',0,85,'【雙倍檸檬風味】限冷飲｜完美比例｜甜度、冰量固定。嚴選在地屏東檸檬，整顆鮮搾原汁，含有最精華的檸檬皮精油，保留最原始的檸檬皮香！檸檬風味奶霜，鹹甜交織，與青檸青茶/青檸紅玉都是完美絕配，順口不甜膩，是夏日會上癮的新滋味！'),('青檸紅玉','images/青檸紅玉.png',1,50,'【清涼消暑】限冷飲｜茶葉本身自帶蜜香，經過茶師精心揉捻與發酵工藝，又帶出了花香與果香。嚴選在地屏東檸檬，整顆鮮搾原汁，保留最原始的檸檬皮香，融入在茶中，散發出清新微酸的氣息！紅茶茶葉產地為台灣。僅提供冷飲。'),('青檸青茶','images/青檸青茶.png',2,35,'【清涼消暑】限冷飲｜茶葉適度發酵，甘醇順口，茶韻深邃，再添加整顆鮮搾、富有檸檬皮表面精油香氣的鮮榨檸檬原汁，讓清雅茶香的風味更有層次！青茶茶葉產地為台灣。僅提供冷飲。'),('粉粿青檸冬瓜','images/粉粿青檸冬瓜.png',3,70,'【古早味絕配】限冷飲｜傳統經典點心黑糖粉粿，軟中帶Q，大大滿足咀嚼控！嚴選冬瓜經洗滌、去皮、切塊，遵循古法製成的黑糖冬瓜磚，精心熬煮後冬瓜香氣四溢、接著黑糖底蘊散發出來，古早味濃厚；再添加富有檸檬皮表面精油香氣的鮮榨檸檬原汁，酸甜超解膩！僅提供冷飲。'),('農榨青檸冬瓜','images/農榨青檸冬瓜.png',4,55,'【酸甜清爽】限冷飲｜飯後解膩首選！嚴選冬瓜經洗滌、去皮、切塊，遵循古法製成的黑糖冬瓜磚，精心熬煮後冬瓜香氣四溢，接著黑糖底蘊散發出來，古早味濃厚，再添加富有檸檬皮表面精油香氣的鮮榨檸檬原汁，沁涼超爽口！'),('蜜后春蘋','images/蜜后春蘋.png',5,85,'【季節限定】限冷飲｜推薦半糖少冰。嚴選「台茶17號」。茶葉本身自帶蜜香，經過茶師精心揉捻與發酵工藝，又帶出了花香與果香，最後再添加鮮榨蘋果汁，甜酸交織不苦澀。紅茶茶葉產地為台灣。僅提供冷飲。'),('太妃珍珠蜜春奶茶','images/太妃珍珠蜜春奶茶.png',6,90,'【嚼對奶香】限中杯 | 全台首創太妃珍珠。特別採用100%北海道生乳，結合奶油與焦糖，慢火熬煮的太妃醬包裹著白玉珍珠，蜜漬後的太妃珍珠泛著剔透金黃色澤，濃醇奶香在嘴裡層層化開。紅茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('蜜春茶后','images/蜜春茶后.png',7,65,'【頂級單品】嚴選「台茶17號」。茶師精心揉捻，再結合紅茶發酵工藝產生花香與果香，小綠葉蟬叮咬產生的蜜香，變化出多層次香氣。茶湯橘紅澄澈、餘韻回甘不苦澀。紅茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('蜜春后奶茶','images/蜜春后奶茶.png',8,80,'【厚實香醇】以特殊「台茶17號」多層次花果香為基底，搭配醇濃奶香，最後再以小綠葉蟬叮咬後的天然蜜香點綴收尾。香氣細緻層次堆疊、口感甘潤展現出極致奶茶風味。紅茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('濃煮奶茶','images/濃煮奶茶.png',9,100,'【大人系奶茶】不能錯過的濃茶厚奶！特選頂級錫蘭紅茶為基底，尾韻豐潤細緻、揉合醇濃奶香，堆疊出豐富層次感。耐喝系、茶感重的奶茶，讓人回味無窮，喝過就愛上。紅茶茶葉產地為斯里蘭卡。提供冷飲 / 熱飲。'),('綠茶凍手沖泰奶','images/綠茶凍手沖泰奶.png',10,95,'【招牌推薦】中杯限冷飲 | 完美比例 | 甜度、冰量固定。正宗泰奶搭配五桐號招牌「手工綠茶凍」鋪底點綴，嫩滑爽口、一入口散發茉莉茶香讓層次更提升。泰式紅茶茶葉產地為泰國。'),('青檸多多凍飲','images/青檸多多凍飲.png',11,40,'【酸爽帶勁】限冷飲。嚴選屏東檸檬，100%鮮榨檸檬酸爽誘人，搭配清新的茉莉綠茶與乳酸多多，入口就能感受檸檬帶勁的酸味與茶韻清香。綠茶茶葉產地為越南。'),('荔枝多多凍飲','images/荔枝多多凍飲.png',12,75,'【果香四溢】限冷飲。果茶控絕對愛上！以香片為基底搭配加入乳酸多多，竟然跟「荔枝」意外合拍！飽滿果香在舌尖綻放，順口回甘，搭上酸濃多多風味層次堆疊。綠茶茶葉產地為越南。'),('綠茶多多凍飲','images/綠茶多多凍飲.png',13,85,'【翻玩經典】限冷飲。冰鎮茉莉與特濃發酵乳酸多多，展現出濃厚卻清爽的多層次風味，搭配尾韻回甘綠茶凍。綠茶茶葉產地為越南。'),('經典綠茶多多','images/經典綠茶多多.png',14,35,'【人氣熱賣】限冷飲。在冷冽冰鎮綠茶中加入特濃發酵乳酸多多，以經典的酸甜滋味成為霸榜手搖NO.1。綠茶茶葉產地為越南。僅提供冷飲。'),('蜜桃冰茶凍飲','images/蜜桃冰茶凍飲.png',15,45,'【清爽首選】限冷飲 | 完美比例 | 甜度、冰量固定。蜜桃與細緻青茶茶湯交織，淡雅果香在喉間回韻，底層還有手作綠茶凍跟蜜桃果丁，增添咀嚼感讓人一喝就停不下來。綠茶茶葉產地為越南。'),('經典五桐茶','images/經典五桐茶.png',16,35,'【招牌推薦】限冷飲 | 完美比例 | 甜度、冰量固定，使用獨家秘制五種茶葉沖煮的「五桐茶」，醇厚回甘、帶有焙火香氣的迷人茶韻。五桐茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('杏仁凍五桐茶','images/杏仁凍五桐茶.png',17,70,'【回購No.1】限冷飲 | 完美比例 | 甜度、冰量固定。綿密爽口的杏仁凍以絕佳比例調配在經典五桐茶中，清新的茶韻與杏仁香氣完美結合。五桐茶茶葉產地為台灣。'),('玉堂春茶王','images/玉堂春茶王.png',18,55,'【內行推薦】甜度固定無糖 | 採半發酵慢焙製茶工法，精選春茶和冬茶調配，沖泡出的茶湯風味清新，茶後韻散發優雅細緻的梔子花香、金黃澄澈，入口後柔順回甘。青茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('老實人紅茶','images/老實人紅茶.png',19,85,'紅茶茶葉產地為印度/斯里蘭卡。提供冷飲 / 熱飲。'),('一把青茶','images/一把青茶.png',20,90,'青茶茶葉產地為台灣。提供冷飲 / 熱飲。'),('清香烏龍','images/清香烏龍.png',21,65,'烏龍茶葉產地為台灣。提供冷飲 / 熱飲。'),('茉莉香片','images/茉莉香片.png',22,80,'綠茶葉產地為越南。提供冷飲 / 熱飲。'),('五桐奶茶','images/五桐奶茶.png',23,100,'【招牌推薦】台灣在地茶廠調配出的專屬茶葉，醇厚回甘、帶有焙火香氣的迷人茶韻，與奶香交融創造豐富的多層次味道。五桐茶茶葉產地為台灣/越南。提供冷飲 / 熱飲。'),('綠茶凍五桐奶茶','images/綠茶凍五桐奶茶.png',24,40,'【好評推薦】手工綠茶凍搭配五桐茶調和成的奶茶，入口後綠茶凍與奶茶蹦出的雙倍茶香，讓人回味無窮。五桐茶茶葉產地為台灣/越南。提供冷飲 / 熱飲。'),('仙草凍奶茶','images/仙草凍奶茶.png',25,75,'2/3杯的滿滿仙草凍，搭配香醇奶茶，滑順估溜的口感中帶著清涼的味道。紅茶茶葉產地為印度/斯里蘭卡。提供冷飲 / 熱飲。'),('最完美手沖泰奶','images/最完美手沖泰奶.png',26,85,'【內行推薦】中杯限冷飲 | 完美比例 | 甜度、冰量固定。選用泰國正宗茶葉，茶濃不澀，搭配完美比例煉乳奶水，頂層再以經典的鮮奶奶霜華麗上蓋，雙倍奶香，口感滑順。泰式紅茶茶葉產地為泰國。'),('老實人奶茶','images/老實人奶茶.png',27,35,'冰 / 熱'),('珍珠手沖泰奶','images/珍珠手沖泰奶.png',28,45,'【人氣推薦】中杯限冷飲 | 完美比例 | 甜度、冰量固定。正宗泰奶遇上台式蜜漬珍珠，經典白玉珍珠，不添加焦糖色素，粒粒透明有彈性，軟中帶Ｑ越嚼越香。泰式紅茶茶葉產地為泰國。'),('茉莉奶綠','images/茉莉奶綠.png',29,35,'提供冷飲 / 熱飲。'),('珍珠奶茶','images/珍珠奶茶.png',30,70,'提供冷飲 / 熱飲。'),('五桐茶拿鐵','images/五桐茶拿鐵.png',31,55,'提供冷飲 / 熱飲。'),('綠茶凍五桐茶拿鐵','images/綠茶凍五桐茶拿鐵.png',32,85,'【招牌推薦】手工綠茶凍搭配五桐茶拿鐵，入口後綠茶凍與鮮奶蹦出的雙倍香氣，讓人回味無窮。提供冷飲 / 熱飲。'),('仙草凍紅茶拿鐵','images/仙草凍紅茶拿鐵.png',33,90,'提供冷飲 / 熱飲。'),('濃煮拿鐵','images/濃煮拿鐵.png',34,80,'提供冷飲 / 熱飲。'),('茉莉綠茶拿鐵','images/茉莉綠茶拿鐵.png',35,100,'提供冷飲 / 熱飲。'),('珍珠鮮奶茶','images/珍珠鮮奶茶.png',36,40,'提供冷飲 / 熱飲。'),('五桐奶霜','images/五桐奶霜.png',37,75,'【招牌推薦】限冷飲 | 完美比例 | 甜度、冰量固定。以五桐茶為基底，加上厚厚一層用鮮奶打發、口感綿密輕盈的奶霜，每口都能感受到甜蜜醇香的奶霜與清爽雅緻茶香交織的美好滋味。五桐茶茶葉產地為台灣/越南。'),('老實人奶霜紅茶','images/老實人奶霜紅茶.png',38,85,'紅茶茶葉產地為印度/斯里蘭卡。僅提供冷飲。'),('茉莉奶霜綠茶','images/茉莉奶霜綠茶.png',39,35,'綠茶茶葉產地為越南。僅提供冷飲。'),('清香奶霜烏龍','images/清香奶霜烏龍.png',40,45,'烏龍茶葉產地為越南。僅提供冷飲。'),('荔枝冰茶凍飲','images/荔枝冰茶凍飲.png',41,35,'【好評推薦】限冷飲 | 加入手工綠茶凍，Q彈口感結合醇厚荔枝果香與清新茶香，每口就像在吃新鮮荔枝的輕盈食感。紅茶茶葉產地為印度/斯里蘭卡。'),('桂花烏龍凍飲','images/桂花烏龍凍飲.png',42,70,'【人氣推薦】限冷飲 | 中焙烏龍茶製成金黃茶湯，配搭醇茶手工製作的Q彈茶凍，以淡雅清香的桂花蜜點綴，喝起來清甜不膩。烏龍茶葉產地為越南。'),('綠茶凍楊桃冰茶','images/綠茶凍楊桃冰茶.png',43,55,'【招牌推薦】在地小農合作楊桃汁，搭配招牌綠茶凍，清爽口感帶有回甘的茶韻。綠茶茶葉產地為越南。僅提供冷飲。'),('蜂蜜鮮柚綠茶','images/蜂蜜鮮柚綠茶.png',44,85,'【招牌推薦】限冷飲 | 本產品僅添加蜂蜜，搭配鮮榨葡萄柚，每口都是新鮮果肉，一喝就上癮。綠茶茶葉產地為越南。果肉為裝飾 請依實品為準。');
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `drink_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sugar` varchar(25) NOT NULL,
  `ice` varchar(25) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` (`detail_id`, `order_id`, `drink_name`, `quantity`, `sugar`, `ice`, `price`) VALUES (1,1,'青檸青茶',1,'正常糖','正常冰',35),(2,1,'青檸紅玉',1,'正常糖','正常冰',50);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` decimal(10,0) NOT NULL,
  `address` char(255) NOT NULL,
  `phone` int(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `total_amount`, `address`, `phone`) VALUES (1,'測試2','2024-06-16 21:37:33',85,'深海的大鳳梨裡',2147483647);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `account` char(12) NOT NULL,
  `password` char(255) NOT NULL,
  `name` char(12) NOT NULL,
  `address` char(12) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`account`, `password`, `name`, `address`, `phone`, `email`) VALUES ('test','$2y$10$zpopdm0bONfkfg69g.l7DuZtzk2ka378S7d7f7ZAaneYsCY4k4QZm','測試學生','喜馬拉雅山5號','0988888888','---^@^--'),('test1','$2y$10$mxqpISmcDYq.RKIC8sTosOPU8G7FQMWY9mDOtbLFp7u8d8C/asXIG','測試2','深海的大鳳梨裡','222222222','!!@!!');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 22:02:32
