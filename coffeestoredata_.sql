/*
 Navicat Premium Data Transfer

 Source Server         : temitope
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : coffeedata

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/05/2024 02:30:27
*/
CREATE DATABASE coffeestoredata;
USE coffeestoredata;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ingredients
-- ----------------------------
DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE `ingredients` (
  `ing_id` varchar(255) DEFAULT NULL,
  `ing_name` varchar(255) DEFAULT NULL,
  `ing_weight` varchar(255) DEFAULT NULL,
  `ing_meas` varchar(255) DEFAULT NULL,
  `ing_price` decimal(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ingredients
-- ----------------------------
BEGIN;
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING001', 'Espresso beans', '1000', 'grams', 12.000);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING002', 'Whole Milk', '1000', 'ml', 1.200);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING003', 'Cheddar', '500', 'grams', 7.450);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING004', 'Mozzarella', '500', 'grams', 5.000);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING005', 'Whipped cream', '300', 'ml', 1.350);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING006', 'Vanilla syrup', '1000', 'ml', 14.520);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING007', 'Barista chocolate syrup', '1000', 'ml', 8.490);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING008', 'Barista white chocolate syrup', '1000', 'ml', 8.490);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING009', 'Barista caramel sauce', '1000', 'ml', 8.490);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING010', 'Sugar', '1000', 'grams', 1.500);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING011', 'Panini Bread', '4', 'units', 1.350);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING012', 'Cocoa powder', '1000', 'grams', 22.000);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING013', 'Chocolate', '1000', 'grams', 10.500);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING014', 'Lemons', '5', 'units', 1.500);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING015', 'Ham', '1000', 'grams', 27.500);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING016', 'Salami', '1000', 'grams', 15.490);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING017', 'Black Tea', '1000', 'grams', 16.000);
INSERT INTO `ingredients` (`ing_id`, `ing_name`, `ing_weight`, `ing_meas`, `ing_price`) VALUES ('ING018', 'Vanilla extract', '60', 'ml', 9.990);
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `inv_id` varchar(255) DEFAULT NULL,
  `ing_id` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv001', 'ING001', 4);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv002', 'ING002', 55);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv003', 'ING003', 1);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv004', 'ING004', 4);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv005', 'ING005', 7);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv006', 'ING006', 3);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv007', 'ING007', 3);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv008', 'ING008', 4);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv009', 'ING009', 1);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv010', 'ING010', 4);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv011', 'ING011', 20);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv012', 'ING012', 5);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv013', 'ING013', 2);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv014', 'ING014', 10);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv015', 'ING015', 3);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv016', 'ING016', 2);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv017', 'ING017', 2);
INSERT INTO `inventory` (`inv_id`, `ing_id`, `quantity`) VALUES ('inv018', 'ING018', 2);
COMMIT;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_cat` varchar(255) DEFAULT NULL,
  `item_size` varchar(255) DEFAULT NULL,
  `item_price` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of items
-- ----------------------------
BEGIN;
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It001', 'HDR-CAP-MD', 'Cappuccino', 'Hot Drinks', 'Medium', 3.45);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It002', 'HDR-CAP-LG', 'Cappuccino', 'Hot Drinks', 'Large', 3.75);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It003', 'HDR-LAT-MD', 'Latte', 'Hot Drinks', 'Medium', 3.45);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It004', 'HDR-LAT-LG', 'Latte', 'Hot Drinks', 'Large', 3.75);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It005', 'HDR-FLT', 'Flat White', 'Hot Drinks', NULL, 3.15);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It006', 'HDR-CRM-MD', 'Caramel Macchiato', 'Hot Drinks', 'Medium', 4.20);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It007', 'HDR-CRM-LG', 'Caramel Macchiato', 'Hot Drinks', 'Large', 4.60);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It008', 'HDR-ESP', 'Espresso', 'Hot Drinks', NULL, 2.15);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It009', 'HDR-MOC-MD', 'Mocha', 'Hot Drinks', 'Medium', 4.00);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It010', 'HDR-MOC-LG', 'Mocha', 'Hot Drinks', 'Large', 4.60);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It011', 'HDR-WMO-MD', 'White Mocha', 'Hot Drinks', 'Medium', 4.50);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It012', 'HDR-WMO-LG', 'White Mocha', 'Hot Drinks', 'Large', 4.70);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It013', 'HDR-HCH-MD', 'Hot Chocolate', 'Hot Drinks', 'Medium', 4.20);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It014', 'HDR-HCH-LG', 'Hot Chocolate', 'Hot Drinks', 'Large', 4.60);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It015', 'CDR-CCF-MD', 'Cold Coffee', 'Cold Drinks', 'Medium', 3.45);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It016', 'CDR-CCF-LG', 'Cold Coffee', 'Cold Drinks', 'Large', 3.75);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It017', 'CDR-CMO-MD', 'Cold Mocha', 'Cold Drinks', 'Medium', 4.00);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It018', 'CDR-CMO-LG', 'Cold Mocha', 'Cold Drinks', 'Large', 4.60);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It019', 'CDR-ICT-MD', 'Iced Tea', 'Cold Drinks', 'Medium', 3.25);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It020', 'CDR-ICT-LG', 'Iced Tea', 'Cold Drinks', 'Large', 3.55);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It021', 'CDR-LMN-MD', 'Lemonade', 'Cold Drinks', 'Medium', 3.35);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It022', 'CDR-LMN-LG', 'Lemonade', 'Cold Drinks', 'Large', 3.75);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It023', 'SNK-SHC', 'Sandwich Ham&Cheese', 'Snacks', NULL, 5.60);
INSERT INTO `items` (`item_id`, `sku`, `item_name`, `item_cat`, `item_size`, `item_price`) VALUES ('It024', 'SNK-SSM', 'Sandwich Salami&Mozzarella', 'Snacks', NULL, 5.50);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `row_id` int DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `in_or_out` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (1, 'ORD001', '2024-02-12 07:04:00', 'It008', 2, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (2, 'ORD002', '2024-02-12 07:09:00', 'It014', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (3, 'ORD003', '2024-02-12 07:14:00', 'It008', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (4, 'ORD004', '2024-02-12 07:18:00', 'It019', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (5, 'ORD005', '2024-02-12 07:23:00', 'It024', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (6, 'ORD006', '2024-02-12 07:28:00', 'It001', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (7, 'ORD006', '2024-02-12 07:28:00', 'It016', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (8, 'ORD007', '2024-02-12 07:33:00', 'It005', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (9, 'ORD007', '2024-02-12 07:33:00', 'It020', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (10, 'ORD008', '2024-02-12 07:39:00', 'It006', 1, 'Cameron', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (11, 'ORD008', '2024-02-12 07:39:00', 'It018', 1, 'Cameron', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (12, 'ORD009', '2024-02-12 07:44:00', 'It023', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (13, 'ORD009', '2024-02-12 07:44:00', 'It011', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (14, 'ORD010', '2024-02-12 07:49:00', 'It024', 1, 'Peyton', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (15, 'ORD010', '2024-02-12 07:49:00', 'It014', 1, 'Peyton', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (16, 'ORD011', '2024-02-12 07:53:00', 'It003', 4, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (17, 'ORD012', '2024-02-12 07:58:00', 'It007', 1, 'Blake', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (18, 'ORD013', '2024-02-12 08:03:00', 'It009', 1, 'Charlie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (19, 'ORD013', '2024-02-12 08:03:00', 'It021', 1, 'Charlie', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (20, 'ORD014', '2024-02-12 08:08:00', 'It012', 1, 'Dakota', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (21, 'ORD014', '2024-02-12 08:08:00', 'It022', 1, 'Dakota', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (22, 'ORD015', '2024-02-12 08:12:00', 'It004', 1, 'Emerson', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (23, 'ORD016', '2024-02-12 08:17:00', 'It002', 1, 'Finley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (24, 'ORD017', '2024-02-12 08:22:00', 'It001', 2, 'Harper', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (25, 'ORD018', '2024-02-12 08:26:00', 'It014', 2, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (26, 'ORD019', '2024-02-12 08:31:00', 'It011', 1, 'Kendall', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (27, 'ORD020', '2024-02-12 08:36:00', 'It017', 1, 'Logan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (28, 'ORD020', '2024-02-12 08:36:00', 'It020', 1, 'Logan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (29, 'ORD021', '2024-02-12 08:41:00', 'It005', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (30, 'ORD022', '2024-02-12 08:45:00', 'It006', 1, 'Parker', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (31, 'ORD022', '2024-02-12 08:45:00', 'It014', 1, 'Peyton', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (32, 'ORD023', '2024-02-12 08:50:00', 'It008', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (33, 'ORD024', '2024-02-12 08:55:00', 'It016', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (34, 'ORD025', '2024-02-12 09:00:00', 'It006', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (35, 'ORD026', '2024-02-12 09:04:00', 'It019', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (36, 'ORD027', '2024-02-12 09:09:00', 'It009', 3, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (37, 'ORD028', '2024-02-12 09:14:00', 'It001', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (38, 'ORD028', '2024-02-12 09:14:00', 'It016', 1, 'Morgan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (39, 'ORD029', '2024-02-12 09:19:00', 'It005', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (40, 'ORD029', '2024-02-12 09:19:00', 'It020', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (41, 'ORD029', '2024-02-12 09:19:00', 'It012', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (42, 'ORD030', '2024-02-12 09:35:00', 'It004', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (43, 'ORD031', '2024-02-12 09:48:00', 'It021', 1, 'Harper', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (44, 'ORD032', '2024-02-12 10:02:00', 'It007', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (45, 'ORD033', '2024-02-12 10:17:00', 'It0010', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (46, 'ORD034', '2024-02-12 10:33:00', 'It017', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (47, 'ORD035', '2024-02-12 10:50:00', 'It009', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (48, 'ORD036', '2024-02-12 11:08:00', 'It018', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (49, 'ORD037', '2024-02-12 11:27:00', 'It005', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (50, 'ORD037', '2024-02-12 11:27:00', 'It002', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (51, 'ORD038', '2024-02-12 12:08:00', 'It015', 1, 'Peyton', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (52, 'ORD038', '2024-02-12 12:08:00', 'It003', 1, 'Peyton', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (53, 'ORD038', '2024-02-12 12:08:00', 'It016', 1, 'Peyton', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (54, 'ORD039', '2024-02-12 12:10:00', 'It005', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (55, 'ORD039', '2024-02-12 12:10:00', 'It020', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (56, 'ORD040', '2024-02-12 12:11:00', 'It006', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (57, 'ORD040', '2024-02-12 12:11:00', 'It018', 1, 'Cameron', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (58, 'ORD041', '2024-02-12 12:16:00', 'It023', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (59, 'ORD041', '2024-02-12 12:16:00', 'It011', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (60, 'ORD041', '2024-02-12 12:16:00', 'It011', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (61, 'ORD042', '2024-02-12 12:18:00', 'It004', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (62, 'ORD043', '2024-02-12 12:21:00', 'It022', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (63, 'ORD044', '2024-02-12 12:23:00', 'It018', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (64, 'ORD045', '2024-02-12 12:26:00', 'It017', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (65, 'ORD046', '2024-02-12 12:29:00', 'It009', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (66, 'ORD047', '2024-02-12 12:32:00', 'It009', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (67, 'ORD048', '2024-02-12 12:35:00', 'It012', 3, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (68, 'ORD049', '2024-02-12 12:38:00', 'It005', 1, 'Peyton', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (69, 'ORD050', '2024-02-12 12:41:00', 'It019', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (70, 'ORD051', '2024-02-12 12:44:00', 'It020', 1, 'Harper', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (71, 'ORD052', '2024-02-12 12:47:00', 'It021', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (72, 'ORD053', '2024-02-12 12:50:00', 'It014', 1, 'Avery', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (73, 'ORD054', '2024-02-12 12:53:00', 'It016', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (74, 'ORD055', '2024-02-12 12:56:00', 'It023', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (75, 'ORD056', '2024-02-12 12:59:00', 'It020', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (76, 'ORD057', '2024-02-12 13:02:00', 'It013', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (77, 'ORD058', '2024-02-12 13:05:00', 'It001', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (78, 'ORD059', '2024-02-12 13:08:00', 'It003', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (79, 'ORD060', '2024-02-12 13:11:00', 'It008', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (80, 'ORD061', '2024-02-12 13:13:00', 'It002', 1, 'Harper', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (81, 'ORD061', '2024-02-12 13:13:00', 'It007', 1, 'Harper', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (82, 'ORD062', '2024-02-12 13:15:00', 'It019', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (83, 'ORD063', '2024-02-12 13:17:00', 'It021', 1, 'Avery', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (84, 'ORD063', '2024-02-12 13:17:00', 'It005', 1, 'Avery', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (85, 'ORD063', '2024-02-12 13:17:00', 'It014', 1, 'Avery', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (86, 'ORD064', '2024-02-12 13:20:00', 'It004', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (87, 'ORD064', '2024-02-12 13:20:00', 'It003', 1, 'Casey', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (88, 'ORD065', '2024-02-12 13:22:00', 'It012', 2, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (89, 'ORD065', '2024-02-12 13:22:00', 'It009', 2, 'Taylor', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (90, 'ORD066', '2024-02-12 13:25:00', 'It018', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (91, 'ORD066', '2024-02-12 13:25:00', 'It022', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (92, 'ORD067', '2024-02-12 13:27:00', 'It011', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (93, 'ORD067', '2024-02-12 13:27:00', 'It015', 1, 'Jamie', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (94, 'ORD068', '2024-02-12 13:30:00', 'It006', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (95, 'ORD068', '2024-02-12 13:30:00', 'It022', 1, 'Morgan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (96, 'ORD069', '2024-02-12 13:32:00', 'It010', 3, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (97, 'ORD069', '2024-02-12 13:32:00', 'It024', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (98, 'ORD070', '2024-02-12 13:35:00', 'It001', 1, 'Peyton', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (99, 'ORD070', '2024-02-12 13:35:00', 'It017', 1, 'Peyton', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (100, 'ORD078', '2024-02-12 13:55:00', 'It020', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (101, 'ORD079', '2024-02-12 14:05:00', 'It021', 1, 'Harper', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (102, 'ORD080', '2024-02-12 14:17:00', 'It004', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (103, 'ORD080', '2024-02-12 14:17:00', 'It013', 1, 'Taylor', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (104, 'ORD081', '2024-02-12 14:30:00', 'It018', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (105, 'ORD082', '2024-02-12 14:45:00', 'It007', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (106, 'ORD082', '2024-02-12 14:45:00', 'It011', 1, 'Casey', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (107, 'ORD083', '2024-02-12 15:00:00', 'It013', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (108, 'ORD084', '2024-02-12 15:20:00', 'It009', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (109, 'ORD084', '2024-02-12 15:20:00', 'It003', 1, 'Jamie', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (110, 'ORD085', '2024-02-12 15:40:00', 'It014', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (111, 'ORD085', '2024-02-12 15:40:00', 'It022', 1, 'Morgan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (112, 'ORD086', '2024-02-12 16:00:00', 'It005', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (113, 'ORD087', '2024-02-12 16:25:00', 'It017', 1, 'Avery', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (114, 'ORD088', '2024-02-12 16:50:00', 'It012', 4, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (115, 'ORD089', '2024-02-12 17:00:00', 'It001', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (116, 'ORD090', '2024-02-13 07:14:00', 'It002', 1, 'Anna', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (117, 'ORD091', '2024-02-13 07:19:00', 'It004', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (118, 'ORD091', '2024-02-13 07:19:00', 'It028', 1, 'Chris', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (119, 'ORD092', '2024-02-13 07:24:00', 'It017', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (120, 'ORD093', '2024-02-13 07:30:00', 'It023', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (121, 'ORD093', '2024-02-13 07:30:00', 'It011', 1, 'Alex', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (122, 'ORD094', '2024-02-13 07:35:00', 'It006', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (123, 'ORD095', '2024-02-13 07:40:00', 'It021', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (124, 'ORD096', '2024-02-13 07:45:00', 'It015', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (125, 'ORD097', '2024-02-13 07:50:00', 'It008', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (126, 'ORD097', '2024-02-13 07:50:00', 'It024', 1, 'Jamie', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (127, 'ORD098', '2024-02-13 07:56:00', 'It001', 2, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (128, 'ORD099', '2024-02-13 08:01:00', 'It019', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (129, 'ORD100', '2024-02-13 08:06:00', 'It003', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (130, 'ORD100', '2024-02-13 08:06:00', 'It027', 1, 'Cameron', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (131, 'ORD101', '2024-02-13 08:11:00', 'It022', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (132, 'ORD102', '2024-02-13 08:17:00', 'It018', 1, 'Peyton', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (133, 'ORD103', '2024-02-13 08:22:00', 'It005', 1, 'Brooke', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (134, 'ORD103', '2024-02-13 08:22:00', 'It012', 1, 'Brooke', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (135, 'ORD104', '2024-02-13 08:27:00', 'It010', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (136, 'ORD105', '2024-02-13 08:32:00', 'It007', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (137, 'ORD106', '2024-02-13 08:38:00', 'It026', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (138, 'ORD106', '2024-02-13 08:38:00', 'It020', 1, 'Pat', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (139, 'ORD107', '2024-02-13 08:43:00', 'It014', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (140, 'ORD108', '2024-02-13 08:48:00', 'It009', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (141, 'ORD109', '2024-02-13 08:53:00', 'It002', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (142, 'ORD109', '2024-02-13 08:53:00', 'It016', 1, 'Taylor', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (143, 'ORD110', '2024-02-13 08:58:00', 'It013', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (144, 'ORD111', '2024-02-13 09:04:00', 'It025', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (145, 'ORD112', '2024-02-13 09:09:00', 'It004', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (146, 'ORD113', '2024-02-13 09:14:00', 'It021', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (147, 'ORD114', '2024-02-13 09:19:00', 'It006', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (148, 'ORD115', '2024-02-13 09:25:00', 'It019', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (149, 'ORD116', '2024-02-13 09:30:00', 'It003', 1, 'Peyton', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (150, 'ORD117', '2024-02-13 09:35:00', 'It022', 1, 'Brooke', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (151, 'ORD117', '2024-02-13 09:35:00', 'It012', 1, 'Brooke', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (152, 'ORD118', '2024-02-13 09:40:00', 'It018', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (153, 'ORD119', '2024-02-13 09:46:00', 'It005', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (154, 'ORD120', '2024-02-13 09:51:00', 'It026', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (155, 'ORD121', '2024-02-13 09:56:00', 'It014', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (156, 'ORD122', '2024-02-13 10:01:00', 'It009', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (157, 'ORD123', '2024-02-13 10:16:00', 'It027', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (158, 'ORD124', '2024-02-13 10:31:00', 'It005', 3, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (159, 'ORD125', '2024-02-13 10:45:00', 'It014', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (160, 'ORD125', '2024-02-13 10:45:00', 'It023', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (161, 'ORD126', '2024-02-13 11:00:00', 'It018', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (162, 'ORD127', '2024-02-13 11:15:00', 'It002', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (163, 'ORD128', '2024-02-13 11:29:00', 'It011', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (164, 'ORD129', '2024-02-13 11:43:00', 'It026', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (165, 'ORD129', '2024-02-13 11:43:00', 'It020', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (166, 'ORD130', '2024-02-13 11:57:00', 'It008', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (167, 'ORD131', '2024-02-13 12:03:00', 'It022', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (168, 'ORD132', '2024-02-13 12:10:00', 'It004', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (169, 'ORD133', '2024-02-13 12:17:00', 'It015', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (170, 'ORD134', '2024-02-13 12:24:00', 'It026', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (171, 'ORD134', '2024-02-13 12:24:00', 'It018', 1, 'Morgan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (172, 'ORD135', '2024-02-13 12:31:00', 'It007', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (173, 'ORD136', '2024-02-13 12:38:00', 'It020', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (174, 'ORD137', '2024-02-13 12:45:00', 'It003', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (175, 'ORD138', '2024-02-13 12:52:00', 'It016', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (176, 'ORD139', '2024-02-13 12:59:00', 'It009', 1, 'Cameron', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (177, 'ORD139', '2024-02-13 12:59:00', 'It025', 1, 'Cameron', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (178, 'ORD140', '2024-02-13 13:06:00', 'It012', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (179, 'ORD141', '2024-02-13 13:13:00', 'It001', 1, 'Peyton', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (180, 'ORD142', '2024-02-13 13:20:00', 'It019', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (181, 'ORD143', '2024-02-13 13:27:00', 'It005', 1, 'Sam', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (182, 'ORD143', '2024-02-13 13:27:00', 'It011', 1, 'Sam', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (183, 'ORD144', '2024-02-13 13:34:00', 'It028', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (184, 'ORD145', '2024-02-13 13:41:00', 'It010', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (185, 'ORD146', '2024-02-13 13:48:00', 'It024', 1, 'Chris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (186, 'ORD147', '2024-02-13 13:55:00', 'It017', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (187, 'ORD147', '2024-02-13 13:55:00', 'It021', 1, 'Jordan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (188, 'ORD148', '2024-02-13 14:03:00', 'It006', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (189, 'ORD149', '2024-02-13 14:10:00', 'It023', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (190, 'ORD150', '2024-02-13 14:30:00', 'It002', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (191, 'ORD151', '2024-02-13 14:50:00', 'It018', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (192, 'ORD152', '2024-02-13 15:10:00', 'It005', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (193, 'ORD153', '2024-02-13 15:30:00', 'It027', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (194, 'ORD154', '2024-02-13 15:50:00', 'It011', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (195, 'ORD155', '2024-02-13 16:09:00', 'It004', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (196, 'ORD155', '2024-02-13 16:09:00', 'It028', 1, 'Casey', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (197, 'ORD156', '2024-02-13 16:29:00', 'It014', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (198, 'ORD157', '2024-02-13 16:49:00', 'It021', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (199, 'ORD158', '2024-02-13 17:00:00', 'It007', 2, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (200, 'ORD159', '2024-02-14 07:06:00', 'It001', 3, 'Elvis', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (201, 'ORD160', '2024-02-14 07:13:00', 'It014', 2, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (202, 'ORD161', '2024-02-14 07:20:00', 'It026', 1, 'Chris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (203, 'ORD162', '2024-02-14 07:27:00', 'It008', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (204, 'ORD162', '2024-02-14 07:27:00', 'It022', 1, 'Alex', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (205, 'ORD163', '2024-02-14 07:34:00', 'It017', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (206, 'ORD164', '2024-02-14 07:41:00', 'It005', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (207, 'ORD165', '2024-02-14 07:49:00', 'It023', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (208, 'ORD166', '2024-02-14 07:56:00', 'It011', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (209, 'ORD167', '2024-02-14 08:03:00', 'It019', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (210, 'ORD168', '2024-02-14 08:10:00', 'It003', 1, 'Cameron', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (211, 'ORD169', '2024-02-14 08:17:00', 'It027', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (212, 'ORD170', '2024-02-14 08:24:00', 'It006', 1, 'Peyton', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (213, 'ORD171', '2024-02-14 08:31:00', 'It020', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (214, 'ORD172', '2024-02-14 08:38:00', 'It010', 1, 'Sam', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (215, 'ORD173', '2024-02-14 08:45:00', 'It025', 1, 'Pat', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (216, 'ORD173', '2024-02-14 08:45:00', 'It007', 1, 'Pat', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (217, 'ORD174', '2024-02-14 08:53:00', 'It013', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (218, 'ORD175', '2024-02-14 09:00:00', 'It028', 1, 'Jordan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (219, 'ORD176', '2024-02-14 09:07:00', 'It004', 1, 'Chris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (220, 'ORD177', '2024-02-14 09:14:00', 'It016', 1, 'Morgan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (221, 'ORD178', '2024-02-14 09:21:00', 'It024', 1, 'Taylor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (222, 'ORD179', '2024-02-14 09:28:00', 'It012', 1, 'Casey', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (223, 'ORD180', '2024-02-14 09:35:00', 'It009', 1, 'Jamie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (224, 'ORD181', '2024-02-14 09:42:00', 'It002', 1, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (225, 'ORD182', '2024-02-14 09:49:00', 'It018', 1, 'Cameron', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (226, 'ORD183', '2024-02-14 09:57:00', 'It021', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (227, 'ORD184', '2024-02-14 10:04:00', 'It015', 1, 'Brooke', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (228, 'ORD185', '2024-02-14 10:21:00', 'It007', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (229, 'ORD186', '2024-02-14 10:38:00', 'It028', 1, 'Pat', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (230, 'ORD187', '2024-02-14 10:55:00', 'It001', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (231, 'ORD188', '2024-02-14 11:12:00', 'It024', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (232, 'ORD189', '2024-02-14 11:29:00', 'It018', 1, 'Chris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (233, 'ORD189', '2024-02-14 11:29:00', 'It022', 1, 'Chris', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (234, 'ORD190', '2024-02-14 11:46:00', 'It012', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (235, 'ORD191', '2024-02-14 12:03:00', 'It003', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (236, 'ORD192', '2024-02-14 12:10:00', 'It016', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (237, 'ORD193', '2024-02-14 12:17:00', 'It009', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (238, 'ORD194', '2024-02-14 12:24:00', 'It027', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (239, 'ORD195', '2024-02-14 12:31:00', 'It005', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (240, 'ORD195', '2024-02-14 12:31:00', 'It011', 1, 'Cameron', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (241, 'ORD196', '2024-02-14 12:38:00', 'It014', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (242, 'ORD197', '2024-02-14 12:45:00', 'It020', 1, 'Peyton', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (243, 'ORD198', '2024-02-14 12:52:00', 'It006', 1, 'Brooke', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (244, 'ORD199', '2024-02-14 13:00:00', 'It022', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (245, 'ORD200', '2024-02-14 13:08:00', 'It017', 1, 'Pat', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (246, 'ORD201', '2024-02-14 13:15:00', 'It010', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (247, 'ORD202', '2024-02-14 13:22:00', 'It024', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (248, 'ORD202', '2024-02-14 13:22:00', 'It008', 4, 'Jordan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (249, 'ORD203', '2024-02-14 13:29:00', 'It001', 1, 'Chris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (250, 'ORD204', '2024-02-14 13:36:00', 'It019', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (251, 'ORD205', '2024-02-14 13:43:00', 'It013', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (252, 'ORD206', '2024-02-14 13:50:00', 'It026', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (253, 'ORD207', '2024-02-14 13:57:00', 'It004', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (254, 'ORD208', '2024-02-14 14:05:00', 'It021', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (255, 'ORD208', '2024-02-14 14:05:00', 'It002', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (256, 'ORD209', '2024-02-14 14:12:00', 'It018', 1, 'Cameron', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (257, 'ORD210', '2024-02-14 14:19:00', 'It025', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (258, 'ORD211', '2024-02-14 14:26:00', 'It007', 1, 'Peyton', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (259, 'ORD212', '2024-02-14 14:33:00', 'It012', 1, 'Brooke', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (260, 'ORD213', '2024-02-14 14:40:00', 'It028', 1, 'Sam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (261, 'ORD214', '2024-02-14 14:47:00', 'It015', 1, 'Pat', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (262, 'ORD215', '2024-02-14 15:04:00', 'It002', 1, 'Alex', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (263, 'ORD216', '2024-02-14 15:22:00', 'It024', 1, 'Jordan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (264, 'ORD217', '2024-02-14 15:41:00', 'It018', 1, 'Chris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (265, 'ORD218', '2024-02-14 15:59:00', 'It011', 1, 'Morgan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (266, 'ORD219', '2024-02-14 16:17:00', 'It005', 1, 'Taylor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (267, 'ORD220', '2024-02-14 16:35:00', 'It017', 1, 'Casey', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (268, 'ORD221', '2024-02-14 16:53:00', 'It009', 1, 'Jamie', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (269, 'ORD222', '2024-02-14 17:00:00', 'It026', 1, 'Riley', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (270, 'ORD223', '2024-02-15 07:02:00', 'It003', 1, 'Anna', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (271, 'ORD224', '2024-02-15 07:09:00', 'It017', 1, 'Bob', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (272, 'ORD224', '2024-02-15 07:09:00', 'It021', 1, 'Bob', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (273, 'ORD225', '2024-02-15 07:16:00', 'It006', 1, 'Carol', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (274, 'ORD226', '2024-02-15 07:23:00', 'It028', 1, 'Dave', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (275, 'ORD227', '2024-02-15 07:30:00', 'It011', 1, 'Eve', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (276, 'ORD227', '2024-02-15 07:30:00', 'It014', 1, 'Eve', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (277, 'ORD228', '2024-02-15 07:37:00', 'It001', 1, 'Frank', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (278, 'ORD229', '2024-02-15 07:44:00', 'It019', 1, 'Grace', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (279, 'ORD230', '2024-02-15 07:52:00', 'It024', 1, 'Helen', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (280, 'ORD231', '2024-02-15 07:59:00', 'It005', 1, 'Ian', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (281, 'ORD231', '2024-02-15 07:59:00', 'It008', 1, 'Ian', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (282, 'ORD232', '2024-02-15 08:06:00', 'It010', 1, 'Jenny', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (283, 'ORD233', '2024-02-15 08:13:00', 'It013', 1, 'Kyle', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (284, 'ORD234', '2024-02-15 08:20:00', 'It016', 2, 'Laura', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (285, 'ORD234', '2024-02-15 08:20:00', 'It022', 2, 'Laura', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (286, 'ORD235', '2024-02-15 08:27:00', 'It025', 1, 'Mike', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (287, 'ORD236', '2024-02-15 08:34:00', 'It007', 1, 'Nina', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (288, 'ORD237', '2024-02-15 08:41:00', 'It018', 1, 'Oscar', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (289, 'ORD238', '2024-02-15 08:48:00', 'It004', 1, 'Paula', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (290, 'ORD238', '2024-02-15 08:48:00', 'It027', 1, 'Paula', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (291, 'ORD239', '2024-02-15 08:56:00', 'It009', 1, 'Quinn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (292, 'ORD240', '2024-02-15 09:03:00', 'It002', 1, 'Rachel', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (293, 'ORD241', '2024-02-15 09:10:00', 'It020', 1, 'Steve', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (294, 'ORD242', '2024-02-15 09:17:00', 'It012', 1, 'Tina', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (295, 'ORD243', '2024-02-15 09:24:00', 'It015', 1, 'Umar', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (296, 'ORD243', '2024-02-15 09:24:00', 'It026', 1, 'Umar', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (297, 'ORD244', '2024-02-15 09:31:00', 'It023', 1, 'Victor', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (298, 'ORD245', '2024-02-15 09:38:00', 'It008', 1, 'Wendy', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (299, 'ORD246', '2024-02-15 09:48:00', 'It012', 1, 'Alice', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (300, 'ORD247', '2024-02-15 10:04:00', 'It021', 1, 'Bob', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (301, 'ORD248', '2024-02-15 10:20:00', 'It004', 1, 'Charlie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (302, 'ORD249', '2024-02-15 10:36:00', 'It027', 1, 'Dana', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (303, 'ORD250', '2024-02-15 10:52:00', 'It009', 1, 'Evan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (304, 'ORD251', '2024-02-15 11:08:00', 'It018', 1, 'Fiona', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (305, 'ORD251', '2024-02-15 11:08:00', 'It022', 1, 'Fiona', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (306, 'ORD252', '2024-02-15 11:24:00', 'It006', 1, 'George', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (307, 'ORD253', '2024-02-15 11:40:00', 'It016', 1, 'Hannah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (308, 'ORD254', '2024-02-15 11:56:00', 'It001', 1, 'Ian', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (309, 'ORD255', '2024-02-15 12:06:00', 'It007', 1, 'Jake', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (310, 'ORD256', '2024-02-15 12:12:00', 'It019', 1, 'Karen', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (311, 'ORD256', '2024-02-15 12:12:00', 'It023', 1, 'Karen', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (312, 'ORD257', '2024-02-15 12:18:00', 'It002', 1, 'Leo', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (313, 'ORD258', '2024-02-15 12:24:00', 'It015', 1, 'Mia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (314, 'ORD259', '2024-02-15 12:30:00', 'It010', 1, 'Noah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (315, 'ORD260', '2024-02-15 12:36:00', 'It026', 1, 'Olivia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (316, 'ORD261', '2024-02-15 12:42:00', 'It005', 1, 'Paul', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (317, 'ORD262', '2024-02-15 12:48:00', 'It013', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (318, 'ORD263', '2024-02-15 12:54:00', 'It020', 2, 'Riley', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (319, 'ORD263', '2024-02-15 12:54:00', 'It008', 1, 'Riley', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (320, 'ORD264', '2024-02-15 13:00:00', 'It024', 1, 'Sam', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (321, 'ORD265', '2024-02-15 13:06:00', 'It011', 1, 'Tina', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (322, 'ORD266', '2024-02-15 13:12:00', 'It017', 1, 'Umar', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (323, 'ORD267', '2024-02-15 13:18:00', 'It003', 1, 'Victor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (324, 'ORD268', '2024-02-15 13:24:00', 'It014', 1, 'Wendy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (325, 'ORD269', '2024-02-15 13:30:00', 'It001', 1, 'Xavier', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (326, 'ORD270', '2024-02-15 13:36:00', 'It009', 1, 'Yara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (327, 'ORD271', '2024-02-15 13:42:00', 'It018', 1, 'Zoe', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (328, 'ORD272', '2024-02-15 13:48:00', 'It004', 1, 'Amy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (329, 'ORD272', '2024-02-15 13:48:00', 'It028', 1, 'Amy', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (330, 'ORD273', '2024-02-15 13:54:00', 'It021', 1, 'Brad', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (331, 'ORD274', '2024-02-15 14:00:00', 'It006', 1, 'Cindy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (332, 'ORD275', '2024-02-15 14:06:00', 'It022', 1, 'Derek', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (333, 'ORD276', '2024-02-15 14:12:00', 'It012', 1, 'Eliza', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (334, 'ORD277', '2024-02-15 14:18:00', 'It027', 1, 'Frank', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (335, 'ORD278', '2024-02-15 14:24:00', 'It016', 1, 'Gigi', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (336, 'ORD279', '2024-02-15 14:30:00', 'It025', 1, 'Hugo', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (337, 'ORD280', '2024-02-15 14:36:00', 'It008', 1, 'Ivy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (338, 'ORD281', '2024-02-15 14:52:00', 'It002', 1, 'Jake', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (339, 'ORD282', '2024-02-15 15:08:00', 'It017', 1, 'Kara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (340, 'ORD283', '2024-02-15 15:24:00', 'It011', 1, 'Liam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (341, 'ORD284', '2024-02-15 15:40:00', 'It024', 1, 'Mia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (342, 'ORD285', '2024-02-15 15:56:00', 'It005', 1, 'Noel', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (343, 'ORD286', '2024-02-15 16:12:00', 'It020', 1, 'Ophelia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (344, 'ORD287', '2024-02-15 16:28:00', 'It014', 1, 'Pablo', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (345, 'ORD288', '2024-02-15 16:44:00', 'It027', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (346, 'ORD289', '2024-02-15 17:00:00', 'It009', 1, 'Rita', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (347, 'ORD290', '2024-02-16 07:08:00', 'It005', 1, 'Sarah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (348, 'ORD291', '2024-02-16 07:15:00', 'It012', 1, 'Mike', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (349, 'ORD292', '2024-02-16 07:22:00', 'It018', 1, 'Lucy', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (350, 'ORD292', '2024-02-16 07:22:00', 'It022', 1, 'Lucy', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (351, 'ORD293', '2024-02-16 07:29:00', 'It004', 1, 'Tony', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (352, 'ORD294', '2024-02-16 07:36:00', 'It027', 1, 'Fiona', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (353, 'ORD295', '2024-02-16 07:43:00', 'It011', 1, 'Greg', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (354, 'ORD296', '2024-02-16 07:51:00', 'It015', 1, 'Hannah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (355, 'ORD297', '2024-02-16 07:58:00', 'It001', 1, 'Ivan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (356, 'ORD297', '2024-02-16 07:58:00', 'It006', 1, 'Ivan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (357, 'ORD298', '2024-02-16 08:05:00', 'It019', 1, 'Julia', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (358, 'ORD299', '2024-02-16 08:12:00', 'It023', 1, 'Karl', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (359, 'ORD300', '2024-02-16 08:19:00', 'It009', 1, 'Leah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (360, 'ORD301', '2024-02-16 08:26:00', 'It003', 1, 'Max', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (361, 'ORD301', '2024-02-16 08:26:00', 'It020', 1, 'Max', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (362, 'ORD302', '2024-02-16 08:33:00', 'It007', 1, 'Nora', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (363, 'ORD303', '2024-02-16 08:40:00', 'It013', 1, 'Oscar', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (364, 'ORD304', '2024-02-16 08:48:00', 'It026', 1, 'Paula', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (365, 'ORD305', '2024-02-16 08:55:00', 'It010', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (366, 'ORD306', '2024-02-16 09:02:00', 'It008', 1, 'Rita', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (367, 'ORD307', '2024-02-16 09:09:00', 'It002', 1, 'Steve', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (368, 'ORD307', '2024-02-16 09:09:00', 'It014', 1, 'Steve', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (369, 'ORD308', '2024-02-16 09:16:00', 'It017', 1, 'Tina', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (370, 'ORD309', '2024-02-16 09:23:00', 'It024', 1, 'Uma', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (371, 'ORD310', '2024-02-16 09:30:00', 'It021', 1, 'Victor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (372, 'ORD311', '2024-02-16 09:38:00', 'It016', 1, 'Wendy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (373, 'ORD312', '2024-02-16 09:45:00', 'It028', 1, 'Xander', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (374, 'ORD313', '2024-02-16 09:52:00', 'It025', 1, 'Yara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (375, 'ORD314', '2024-02-16 09:59:00', 'It001', 1, 'Zack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (376, 'ORD315', '2024-02-16 10:05:00', 'It003', 1, 'Alice', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (377, 'ORD316', '2024-02-16 10:21:00', 'It020', 1, 'Ben', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (378, 'ORD317', '2024-02-16 10:38:00', 'It008', 1, 'Carla', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (379, 'ORD318', '2024-02-16 10:54:00', 'It017', 1, 'David', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (380, 'ORD318', '2024-02-16 10:54:00', 'It025', 1, 'David', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (381, 'ORD319', '2024-02-16 11:10:00', 'It012', 1, 'Elena', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (382, 'ORD320', '2024-02-16 11:26:00', 'It006', 1, 'Frank', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (383, 'ORD321', '2024-02-16 11:43:00', 'It024', 1, 'Gina', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (384, 'ORD322', '2024-02-16 11:59:00', 'It011', 1, 'Harry', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (385, 'ORD323', '2024-02-16 12:06:00', 'It022', 1, 'Iris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (386, 'ORD324', '2024-02-16 12:12:00', 'It005', 1, 'Jack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (387, 'ORD325', '2024-02-16 12:19:00', 'It009', 1, 'Kiera', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (388, 'ORD325', '2024-02-16 12:19:00', 'It013', 1, 'Kiera', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (389, 'ORD326', '2024-02-16 12:25:00', 'It018', 1, 'Luke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (390, 'ORD327', '2024-02-16 12:32:00', 'It001', 1, 'Mia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (391, 'ORD328', '2024-02-16 12:38:00', 'It026', 1, 'Nia', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (392, 'ORD329', '2024-02-16 12:45:00', 'It004', 1, 'Oscar', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (393, 'ORD330', '2024-02-16 12:51:00', 'It010', 1, 'Priya', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (394, 'ORD331', '2024-02-16 12:58:00', 'It017', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (395, 'ORD331', '2024-02-16 12:58:00', 'It023', 1, 'Quinn', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (396, 'ORD332', '2024-02-16 13:04:00', 'It006', 1, 'Ravi', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (397, 'ORD333', '2024-02-16 13:11:00', 'It014', 1, 'Sarah', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (398, 'ORD334', '2024-02-16 13:17:00', 'It027', 1, 'Tim', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (399, 'ORD335', '2024-02-16 13:24:00', 'It008', 1, 'Uma', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (400, 'ORD336', '2024-02-16 13:30:00', 'It020', 1, 'Vicky', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (401, 'ORD337', '2024-02-16 13:37:00', 'It012', 1, 'Wendy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (402, 'ORD338', '2024-02-16 13:43:00', 'It019', 1, 'Xian', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (403, 'ORD339', '2024-02-16 13:50:00', 'It003', 1, 'Yara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (404, 'ORD340', '2024-02-16 13:56:00', 'It007', 1, 'Zack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (405, 'ORD341', '2024-02-16 14:03:00', 'It015', 1, 'Amelia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (406, 'ORD341', '2024-02-16 14:03:00', 'It024', 1, 'Amelia', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (407, 'ORD342', '2024-02-16 14:09:00', 'It002', 1, 'Brad', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (408, 'ORD343', '2024-02-16 14:16:00', 'It021', 1, 'Cindy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (409, 'ORD344', '2024-02-16 14:22:00', 'It011', 1, 'Derek', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (410, 'ORD345', '2024-02-16 14:29:00', 'It028', 1, 'Eliza', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (411, 'ORD346', '2024-02-16 14:35:00', 'It016', 2, 'Faisal', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (412, 'ORD347', '2024-02-16 14:42:00', 'It005', 1, 'Georgia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (413, 'ORD348', '2024-02-16 14:48:00', 'It022', 1, 'Haris', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (414, 'ORD349', '2024-02-16 14:55:00', 'It009', 1, 'Ida', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (415, 'ORD350', '2024-02-16 15:01:00', 'It025', 1, 'Jaya', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (416, 'ORD351', '2024-02-16 15:08:00', 'It018', 1, 'Kurt', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (417, 'ORD352', '2024-02-16 15:14:00', 'It003', 1, 'Lana', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (418, 'ORD353', '2024-02-16 15:21:00', 'It014', 1, 'Moe', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (419, 'ORD354', '2024-02-16 15:34:00', 'It022', 1, 'Ian', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (420, 'ORD355', '2024-02-16 15:54:00', 'It009', 1, 'Jenna', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (421, 'ORD356', '2024-02-16 16:14:00', 'It005', 1, 'Keith', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (422, 'ORD357', '2024-02-16 16:34:00', 'It018', 1, 'Lila', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (423, 'ORD358', '2024-02-16 16:54:00', 'It001', 1, 'Mason', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (424, 'ORD359', '2024-02-16 17:00:00', 'It014', 1, 'Nora', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (425, 'ORD360', '2024-02-17 07:03:00', 'It001', 1, 'Susie', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (426, 'ORD361', '2024-02-17 07:08:00', 'It017', 1, 'Tom', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (427, 'ORD361', '2024-02-17 07:08:00', 'It023', 1, 'Tom', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (428, 'ORD362', '2024-02-17 07:13:00', 'It004', 1, 'Ulla', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (429, 'ORD363', '2024-02-17 07:18:00', 'It026', 1, 'Victor', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (430, 'ORD363', '2024-02-17 07:18:00', 'It020', 1, 'Victor', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (431, 'ORD364', '2024-02-17 07:23:00', 'It009', 1, 'Wendy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (432, 'ORD365', '2024-02-17 07:28:00', 'It014', 1, 'Xavier', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (433, 'ORD365', '2024-02-17 07:28:00', 'It007', 2, 'Xavier', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (434, 'ORD366', '2024-02-17 07:34:00', 'It022', 1, 'Yara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (435, 'ORD367', '2024-02-17 07:39:00', 'It005', 1, 'Zoe', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (436, 'ORD368', '2024-02-17 07:44:00', 'It012', 1, 'Amy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (437, 'ORD368', '2024-02-17 07:44:00', 'It018', 1, 'Amy', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (438, 'ORD369', '2024-02-17 07:49:00', 'It027', 1, 'Ben', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (439, 'ORD370', '2024-02-17 07:54:00', 'It003', 1, 'Cara', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (440, 'ORD371', '2024-02-17 07:59:00', 'It016', 1, 'Dan', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (441, 'ORD371', '2024-02-17 07:59:00', 'It008', 1, 'Dan', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (442, 'ORD372', '2024-02-17 08:04:00', 'It011', 1, 'Eve', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (443, 'ORD373', '2024-02-17 08:10:00', 'It024', 1, 'Finn', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (444, 'ORD374', '2024-02-17 08:15:00', 'It006', 1, 'Gia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (445, 'ORD374', '2024-02-17 08:15:00', 'It021', 1, 'Gia', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (446, 'ORD375', '2024-02-17 08:20:00', 'It010', 1, 'Hal', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (447, 'ORD376', '2024-02-17 08:25:00', 'It025', 1, 'Ida', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (448, 'ORD377', '2024-02-17 08:30:00', 'It013', 1, 'Jed', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (449, 'ORD377', '2024-02-17 08:30:00', 'It019', 1, 'Jed', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (450, 'ORD378', '2024-02-17 08:35:00', 'It002', 1, 'Kip', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (451, 'ORD379', '2024-02-17 08:40:00', 'It028', 1, 'Lia', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (452, 'ORD380', '2024-02-17 08:45:00', 'It015', 1, 'Moe', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (453, 'ORD381', '2024-02-17 08:51:00', 'It007', 1, 'Nia', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (454, 'ORD381', '2024-02-17 08:51:00', 'It023', 1, 'Nia', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (455, 'ORD382', '2024-02-17 08:56:00', 'It001', 1, 'Oli', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (456, 'ORD383', '2024-02-17 09:01:00', 'It017', 1, 'Pam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (457, 'ORD384', '2024-02-17 09:06:00', 'It004', 1, 'Quin', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (458, 'ORD384', '2024-02-17 09:06:00', 'It020', 1, 'Quin', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (459, 'ORD385', '2024-02-17 09:11:00', 'It009', 1, 'Rae', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (460, 'ORD386', '2024-02-17 09:16:00', 'It026', 1, 'Sam', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (461, 'ORD387', '2024-02-17 09:21:00', 'It012', 1, 'Ty', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (462, 'ORD388', '2024-02-17 09:27:00', 'It018', 1, 'Uma', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (463, 'ORD388', '2024-02-17 09:27:00', 'It022', 1, 'Uma', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (464, 'ORD389', '2024-02-17 09:32:00', 'It005', 1, 'Val', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (465, 'ORD390', '2024-02-17 09:37:00', 'It011', 1, 'Wes', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (466, 'ORD391', '2024-02-17 09:42:00', 'It027', 1, 'Xi', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (467, 'ORD392', '2024-02-17 09:47:00', 'It003', 1, 'Yol', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (468, 'ORD393', '2024-02-17 09:52:00', 'It016', 1, 'Zed', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (469, 'ORD393', '2024-02-17 09:52:00', 'It024', 1, 'Zed', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (470, 'ORD394', '2024-02-17 09:57:00', 'It008', 1, 'Amy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (471, 'ORD394', '2024-02-17 10:08:00', 'It016', 1, 'Zack', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (472, 'ORD395', '2024-02-17 10:24:00', 'It024', 1, 'Alex', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (473, 'ORD395', '2024-02-17 10:24:00', 'It008', 1, 'Alex', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (474, 'ORD396', '2024-02-17 10:40:00', 'It002', 1, 'Brooke', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (475, 'ORD397', '2024-02-17 10:56:00', 'It010', 1, 'Charles', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (476, 'ORD398', '2024-02-17 11:12:00', 'It005', 1, 'Dana', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (477, 'ORD399', '2024-02-17 11:28:00', 'It027', 1, 'Evan', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (478, 'ORD400', '2024-02-17 11:44:00', 'It013', 1, 'Fiona', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (479, 'ORD401', '2024-02-17 12:00:00', 'It021', 1, 'George', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (480, 'ORD402', '2024-02-17 12:16:00', 'It017', 1, 'Heidi', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (481, 'ORD403', '2024-02-17 12:00:00', 'It022', 3, 'Ivy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (482, 'ORD404', '2024-02-17 12:07:00', 'It004', 1, 'Jack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (483, 'ORD404', '2024-02-17 12:07:00', 'It006', 1, 'Jack', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (484, 'ORD405', '2024-02-17 12:14:00', 'It018', 1, 'Kiera', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (485, 'ORD406', '2024-02-17 12:21:00', 'It011', 1, 'Leo', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (486, 'ORD407', '2024-02-17 12:28:00', 'It023', 1, 'Mia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (487, 'ORD407', '2024-02-17 12:28:00', 'It025', 1, 'Mia', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (488, 'ORD408', '2024-02-17 12:35:00', 'It009', 1, 'Noah', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (489, 'ORD409', '2024-02-17 12:42:00', 'It015', 1, 'Olivia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (490, 'ORD410', '2024-02-17 12:49:00', 'It027', 1, 'Pete', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (491, 'ORD411', '2024-02-17 12:56:00', 'It003', 1, 'Quinn', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (492, 'ORD412', '2024-02-17 13:03:00', 'It020', 1, 'Rachel', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (493, 'ORD412', '2024-02-17 13:03:00', 'It014', 1, 'Rachel', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (494, 'ORD413', '2024-02-17 13:10:00', 'It001', 1, 'Sam', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (495, 'ORD414', '2024-02-17 13:17:00', 'It008', 1, 'Tina', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (496, 'ORD415', '2024-02-17 13:24:00', 'It017', 1, 'Umar', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (497, 'ORD416', '2024-02-17 13:31:00', 'It005', 1, 'Vivian', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (498, 'ORD417', '2024-02-17 13:38:00', 'It012', 1, 'Wendy', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (499, 'ORD417', '2024-02-17 13:38:00', 'It024', 1, 'Wendy', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (500, 'ORD418', '2024-02-17 13:45:00', 'It010', 1, 'Xavier', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (501, 'ORD419', '2024-02-17 13:52:00', 'It026', 1, 'Yolanda', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (502, 'ORD420', '2024-02-17 13:59:00', 'It019', 1, 'Zack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (503, 'ORD421', '2024-02-17 14:06:00', 'It007', 1, 'Amelia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (504, 'ORD422', '2024-02-17 14:13:00', 'It002', 1, 'Brad', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (505, 'ORD423', '2024-02-17 14:20:00', 'It013', 1, 'Chloe', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (506, 'ORD424', '2024-02-17 14:27:00', 'It021', 1, 'Derek', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (507, 'ORD424', '2024-02-17 14:27:00', 'It016', 1, 'Derek', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (508, 'ORD425', '2024-02-17 14:34:00', 'It028', 1, 'Eva', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (509, 'ORD426', '2024-02-17 14:41:00', 'It009', 1, 'Fred', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (510, 'ORD427', '2024-02-17 14:48:00', 'It006', 1, 'Gina', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (511, 'ORD428', '2024-02-17 14:55:00', 'It023', 1, 'Hugh', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (512, 'ORD429', '2024-02-17 15:02:00', 'It018', 1, 'Iris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (513, 'ORD429', '2024-02-17 15:02:00', 'It011', 1, 'Iris', NULL);
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (514, 'ORD430', '2024-02-17 15:23:00', 'It015', 1, 'Liam', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (515, 'ORD431', '2024-02-17 15:39:00', 'It027', 1, 'Mia', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (516, 'ORD432', '2024-02-17 15:55:00', 'It009', 1, 'Fred', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (517, 'ORD433', '2024-02-17 16:11:00', 'It023', 1, 'Gina', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (518, 'ORD434', '2024-02-17 16:27:00', 'It006', 1, 'Hugh', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (519, 'ORD435', '2024-02-17 16:43:00', 'It018', 1, 'Iris', 'in');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (520, 'ORD436', '2024-02-17 16:59:00', 'It002', 2, 'Jack', 'out');
INSERT INTO `orders` (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_name`, `in_or_out`) VALUES (521, 'ORD437', '2024-02-17 17:00:00', 'It026', 1, 'Kiera', 'in');
COMMIT;

-- ----------------------------
-- Table structure for recipes
-- ----------------------------
DROP TABLE IF EXISTS `recipes`;
CREATE TABLE `recipes` (
  `row_id` varchar(255) DEFAULT NULL,
  `recipe_id` varchar(255) DEFAULT NULL,
  `ing_id` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of recipes
-- ----------------------------
BEGIN;
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('1', 'HDR-CAP-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('2', 'HDR-CAP-MD', 'ING002', 130);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('3', 'HDR-CAP-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('4', 'HDR-CAP-LG', 'ING002', 180);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('5', 'HDR-LAT-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('6', 'HDR-LAT-MD', 'ING002', 130);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('7', 'HDR-LAT-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('8', 'HDR-LAT-LG', 'ING002', 180);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('9', 'HDR-FLT', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('10', 'HDR-FLT', 'ING002', 160);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('11', 'HDR-CRM-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('12', 'HDR-CRM-MD', 'ING002', 120);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('13', 'HDR-CRM-MD', 'ING009', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('14', 'HDR-CRM-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('15', 'HDR-CRM-LG', 'ING002', 160);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('16', 'HDR-CRM-LG', 'ING009', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('17', 'HDR-ESP', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('18', 'HDR-MOC-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('19', 'HDR-MOC-MD', 'ING002', 120);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('20', 'HDR-MOC-MD', 'ING007', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('21', 'HDR-MOC-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('22', 'HDR-MOC-LG', 'ING002', 160);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('23', 'HDR-MOC-LG', 'ING007', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('24', 'HDR-WMO-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('25', 'HDR-WMO-MD', 'ING002', 120);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('26', 'HDR-WMO-MD', 'ING008', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('27', 'HDR-WMO-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('28', 'HDR-WMO-LG', 'ING002', 160);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('29', 'HDR-WMO-LG', 'ING008', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('30', 'HDR-HCH-MD', 'ING002', 130);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('31', 'HDR-HCH-MD', 'ING012', 25);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('32', 'HDR-HCH-MD', 'ING013', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('33', 'HDR-HCH-MD', 'ING005', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('34', 'HDR-HCH-LG', 'ING002', 180);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('35', 'HDR-HCH-LG', 'ING012', 35);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('36', 'HDR-HCH-LG', 'ING013', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('37', 'HDR-HCH-LG', 'ING005', 40);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('38', 'CDR-CCF-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('39', 'CDR-CCF-MD', 'ING002', 130);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('40', 'CDR-CCF-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('41', 'CDR-CCF-LG', 'ING002', 180);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('42', 'CDR-CMO-MD', 'ING001', 8);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('43', 'CDR-CMO-MD', 'ING002', 120);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('44', 'CDR-CMO-MD', 'ING007', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('45', 'CDR-CMO-LG', 'ING001', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('46', 'CDR-CMO-LG', 'ING002', 160);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('47', 'CDR-CMO-LG', 'ING007', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('48', 'CDR-ICT-MD', 'ING017', 10);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('49', 'CDR-ICT-MD', 'ING010', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('50', 'CDR-ICT-LG', 'ING016', 15);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('51', 'CDR-ICT-LG', 'ING010', 25);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('52', 'CDR-LMN-MD', 'ING014', 1);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('53', 'CDR-LMN-MD', 'ING010', 30);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('54', 'CDR-LMN-LG', 'ING014', 1);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('55', 'CDR-LMN-LG', 'ING010', 40);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('56', 'SNK-SHC', 'ING011', 1);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('57', 'SNK-SHC', 'ING015', 50);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('58', 'SNK-SHC', 'ING003', 20);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('59', 'SNK-SSM', 'ING011', 1);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('60', 'SNK-SSM', 'ING016', 50);
INSERT INTO `recipes` (`row_id`, `recipe_id`, `ing_id`, `quantity`) VALUES ('61', 'SNK-SSM', 'ING004', 20);
COMMIT;

-- ----------------------------
-- Table structure for rota
-- ----------------------------
DROP TABLE IF EXISTS `rota`;
CREATE TABLE `rota` (
  `row_id` varchar(255) DEFAULT NULL,
  `rota_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `shift_id` varchar(255) DEFAULT NULL,
  `staff_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of rota
-- ----------------------------
BEGIN;
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('1', 'RT001', '2024-02-12', 'SH001', 'ST001');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('2', 'RT001', '2024-02-12', 'SH001', 'ST003');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('3', 'RT001', '2024-02-12', 'SH002', 'ST001');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('4', 'RT002', '2024-02-13', 'SH003', 'ST002');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('5', 'RT002', '2024-02-13', 'SH003', 'ST004');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('6', 'RT002', '2024-02-13', 'SH004', 'ST002');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('7', 'RT003', '2024-02-14', 'SH005', 'ST001');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('8', 'RT003', '2024-02-14', 'SH005', 'ST003');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('9', 'RT003', '2024-02-14', 'SH006', 'ST003');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('10', 'RT004', '2024-02-15', 'SH007', 'ST002');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('11', 'RT004', '2024-02-15', 'SH007', 'ST004');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('12', 'RT004', '2024-02-15', 'SH008', 'ST004');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('13', 'RT005', '2024-02-16', 'SH009', 'ST001');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('14', 'RT005', '2024-02-16', 'SH009', 'ST002');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('15', 'RT005', '2024-02-16', 'SH010', 'ST002');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('16', 'RT006', '2024-02-17', 'SH011', 'ST003');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('17', 'RT006', '2024-02-17', 'SH011', 'ST004');
INSERT INTO `rota` (`row_id`, `rota_id`, `date`, `shift_id`, `staff_id`) VALUES ('18', 'RT006', '2024-02-17', 'SH012', 'ST004');
COMMIT;

-- ----------------------------
-- Table structure for shift
-- ----------------------------
DROP TABLE IF EXISTS `shift`;
CREATE TABLE `shift` (
  `shift_id` varchar(255) DEFAULT NULL,
  `day_of_week` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of shift
-- ----------------------------
BEGIN;
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH001', 'Monday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH002', 'Monday', '13:00:00.000', '17:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH003', 'Tuesday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH004', 'Tuesday', '13:00:00.000', '17:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH005', 'Wednesday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH006', 'Wednesday', '13:00:00.000', '17:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH007', 'Thursday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH008', 'Thursday', '13:00:00.000', '17:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH009', 'Friday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH010', 'Friday', '13:00:00.000', '17:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH011', 'Saturday', '07:00:00.000', '13:00:00.000');
INSERT INTO `shift` (`shift_id`, `day_of_week`, `start_time`, `end_time`) VALUES ('SH012', 'Saturday', '13:00:00.000', '17:00:00.000');
COMMIT;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sal_per_hour` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `position`, `sal_per_hour`) VALUES ('ST001', 'Emma', 'Johnson', 'Manager', 15);
INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `position`, `sal_per_hour`) VALUES ('ST002', 'Liam', 'Smith', 'Barista', 10);
INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `position`, `sal_per_hour`) VALUES ('ST003', 'Olivia', 'Williams', 'Barista', 10);
INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `position`, `sal_per_hour`) VALUES ('ST004', 'Noah', 'Brown', 'Barista', 10);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM ingredients;

SELECT * FROM items;

SELECT * FROM recipes;

/*Task 1*/

SELECT i.item_id, 
            SUM(o.quantity) AS Total_orders,
            SUM(o.quantity * i.item_price) AS Rev
            FROM
            orders o
            JOIN
            items i ON i.item_id = o.item_id
            GROUP BY i.item_id
            ORDER BY Total_orders DESC, Rev DESC;


/*Task 2*/

SELECT 
	i.sku, i.item_name, i.item_price, i.item_id,
    ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) AS cost_price,
    ROUND(i.item_price - (ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 2)), 3) As Profit
FROM
    items i
JOIN
    recipes r ON i.sku = r.recipe_id
JOIN
    ingredients ing ON ing.ing_id = r.ing_id
GROUP BY
    i.sku, i.item_name, i.item_price, i.item_id
ORDER BY
    Profit DESC;
    
/*TASK 3*/

SELECT * FROM orders;

/*Subquery*/

SELECT DATE(created_at), o.order_id, HOUR(created_at) As hour_of_day, 
		o.item_id, o.quantity, i.item_price, (i.item_price * o.quantity) As Sales_price,
        ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) As cost_price_per_unit,
        o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) AS cost_price,
        ((i.item_price * o.quantity) - (o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3))) As Profit
	FROM 
        orders o
	JOIN 
		items i ON i.item_id = o.item_id
	JOIN
		recipes r ON i.sku = r.recipe_id
	JOIN
    ingredients ing ON ing.ing_id = r.ing_id
WHERE HOUR(created_at) = 7
GROUP BY 
	DATE(created_at),
    HOUR(created_at),
    o.order_id,
    o.item_id,
    o.quantity,
    i.item_price;
 
/*Final Query for TASK 3*/

SELECT
    Date,
    Hour_of_Day,
    COUNT(DISTINCT order_id) AS Num_of_Orders,
    SUM(Sales_price) AS Total_Sales_Price,
    SUM(cost_price_per_unit) AS Total_Cost_Price_Per_Unit,
    ROUND(SUM(cost_price),3) AS Total_Cost_Price,
    ROUND(SUM(Profit), 3) AS Total_Profit
FROM (
    SELECT
        DATE(created_at) AS Date,
        HOUR(created_at) AS Hour_of_Day,
        order_id, o.item_id, o.quantity, i.item_price,
        (i.item_price * o.quantity) AS Sales_price,
        ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) As cost_price_per_unit,
        o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) AS cost_price,
        ((i.item_price * o.quantity) - (o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3))) AS Profit
    FROM
        orders o
    JOIN
        items i ON i.item_id = o.item_id
    JOIN
        recipes r ON i.sku = r.recipe_id
    JOIN
        ingredients ing ON ing.ing_id = r.ing_id
    GROUP BY
        DATE(created_at),
        HOUR(created_at),
		o.order_id,
		o.item_id,
		o.quantity,
		i.item_price
) AS Subquery
GROUP BY
    Date, Hour_of_Day;
    

/*TASK 4*/

SELECT * FROM staff;

SELECT * FROM shift;

SELECT * FROM rota;

SELECT
		date, day_of_week, staff_id, Full_Name, position,
        SUM(hours_worked) AS Total_Hours_Worked,
        SUM(Salary_Per_Shift) AS Salary_Earned
FROM(
	SELECT
		r.date, s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS Full_Name, s.position, sh.day_of_week, sh.shift_id, s.sal_per_hour, 
        (sh.end_time - sh.start_time) AS hours_worked,
        (s.sal_per_hour * (sh.end_time - sh.start_time)) AS Salary_Per_Shift
FROM staff s
JOIN 
	rota r ON r.staff_id = s.staff_id
JOIN
	shift sh ON sh.shift_id = r.shift_id
    ) AS Subquery
GROUP BY
		date, staff_id, Full_Name, position, day_of_week;


/*TASK 5*/

SELECT
	in_or_out, item_cat,
    SUM(Sales_price) AS Total_Sales_Price,
    SUM(cost_price_per_unit) AS Total_Cost_Price_Per_Unit,
    ROUND(SUM(cost_price),3) AS Total_Cost_Price,
    ROUND(SUM(Profit), 3) AS Total_Profit
FROM (
    SELECT
        DATE(created_at) AS Date,
        HOUR(created_at) AS Hour_of_Day,
        order_id, o.item_id, o.quantity, i.item_price, o.in_or_out, i.item_cat,
        (i.item_price * o.quantity) AS Sales_price,
        ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) As cost_price_per_unit,
        o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3) AS cost_price,
        ((i.item_price * o.quantity) - (o.quantity * ROUND(SUM(r.quantity * ing.ing_price / ing.ing_weight), 3))) AS Profit
    FROM
        orders o
    JOIN
        items i ON i.item_id = o.item_id
    JOIN
        recipes r ON i.sku = r.recipe_id
    JOIN
        ingredients ing ON ing.ing_id = r.ing_id
    GROUP BY
        DATE(created_at),
        HOUR(created_at),
		o.order_id,
		o.item_id,
		o.quantity,
		i.item_price,
        o.in_or_out,
        i.item_cat
) AS Subquery
GROUP BY
    in_or_out, item_cat;
    
/*TASK 6*/

SELECT
    r.date AS Date,
    s.shift_id,
    s.day_of_week,
    COUNT(DISTINCT o.order_id) AS Orders_Per_Shift
FROM
    rota r
JOIN
    shift s ON r.shift_id = s.shift_id
LEFT JOIN
    orders o ON DATE(o.created_at) = r.date
GROUP BY
    r.date, s.shift_id, s.day_of_week
ORDER BY
    Orders_Per_Shift DESC
LIMIT 1;
