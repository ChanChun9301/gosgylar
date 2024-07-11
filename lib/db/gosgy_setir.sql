/*
 Navicat SQLite Dump SQL

 Source Server         : db
 Source Server Type    : SQLite
 Source Server Version : 3045000 (3.45.0)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3045000 (3.45.0)
 File Encoding         : 65001

 Date: 05/07/2024 08:02:06
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for gosgy_setir
-- ----------------------------
DROP TABLE IF EXISTS "gosgy_setir";
CREATE TABLE "gosgy_setir" (
  "id" INTEGER NOT NULL,
  "gosgy" integer NOT NULL,
  "setir" TEXT(500),
  PRIMARY KEY ("id"),
  CONSTRAINT "gosgy_setir_gosgy" FOREIGN KEY ("gosgy") REFERENCES "gosgy" ("id") ON DELETE CASCADE ON UPDATE NO ACTION
);

-- ----------------------------
-- Records of gosgy_setir
-- ----------------------------
INSERT INTO "gosgy_setir" VALUES (1, 1, 'Adamyň pälini, hereketini\nEdep-ekram alyşyndan aňlagyn.\nDagyň-düzüň rysgal bereketini\nNowruzunyň gelişinden aňlagyn\n');
INSERT INTO "gosgy_setir" VALUES (1, 1, 'Rysgalyň öňünden geler azaby,\nArzan zadyň soňra bardyr güzaby.\nÝoldaş bolsaň, utjak bolýan kezzaby\nSadasyrap gülüşinden aňlagyn\n');
INSERT INTO "gosgy_setir" VALUES (1, 1, 'Gedem geňeş etmez hem öwüt tutmaz\nÝaman sözüň hergiz ýarasy bitmez.\nBikäre ýüz berseň, gapyňdan gitmez,\nHer kişini boluşyndan aňlagyn.\n');
INSERT INTO "gosgy_setir" VALUES (1, 1, 'Göwnüň söýen bolsa bir juwan gyzy,\nUtanç diliň baglap, tapmasaň sözi,\nSaňa hoş söz berjek ol gara gözi--\nOgryn nazar salyşyndan aňlagyn.\n');
INSERT INTO "gosgy_setir" VALUES (1, 1, 'Ummanda ýüzdürip akyl gämisin,\nBelent tutdum il-günümiň namysyn.\nAnnagylyç, ýaşan ömrüň manysyn\nIl ýadynda galyşyndan aňlagyn.\n\n');
INSERT INTO "gosgy_setir" VALUES (2, 2, 'Islegiňe, duýgularyňa erk etseň,\nIşiň rowaç bolar her ýana gitseň,\nÝamanlygy, bet niýeti terk etseň,\nGaraňkydan çykyp, nura ýetersiň.\n\n');
INSERT INTO "gosgy_setir" VALUES (2, 2, 'Il-gün keramatdyr, ilden utmagyn,\nAk süýde gara suw goşup satmagyn,\nTiz baýajak bolup galplyk etmegin,\nHalal bolsaň, ýagşy käre ýetersiň. \n');
INSERT INTO "gosgy_setir" VALUES (2, 2, 'Päliň aşak bolsun, sözüň ýerbe-ýer,\nMärekede aýaguçda boluber.\nIle gerek bolsaň her işde eger--\n“Töre geç!” diýerler, töre ýetersiň.\n');
INSERT INTO "gosgy_setir" VALUES (2, 2, 'Gadagan zatlardan isleg dileseň,\nBu ömrüňi bet işlere bulasaň,\nIl-gün duýduranda, öwüt almasaň--\nSoňra arman çekip,zara ýetersiň.\n');
INSERT INTO "gosgy_setir" VALUES (2, 2, 'Annagylyç  her naçara garamaz,\nIntizar bolmasaň, söýgi döremez.\nGöwün islemese, aýak ýöremez,\nSöýgiň çyndan bolsa, ýara ýetersiň. \n');

PRAGMA foreign_keys = true;
