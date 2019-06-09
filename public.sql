/*
 Navicat PostgreSQL Data Transfer

 Source Server         : chickenteacher108507
 Source Server Type    : PostgreSQL
 Source Server Version : 110003
 Source Host           : ec2-54-83-9-36.compute-1.amazonaws.com:5432
 Source Catalog        : dcehe617a65c52
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110003
 File Encoding         : 65001

 Date: 09/06/2019 22:53:34
*/


-- ----------------------------
-- Table structure for Ingredients
-- ----------------------------
DROP TABLE IF EXISTS "public"."Ingredients";
CREATE TABLE "public"."Ingredients" (
  "ingredientsNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsName" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsIntroduction" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "location" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "phoneNumber" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "saveMethod" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "effectiveDate" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "price" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Ingredients
-- ----------------------------
INSERT INTO "public"."Ingredients" VALUES ('V0002', '花椰菜', '花椰菜含高食物纖維，能促進腸胃蠕動', '彰化', '0938209943', '冷藏', '5天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0003', '青江菜', '富含的維他命A，對於眼睛的保養上，有極佳的幫助。', '彰化', '0938209943', '冷藏', '5天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0001', '菠菜', '菠菜護血管抑制癌細胞', '彰化', '0938209943', '冷藏', '5天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('M0001', '雞胸肉', '好吃又不柴的上等雞胸肉', '宜蘭', '0935168169', '冷藏', '30天', 'M', '100');
INSERT INTO "public"."Ingredients" VALUES ('M0002', '小羊排', '讓平常不吃牛豬的人有更多的選擇', '新竹', '0933145681', '冷藏', '30天', 'M', '100');
INSERT INTO "public"."Ingredients" VALUES ('M0003', '台灣鯛', '本土台灣鯛，絕不會有任何土味', '新竹', '0918930461', '冷藏', '10天', 'M', '100');
INSERT INTO "public"."Ingredients" VALUES ('M0004', '菲力牛', '便宜又好吃的菲力牛是你補充蛋白質的好夥伴', '台北', '0926954180', '冷凍', '30天', 'M', '100');
INSERT INTO "public"."Ingredients" VALUES ('P0001', '義大利麵條', '澱粉量低的麵條，讓人能有足夠的飽足感', '台北', '0957908211', '室溫', '180天', 'P', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0006', '玉米筍', '低熱量、低碳水化合物、高纖維，最有利減肥的蔬菜', '彰化', '0938209943', '冷凍', '30天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0007', '甜椒', '甜椒能使身體發熱出汗，分解體脂肪耗去熱量', '彰化', '0938209943', '冷藏', '7天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0004', '洋蔥', '洋蔥能夠促進胃腸蠕動，幫助腸胃消化的作用', '彰化', '0938209943', '室溫', '90天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('V0005', '蘑菇', '蘑菇中纖維素含量也超過一般蔬菜，能降低血液中的膽固醇含量，減慢人體對碳水化合物的吸收', '彰化', '0938209943', '室溫', '3天', 'V', '100');
INSERT INTO "public"."Ingredients" VALUES ('F0001', '番茄', '番茄中含有的果酸，還能降低血中膽固醇的含量，對高脂血症亦有益處。', '台南', '0976200513', '室溫', '10天', 'F', '100');
INSERT INTO "public"."Ingredients" VALUES ('P0002', '蒜頭', '大蒜除了具有優異的抗菌效果，還能保護心血管、提升免疫力、甚至是預防腦部老化', '雲林', '0966930187', '室溫', '21天', 'P', '100');

-- ----------------------------
-- Table structure for buying
-- ----------------------------
DROP TABLE IF EXISTS "public"."buying";
CREATE TABLE "public"."buying" (
  "buyingNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsName" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "memberAccount" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "howMuch" varchar(255) COLLATE "pg_catalog"."default",
  "total" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of buying
-- ----------------------------
INSERT INTO "public"."buying" VALUES ('B0000001', 'V0002', '花椰菜', 'don9876543210', '2', '200');
INSERT INTO "public"."buying" VALUES ('B0000002', 'V0003', '青江菜', 'don9876543210', '1', '100');

-- ----------------------------
-- Table structure for customizemenu
-- ----------------------------
DROP TABLE IF EXISTS "public"."customizemenu";
CREATE TABLE "public"."customizemenu" (
  "No" int8 NOT NULL,
  "menuNo" varchar(255) COLLATE "pg_catalog"."default",
  "memberAccount" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of customizemenu
-- ----------------------------
INSERT INTO "public"."customizemenu" VALUES (1, 'fatLoss001', 'don9876543210');
INSERT INTO "public"."customizemenu" VALUES (2, 'fatLoss001', 'love890410');
INSERT INTO "public"."customizemenu" VALUES (3, 'fatLoss002', 'ntub10456037');
INSERT INTO "public"."customizemenu" VALUES (4, 'fatLoss002', 'ntub10456043');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS "public"."forum";
CREATE TABLE "public"."forum" (
  "postNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "postContent" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "time" date NOT NULL,
  "memberAccount" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "postTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "postTitle" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO "public"."forum" VALUES ('Fd0001', '減肥脫離不了兩件事，“持續運動”+”注意飲食”+

至於什麼方法，網路上真的很多

但其實說那麼多也沒有

如果有做到”持續”,  而不是三天灑網兩天捕魚

運動是最不怕沒有回饋的一件事

一定會看出成績的

飲食方面：

我自己覺得，有運動的前提下，如果真要減脂，吃什麼非常非常關鍵

不管是減肥的人，還是運動想維持身材的人

都是要忌口的，差別在忌口多寡？

正在減肥的人，那你就認命點甜食炸物含糖飲料加工食品盡量少碰', '2019-06-06', 'love890410', 'Fd', '減肥的重點');

-- ----------------------------
-- Table structure for forumComment
-- ----------------------------
DROP TABLE IF EXISTS "public"."forumComment";
CREATE TABLE "public"."forumComment" (
  "commentNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "memberAccount" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "time" date NOT NULL,
  "commentContent" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "postNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of forumComment
-- ----------------------------
INSERT INTO "public"."forumComment" VALUES ('Fdc0001', 'don9876543210', '2019-06-07', '持續真的很重要，不要因為忙碌而中斷', 'Fd0001');
INSERT INTO "public"."forumComment" VALUES ('Fdc0002', 'ntub10456043', '2019-06-07', '真的是說得容易做的難', 'Fd0001');

-- ----------------------------
-- Table structure for healthymenu
-- ----------------------------
DROP TABLE IF EXISTS "public"."healthymenu";
CREATE TABLE "public"."healthymenu" (
  "menuNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "menuName" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "menuIntroduction" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "menuTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of healthymenu
-- ----------------------------
INSERT INTO "public"."healthymenu" VALUES ('fatLoss002', '無糖豆漿義大利麵', '減脂澱粉的選擇義大利麵條，加上豆漿的香味別有一番風味', 'FL');
INSERT INTO "public"."healthymenu" VALUES ('fatLoss001', '蔬菜湯', '自己做湯品來喝，簡單清爽又有飽足感', 'FL');

-- ----------------------------
-- Table structure for healthymenuIngredients
-- ----------------------------
DROP TABLE IF EXISTS "public"."healthymenuIngredients";
CREATE TABLE "public"."healthymenuIngredients" (
  "No" int8 NOT NULL,
  "menuNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of healthymenuIngredients
-- ----------------------------
INSERT INTO "public"."healthymenuIngredients" VALUES (1, 'fatLoss001', 'V0002');
INSERT INTO "public"."healthymenuIngredients" VALUES (2, 'fatLoss001', 'V0003');
INSERT INTO "public"."healthymenuIngredients" VALUES (3, 'fatLoss001', 'V0004');
INSERT INTO "public"."healthymenuIngredients" VALUES (4, 'fatLoss001', 'F0001');
INSERT INTO "public"."healthymenuIngredients" VALUES (5, 'fatLoss001', 'M0003');
INSERT INTO "public"."healthymenuIngredients" VALUES (6, 'fatLoss002', 'V0004');
INSERT INTO "public"."healthymenuIngredients" VALUES (7, 'fatLoss002', 'V0005');
INSERT INTO "public"."healthymenuIngredients" VALUES (8, 'fatLoss002', 'V0006');
INSERT INTO "public"."healthymenuIngredients" VALUES (9, 'fatLoss002', 'V0007');
INSERT INTO "public"."healthymenuIngredients" VALUES (10, 'fatLoss002', 'F0001');
INSERT INTO "public"."healthymenuIngredients" VALUES (11, 'fatLoss002', 'M0001');
INSERT INTO "public"."healthymenuIngredients" VALUES (12, 'fatLoss001', 'P0002');

-- ----------------------------
-- Table structure for healthymenuSteps
-- ----------------------------
DROP TABLE IF EXISTS "public"."healthymenuSteps";
CREATE TABLE "public"."healthymenuSteps" (
  "No" int8 NOT NULL,
  "menuNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "stepSequence" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "stepContent" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of healthymenuSteps
-- ----------------------------
INSERT INTO "public"."healthymenuSteps" VALUES (1, 'fatLoss001', '1', '準備好要吃的蔬菜數量');
INSERT INTO "public"."healthymenuSteps" VALUES (2, 'fatLoss001', '2', '用水炒的方式煮熟番茄、洋蔥、蒜頭讓香氣出來，最後加入適量的水');
INSERT INTO "public"."healthymenuSteps" VALUES (3, 'fatLoss001', '3', '滾了以後加入自己想吃的蔬菜(可事先蒸熟)，也可加入魚肉讓湯頭更鮮美');
INSERT INTO "public"."healthymenuSteps" VALUES (4, 'fatLoss001', '4', '最後灑上一點鹽巴即可');
INSERT INTO "public"."healthymenuSteps" VALUES (5, 'fatLoss002', '1', '首先備好料如洋蔥、蘑菇、玉米筍、甜椒、雞胸肉、番茄');
INSERT INTO "public"."healthymenuSteps" VALUES (6, 'fatLoss002', '2', '熱鍋加入少許水(不讓鍋子焦掉即可)，加入1的備料拌炒');
INSERT INTO "public"."healthymenuSteps" VALUES (7, 'fatLoss002', '3', '加入無糖豆漿等滾');
INSERT INTO "public"."healthymenuSteps" VALUES (8, 'fatLoss002', '4', '在等滾的同時另外在一旁煮熟義大利麵條');
INSERT INTO "public"."healthymenuSteps" VALUES (9, 'fatLoss002', '5', '醬汁滾了加入煮熟的義大利麵，稍微拌炒一下即可起鍋!');

-- ----------------------------
-- Table structure for ingredientsTypeName
-- ----------------------------
DROP TABLE IF EXISTS "public"."ingredientsTypeName";
CREATE TABLE "public"."ingredientsTypeName" (
  "ingredientsTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "ingredientsTypeName" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of ingredientsTypeName
-- ----------------------------
INSERT INTO "public"."ingredientsTypeName" VALUES ('V', '蔬菜類');
INSERT INTO "public"."ingredientsTypeName" VALUES ('P', '五股根筋類');
INSERT INTO "public"."ingredientsTypeName" VALUES ('F', '水果類');
INSERT INTO "public"."ingredientsTypeName" VALUES ('M', '蛋豆魚肉類');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS "public"."member";
CREATE TABLE "public"."member" (
  "memberName" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "memberSex" char(10) COLLATE "pg_catalog"."default" NOT NULL,
  "memberLike" varchar(50) COLLATE "pg_catalog"."default",
  "memberAccount" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "memberPassword" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "memberLineid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "memberAddress" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO "public"."member" VALUES ('宋小運', '男         ', '增肌類', 'don9876543210', 'bhcgdgjh890125', 'don890125@gmail.com', '新北市土城區學士路24巷15號2樓');
INSERT INTO "public"."member" VALUES ('鄭小慈', '女         ', '蔬食類', 'love890410', 'izonegood0410', 'izone890125@gmail.com', '台北市北投區北投路');
INSERT INTO "public"."member" VALUES ('李小澄', '男         ', '養生類', 'ntub10456043', 'ntub1045604343', '10456043@gmail.com', '台北市中正區');
INSERT INTO "public"."member" VALUES ('陳小儒', '女         ', '甜食類', 'ntub10456037', 'ntub1045603737', '10456037@gmail.com', '台北市中正區');

-- ----------------------------
-- Table structure for menuTypeName
-- ----------------------------
DROP TABLE IF EXISTS "public"."menuTypeName";
CREATE TABLE "public"."menuTypeName" (
  "menuTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "menuTypeName" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of menuTypeName
-- ----------------------------
INSERT INTO "public"."menuTypeName" VALUES ('E', '輕食料理');
INSERT INTO "public"."menuTypeName" VALUES ('MG', '增肌料理');
INSERT INTO "public"."menuTypeName" VALUES ('S', '小點心');
INSERT INTO "public"."menuTypeName" VALUES ('F', '家常菜');
INSERT INTO "public"."menuTypeName" VALUES ('FL', '減脂料理');

-- ----------------------------
-- Table structure for postTypeName
-- ----------------------------
DROP TABLE IF EXISTS "public"."postTypeName";
CREATE TABLE "public"."postTypeName" (
  "postTypeNo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "PostTypeName" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of postTypeName
-- ----------------------------
INSERT INTO "public"."postTypeName" VALUES ('Fd', '飲食類');
INSERT INTO "public"."postTypeName" VALUES ('Ex', '運動及健康類');
INSERT INTO "public"."postTypeName" VALUES ('El', '其他問題');

-- ----------------------------
-- Primary Key structure for table Ingredients
-- ----------------------------
ALTER TABLE "public"."Ingredients" ADD CONSTRAINT "Ingredients_pkey" PRIMARY KEY ("ingredientsNo");

-- ----------------------------
-- Primary Key structure for table buying
-- ----------------------------
ALTER TABLE "public"."buying" ADD CONSTRAINT "buying_pkey" PRIMARY KEY ("buyingNo");

-- ----------------------------
-- Primary Key structure for table customizemenu
-- ----------------------------
ALTER TABLE "public"."customizemenu" ADD CONSTRAINT "customizemenu_pkey" PRIMARY KEY ("No");

-- ----------------------------
-- Primary Key structure for table forum
-- ----------------------------
ALTER TABLE "public"."forum" ADD CONSTRAINT "forum_pkey" PRIMARY KEY ("postNo");

-- ----------------------------
-- Primary Key structure for table forumComment
-- ----------------------------
ALTER TABLE "public"."forumComment" ADD CONSTRAINT "forumComment_pkey" PRIMARY KEY ("commentNo");

-- ----------------------------
-- Primary Key structure for table healthymenu
-- ----------------------------
ALTER TABLE "public"."healthymenu" ADD CONSTRAINT "healthymenu_pkey" PRIMARY KEY ("menuNo");

-- ----------------------------
-- Primary Key structure for table healthymenuIngredients
-- ----------------------------
ALTER TABLE "public"."healthymenuIngredients" ADD CONSTRAINT "healthymenuIngredients_pkey" PRIMARY KEY ("No");

-- ----------------------------
-- Primary Key structure for table healthymenuSteps
-- ----------------------------
ALTER TABLE "public"."healthymenuSteps" ADD CONSTRAINT "healthymenuSteps_pkey" PRIMARY KEY ("No");

-- ----------------------------
-- Primary Key structure for table ingredientsTypeName
-- ----------------------------
ALTER TABLE "public"."ingredientsTypeName" ADD CONSTRAINT "ingredientsTypeName_pkey" PRIMARY KEY ("ingredientsTypeNo");

-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE "public"."member" ADD CONSTRAINT "member_pkey" PRIMARY KEY ("memberAccount");

-- ----------------------------
-- Primary Key structure for table menuTypeName
-- ----------------------------
ALTER TABLE "public"."menuTypeName" ADD CONSTRAINT "menuTypeName_pkey" PRIMARY KEY ("menuTypeNo");

-- ----------------------------
-- Primary Key structure for table postTypeName
-- ----------------------------
ALTER TABLE "public"."postTypeName" ADD CONSTRAINT "postTypeName_pkey" PRIMARY KEY ("postTypeNo");

-- ----------------------------
-- Foreign Keys structure for table Ingredients
-- ----------------------------
ALTER TABLE "public"."Ingredients" ADD CONSTRAINT "Igd1" FOREIGN KEY ("ingredientsTypeNo") REFERENCES "public"."ingredientsTypeName" ("ingredientsTypeNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table buying
-- ----------------------------
ALTER TABLE "public"."buying" ADD CONSTRAINT "B1" FOREIGN KEY ("ingredientsNo") REFERENCES "public"."Ingredients" ("ingredientsNo") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."buying" ADD CONSTRAINT "B2" FOREIGN KEY ("memberAccount") REFERENCES "public"."member" ("memberAccount") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table customizemenu
-- ----------------------------
ALTER TABLE "public"."customizemenu" ADD CONSTRAINT "cm1" FOREIGN KEY ("memberAccount") REFERENCES "public"."member" ("memberAccount") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."customizemenu" ADD CONSTRAINT "cm2" FOREIGN KEY ("menuNo") REFERENCES "public"."healthymenu" ("menuNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table forum
-- ----------------------------
ALTER TABLE "public"."forum" ADD CONSTRAINT "fr1" FOREIGN KEY ("memberAccount") REFERENCES "public"."member" ("memberAccount") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."forum" ADD CONSTRAINT "fr2" FOREIGN KEY ("postTypeNo") REFERENCES "public"."postTypeName" ("postTypeNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table forumComment
-- ----------------------------
ALTER TABLE "public"."forumComment" ADD CONSTRAINT "frc1" FOREIGN KEY ("memberAccount") REFERENCES "public"."member" ("memberAccount") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."forumComment" ADD CONSTRAINT "frc2" FOREIGN KEY ("postNo") REFERENCES "public"."forum" ("postNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table healthymenu
-- ----------------------------
ALTER TABLE "public"."healthymenu" ADD CONSTRAINT "hm1" FOREIGN KEY ("menuTypeNo") REFERENCES "public"."menuTypeName" ("menuTypeNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table healthymenuIngredients
-- ----------------------------
ALTER TABLE "public"."healthymenuIngredients" ADD CONSTRAINT "hmi1" FOREIGN KEY ("menuNo") REFERENCES "public"."healthymenu" ("menuNo") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table healthymenuSteps
-- ----------------------------
ALTER TABLE "public"."healthymenuSteps" ADD CONSTRAINT "hms1" FOREIGN KEY ("menuNo") REFERENCES "public"."healthymenu" ("menuNo") ON DELETE NO ACTION ON UPDATE NO ACTION;
