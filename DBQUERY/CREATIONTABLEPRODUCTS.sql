-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- ProductCategories insertion
-- -----------------------------------------------------
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Vegetables');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Seeds');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Fertilizers');
INSERT INTO PRODUCT_CATEGORY(CATEGORY_NAME) VALUES ('Machinery');

-- -----------------------------------------------------
-- Product Vegetables insertion 
-- -----------------------------------------------------
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1000', 'Potato', 'Potato is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!', 'assets/images/products/vegetables/vegetable-1000.png', 1, 100, 14.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1001', 'Tomato', 'Tomato is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1001.png', 1, 100, 20.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1002', 'Brinjal', 'Brinjal is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1002.png', 1, 100, 14.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1003', 'Cauliflower', 'Cauliflower is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.!', 'assets/images/products/vegetables/vegetable-1003.png', 1, 100, 13.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1004', 'Pumkin', 'Pumpkin is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1004.png', 1, 100, 18.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1005', 'Spinach', 'Spinach is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1005.png', 1, 100, 23.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1006', 'Onion', 'Onion is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1006.png', 1, 100, 14.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1007', 'Carrot', 'Carrot is a good source of vitamin A, from carotenoids, in particular beta-carotene, which is converted to vitamin A by the body. Buy it Now!!', 'assets/images/products/vegetables/vegetable-1007.png', 1, 100, 16.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1008', 'Capsicum', 'Capsicum is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1008.png', 1, 100, 25.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1009', 'Brocolli', 'Broccoli is a good source of vitamin C, and one serving [1 cup] easily provides an adults vitamin C requirements for a day. Buy it Now!!', 'assets/images/products/vegetables/vegetable-1009.png', 1, 100, 23.99, 1, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('VEGETABLE-1010', 'Green Peas', 'It is a good source of vitamin C, a source of dietary fibre, folate and vitamin B6, and contains a dietary significant amount of potassium. Buy it Now!!.', 'assets/images/products/vegetables/vegetable-1010.png', 1, 100, 24.99, 1, NOW());

-- -----------------------------------------------------
-- Product Seeds insertion
-- -----------------------------------------------------
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1000', 'Chilli Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1000.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1001', 'Tomato Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1001.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1002', 'Brinjal Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1002.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1003', 'Cauliflower Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1003.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1004', 'Pumkin Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1004.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1005', 'Spinach Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1005.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1006', 'Drumstick Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1006.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1007', 'Carrot Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1007.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1008', 'Corn Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1008.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1009', 'Brocolli Seed', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1009.png', 1, 100, 18.99, 2, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('SEEDS-1010', 'Green Peas', 'Blocky excellent red colour, good size fruits and harvest starts from 100-110 days. Buy it now!', 'assets/images/products/seeds/seed-1010.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Product Fertilizers insertion
-- -----------------------------------------------------
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1000', 'Fertilizer - Express', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1000.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1001', 'Fertilizer - Cherokee', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1001.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1002', 'Fertilizer - Sweeper', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1002.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1003', 'Fertilizer - Aspire', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1003.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1004', 'Fertilizer - Dorian', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1004.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1005', 'Fertilizer - Columbia', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1005.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1006', 'Fertilizer - Worthing', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1006.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1007', 'Fertilizer - Oak Cliff', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1007.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1008', 'Fertilizer - Tachyon', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1008.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1009', 'Fertilizer - Pan', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1009.png', 1, 100, 17.99, 3, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('FERTILIZER-1010', 'Fertilizer - Phase', 'Moss Green Coloured fine Material.Organic bio-stimulant fertilizer containing enzymatically hydrolyzed proteins in perfect balance with minerals.Completely soluble in water. Buy it now!', 'assets/images/products/fertilizers/fertilizer-1010.png', 1, 100, 17.99, 3, NOW());


-- -----------------------------------------------------
-- Product Machinery insertion
-- -----------------------------------------------------
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1000', 'Machinery - Cherish', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1000.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1001', 'Machinery - Adventure', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1001.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1002', 'Machinery - Skyline', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1002.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1003', 'Machinery - River', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1003.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1004', 'Machinery - Trail Steps', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1004.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1005', 'Machinery - Blooming', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1005.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1006', 'Machinery - Park', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1006.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1007', 'Machinery - Beauty', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1007.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1008', 'Machinery - Water Fall', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1008.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1009', 'Machinery - Trail', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1009.png', 1, 100, 16.99, 4, NOW());
INSERT INTO PRODUCT (SKU, NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) VALUES ('MACHINERY-1010', 'Machinery - Skyscraper', 'To harvest crops like paddy, wheat, mulbery and to cut weeds, grass, parthenium et', 'assets/images/products/machinery/machinery-1010.png', 1, 100, 16.99, 4, NOW());







-- --------------
SELECT * FROM product;