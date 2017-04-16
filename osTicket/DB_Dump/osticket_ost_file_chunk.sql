-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: osticket
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `ost_file_chunk`
--

DROP TABLE IF EXISTS `ost_file_chunk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ost_file_chunk` (
  `file_id` int(11) NOT NULL,
  `chunk_id` int(11) NOT NULL,
  `filedata` longblob NOT NULL,
  PRIMARY KEY (`file_id`,`chunk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ost_file_chunk`
--

LOCK TABLES `ost_file_chunk` WRITE;
/*!40000 ALTER TABLE `ost_file_chunk` DISABLE KEYS */;
INSERT INTO `ost_file_chunk` VALUES (1,0,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\Ú\0\0\0(\0\0\0˜G\ä\É\0\0\nCiCCPICC profile\0\0xÚSwX“÷>\ß÷eVB\Øð±—l\0\"#¬\ÈY¢’\0a„@Å…ˆ\nVœHUÄ‚\Õ\nHˆ\â (¸gAŠˆZ‹U\\8\îÜ§µ}z\ï\í\íû\×û¼\çœ\çü\Îy\Ï€&‘\æ¢j\09R…<:\ØOH\ÄÉ½€H\à \æ\Ë\Âg\Å\0\0ðyx~t°?ü¯o\0\0p\Õ.$\Ç\áÿƒºP&W\0 ‘\0\à\"\çR\0\È.T\È\0\È\0°S³d\n\0”\0\0ly|B\"\0ª\r\0\ìôI>\0Ø©“\Ü\0Ø¢©\0\0™(G$@»\0`UR,À\Â\0 ¬@\".À®€Y¶2G€½\0vŽX@`\0€™B,\Ì\0 8\0C\Í L 0Ò¿\à©_p…¸H\0ÀË•Í—K\Ò3¸•\Ð\Zwòð\à\â!\â\Âl±Ba)f	\ä\"œ—›#H\çL\Î\0\0\Zù\ÑÁþ8?\ç\æ\ä\á\æf\çl\ïôÅ¢þkðo\">!ñ\ßþ¼Œ\0N\Ï\ï\Ú_\å\å\Öp\Ç°u¿k©[\0\ÚV\0h\ßù]3\Û	 Z\n\Ðzù‹y8ü@ž¡P\È<\n\í%b¡½0\ã‹>ÿ3\áo\à‹~öü@þ\Ûzð\0qš@™­À£ƒýqanv®RŽ\ç\ËB1n÷\ç#þÇ…ýŽ)\Ñ\â4±\\,ŠñX‰¸P\"M\Çy¹R‘D!É•\â\é2ñ–ý	“w\r\0¬†OÀN¶µ\ËlÀ~\î‹X\Òv\0@~ó-Œ\Z‘\0g42y÷\0\0“¿ù@+\0Í—¤\ã\0\0¼\è\\¨”L\Æ\0\0D *°AÁ¬ÀœÁ¼ÀaD@$À<B\ä€\n¡–ATÀ:\Øµ°\Z š\á´Á18\r\ç\à\\\ëp`ž\Â¼†	A\Èa!:ˆbŽ\Ø\"\Î™Ž\"aH4’€¤ \éˆQ\"\Å\Èr¤©Bj‘]H#ò-r9\\@ú\Û\È 2ŠüŠ¼G1”²Q\Ôu@¹¨\ZŠÆ s\Ñt4]€–¢k\Ñ\Z´=€¶¢§\ÑK\èut\0}ŠŽc€\Ñ1fŒ\Ùa\\Œ‡E`‰X\Z&\Çc\åX5V5cX7vÀža\ï$‹€\ì^„\Âl‚GXLXC¨%\ì#´ºW	ƒ„1\Â\'\"“¨O´%zù\Äxb:±XF¬&\î!!ž%^\'_“H$É’\äN\n!%2IIkH\ÛH-¤S¤>\ÒiœL&\ëm\É\Þ\ä²€¬ —‘·O’û\É\Ã\ä·:Åˆ\âL	¢$R¤”J5e?\å¥Ÿ2B™ ªQÍ©ž\Ôªˆ:ŸZIm vP/S‡©4uš%Í›CË¤-£\ÕÐšigi÷h/\étº	ÝƒE—Ð—\Òk\è\é\ç\éƒôw\r†\rƒ\ÇHb(k{§·/™L¦Ó—™\ÈT0\×2™g˜˜oUX*ö*|‘\Ê•:•V•~•\çªTUsU?\ÕyªT«U«^V}¦FU³P\ã©	\Ô«Õ©U»©6®\ÎRwRP\ÏQ_£¾_ý‚úc\r²†…F †H£Tc·\Æ!\Æ2eñXB\ÖrV\ë,k˜Mb[²ù\ìLvûv/{LSCsªf¬f‘f\æq\ÍÆ±\àð9ÙœJ\Î!\Î\r\Î{--?-±\Öj­f­~­7\ÚzÚ¾\Úb\ír\í\í\ë\Ú\ïup@,õ:m:÷u	º6ºQº…º\Ûu\Ï\ê>\Óc\ëy\é	õ\Êõ\é\Ý\ÑGõmô£õ\ê\ï\Ö\ï\Ñ7046l18cðÌc\èk˜i¸\Ñð„\á¨\Ëhº‘\Äh£\ÑI£\'¸&\î‡g\ã5x>f¬ob¬4\Þe\Ük<abi2Û¤Ä¤\Å\ä¾)Í”kšfºÑ´\Ót\Ì\Ì\È,Ü¬Ø¬\É\ìŽ9Õœkža¾Ù¼\Ûü…¥Eœ\ÅJ‹6‹Ç–Ú–|\Ë–M–÷¬˜V>VyVõV×¬I\Ö\\\ë,\ëm\ÖWlPW››:›Ë¶¨­›­\Äv›m\ß\â)\Ò)õSn\Ú1\ìü\ì\n\ìš\ì\í9öaö%ömö\Ï\Ì\Ö;t;|rtu\Ìvlp¼\ë¤\á4Ã©Ä©\Ã\éWgg¡só5¦K\Ë—v—Sm§Š§nŸzË•\å\Z\îºÒµ\Óõ£›»›Ü­\Ùm\Ô\Ý\Ì=\Å}«ûM.›\É]\Ã=\ïAôð÷X\âq\Ìã§›§\Âó\ç/^v^Y^û½O³œ&ž\Ö0m\È\Û\Ä[\à½\Ë{`:>=eú\Î\é>\Æ>ŸzŸ‡¾¦¾\"\ß=¾#~\Ö~™~üžû;ú\Ëýø¿\áyòñN`Á\å½\Z³k™¥5»/>B	\rYr“oÀòùc3\Üg,š\Ñ\ÊZú0\Ì&L\ÖŽ†\Ï\ß~o¦ùL\éÌ¶ˆ\àGlˆ¸i™ù})*2ª.\êQ´Stqt÷,Ö¬\äYûg½Žñ©Œ¹;\Ûj¶rvg¬jlRlcì›¸€¸ª¸x‡øEñ—t$	\í‰\ä\Ä\Ø\Ä=‰\ãs\çlš3œ\äšT–tc®\åÜ¢¹\æ\é\ÎËžw<Y5Y|8…˜—²?\åƒ BP/O\å§nMò„›…OE¾¢¢Q±·¸J<’\æV•ö8\Ý;}Cúh†OFu\Æ3	OR+y‘’¹#óMVD\ÖÞ¬\Ï\Ùq\Ù-9”œ”œ£R\ri–´+\×0·(·Of++“\r\äy\æm\Ê“‡\Ê÷\ä#ùsó\Ûl…LÑ£´R®PL/¨+x[[x¸H½HZ\Ô3\ßfþ\êù#‚|½°P¸°³Ø¸xYñ\à\"¿E»#‹Sw.1]Rºdxið\Ò}\ËhË²–ýP\âXRUòjy\ÜòŽRƒÒ¥¥C+‚W4•©”\É\Ën®ôZ¹ca•dU\ïj—\Õ[V*•_¬p¬¨®ø°F¸\æ\âWN_\Õ|õym\Ú\Ú\ÞJ·\Ê\í\ëH\ë¤\ën¬÷Y¿¯J½jA\ÕÐ†ð\r­ñ\å_mJ\Þt¡zjõŽÍ´\Í\Ê\Í5a5\í[Ì¶¬\Ûò¡6£öz]\ËVý­«·¾\Ù&\ÚÖ¿\Ýw{óƒ;\Þ\ï”ì¼µ+xWk½E}õn\Ò\î‚Ý\Zbº¿\æ~Ý¸GwOÅž{¥{öE\ï\ëjtolÜ¯¿¿²	mR6H:på›€oÚ›\íšwµpZ*\ÂA\åÁ\'ß¦|{\ãP\è¡\Î\Ã\Ü\Ã\Íß™·õ\ëHy+\Ò:¿u¬-£m =¡½\ïèŒ£^G¾·ÿ~\ï1\ãcu\Ç5Wž (=ñùä‚“\ã§d§žN?=Ô™\Üy÷Lü™k]Q]½gCÏž?t\îL·_÷\Éó\Þ\ç]ð¼pô\"÷b\Û%·K­=®=G~pý\áH¯[o\ëe÷\Ë\íW<®tôM\ë;\Ñ\ï\ÓújÀ\Õs\×ø\×.]Ÿy½\ï\Æ\ì·n&\Ý¸%ºõøvö\íw\n\îL\Ü]zx¯ü¾\Úý\êú\ê´þ±eÀm\àø`À`\Ï\ÃY\ï	‡žþ”ÿÓ‡\á\ÒG\ÌG\Õ#F#\r\Z½òdÎ“á§²§\Ï\Ê~Vÿy\ës«\ç\ßý\âûK\ÏXü\Øðù‹Ï¿®y©órï«©¯:\Ç#\Ç¼\Îy=ñ¦ü­\Î\Û}\ï¸\ïº\ßÇ½™(ü@þPó\ÑúcÇ§\ÐO÷>\ç|þü/÷„óû€9%\0\0\0tEXtSoftware\0Adobe ImageReadyq\Ée<\0\0(iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.6-c014 79.156797, 2014/08/20-09:53:02        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CC 2014 (Macintosh)\" xmpMM:InstanceID=\"xmp.iid:6E2C95DEA67311E4BDCDDF91FAF94DA5\" xmpMM:DocumentID=\"xmp.did:6E2C95DFA67311E4BDCDDF91FAF94DA5\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:CFA74E4FA67111E4BDCDDF91FAF94DA5\" stRef:documentID=\"xmp.did:CFA74E50A67111E4BDCDDF91FAF94DA5\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>‹þö\Ê\0\0IDATx\Ú\ì]	œS\Õ\Õ?/{2\Édf€aq]67\ÐÏ­(*¨-\nöó³¶.õ+\ÖÖ…º nµJÁ­öS‹R´\Õ:VDT¤,e\Ñ2¨l‚ ¬‚\ì‹3\Ì\ÂL’—÷Ý›üos\æN’\ÉPq\Ìùý$“—÷\î»÷ü\ÏùŸs\ï»1†NY96¤\Út\Ò\Ø\î\ïS±/Q\Äý]k~K¡“…\îz›\Ð\í>ƒ%4ß¤\Ò5ºú­<²\Ù,²\ÍclmYó\Î\Ê’„ž\'ô\ÇB¯hô·£BóLZ¸\ÞM?›¤°\0]s™G\Ö>¾\×\âZ(4W¨]h\r\"Ò¾&F4™]þ¶?JKD$úF>Yd-}QŠZY e\å»)­„ž*t€\ÐÓ„¶\ê\à$»‰\r	=(t•\Ð\éBg	=Á¹\íø_‚´¢Ñ”Q\0m\ÆV\í+³SvaŠD›W\ÇgöýŽB¯ú¿B»eø\ÞB¯ºL\èH¡\Ò›#tó»B\Ç	ýmFW’\0;t\È _Ž\Ù\ì@–\ÍÑš¿x„\Þ.t!¿[\Î!#\à\\¡÷\ã|\É\äWˆ’:÷\Ø\rG³ I³·9\é‰\Ò*Ê6Ë\È­ùJk¡S…þA\èqGÀN¼\09¤›EB\ïM¹~-4?í™\Õ~\ã I‹}\Ô&·y\åeY\ê\Øü\å¡o\n\íu„\Ï{.r»½Bk¸\Öiv?Š—úLG·´Ñ”µj\È-+\ß‘Qæ•£\02%>\ä|™\Ê\ï(^\Í›’\ß\n\êX\è\Ær³\æT\Ò\ÏR\Ç\æ-’*öÿ–®-\ã\ÑR¡Ë…V±¿\ËBI\Ë:G\ÊT\Ì#þ\É5iþ\ZE\"Fó”lD;\æ\\_\äp¾ýsj\Êdñ‘“õB\"t‡\ÐB)ô2\äw\ß\Ä\ïÏŠ»÷`”\æ­ôÐ¤•^š¶\ÑMnA!\æ<¬Y\Ë>†¼ž¥’í§ö\n«ktõM\æJw%ù»œ<.ÿ\Ý\Â\ÃB¿U\\GñBI?ç¦“]\0\Ìo\Æ\Ðô\å^ýô¥ºeF&.÷‘\×a‘\Ça5\ï±Íš÷±#Ò£o>¤=L^«\Ñþ]FŽž\Ú\ßJ…N\0ƒG¹ùã…¾V‡\Zú¢!q#!\Å–\Û\éÀ6=X\ê§9›\\T2\Èï²¨{«™c\Ñæ³,ÐŽ)zak³l´ú@1õ\Ï\ß{¡„^£ýMF”¡_b\Õ\æ(7ý9¡£­‘+\'J«\Ö{hñ—n\ê¡[\\ôhiµóGc41\'\'±M\ëû1¶Ž³\Ï>;k\áÇL›¿Œ\Þ\ÜÝ‹ú·\Ø$\Ü|\Æ~ð,Š—Ý•”x\ß ¶l\Ú\â(4W.\Ó\ZAjÕˆ\Âr\â\ãsr\ÉWµ\ÉM\ÐW”r\Ý\"zµhž«>²\í;™§Y”çªŠE,0ÞŒ\\¾\\1\ïb\ïº¯\å\"\á\'„¾‘Áx\Ëü\êu\ÐLY\ÌÈ£x9\ß)´ù^[\0›PôXV\ç‚NX\á¥Í»T(\"Y¶‰u‹\ßWevŠÝˆRU\ØC55Aò\ØC™\ÐGY6?‘½ÿ@\è«\Ú1k„VS|‚9\ÈI\îX\Ê\è£\Ä*rD\Ê\"€öL¡ƒ„ÎŽ=*@4\é«=N\ÊwZj‰9¾%p\Éö\Ê%a\íñ~\ÐyBe–•˜øíµ´¢¢\r•\ì\ìK\Ã;HT\ëo\è+ƒ)¾Q\É_Å¸t¡\Ô\ë‰cI\ìUžÈ±B\"”VÚª\ÈVg>L\ÊvW¦S\â1›|òX»¶\îpÑ°\Éy´í Zx£rR­\Å\'·# °)ý\ÅWšHª[ Ôö\Êº±	\Ý(#ò=B2ŠûC¡Û²@\ËJL,H$\ËÝµ(ñŸN)2š©°\'¿›ä˜®\Zµ\Ô/*\Ïð\'rZŸKD\ÜûV((\ß\Õg	Œ²Å›{€\ÆP“]aY\Ç ¹jßŠ=B³\n\"4~n€VnwR÷¶‘XŽFñUÿrQsÎJd\ä\Ü\Zz¾ô7\"\ày¡7e©cVŽŠ¸ª\éý½\Ý\è\ä\à\ê%”BþT`\Ë…SòO\Ð;]NNy±X\Þz7\â¶s´\Ñ}óô\ä‡~j/¨ß¬\rnª´·\ÒF\Ãz\×\Ð\È*ˆ\Äf–Û‰æ´Œ5)\×\ÜEž\è¡EK|ô\Öj·4\Èù4\rI.òÂ–”x¶\Í\Û\Ä.ŒjÀ6ˆ¨GJŽG_÷†Ó˜‘Zz1`Nx\ãPŠ\ã<8¦^þ\È$6“v\ÔhUYõ\n\ìG¶\äójrÞ¬/^\ïDŽ¥‹¤a\ÝSš£ÛšImÂ·Lœ•\Zû^ fZ\Ë†A36ºck \å{,\Z9 RÜ±@WµQ% °Z\ädó·\×\ãWmö†ož–\'rKŠ\ÇJöŠöU0\Ã7YÞ§D~&*¯\Øò\Ñÿ•‡1~ÿ\é…&=PH:	\ï\ÇeÖ°È~¹|\Ôd4ÅŸ:\æÒ‡\â\ë\n\Û\ã˜{Ž\ÔÅ£TÇ¹+h²,ó‹ˆ\Ö9wwª\Íz\äüX\0¯¿ý\Ò\å-‡K€\ÌN/R\Ûð\Í\Ï\Ì\Ì\r\Ý3-H…h+Ÿapymv+\Ò\ÊgÉ§¥7·òE#ó¶:\é\ê’*¹ò€\Û\êZ;xù\×Îw\É*‰¯Kq¨8W\àQ€\Ì€È¶<ð{Xž&Ò£”xPTR\Ï;PÄ‘ ü#œ—›š²%Â·\'\í\ÈH/¼d–¢&Añy©ø?™• ²\åLjÈ‡6\á=\"²9¡t9\Z_¨»2I$\Ûõ\0\éK\í,\Ú-\"\Ùh²žùg.\Ýþv°°8ß¼\Éa‹=¨Ùž]MV*D-z²c0:òz7y\ßÉ£GÏ¯(/y=¿|Ò§^[¹Óº¶ca\äq>ÑºQj‹\Ð\Ç)¾bD—¯\ÙkyƒŸJ@\ãý\Öc˜\å¤K–·¡ £leh\rK„\Ñ\Å)¨\ãAxnývF8\r“J¶Bww*%Gl^Í–Ì‹*ùDûLV\Üþ†ª —)Q\ÓxÀ\æ1\×NTñ7o\æ\Ñ.\ß|\Îe§S¢V\ì>^„\Ñ\Èü\èB/‘\ZŽÒ½\Ç\ÍqSE\Þö\Å>;-\Þ\î41út¯ö¡¦iD\Åç“8U”}\'\Ñ\"ôOB\Ïz–#ñœ\Í\Å\Þw¢ø–v8;¹„\ìIºF>\È:Ô¹³ã°€\âO4D\å\å³r—‚\Ö\áŒ\ÆS\Ýmò.¦øF!%¦8äŠ›I¬‚y\"úº“†§‹\á„e\Û*H\àNE\Ãf£t5\Å\çK#Á®L’›B\â\ç\ÅEÁ3\ã\Ù6P• \Ëý$ŠV72ö\ã;\Ü\èP\"1úÃ“È¹ ù\àò\Ä¡Ú¹ƒ\Ô\\y¨\Õ \ä(ªrÿ\"ªW²>•ƒª\ÝzúSñ}‹\ê|?AŸ\È6N£øŠyÎ‹p9H«’\0¢­Š\Ä6\Â1‹6Ê§P\ÔZ}i\Í\"§²R7\Å%’\ÞO\Þ\èÄû\íÑ‹kCU!j/@61\à²z	\Ê\'ó‰[„~¥\åw×£ú7V\0q_®+ö}\ê˜o^e4\"6¶‰Ž½Â¨ôs„þ¶ô!\Å\×\\r\â\ÊkžJN­Tò—$@“Q÷Nª¿®S\Éù ¥\é\æ\Ì$yZ(_õ:\ë{\éÀ\äW,”¤\r·/ƒ¹u¹\Zs\Öx†\çÑ°qh\è\Ø\æ‚\ç«\Ð.Ÿ\Þ}	žŠ‹\ìg(¾b[\Z\ÖsðL7\ãüRF¡\ä+¯%¡(Á\ßG\Ã8\"ð4¤r\ê)\Ú5V\Â‚6I\ÙFõ\r:\ï XR>9±\ÚQ;G)Ú´\ï\ï¦øÀ^–\ÓLÈ°R\Æ#‹\Ì\Ó.c\à/Â õÀ5/d\ÔIzf9¹,\ç›\æ}Og+>{8¾²¾xq\ï*\ê\îÀk¹‚^\ßZ`5¢\Êr¹uÀ\ÜuúºÊ ¾\è\"’I\ÍE[uT‹\\µ\n\ÑqŒ\È\ßf\åº-\éÏµ\âÍº/I4%8´{0\Æ7\"W+k «¼T…ŒGa_\édC:¶ö¨2\Ù\Æ\á¸\ßv\0\ÝY\ìóµ\È-»£\ß{À¶ú0ÇŸN\ì6Výñ\Â\àû!1ýšyˆš\0@LF™y\è@:ö:x\æ:¬/+EŸÃ®u.^f=0	²W\ÈV\"b…¦K\Ð5¬3G \í„ht¸#À+Áõ>?÷\àÇ½=‚ö˜0Ž}0ž\Ît É¼\×´u\rþVˆ¶\Ê9¬)ŒftÑ¼~;¼žWŸ9Xt\ÈtÆŠ#)\n6Exý9r¢ó\á8¸¼\ë_K€\Ì¥g\è‘—\æDûŠœ\ì¬š¿+	È¸¼\n\ì\áZ­ôþuš\ï-@\ßGð\ÝL\Êò©¢\ÝM\Z\È\Â`\Òñ^Nñ\r‚^F¥È«	\Ç\Ý\È\Þ\Ï` #¸\ÎbL\åFD\Ú~”xÖŽ@7Ÿ„\Ó:\É\Ûþ!lò1Àl\Z—•\'þ9@p)‹b\áPbN\æUP®óq¬\â¬÷ñþt€\è8’\"–\'ª\r\\&!Âª²·\ã&OGG×‚b\Þnf`]\Ê0\ç\èN=m?‘\Ïkõ\Â\ë\ÛX\ïF$?µ±2übP\n±ÁØ•p¶0˜\ë{õEAoh¿Œ|®\êdùY\ë·E,\ÇqjQe˜0\×\íT`\Ò\ËK|4bf.\äD\Éf‹õ‡Œ\Úo³\èžN\ÔDøÃª\Òý=l,uÙ1¹\\£¤•v\ßU‹‹¼\îP°šwÀB®G_û)1§\0»NŸo©°¡–¥C\Ø\ç\Ä\Æ\ç&Òû\Øç—\Í<Pq~ÿ6ª®²cmZ˜žÀ\æb>\Æ	”\\£U†ñ£ÿ‚\' øyø>!Ü¶F¾\äG´,\ÍG\ä²\ÊMO\Éf \ÊuQ\ç\ìÀ\Õ\àýnxª©ˆŠªHðrL<\Ü4Š?f/\å qR¦ƒ\êJÊ¿É¤%e\"£‰\È2Žs!Ö§Œ!¨¯\'ó~\Ë\ëp\r#Je\å¹+R=u\Ëúm£^J¾‚U’|¨²\ÊF\ïop“C¼öú(h_oI3™\Ì]puB4û+®q.¢\ÖC—¶I[\ÙIM›gTm(‹üFò‡Fœg/\"\êX–·®Aÿð]™¯\03#°¨)I\Î5\ã­r\Ø¬ÀcÓ¨}Êª\ãG\Úû…@©@Q¾|\0º\ÂE(ˆN‘ž\åw”\ØÌ¥þuD\ÎK\0–þh\Ô*\äYªC¥.ƒ1\Û\àUrX4<žy¢\ÅÌ;²\Èù_B¿@‡D1p~mx\ÞV\ËÞ¯\è»g´5Zeò+x\Ð\ã\àH¶\Ì\'\ÃP\rDé¾¬Ÿ\ë€lw­ŸúöP\Í\Ìdùx\ì>]h÷ü­B‹°›\ÕG¼¾\ÔG¯­ðR·Âˆ|\È\Ò`ýœ\éQ\ì\êvð¢\ÛÓ ÀB¿†C,Eî¶ˆROøg*µ÷/6òû9 pª8!Ä­Œ\æì”¯ q\"BZ45xH2Å¢-G: ™I83%©¾\Õ$ñ‚|™‹aY\Û\0<Ü´¤Z½\ÈW³›\Ø0\ì&ª\Ñ\æ\ÏaTn\Í\àU¹\ØÃ¢\ÓZtš¦epª\Z\Ø\Ôi#E¿™ŒF¨6\Îý\é*\Û\í\\\çóo¾­&H\'	=\Ðc6¹m\"Ä¶6¨W\é\Æ\ÜJVQSq*ê²¨b§“¦,óQ› ©žd¶±{\Î4\Òð{r²±\Êu!Æ²\è\×F¡n£¦-èµ’\Ì–7a®\íL­¸‘ƒ\ê7i@\ã{PžLé–®%$\Â(\Ðô\'qû°c¶€\Ãw`ž”`@ùˆ5	´eöÀ°\Ô\ã\Z—²\Èò9ÀfÕ£¡š—V%õ®¯¢“M(–Ã«úq\Îaðú\ês¾\ß÷Q€\è¨w^\Ë“w\Ò\nRZ0Ç²‹E\ÍO\àtn`Å‡\Åè—¸eY=\Þm.ù÷’\'2_ªýCN`Æ®Š(!–k\ÇûM\ÐÄû4u›º%¼4)±H¦[ø\Ð/ª;õý}\\Œþ8›*\äXüŒ\Ô=Mwh\r\Zt\n\Ñ\\\'\"\Ü\nÆ„\ìZ~M3µ-9\Ù8\ÚR8‰¤g†_@uWNÀ\æ4º²ê“šÏ¹›5b5\ËóT^RcSVh§b\à>b\0#\ä\Ø5:¡,ûw\ÌcT§¨Pma\×ù¢ú¼\'¦ þE	e0\ÃXÔŽBI‹Fx\\y¾•ÀU\ìõ\"­8¡rŽ\ãõ[ü„E\Þr:!5ˆdIA–\Çh\í\'Z4Wt°¶¶¯g\Î4é†²öv\ä<\ÇQý]ˆ-ôÿ\\\â\ØA(5`m,¯	çšŒÂ‰’V¨\ZúXd¯\Ñ*¦\çPbŽõ<¦B%+û#c.V* \é\íPŽ”˜,VÕ™y(:Œ\0°F#\"|Fu7†™Áªl+\0(¿–´\ïÅ€ôbóŸ²‚\Ì`xÚ—PRý7Õ*)ù.^U(\è\\ŽÎœŠ÷;†¶è„«PÐ™\0ƒy—\ZÀ™\ê\Çñ\èü\0ˆj\Ë\ì8™§ý\Z\Ç\Ðó“\Þ\Ýy\Ùd…Q\æe©Ÿ®Zó	\ÆEOÀ·ý\Ûh\Âu)ˆ\Ð\Ðîµ´h»3¶!›[SU\Ä\'¨\á_Œˆqü¢õ\Ç(.ý”RO¯B\ÑbòºW›Ñ¶h\ï¯Ô‹G\r\ÈN«\ÖÀ)ž\Î\î\é|V¦FühÿÁ&D]\îô\êE4 ky6hw\âõ =\ß\à\Ä?D©½\'›³¹•uüb-\áTsû˜G•²”y­yˆ¬`8—¢\ß\Ç<…\na+V\Â\rh÷2	óxš«1\×Ñ–MA¼y—)l\Þk$¸ü³¬H‘\Ãy™7üýt\r¢•j\ËHô/6-\ÓJÀu&<}\"¢QÄ•n@{³jðK\Zµ.`-N±BÚ†\éšÓ«hµM/^•‚\\ß€1vS\Ã/GJP”!½6#¢½£9¶:Cbý±öð€\æDÄR\Ý_\Ì9ø†C\r‹þSU]SE4;¼ò\ÐBªo¯\"¢(ùø÷Px)\'Œ\åÌµpÊ²\Ô	ÞÓœ{ˆP\ï4	þ\å0,@:\ÑL•\\j\Õ_ðùgù08‚0\îc‹\"!\Ü\ë,x77®ñ\Z\nðdû\"~h\àƒ\ç“\çºù\Þ~P•9I¸ý,FS\ç\Ô;km@F2?\n%û5z|:ú¸5h\ÐD\í\ÛC\ØtG\ÂTET“\å}-þ\Ëqz\ç{\n¥ûiI\î³Q¿3þ#\æ\Ìdtþ-\Æ!\ÙDWD\Ò#w#e&°š\ZñÀQNDûw•€Ý”j\íq²¢\Ô{p¤£k›§£+Ü{gZÇ«rÐ¥l«Á\"ülŽm$l\Ûp$I?€1»`<\Éø\Ë:$“\ê\ìBi\æb–B“c]š\ÎÝ€k8q°vC”d’W“\èxU\Þ\'¹yž¿À¡¬ ðQ’\é.ˆ=o…3µV…˜ %–þ|Fõ\×=ŠV\Ê+­ž$‹E\'^9Oõ7K\í\ÏLõƒè½²Z…\äÈ«³I\Î4xø‡a°\Ï\ÂA•\á>\Î\ÄgÐ·³³¾\0`_c:\ZÁ˜\rF´(D\ä~@3Ñ·3)±¾S:¸\ß _?ðµ€“\\¨M)\è´\î8\Ö~x/\Æ\ïÁ\ÆF!\ÕPn\ép/Ø½\å\Ø%h[pÝ‹Xes,Ú¾Ä‘¢\nieL\Ó˜\ÉD÷JKKr\Öu”A˜)JÀw\"öd´±þò¥x^¶\Ì\âW\Èû\np\Ó\É\æ$¹\Æ\0D÷(¢-‹]]¢\Ó:†hk¹\çi„üd3þ¿ªñ+ð\î;\Ø\ßUnþ4\nKÉ¶P(P\Çhý\ë\×\n;^»Æ²”,]|ž„X¾Ë«±Tw	Vž\Æ\Þv\0¼uª¿à¾žbS(Á\ÕÙ–Z?=g`x’\ÚÑ¡5ÀMY9\Z’ƒ\\Sl3¨e:Y	j\æBn©v¡J5—sûz\ÒS\Ð\Æ.\'\Ô\Ò%›jhÌœ€\0Z=_ð\Z¢ó¥˜öh`oe[š\âº\Ë)ñ#ñ2§i°\ìŸM\É7×™ŽbV÷õ«„N@tòSý_]Š\ëýÿwfHuÍ™He¦\ãm\Ð\éÿ\ÛHk ZµDÛ½ø\î\'(˜ƒŠ¹NT»\ç|_;\ç\"´\ëVJLÉ”i¾ñò\Ë/÷BhŒ ‘³¸8\â\"©\Æ/\á!w\Âûš\ìÀ\ë\ÊF5\åüvT!+QÁ­/A“FOÒ˜\Ò\ê4›CŸ\Zp0jC•\nJ\Ì\'6¸£Qš~\Ô7vD3/\ØB5¨ª\Õ@\ÛZ p\É\ã\Ëþ_€\0³à¯˜s]Jý\0\0\0\0IEND®B`‚'),(2,0,'Canned Attachments Rock!');
/*!40000 ALTER TABLE `ost_file_chunk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-16 13:52:41
