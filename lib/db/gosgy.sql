/*
 Navicat SQLite Dump SQL

 Source Server         : db
 Source Server Type    : SQLite
 Source Server Version : 3045000 (3.45.0)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3045000 (3.45.0)
 File Encoding         : 65001

 Date: 04/07/2024 13:07:26
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for gosgy
-- ----------------------------
DROP TABLE IF EXISTS "gosgy";
CREATE TABLE "gosgy" (
  "id" integer NOT NULL,
  "title" TEXT(200) NOT NULL,
  "category" TEXT(200) NOT NULL,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of gosgy
-- ----------------------------
INSERT INTO "gosgy" VALUES (1, 'Aňlagyn', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (2, 'Ýetersiň', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (3, 'Nur bolsun	', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (4, 'Özüňden gözle', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (5, 'Bolmawer', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (6, 'Garrylyk diýrler', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (7, 'Dälmidir?', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (8, 'Bagşy sen?', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (9, 'Daň säher çagy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (10, 'Gowy adam boljak boldum...', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (11, 'Duýup gez', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (12, 'Bolmagyň gerek', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (13, 'Ömür kyssasy ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (14, 'Ömür menzili', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (15, 'Ýetginjege', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (16, 'Beýiklik hakda tymsal', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (17, 'Ene aladasy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (18, 'Şowsuz gün', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (19, 'Ýolagçy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (20, 'Eselme, göwnüm', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (21, 'Batyl', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (22, 'Şygryýet bir dünýä', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (23, 'Täleý ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (24, 'Göwnüm seni', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (25, 'Ekspromt ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (26, 'Özüme öwüt', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (27, 'Bu-da geçer', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (28, 'Dädemiň soňky sözlerinden', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (29, 'Käbäm enem, sen hakda', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (30, 'Özüme on öwüt', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (31, 'Öz häsiýetimden', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (32, 'Häsiýet', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (33, 'Meteor', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (34, 'Çaga oýny hakda', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (35, 'Oýlanmak ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (36, 'Käte gynanýarlar...', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (37, 'Bakylyk hakda oýlanma', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (38, 'Ömür hakda oýlanma', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (39, 'Synag', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (40, 'Gözler—ýürek aýnasy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (41, 'Düýş (degişme)', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (42, 'Baradyr', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (43, 'Mährem ene', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (44, 'Aýly agşam', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (45, 'Bahar goşgusy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (46, 'Umyt', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (47, 'Uly menziliň oýlanmasy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (48, 'Ýekşenbe goşgusy', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (49, 'Netije ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (50, 'Halallyk hakynda', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (51, 'Döredijilik pursatynda', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (52, 'Täsir ', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (53, 'Ýaş şahyr bilen bölüm müdiri', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (54, 'Saňa', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (55, 'Enesiz oglan', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (56, 'Şahyr dostumyň hatyna jogap', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (57, 'Futbol pökgüsi hakda tymsal', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (58, 'Göribiň häsiýeti', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (59, 'Arkadag  il', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (60, 'Bizi saklasalar...', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (61, 'Gözel bar...', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (62, 'Bir enäniň gyzyna igenji', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (63, 'Ýagşy ynanç	', 'Öwüt-nesihat');
INSERT INTO "gosgy" VALUES (64, 'Deň-duşlaryň arasynda', 'Öwüt-nesihat');

PRAGMA foreign_keys = true;
