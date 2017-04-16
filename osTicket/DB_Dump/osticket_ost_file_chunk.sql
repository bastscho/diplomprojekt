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
INSERT INTO `ost_file_chunk` VALUES (1,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0(\0\0\0�G\�\�\0\0\nCiCCPICC profile\0\0xڝSwX��>\��eVB\��l�\0\"#�\�Y��\0a�@Ņ�\nV�HUĂ\�\nH��\�(�gA��Z�U\\8\�ܧ�}z\�\�\��\���\�\��\�y\��&�\�j\09R�<:\��OH\�ɽ�H\� \�\�\�g\�\0\0�yx~t�?��o\0\0p\�.$\�\����P&W\0 �\0\�\"\��R\0\�.T\�\0\�\0�S�d\n\0�\0\0ly|B\"\0�\r\0\��I>\0ة�\�\0آ�\0�\0�(G$@�\0`U�R,�\�\0��@\".���Y�2G��\0v�X�@`\0��B,\�\0 8\0C\� L�0ҿ\�_p��H\0�˕͗K\�3��\�\Zw��\�\�!\�\�l�Ba)f	\�\"���#H\�L\�\0\0\Z�\���8?�\�\�\�\�\�f\�l\��Ţ�k�o\">!�\����\0N\�\�\�_\�\�\�p\��u�k�[\0\�V\0h\��]3\�	�Z\n\�z��y8�@��P\�<\n\�%b��0\�>�3\�o\��~��@�\�z�\0q�@������qanv�R�\�\�B1n�\�#�ǅ��)\�\�4�\\,��X��P\"M\�y�R�D!ɕ\�\�2���	�w\r\0��O�N��\�l�~\��X\�v\0@~�-�\Z�\0g42y�\0\0����@+\0͗�\�\0\0�\�\\��L\�\0\0D��*�A�������aD@$�<B\�\n��AT�:\���\Z��\���18\r\�\�\\�\�p`�\���	A\�a!:�b�\�\"\���\"aH4��� \�Q\"\�\�r��Bj�]H#�-r9�\\@��\�\� 2����G1���Q\�u@��\Z�Ơs\�t4]���k\�\Z�=����\�K\�ut\0}��c�\�1f�\�a\\��E`�X\Z&\�c\�X5V�5cX7v��a\�$��\�^�\�l���GXLXC�%\�#��W	��1\�\'\"��O�%z�\�xb:��XF�&\�!!�%^\'_�H$ɒ\�N\n!%�2IIkH\�H-�S�>\�i�L&\�m\�\�\���� �����O��\�\�\�:ň\�L	�$R��J5e?\���2B���Qͩ�\���:�ZIm�vP/S��4u�%͛Cˤ-�\�Кigi�h/\�t�	݃E�З\�k\�\�\�\��w\r�\r�\�Hb(k{��/�L�ӗ�\�T0\�2�g��oUX*�*|�\��:�V�~�\�TUsU?\�y�T�U�^V}�FU�P\�	\��թU��6�\�RwR�P\�Q_��_���c\r���F��H�Tc�\��!\�2e�XB\�rV\�,k�Mb[��\�Lv�v/{LSCs�f�f�f�\�q\�Ʊ\��9ٜJ\�!\�\r\�{--?-�\�j�f�~�7\�zھ\�b\�r\�\�\�\�\�up�@�,��:m:�u	�6�Q���\�u\�\�>\�c\�y\�	�\��\�\�\�G�m���\�\�\�\�\�7046�l18c�̐c\�k�i�\���\�\�h��\�h�\�I�\'�&\�g\�5x>f�ob�4\�e\�k<abi2ۤĤ\�\�)͔k�f�Ѵ\�t\�\�\�,ܬج\�\�9՜k�a�ټ\�����E�\�J�6�ǖږ|\��M����V>VyV�V׬I\�\\\�,\�m\�WlPW��:�˶����\�v�m\�\��)\�)�Sn\�1\��\�\n\�\�\�9�a�%�m�\�\�\�;t;|rtu\�vlp�\�\�4éĩ\�\�Wgg�s��5�K�\��v�Sm���n�z˕\�\Z\�ҵ\������ܭ\�m\�\�\�=\�}��M.�\�]\�=\�A���X\�q\�㝧��\��\�/^v^Y^��O��&�\�0m\�\�\�[\�\�{`:>=e�\�\�>\�>�z�����\"\�=�#~\�~�~���;�\�����\�y��N`�\���\Z��k��5��/>B	\rYr�o���c3\�g,�\�\��Z�0\�&L\���\�\�~o��L\�̶�\�Gl��i��})*2�.\�Q�Stqt�,֬\�Y�g��񏩌�;\�j�rvg�jlRlc웸�����x��E�t$	\�\�\�\�\�=�\�s\�l�3�\�T�tc�\�ܢ�\�\�\�˞w<Y5Y�|8����?\� BP/O\�nM򄛅OE����Q���J<�\�V��8\�;}C�h�OFu\�3	OR+y���#�MVD\�ެ\�\�q\�-9�����R\ri��+\�0�(�Of++�\r\�y\�m\���\��\�#�s�\�l�Lѣ�R�PL/�+x[[x�H�HZ\�3\�f�\��#�|���P���ظxY�\�\"�E�#�Sw.1]R�dxi�\�}\�h˲��P\�XRU�jy\��R�ҥ�C+�W4���\�\�n��Z�ca�dU\�j�\�[V*�_�p�����F�\�\�WN_\�|�ym\�\�\�J�\�\�\�H\�\�n��Y��J�jA\�І�\r��\�_mJ\�t�zj��ʹ\�\�\�5a5\�[̶�\��6��z�]\�V�����\�&\�ֿ\�w{��;\�\�켵+xWk�E}�n\�\�ݏ\Zb��\�~ݸGwOŞ�{�{�E\�\�jtolܯ���	mR6�H:p囀oڛ\�w�pZ*\�A\��\'ߦ|{\�P\�\�\�\�\�\�ߙ��\�Hy+\�:�u�-�m�=��\�茣�^G���~\�1\�cu\�5�W���(=��䂓\�d���N?=ԙ\�y�L��k]Q]�gCϞ?t\�L�_�\��\�\�]�p�\"�b\�%�K�=�=G~p�\�H�[o\�e�\�\�W<�t�M\�;\�\�\��j�\�s\��\�.]�y�\�\�\��n&\��%���v�\�w\n\�L\�]z�x���\��\��\����e�m\��`�`\�\�Y\�	�����Ӈ\�\�G\�G\�#F#���\r\Z��dΓ᧲�\�\�~V�y\�s�\�\��\��K\�X�\����Ͽ�y��r﫩�:\�#\��\�y=���\�\�}\�\�\�ǽ�(�@�P�\��cǧ\�O�>\�|��/�����9%\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0(iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"﻿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.6-c014 79.156797, 2014/08/20-09:53:02        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmp:CreatorTool=\"Adobe Photoshop CC 2014 (Macintosh)\" xmpMM:InstanceID=\"xmp.iid:6E2C95DEA67311E4BDCDDF91FAF94DA5\" xmpMM:DocumentID=\"xmp.did:6E2C95DFA67311E4BDCDDF91FAF94DA5\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:CFA74E4FA67111E4BDCDDF91FAF94DA5\" stRef:documentID=\"xmp.did:CFA74E50A67111E4BDCDDF91FAF94DA5\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>���\�\0\0IDATx\�\�]	�S\�\�?/{2\�df�aq�]67\�ϭ(*�-\n��.�+\�օ� n�J���S�R�\�:VDT�,e\�2�l����\�3\�\�L���ݛ�os\�N�\�Pq\���$���\���\���s\�1�NY96�\�t\�\�\�\�S�/Q\��]k~K���\�z�\�\�>�%4ߤ\�5���<�\�,�\�clmY�\�\����\'�\�B�h���B�LZ�\�M?���\0]s�G\�>�\�\�Z(4W�]h\r\"Ҿ&F4�]���?JKD$�F>Yd-}Q�ZY�e\�)���*t�\�ӄ�\�\�$��\r	=(t�\�\�Bg	=���\��_���єQ\0m\�V\�+�S�va�D�W\�g�����B���B�e��\�B��L\�H�\��#t�B\�	�mFW�\0;t\� _�\�\�@�\�њ�x�\�.t!�[\�!#\�\\��\�|\�\�W��:�\�\rG��I��9\�\�*ʍ6ˁ\���Jk�S��A\�qG�N��\09���EB\�M�~-4?홝\�~\�I�}\�&�y\�eY\�\��\��o\n\�u�\�{.r��Bk�\�iv?���LG��є�j\�-+\��Q散\02%>\�|�\�\�(^\���\�\n\�X\�\�r�\�T\�\�R\�\�-�*����-\�\�R�˅V��\�BI\�:G\�T\�#�\�5i�\ZE\"F��lD;\�\\_\�p��sj\�d��B\"t�\�B)�2\�w\�\�\�ϊ��`�\��Ф�^��\�MnA!�\�<�Y\�>���������\n�kt�M\�Jw%���<.�\�\�\�B�U\\G�BI?禓]\0\�o\�\��\�^����eF�&.��\�a�\�a5\�͚��#ңo>��=L^�\��]F��\�\�J�N\0�G��ㅾV�\Z��!q#!\��\�\��6=X\�9�\\T2\�ﲨ{��c\�捳,Ў)zak�l��@1�\�\�{���^��MF��_b\�\�(7�9����+\'J�\�{h�n\��[\\�hi��Gc41\'\'�M\��1���\�>;k\�ǐL���\�\�݋��\�$\�|\�~�,��ݕ�x\� �l\�\�(4W.\�\ZAjՈ\�r�\�\�sr\�W��\�M\�W�r\�\"z�h��>�\�;��Y�窊E,�0ތ\\�\\1\�b\���\�\"\�\'����x\��\�u\�LY\�ȣx9\�)��^[\0�P�XV\��NX\�ͻ�T(\"Y���u�\�W�e�v�݈RU\�C55A�\�C�\�GY6?���@\�\�1k�VS|�9�\�I\�X\�\�\�*�rD\�\"��L���Ύ=*@4\�=N\�wZj�9�%p\��\�%a\��~�\�yBe����������\r�\�\�K\�;HT\�o\�+�)�Q\�_Ÿt�\�\��cI\�U�ȱB\"�Vڪ\�Vg>L\�vW�S\�1�|�X��\�pѰ\�y����Zx�rR�\�\'�#��)�\�W�H�[ ԍ�\���	\�(#�=B2��C�۲@\�JL,H$\�ݵ(��N)2���\'��䘮\Z�\�/*\��\'rZ�KD\��V�((\�\�g	��ś{�\�P�]aY\� �jߊ=B��\n\"4~n�VnwR���X�F�U�rQsΐJd\�\�\Zz��7\"\�y�7e�cV����\���\�\�\�\�\�%�B�T`\��S�O\�;]NNy�X\�z7\�s�\�}��\�~j/�߬\rn���\�F\�z\�\�\�*�\�f�ۉ洌5)\�\�E�\�EK|�\�j�4\��4\rI.��x�\�\�\�.�j�6��GJ�G_��Ә�Zz1`Nx\�P�\�<8�^�\�$6�v\�hUY�\n\�G�\��jrެ/^\�D����a\�S��ۚIm·L��\Z�^ f��Z\��A36�ck�\�{,\Z9�Rܱ@W�Q%��Z\�d�\�\�Wm��o��\'rK�\�J���U0\�7YާD~&*�\��\����1~�\�&=PH:	\�\�e�ְȁ~��|\�d4ş:\�҇\�\�\n\�\�{�\�ţTǹ+h�,�\�9ww�\�z\��X\0���\�\�-�K�\�N/R\��\�\�\�\�\r\�3-H��h+�apymv+\�\�gɧ�7��E#�:\�\�*��\�\�Z;x�\�΁w\�*��Kq�8W\�Q�\��ȶ<�{X�&�ң�xPTR\�;Pđ �#�����%·\'\�\�H/�d���&A�y��?����\�Ljȇ6\�=\"�9�t9\Z_��2I$\��\0\�K\�,\�-\"\�h���g.\��v��8߼\�a�=�ٞ]MV*D-z�c0:�z7y\�ɣGϯ(/y=�|ҧ^[�Ӻ�ca\�q�>ѺQj�\�\�)�bD��\�ky��J@\��\�c�\�K�����leh\rK�\�\�)�\�Axn�v�F8\r�J��Bww*%Gl^͖̋*�D�LV\���� �)Q\�x�\�1\�NT�7o\�\�.\�|\�e�S�V\�>^�\�\��\�B/�\Z�ҽ\�\�qSE\��\�>;-\�\�41�t����iD\�瓍8U�}\'\�\"�OB\�z��#�\�\�\�w���v8;��\�I�F>\�:Թ�㰀\�O4D\�\�r��\�\�\�S\�m�.��F!%�8䊛I��y\"������\�e\�*H\�NE\�f�t5\�\�K#��L��B\�\�\�E�3\�\�6P��\��$�V72�\�;\�\�P\"1�Óȹ��\��\��ڹ�\�\\y�\� \�(�r�\"�W�>����\�z�S�}�\�|?A�\�6N���y΋p9H��\0���\�6\�1�6ʧP\�Z}i\�\"���R7\�%�\�O\�\�č�\�ыkCU!j/@61\�z	\�\'�[�~�\�wף�7V\0q_�+�}\�o^e4\"6����¨�s����!\�\�\\r\�\�k�JN�T�$@�Q�N���S\����\�\�\�$yZ(_�:\�{\��\�W,��\r�/��u�\Zs\�x�\�Ѱqh\�\�\�\�\�.�\�}	���\�g(�b[\Z\�s�L7\��RF�\�+�%�(�\�G\�8\"�4�r�\�)\�5V\��6I�\�F�\r:\� XR>9�\�Q;G)ڴ\�\���^�\�LȰR\�#�\�\�.c\�/ ��5/d\�Izf9�,\�\�}Og+>{8���xq\�*\�\��k��^\�Z`5�\�r�u�\�u��ʠ�\�\"�I�\�E[uT�\\�\n\�q�\�\�f\�-\�ϵ\�ͺ/I4%8�{0\�7\"W+k���T��Ga_\�dC:���2\�\�\�\�v\0\�Y\��\�-��\�{���0ǟN\�6V��\�\��!1��y��\0@�LF�y\�@:�:x\�:�/+E�îu.^f=0	�W\�V\"b��K\�5�3G�\�ht�#�+��>?�\�ǽ=���0�}0�\�t�ɼ\��u\r�V��\�9�)�ftѼ~;��W�9Xt\�tƊ#)\n6Ex�9r��\�8��\�_K�\��g\���\�D���\����+	ȸ�\n�\�\�Z���u�\�-@\�G�\�L\��\�M\Z\�\�`\��^N�\r�^F�ȫ	\�\�\�\�\�` #�\�bL\�FD\�~�x֎@7��\�:\�\��!l�1�l\Z��\'�9@p)�b\�PbN\�UP��q�\����t�\�8��\"�\'�\r\\&!ª��\�&OGGׂb\�nf`]\�0\�\�N=m?�\�k�\�\�\�X\�F$?��2�bP\n��ؕp�0�\�{�EAoh��|�\�d�Y\�E,\�qjQe�0\�\�T`\�\�K|4bf.\�D\�f����\�o�\�N\�D�Á�\��=l,uف1�\\����v\�U���\�P��w�B�G_�)1�\0�N�o������C\�\�\�\�\�&ҁ�\�痁\�<Pq~�6����cmZ���\�b>\�	�\\�U�����\' �y�>!ܶF�\�G�,\�G\��\�MO\�f \�uQ\�\��\�\��nx�����H�rL<\�4�?f/\��qR��\�Jʿ�ɤ%e\"��\�2�s!֧�!��\'�~\�\�p\r#Je\�+R=u�\��m�^J��U�|��\�F\�op�C���(h_oI3�\�]puB4�+�q.�\�C���I[\�IM�gTm(��F�F�g/\"\�X���A��]��\03#��)I\�5\�r\���cӨ}ʪ\�G\���@�@Q�|\0�\�E(�N��\�w�\�̥�uD\�K\0��h\�*\�Y�C�.�1\�\�UrX4<�y�\�̐;�\��_B�@�D1p~mx\�V\�ޯ\�g�5Ze�+x\�\�\�H�\�\'\�P\rD龬�\�lw����P\�\�d�x\�>]h���B���\�G��\�G���R�|\�\�`��\�Q\�\�v��\�Ӡ�B��C,ERO�g*��/6��9�p�8!ĭ�\�씯�q\"BZ45xH2Ţ-G:��I83%��\�$�|��aY\�\0<ܴ�Z�\�W��\�0\�&�\�\�\�aTn\�\�U�\�â\�Zt���ep�\Z\�\�i#E���F�6\��\�*\�\�\\\��o��&H\'	�=\�c6�m\"Ķ6�W\�\�\�JVQSq*겨b���,�Q����d��{\�4\��{r��\�u!Ʋ\�\�F�n��-赒\��7a�\�L����\�7i@\�{P�L閮%$�\�(\��\'q��c��\�w`��`@��5	�e���\�\�\Z��\��9�fգ���V%������M(�ë�q\�a��\�s�\��Q�\�w^\��w\�\nRZ0ǲ�E\�O\�tn`Ň\�藸eY=\�m.���\'2_��CN`Ʈ�(!�k\��M\�č�4u���%�4)��H�[�\�/�;��}\\��8�*\�X��\�=Mwh\r\Zt\n\�\\\'\"\�\nƄ\�Z~M3��-9\�8\�R8��g�_@uWN�\�4��ꓚϹ�5b5\��T^RcSVh�b\�>b\0#\�\�5:�,�w\�cT��Pma�\�����\'� �E	e0\�XԎBI�Fx\\y���U\��\"�8�r�\��[��E\�r:!5�dIA�\�h\�\'Z4Wt�����g\�4醲�v\�<\�Q�]�-��\\\�\�A(5`m,�	皌�V�\Z�Xd�\�*�\�Pb��<�B%+�#c.V*�\�\�P���,Vՙy(:�\0�F#\"|Fu7����l+\0(���\�ŀ�b����\�`xڗPR�7՝*)�.^U(\�\\�Μ��;��脫PЙ\0�y�\Z��\�\��\��\0�j\�\�8���\Z\�\��\�\�y\�d�Q\�e���Z�	\�EO���\�h\�u)�\�\�h�3�!�[SU\�\'�\�_��q���\�(.��RO�B\�b�W�Ѷh\�ԋG\r\�N�\��)�\�\�\�|V�F�h��&D]\��\�E4 k�y6hw\���=\�\�\�?D��\'����u�b-\�Ts��G���y�y��`8��\�\�<�\na+V\�\rh�2	�x��1\�іMA��y�)l\�k$����H�\�y�7��t\r��j\�H�/6-\�J�u&<}\"�Qĕn@{�j�K\Z�.`-N�Bچ\�ӫh�M/^���\\߀1vS\�/GJP�!�6#���9�:Cb�����\�DčR\�_\�9���C\r��SU]SE4;��\�B�o�\"�(���Px)\'�\�̵pʲ\�	ޝӜ{�P\�4	�\�0,@:\�L���\\j\�_��g�08�0\�c�\"!\�\�,x77��\Z\n��d�\"~�h\��\�\��\�~P�9I��,FS\�\�;km@F2?\n%�5z|:��5h\�D\�\�C\�tG\�TET�\�}-�\�qz\�{\n��iI\�Q�3�#\�\�dt�-\�!\�DWD\�#w#e&��\Z��QND�w���ݔj\�q��\�{p��k���+܏{gZǫrХl��\"�l�m$l\�p$I?�1�`<\��\�:$�\�\�Bi\�b�B��c]�\�݀k8q��v�C�d�W�\�xU\�\'�y�������Q�\�.�=o��3��V�� %��|F�\�=�V\�+��$�E\'^9O�7K\�\�L��轲Z�\�ȫ�I\�4x��a�\�\�A�\�>\�\�g�Џ����\0`_c:\Z��\rF�(D\�~@3ѷ3)��S:�\� _?𵀓\\�M)\�\�8\�~x/\�\��\�F!\�Pn\�p/ؽ\�\�%h[p݋Xes,ھđ�\nie�L\��\�D��JKKr�\�u�A�)J�w\"�d����x^�\�\�W\��\np\�\�\�$�\�\0D�(�-�]�]�\�:�hk��\�i��d3�����+�\�;\�\�Un�4\nKɶP(P\�h�\�\�\n;^�Ʋ�,]|��X�˫�Tw	V�\�\�v\0�u���ྞbS(�\�ٖZ?=g`x�\�ѡ5�MY9\Z��\\S�l3�e:Y	j\�Bn�v�J5�s�z\��S\�\�.\'\�\�%�jh̜�\0Z=_�\Z���h`oe[�\�\�)�#�2�i�\���M\�7י�bV����N@t�S�_]�\���wfHu͙He�\�m\�\��\�Hk Z�D۽�\�\'(�����NT�\�|_;\�\"�\�VJL�ɔi���\�/�Bh�����8\�\"�\�/\�!w\���\��\�\�F5\��vT!+Q��/A�FOҘ\�\�4�C�\Zp0jC�\nJ\�\'6��Q�~\�7vD3/\�B5��\�@\�Z p\�\�\��_�\0�௘s]J�\0\0\0\0IEND�B`�'),(2,0,'Canned Attachments Rock!');
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
