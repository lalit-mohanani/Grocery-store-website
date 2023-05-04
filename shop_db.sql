-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 05:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(18, 35, 'head', '1234567890', 'user123@gmail.com', 'cash on delivery', 'flat no. aaa aaa aaa aaa aaa - 2233233', ', Chicken ( 5 ), Litchi ( 1 ), Banana ( 100 )', 9590, '18-Apr-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `in_stock` int(100) DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`, `in_stock`) VALUES
(32, 'Tomato', 'vegitables', 'Lucious tomatoes from Odisha, juicy to the bite.', 50, 'tomato.png', 200),
(33, 'Potato', 'vegitables', 'Starchy and sweet potatoes from Bengal.', 30, 'potato.jpeg', 200),
(34, 'Cabbage', 'vegitables', 'Filled with leafy deliciousness.', 100, 'cabbage.png', 200),
(35, 'Carrot', 'vegitables', 'Gurranted to improve your eyesight.', 60, 'carrot.png', 0),
(36, 'Broccoli', 'vegitables', 'Cauliflower on steroids!!', 80, 'broccoli.png', 200),
(37, 'Cauliflower', 'vegitables', 'Makes your curries delicious.', 70, 'cauliflower.png', 200),
(38, 'Capsicum', 'vegitables', 'Different color comes :)', 150, 'capsicum.png', 200),
(39, 'Watermelon', 'fruits', 'Will quench your thirst in summers.', 30, 'watermelon.png', 200),
(40, 'Blue Grapes', 'fruits', 'Sweet and savoury mouthfulls.', 90, 'blue grapes.png', 200),
(41, 'Green Grapes', 'fruits', 'Eat grapes like a Nawab.', 70, 'green grapes.png', 200),
(42, 'Litchi', 'fruits', 'Juicy white bites.', 90, 'lichi.png', 199),
(43, 'Orange', 'fruits', 'Enjoy the &#34;orange&#34; orange from Nagpur.', 100, 'orange.png', 200),
(44, 'Green Apple', 'fruits', 'Keeps the doctor away.', 100, 'green apple.jpg', 20),
(45, 'Apple', 'fruits', 'Health is wealth.', 200, 'apple.png', 200),
(46, 'Red Pepper', 'vegitables', 'Hotness overloaded.', 10, 'red papper.png', 200),
(47, 'Strawberry', 'fruits', 'Sweet and sour bites.', 150, 'strawberry.png', 200),
(48, 'Banana', 'fruits', 'Longer than yours ;)', 70, 'banana.png', 100),
(49, 'Beef', 'meat', 'Juciest steak ever.', 600, 'beaf steak.png', 200),
(50, 'Catla', 'fish', 'Authentic bengali fish!', 140, 'catla.png', 200),
(51, 'salmon', 'fish', 'Salmon&#39;s in the town!', 400, 'salmon fish.png', 200),
(52, 'Chicken', 'meat', 'Juicy chicks.', 500, 'chicken.png', 0),
(53, 'Chicken Legs', 'meat', 'Juicy legs.', 300, 'chicken leg pieces.png', 150),
(54, 'Oily Fishes', 'fish', 'Oilier than your stomach.', 300, 'oily fishes.png', 250),
(55, 'Onion', 'vegitables', 'Will make you cry for sure.', 50, 'onion.jpg', 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(34, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'pic-1.png'),
(35, 'temp user', 'user123@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'user', 'pic-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
