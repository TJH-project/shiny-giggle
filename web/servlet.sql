-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2017 at 08:44 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servlet`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `b_id` int(11) NOT NULL,
  `b_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`b_id`, `b_category`) VALUES
(2, 'fresh-drinks'),
(1, 'hot-drinks'),
(3, 'soft-drinks');

-- --------------------------------------------------------

--
-- Table structure for table `beverage_products`
--

CREATE TABLE `beverage_products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(40) NOT NULL,
  `p_description` text NOT NULL,
  `p_category` varchar(15) NOT NULL,
  `p_image` text,
  `p_price` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverage_products`
--

INSERT INTO `beverage_products` (`p_id`, `p_name`, `p_description`, `p_category`, `p_image`, `p_price`) VALUES
(1, 'Arabic Tea with Mint', 'null', 'hot-drinks', 'assets/images/menu/arabic-tea-with-mint.jpg', 2.00),
(2, 'Tea with Milk', 'null', 'hot-drinks', 'assets/images/menu/tea-with-milk.jpg', 3.00),
(3, 'Nescafe Hot', 'null', 'hot-drinks', 'assets/images/menu/nescafe-hot.jpg', 4.00),
(4, 'Turkish Coffee', 'null', 'hot-drinks', 'assets/images/menu/turkish-coffee.jpg', 3.00),
(5, 'Malaysian Coffee', 'null', 'hot-drinks', 'assets/images/menu/malaysian-coffee.jpg', 3.00),
(6, 'Milo Hot', 'null', 'hot-drinks', 'assets/images/menu/milo-hot.jpg', 4.00),
(7, 'Pot of Tea', 'null', 'hot-drinks', 'assets/images/menu/pot-of-tea.jpg', 7.00),
(8, 'Pot of Tea with Milk Adani', 'null', 'hot-drinks', 'assets/images/menu/pot-of-tea-with-milk-adani.jpg', 10.00),
(9, 'Hot Lemon Tea', 'null', 'hot-drinks', 'assets/images/menu/hot-lemon-tea.jpg', 4.00),
(10, 'Mango Juice', 'null', 'fresh-drinks', 'assets/images/menu/mango-juice.jpg', 7.00),
(11, 'Apple Juice', 'null', 'fresh-drinks', 'assets/images/menu/apple-juice.jpg', 7.00),
(12, 'Orange Juice', 'null', 'fresh-drinks', 'assets/images/menu/orange-juice .jpg', 7.00),
(13, 'Carrot Juice', 'null', 'fresh-drinks', 'assets/images/menu/carrot-juice.jpg', 7.00),
(14, 'Carrot With Milk Juice', 'null', 'fresh-drinks', 'assets/images/menu/carrot-with-milk-juice.jpg', 8.00),
(15, 'Pineapple Juice', 'null', 'fresh-drinks', 'assets/images/menu/pineapple-juice.jpg', 7.00),
(16, 'Watermelon Juice', 'null', 'fresh-drinks', 'assets/images/menu/watermelon-juice.jpg', 7.00),
(17, 'Papaya Juice', 'null', 'fresh-drinks', 'assets/images/menu/papaya-juice.jpg', 7.00),
(18, 'Strawberry Juice', 'null', 'fresh-drinks', 'assets/images/menu/strawberry-juice.jpg', 8.00),
(19, 'Lemon Juice', 'null', 'fresh-drinks', 'assets/images/menu/lemon-juice.jpg', 6.00),
(20, 'Lemon with mint Juice', 'null', 'fresh-drinks', 'assets/images/menu/lemon-with-mint-juice.jpg', 6.00),
(21, 'Grape Juice', 'null', 'fresh-drinks', 'assets/images/menu/grape-juice.jpg', 8.00),
(22, 'Honey Dew Shake', 'null', 'fresh-drinks', 'assets/images/menu/honey-dew-shake.jpg', 7.00),
(23, 'Mango with Milk', 'null', 'fresh-drinks', 'assets/images/menu/mango-with-milk.jpg', 8.00),
(24, 'Banana Shake', 'null', 'fresh-drinks', 'assets/images/menu/banana-shake.jpg', 7.00),
(25, 'Vimto', 'null', 'fresh-drinks', 'assets/images/menu/vimto.jpg', 5.00),
(26, 'Ice Chocolate', 'null', 'fresh-drinks', 'assets/images/menu/Chocolate.jpg', 5.00),
(27, 'Jamaica', 'pineapple with orange', 'fresh-drinks', 'assets/images/menu/jamaica.jpg', 8.00),
(28, 'Ice Lemon Tea', 'null', 'fresh-drinks', 'assets/images/menu/ice-lemon-tea.jpg', 4.00),
(29, 'Cocktail', 'null', 'fresh-drinks', 'assets/images/menu/Cocktail.jpg', 9.00),
(30, 'Araisee', 'null', 'fresh-drinks', 'assets/images/menu/Araisee.jpg', 11.00),
(31, 'Cocktail Taj Hadramawt', 'null', 'fresh-drinks', 'assets/images/menu/cocktail-taj-hadramawt.jpg', 12.00),
(32, 'Pepsi', 'null', 'soft-drinks', 'assets/images/menu/Pepsi.jpg', 3.00),
(33, 'Mirinda', 'null', 'soft-drinks', 'assets/images/menu/mirinda.jpg', 3.00),
(34, '7-Up', 'null', 'soft-drinks', 'assets/images/menu/7-Up.jpg', 3.00),
(35, 'Coca Cola', 'null', 'soft-drinks', 'assets/images/menu/coca-cola.jpg', 3.00),
(36, 'Sprite', 'null', 'soft-drinks', 'assets/images/menu/sprite.jpg', 3.00),
(37, 'Mountain Dew', 'null', 'soft-drinks', 'assets/images/menu/mountain-dew.jpg', 3.00),
(38, '100 Plus', 'null', 'soft-drinks', 'assets/images/menu/100-plus.jpg', 3.00),
(39, 'Mineral Water Small', 'null', 'soft-drinks', 'assets/images/menu/mineral-water-small.jpg', 2.00),
(40, 'Mineral Water Large', 'null', 'soft-drinks', 'assets/images/menu/mineral-water-large.jpg', 3.00),
(41, 'Barbican', 'null', 'soft-drinks', 'assets/images/menu/barbican.jpg', 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_image` text,
  `item_price` float(4,2) DEFAULT NULL,
  `item_count` int(11) DEFAULT NULL,
  `item_total` float(4,2) AS (item_price * item_count) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`) VALUES
(39, 'Osama'),
(40, 'Bakil');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `f_id` int(11) NOT NULL,
  `f_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`f_id`, `f_category`) VALUES
(3, 'appetizers'),
(6, 'bbq'),
(2, 'bread'),
(8, 'desserts'),
(5, 'hot'),
(4, 'main-dishes'),
(7, 'seafood'),
(1, 'soup');

-- --------------------------------------------------------

--
-- Table structure for table `food_products`
--

CREATE TABLE `food_products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_description` text,
  `p_category` varchar(20) NOT NULL DEFAULT 'No description',
  `p_image` text,
  `p_price` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_products`
--

INSERT INTO `food_products` (`p_id`, `p_name`, `p_description`, `p_category`, `p_image`, `p_price`) VALUES
(9, 'Morocan Harira Soup', 'No description', 'soup', 'assets/images/menu/moroccan_soup.jpg', 6.00),
(10, 'Lentil Soup', 'No description', 'soup', 'assets/images/menu/lentil_soup.jpg', 6.00),
(11, 'Vegetable Soup', 'No description', 'soup', 'assets/images/menu/vegetable_soup.jpg', 6.00),
(12, 'Chicken Soup', 'No description', 'soup', 'assets/images/menu/chicken_soup.jpg', 6.00),
(13, 'Mushroom Soup', 'No description', 'soup', 'assets/images/menu/mushroom_soup.jpg', 6.00),
(14, 'Egg Mullawah', 'No description', 'bread', 'assets/images/menu/mullawah.jpg', 10.00),
(21, 'Mullawah extera large', 'No description', 'bread', 'assets/images/menu/mullawah.jpg', 6.00),
(22, 'Mullawah small', 'No description', 'bread', 'assets/images/menu/mullawah.jpg', 6.00),
(23, 'Fresh Arabian Bread', 'No description', 'bread', 'assets/images/menu/fresh_arabian_bread.jpg', 6.00),
(24, 'Mix Appetizers Large', 'Hummus,Arabic Salad,Mutabel,Babaghanuj and greap leves stuffed', 'appetizers', 'assets/images/menu/mix_appetizers.jpg', 24.00),
(25, 'Mix Appetizers Small', 'Hummus,Arabic Salad,Mutabel,Babaghanuj and greap leves stuffed', 'appetizers', 'assets/images/menu/mix_appetizers.jpg', 19.00),
(26, 'Greek Salad', 'Romaine lettuce,tomato,cucumber tossed with lemon juice and olive oil', 'appetizers', 'assets/images/menu/greek_salad.jpg', 10.00),
(27, 'Tuna Salad', 'Shredded tuna mix with tomato,cucumber,onion,capsicum and  dress with lemon juice and olive', 'appetizers', 'assets/images/menu/tuna_salad.jpg', 10.00),
(28, 'Hummus With Lamb', 'Shredded lamb,chickpeas,tahiniah sauce and topped with olive oil', 'appetizers', 'assets/images/menu/hummus_with_lamb.jpg', 10.00),
(29, 'Olive Salad', 'Mix of black olive and green olive mix with tomato,capsicum', 'appetizers', 'assets/images/menu/olive_salad.jpg', 10.00),
(30, 'Arabic Tender Salad', 'No description', 'appetizers', 'assets/images/menu/arabic_salad.jpg', 8.00),
(31, 'Hummus', 'chickpeas,tahiniah sauce and topped with olive oil', 'appetizers', 'assets/images/menu/hummus.jpg', 8.00),
(32, 'Moutable', 'Grilled eggplant dip made creamy with tahiniah sauce and drenched in olive oil', 'appetizers', 'assets/images/menu/moutable.jpg', 8.00),
(33, 'Fattoush', 'Romaine lettuce,tomato,cucumber and white radish topped with toasted bread', 'appetizers', 'assets/images/menu/fattoush.jpg', 8.00),
(34, 'Tabboulah', 'Chopped parsley,tomato,cucumber with a touch of lemon juice and olive oil', 'appetizers', 'assets/images/menu/tabboulah.jpg', 8.00),
(35, 'Babghanouj', 'A classic grilled eggplant dip', 'appetizers', 'assets/images/menu/babghanouj.jpg', 8.00),
(36, 'Arabic salad', 'Mix vegetable and Sumak a flowering herb with a distinctive taste to this salad', 'appetizers', 'assets/images/menu/arabic_salad.jpg', 8.00),
(37, 'Grape Leaves Stuffed', 'Vine leaves rolls with stuffed rice, tomato and olive oil', 'appetizers', 'assets/images/menu/grape_leaves_stuffed.jpg', 6.00),
(38, 'Yogurt Cucumber Sala', 'Diced cucumber,mixed with chopped mint in a refreshing fresh yogurt dressing', 'appetizers', 'assets/images/menu/yogurt_cucumber_salad.jpg', 6.00),
(39, 'Cheese Sahawiq', 'No description', 'appetizers', 'assets/images/menu/cheese_sahawiq.jpg', 6.00),
(40, 'Garlic Sauce', 'No description', 'appetizers', 'assets/images/menu/garlic_sauce.jpg', 2.00),
(154, 'Lamb Mandy', 'Lamb cooked in the Taboon underground oven at 200 C for three hours, so that the steam coal as as the main factor in the maturation of lamb and rice. Served with special chilli sauce', 'main-dishes', 'assets/images/menu/lamb_mandy.jpg', 24.00),
(155, 'Chicken Mandy', 'Chicken cooked in the Taboon (underground oven) at 200 C for three hours, so that the steam coal as as the main factor in the maturation of chicken and rice. Served with special chilli sauce', 'main-dishes', 'assets/images/menu/chicken-mandy.jpg', 18.00),
(156, 'Lamb Haneeth', 'Specific parts of lamb, mix with spices roll into aluminum foil and coocked in a brick oven at 150C for two hours.Served with mandy rice and special chilli sauce', 'main-dishes', 'assets/images/menu/lamb_haneeth.jpg', 25.00),
(157, 'Lamb Kabsa', 'Lamb cooked and boiled with rice and mix of spices and vegetables. Served with mix vegetables and special chilli sauce', 'main-dishes', 'assets/images/menu/lamb_kabsa.jpg', 18.00),
(158, 'Chicken Kabsa', 'Chicken cooked and boiled with rice and mix of spices and vegetables. Served with mix vegetables and special chilli sauce', 'main-dishes', 'assets/images/menu/chicken-kabsa.jpg', 14.00),
(159, 'Lamb Madghout', 'Lamb and rice cooked in a pressure cooker with mix of Wadi Hadramawt''s special spices, extra tomato sauce. Served with special chilli sauce', 'main-dishes', 'assets/images/menu/lamb_madghout.jpg', 48.00),
(160, 'Chicken Madghout', 'Chicken and rice cooked in a pressure cooker with mix of Wadi Hadramawt''s special spices, extra tomato sauce. Served with special chilli sauce', 'main-dishes', 'assets/images/menu/chicken-madghout.jpg', 39.00),
(161, 'Lamb Maqluba', 'Lamb and rice cooked with slices of eggplant, carrots, potato, cinnamon stick and lamb gravy. Served with yogurt', 'main-dishes', 'assets/images/menu/lamb_maqluba.jpg', 20.00),
(162, 'Chicken Maqluba', 'Chicken and rice cooked with slices of eggplant, carrots, potato, cinnamon stick and lamb gravy. Served with yogurt', 'main-dishes', 'assets/images/menu/chicken-maqluba.jpg', 18.00),
(163, 'Lamb Buram', 'Lamb soup with Mandy rice', 'main-dishes', 'assets/images/menu/lamb_buram.jpg', 24.00),
(164, 'Spaghetti Chicken', 'Llamb soup with Mandy rice', 'main-dishes', 'assets/images/menu/spaghetti_chicken.jpg', 10.00),
(165, 'Spaghetti Lamb', 'null', 'main-dishes', 'assets/images/menu/spaghetti_lamb.jpg', 10.00),
(166, 'Mandy Rice', 'null', 'main-dishes', 'assets/images/menu/mandy_rice.jpg', 6.00),
(167, 'Madghout Rice', '', 'main-dishes', 'assets/images/menu/madghout_rice.jpg', 6.00),
(168, 'Quarter Lamb Mandy', 'Lamb Mandy with rice for 12 people', 'main-dishes', 'assets/images/menu/quarter_lamb_mandy.jpg', 250.00),
(169, 'Oqda Lamb', 'Lamb meat, onion and garlic fried with tomato puree', 'hot-dishes', 'assets/images/menu/oqda_lamb.jpg', 15.00),
(170, 'Oqda Chicken', 'Chicken meat, onion and garlic fried with tomato puree', 'hot-dishes', 'assets/images/menu/oqda_chicken.jpg', 13.00),
(171, 'Fried Lamb Meat', 'null', 'hot-dishes', 'assets/images/menu/fried_lamb_meat.jpg', 17.00),
(172, 'Fried Lamb Liver', 'null', 'hot-dishes', 'assets/images/menu/fried_lamb_liver.jpg', 14.00),
(173, 'Lady Fingers with Lamb', 'null', 'hot-dishes', 'assets/images/menu/lady_fingers_with_lamb.jpg', 16.00),
(174, 'Gravy', 'Tomato, onion, carrot and potato', 'hot-dishes', 'assets/images/menu/gravy.jpg', 4.00),
(175, 'Molokhia', 'null', 'hot-dishes', 'assets/images/menu/molokhia.jpg', 10.00),
(176, 'Molokhia with Chicken', 'Molokhia, onion, garlic and chicken in stew', 'hot-dishes', 'assets/images/menu/molokhia_with_chicken.jpg', 13.00),
(177, 'Shakshouka Egg', 'Poached or fried eggs cooked in tomato, peppers, onions and spices', 'hot-dishes', 'assets/images/menu/shakshouka_egg.jpg', 8.00),
(178, 'Dry White Bean', 'null', 'hot-dishes', 'assets/images/menu/dry-white-bean.jpg', 8.00),
(179, 'Foul Red beans', 'Pattie formed from chickpeas combined with spring onions and deep fried', 'hot-dishes', 'assets/images/menu/foul.jpg', 8.00),
(180, 'Fahsa', 'Shredded of lamb, green pepper and gravy cooked on clay pot and sprinkled with halba powder on top. Served with Arabian bread', 'hot-dishes', 'assets/images/menu/fahsah.jpg', 18.00),
(181, 'Saltah', 'Mix of vegetables, egg, rice and gravy cooked in clay pot and sprinkled with halba powder on top. Served with Arabian bread', 'hot-dishes', 'assets/images/menu/saltah.jpg', 16.00),
(182, 'Kebab Halabee', 'Only the most tender meat is seasoned, marinated with Wadi Hadramawt special sauce, skewered and grilled to juicy perfection', 'barbeque', 'assets/images/menu/kebab_halabee.jpg', 18.00),
(183, 'Kebab Kash Kash', 'Minced tender lamb marinated with mix of spices and grilled to perfection', 'barbeque', 'assets/images/menu/kebab_kash_kash.jpg', 18.00),
(184, 'Lamb Kebab', 'null', 'barbeque', 'assets/images/menu/lamb_kebab.jpg', 18.00),
(185, 'Chicken Kebab', 'null', 'barbeque', 'assets/images/menu/chicken-kebab.jpg', 18.00),
(186, 'Shish Tawooq', 'Juicy boneless chicken breast meat marinated, grilled and served with Wadi Hadramawt special sauce', 'barbeque', 'assets/images/menu/shish_tawooq.jpg', 18.00),
(187, 'Grilled Lamb Cube ', 'Boneless lamb cutlets marinated with a mix of spices and grilled to perfection', 'barbeque', 'assets/images/menu/grilled_lamb_cube.jpg', 18.00),
(188, 'Arayes', 'Minced meat or chicken with onion and tomato stuffed in traditional grilled bread', 'barbeque', 'assets/images/menu/arayes.jpg', 10.00),
(189, 'Grilled Chicken ', 'null', 'barbeque', 'assets/images/menu/grilled_chicken.jpg', 18.00),
(190, 'Mixed Grill', 'null', 'barbeque', 'assets/images/menu/mixed_grill.jpg', 24.00),
(191, 'Mixed Grill Wadi Hadramawt', 'null', 'barbeque', 'assets/images/menu/mixed_grill_wadi-hadramawt .jpg', 30.00),
(192, 'Lamb Kebab Sandwich', 'null', 'sandwich', 'assets/images/menu/lamb_kebab_sandwich.jpg', 8.00),
(193, 'Chicken Kebab Sandwich', 'null', 'sandwich', 'assets/images/menu/chicken-kebab-sandwich.jpg', 8.00),
(194, 'Shish Tawooq Sandwich', 'null', 'sandwich', 'assets/images/menu/shish_tawooq_sandwich.jpg', 8.00),
(195, 'French Fries', 'null', 'sandwich', 'assets/images/menu/french_fries.jpg', 5.00),
(196, 'Roasted Fish', 'null', 'seafood', 'assets/images/menu/roasted_fish.jpg', 27.00),
(197, 'Fried Fish', 'null', 'seafood', 'assets/images/menu/fride_fish.jpg', 23.00),
(198, 'Fride Fish Fillet', 'null', 'seafood', 'assets/images/menu/fride_fish_fillet.jpg', 23.00),
(199, 'Grill Fish Fillet', 'null', 'seafood', 'assets/images/menu/grill_fish_fillet .jpg', 24.00),
(200, 'Oven Baked Fish', 'null', 'seafood', 'assets/images/menu/oven_baked_fish .jpg', 27.00),
(201, 'Grilled Prawns', 'null', 'seafood', 'assets/images/menu/grilled_prawns.jpg', 26.00),
(202, 'Fride Prawns', 'null', 'seafood', 'assets/images/menu/fride_prawns.jpg', 26.00),
(203, 'Taj Hadramawt Mix Seafood Gril', 'null', 'seafood', 'assets/images/menu/taj_hadramawt_mix-seafood_grill.jpg', 55.00),
(204, 'Taj Hadramawt Mix Seafood Frid', 'null', 'seafood', 'assets/images/menu/taj_hadramawt_mix_seafood_fride.jpg', 55.00),
(205, 'Prawns Escalope', 'null', 'seafood', 'assets/images/menu/prawns_escalope.jpg', 27.00),
(206, 'Claypot Prawns ', 'null', 'seafood', 'assets/images/menu/claypot_prawns.jpg', 23.00),
(207, 'Claypot Fish ', 'null', 'seafood', 'assets/images/menu/claypot_fish.jpg', 15.00),
(208, 'Claypot Calamari ', 'null', 'seafood', 'assets/images/menu/claypot_calamari.jpg', 23.00),
(209, 'Fride Calamari ', 'null', 'seafood', 'assets/images/menu/fride_calamari.jpg', 23.00),
(210, 'Taj Hadramawt Masoob', 'null', 'desserts', 'assets/images/menu/taj_hadramawt_masoob.jpg', 10.00),
(211, 'Banana Masoob', 'null', 'desserts', 'assets/images/menu/banana-masoob.jpg', 10.00),
(212, 'Honey Masoob', 'null', 'desserts', 'assets/images/menu/honey_masoob.jpg', 10.00),
(213, 'Dates Masoob', 'null', 'desserts', 'assets/images/menu/dates-masoob.jpg', 10.00),
(214, 'Mixed Fruits Small', 'null', 'desserts', 'assets/images/menu/mixed_fruits_small.jpg', 13.00),
(215, 'Mixed Fruits Large', 'null', 'desserts', 'assets/images/menu/mixed_fruits_large.jpg', 19.00),
(216, 'Mix Desserts', 'null', 'desserts', 'assets/images/menu/mix_desserts.jpg', 13.00),
(217, 'Basbosah', 'null', 'desserts', 'assets/images/menu/basbosah.jpg', 2.00),
(218, 'Baqlawa Rose', 'null', 'desserts', 'assets/images/menu/baqlawa-rose.jpg', 2.00),
(219, 'Baqlawa Pistachio', 'null', 'desserts', 'assets/images/menu/baqlawa-pistachio.jpg', 3.00),
(220, 'Baqlawa Cashew', 'null', 'desserts', 'assets/images/menu/baqlawa-cashew.jpg', 3.00),
(221, 'Ballorieh Pistachio', 'null', 'desserts', 'assets/images/menu/ballorieh-pistachio.jpg', 2.00),
(222, 'Ballorieh Cashew', 'null', 'desserts', 'assets/images/menu/ballorieh-cashew.jpg', 2.00),
(223, 'Sparrow Pistachio', 'null', 'desserts', 'assets/images/menu/sparrow_pistachio.jpg', 2.00),
(224, 'Sparrow Cashew', 'null', 'desserts', 'assets/images/menu/sparrow_cashew.jpg', 2.00),
(225, 'null', 'null', 'null', 'java.util.Hashtable$Enumerator@4beba70b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `i_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `i_total` decimal(10,0) NOT NULL,
  `i_uprice` decimal(10,0) NOT NULL,
  `i_quantity` int(11) NOT NULL,
  `i_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `message` text NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `sender`, `email`, `phone`, `message`, `date`) VALUES
(1, 'Osama', 'osamasamarrai@gmail.com', '01114213006', 'Hello there.. :)', '2017-02-20 12:02:39'),
(7, 'alsamawi', 'osamasamarrai@gmail.com', '01114213006', 'nama saya ', '2017-02-24 13:38:45'),
(8, 'Osama', 'osamasamarrai@gmail.com', '01114213006', 'Hi', '2017-03-04 07:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_contents` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(20) NOT NULL,
  `r_guests` int(11) NOT NULL,
  `r_phone` varchar(11) NOT NULL,
  `r_email` varchar(30) DEFAULT NULL,
  `r_timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`r_id`, `r_name`, `r_guests`, `r_phone`, `r_email`, `r_timestamp`) VALUES
(1, 'Osama', 2, '2222222222', '', '2016-12-25 11:00:00'),
(2, 'Osama', 54, '2222222222', '', '2016-12-29 20:40:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `b_category` (`b_category`);

--
-- Indexes for table `beverage_products`
--
ALTER TABLE `beverage_products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `f_category_4` (`f_category`),
  ADD KEY `f_category` (`f_category`),
  ADD KEY `f_category_2` (`f_category`),
  ADD KEY `f_category_3` (`f_category`);

--
-- Indexes for table `food_products`
--
ALTER TABLE `food_products`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_name_3` (`p_name`),
  ADD KEY `p_name` (`p_name`),
  ADD KEY `p_name_2` (`p_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`i_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `beverage_products`
--
ALTER TABLE `beverage_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `food_products`
--
ALTER TABLE `food_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `i_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `food_products` (`p_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
