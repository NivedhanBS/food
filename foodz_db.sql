--
-- Table structure for table `cart_tb`
--

CREATE TABLE `cart_tb` (
  `r_id` bigint NOT NULL,
  `d_id` bigint NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `d_cost` int NOT NULL,
  `cart_quantity` int NOT NULL DEFAULT 1,
  `d_name` varchar(50) NOT NULL,
  `cart_datetime` datetime NOT NULL DEFAULT current_timestamp()
);

--
-- Dumping data for table `cart_tb`
--

INSERT INTO `cart_tb` (`r_id`, `d_id`, `c_email`, `d_cost`, `cart_quantity`, `d_name`, `cart_datetime`) VALUES
(8, 11, 'anoopshetty2004@gmail.com', 300, 6, 'corn pizza', '2024-01-10 08:59:13'),
(8, 12, 'anoopshetty2004@gmail.com', 300, 1, 'veggie pizza', '2024-01-10 08:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `customerlogin_tb`
--

CREATE TABLE `customerlogin_tb` (
  `c_id` int NOT NULL,
  `c_name` varchar(60) NOT NULL,
  `c_phone` varchar(100) NOT NULL,
  `c_preference` varchar(10) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_password` varchar(100) NOT NULL,
  `c_image` varchar(100) NOT NULL
);

--
-- Dumping data for table `customerlogin_tb`
--

INSERT INTO `customerlogin_tb` (`c_id`, `c_name`, `c_phone`, `c_preference`, `c_address`, `c_email`, `c_password`, `c_image`) VALUES
(9, 'Customer2', '2147483647', 'Veg', 'bangalore', 'customer2@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Customer/image/raphael-lovaski-2sEgCoO9dkY-unsplash.jpg'),
(10, 'Customer3', '2147483647', 'Veg', 'mysore', 'customer3@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Customer/image/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
(11, 'Customer4', '2147483647', 'Veg', 'bangalore', 'customer4@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Customer/image/yasin-pixel-zrJO_KVWZZw-unsplash.jpg'),
(16, 'Swara', '2147483647', 'Veg', 'Indira', 'Chuttan@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Customer/image/2024-02-17T16-50-35.291Z'),
(47, 'Anoop', '2147483647', 'Veg', '3/335', 'anoopshetty2004@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', '');

-- --------------------------------------------------------

--
-- Table structure for table `dishes_tb`
--

CREATE TABLE `dishes_tb` (
  `d_id` int NOT NULL,
  `rest_id` int NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `d_cost` bigint NOT NULL,
  `d_type` text NOT NULL,
  `d_image` varchar(200) NOT NULL,
  `d_totalRatings` int NOT NULL DEFAULT 0,
  `d_totalCustomers` int NOT NULL DEFAULT 0
);

--
-- Dumping data for table `dishes_tb`
--

INSERT INTO `dishes_tb` (`d_id`, `rest_id`, `d_name`, `d_cost`, `d_type`, `d_image`, `d_totalRatings`, `d_totalCustomers`) VALUES
(11, 8, 'corn pizza', 300, 'Veg', 'Restaurants/image/pexels-cats-coming-367915.jpg', 20, 5),
(12, 8, 'veggie pizza', 300, 'Veg', 'Restaurants/image/pexels-daria-shevtsova-1260968.jpg', 89, 34),
(13, 8, 'pepperoni pizza', 400, 'Non Veg', 'Restaurants/image/pexels-polina-tankilevitch-4109111.jpg', 133, 42),
(14, 9, 'chole bhature', 100, 'Veg', 'Restaurants/image/_650x_2019121214325859.jpg', 243, 93),
(16, 9, 'pav bhaji', 150, 'Veg', 'Restaurants/image/pav.png', 186, 59),
(17, 10, 'idli sambhar', 90, 'Veg', 'Restaurants/image/idli.jpg', 96, 33),
(18, 10, 'masala dosa', 150, 'Veg', 'Restaurants/image/Masala-Dosa-500x500.jpg', 22, 8),
(19, 10, 'uttapam', 120, 'Veg', 'Restaurants/image/uttapam.jpg', 116, 39),
(20, 11, 'kadhai paneer', 250, 'Veg', 'Restaurants/image/kadai-paneer-1-500x500.jpg', 405, 90),
(21, 11, 'naan', 60, 'Veg', 'Restaurants/image/naan-recipe-2.jpg', 23, 7),
(22, 11, 'palak paneer', 230, 'Veg', 'Restaurants/image/Palak-Paneer-4x5-LOWRES.jpg', 40, 12),
(23, 12, 'mix veg', 200, 'Veg', 'Restaurants/image/mix veg.jpg', 51, 16),
(24, 12, 'tandoori roti', 25, 'Veg', 'Restaurants/image/Tandoori-roti-5.jpg', 23, 6),
(25, 12, 'tawa roti', 15, 'Veg', 'Restaurants/image/tawa.jpg', 47, 15),
(26, 13, 'butter chicken', 350, 'Non Veg', 'Restaurants/image/butter chicken.jpg', 0, 0),
(27, 13, 'mutton rogan josh', 400, 'Non Veg', 'Restaurants/image/Mutton-Rogan-Josh.jpg', 47, 15),
(28, 13, 'tandoori chicken', 370, 'Non Veg', 'Restaurants/image/Tandoori-Chicken-1-3.jpg', 47, 17),
(29, 14, 'chicken curry', 350, 'Non Veg', 'Restaurants/image/chicken-curry-recipe.jpg', 9, 2),
(30, 14, 'mutton curry', 370, 'Non Veg', 'Restaurants/image/Kolhapuri-mutton-curry.jpg', 19, 7),
(31, 14, 'paneer lababdar', 250, 'Veg', 'Restaurants/image/Paneer-Lababdar-3.jpg', 22, 7),
(51, 10, 'kadhai paneer', 310, 'Veg', 'Restaurants/image/kadai-paneer-1-500x500.jpg', 22, 7);

-- --------------------------------------------------------

--
-- Table structure for table `order_tb`
--

CREATE TABLE `order_tb` (
  `od_id` int NOT NULL,
  `o_id` varchar(100) NOT NULL,
  `d_id` int NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `d_quantity` int NOT NULL,
  `r_id` int NOT NULL,
  `o_status` enum('Order Confirmation','Preparing food','On its way','Delievered','Canceled') NOT NULL DEFAULT 'Order Confirmation',
  `o_payment` int NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_address` varchar(500) NOT NULL,
  `c_latitude` varchar(30) NOT NULL,
  `c_longitude` varchar(30) NOT NULL,
  `o_datetime` datetime NOT NULL DEFAULT current_timestamp()
);

--
-- Dumping data for table `order_tb`
--

INSERT INTO `order_tb` (`od_id`, `o_id`, `d_id`, `d_name`, `d_quantity`, `r_id`, `o_status`, `o_payment`, `c_email`, `c_address`, `c_latitude`, `c_longitude`, `o_datetime`) VALUES
(59, '5f9c7210-43ea-11ed-9faf-63153f375fe9', 12, 'veggie pizza', 1, 8, 'Delievered', 300, 'anoopshetty2004@gmail.com', 'a a, a, a, a, a', '12.295810', '76.639381', '2024-01-04 19:12:22'),
(60, '5f9c7210-43ea-11ed-9faf-63153f375fe9', 13, 'pepperoni pizza', 1, 8, 'Delievered', 400, 'anoopshetty2004@gmail.com', 'a a, a, a, a, a', '12.295810', '76.639381', '2024-01-04 19:12:22'),
(61, '5bb56520-43f0-11ed-8c44-1f9f94416cfd', 18, 'masala dosa', 1, 10, 'Order Confirmation', 150, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-04 19:55:12'),
(62, '5bb56520-43f0-11ed-8c44-1f9f94416cfd', 19, 'uttapam', 1, 10, 'Order Confirmation', 120, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-04 19:55:12'),
(63, '142c7d40-43f2-11ed-8c44-1f9f94416cfd', 21, 'naan', 4, 11, 'Order Confirmation', 240, 'anoopshetty2004@gmail.com', 'D-2313 Sector 4 Indira Nagar, mysore,  Karnataka, India, 226016', '12.289634', '76.629460', '2024-01-04 20:07:31'),
(64, '142c7d40-43f2-11ed-8c44-1f9f94416cfd', 22, 'palak paneer', 2, 11, 'Order Confirmation', 460, 'anoopshetty2004@gmail.com', 'D-2313 Sector 4 Indira Nagar, mysore,  Karnataka, India, 226016', '12.289634', '76.629460', '2024-01-04 20:07:31'),
(65, 'abeebd50-43f2-11ed-8c44-1f9f94416cfd', 16, 'pav bhaji', 1, 9, 'Order Confirmation', 150, 'anoopshetty2004@gmail.com', 'D-2313 Block D Indira Nagar, mysore,  Karnataka, India, 226016', '12.289634', '76.629460', '2024-01-04 20:11:46'),
(66, 'cfca77e0-43f3-11ed-8c44-1f9f94416cfd', 11, 'corn pizza', 1, 8, 'Delievered', 300, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-04 20:19:56'),
(67, 'd98fabe0-455d-11ed-8e0d-4d6e78744c6e', 11, 'corn pizza', 1, 8, 'Canceled', 300, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-06 15:31:30'),
(68, '976cfcf0-46c4-11ed-8c7a-8f85317a427e', 12, 'veggie pizza', 1, 8, 'Canceled', 300, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-08 10:19:28'),
(69, '91f24d20-46c9-11ed-8c7a-8f85317a427e', 11, 'corn pizza', 1, 8, 'Canceled', 300, 'anoopshetty2004@gmail.com', '3/335  Kuvempunagar, mysore , Karnataka, India, 226010', '12.289634', '76.629460', '2024-01-08 10:55:06'),
(70, '9c7e7520-4737-11ed-ae11-5d3466715f17', 12, 'veggie pizza', 1, 8, 'Canceled', 300, 'anoopshetty2004@gmail.com', '3/335 Kuvempunagar, Mysore, Karnataka, India,', '12.289634', '76.629460', '2024-01-09 00:02:49'),
(71, '10891410-479d-11ed-b3af-f90b5afc15e2', 12, 'veggie pizza', 1, 8, 'Delievered', 300, 'anoopshetty2004@gmail.com', 'a a, a, a, a, a', '12.289634', '76.629460', '2024-01-09 12:09:03'),
(72, '7f3b1350-47c9-11ed-8f95-43709ef9d88a', 11, 'corn pizza', 1, 30, 'Delievered', 300, 'anoopshetty2004@gmail.com', 'a aa, a, a, a, a', '12.289634', '76.629460', '2024-01-09 17:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantlogin_tb`
--

CREATE TABLE `restaurantlogin_tb` (
  `rest_id` int NOT NULL,
  `r_name` varchar(50) NOT NULL,
  `r_address` varchar(100) NOT NULL,
  `r_email` varchar(50) NOT NULL,
  `r_password` varchar(100) NOT NULL,
  `r_image` varchar(100) NOT NULL,
  `r_city` varchar(100) NOT NULL,
  `r_totalRatings` int NOT NULL DEFAULT 0,
  `r_totalCustomers` int NOT NULL DEFAULT 0,
  `r_latitude` varchar(30) NOT NULL,
  `r_longitude` varchar(30) NOT NULL
);

--
-- Dumping data for table `restaurantlogin_tb`
--

INSERT INTO `restaurantlogin_tb` (`rest_id`, `r_name`, `r_address`, `r_email`, `r_password`, `r_image`, `r_city`, `r_totalRatings`, `r_totalCustomers`, `r_latitude`, `r_longitude`) VALUES
(8, 'dominos', 'mysore', 'vendor1@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/aleks-marinkovic--dlVOoZSYf0-unsplash.jpg', 'mysore', 9, 2, '12.319427', '76.626322'),
(9, 'vaishnavi', 'mysore', 'rest2@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/pexels-anna-tis-6341164.jpg', 'mysore', 0, 0, '12.322151', '76.631938'),
(10, 'gtr', 'mysore', 'rest3@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/pexels-olya-kobruseva-4676640.jpg', 'mysore', 3, 1, '12.288101', '76.649110'),
(11, 'lemon three', 'mysore', 'rest4@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/pexels-rene-asmussen-1581384.jpg', 'mysore', 0, 0, '12.278746', '76.627844'),
(12, 'bikanervala', 'bangalore', 'rest5@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/pexels-volkan-vardar-3887985.jpg', 'bangalore', 0, 0, '12.971599', '77.594566'),
(13, 'namaste punjab', 'bangalore', 'rest6@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/proriat-hospitality-7fuDHi1CG8s-unsplash.jpg', 'bangalore', 0, 0, '12.932923', '77.623461'),
(14, 'nazeer foods', 'mysore', 'rest7@gmail.com', '$2a$08$PHGcsu6Xx1cZi/YXDCkIue4KQGjCZqmNVavILwkE9PotEYmTZcZ3m', 'Restaurants/image/rod-long-WC7LeX79iEU-unsplash.jpg', 'mysore', 0, 0, '12.308593', '76.665467');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantreview_tb`
--

CREATE TABLE `restaurantreview_tb` (
  `rest_id` int NOT NULL,
  `c_id` int NOT NULL,
  `review` varchar(240) NOT NULL,
  `stars` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
);

--
-- Dumping data for table `restaurantreview_tb`
--

INSERT INTO `restaurantreview_tb` (`rest_id`, `c_id`, `review`, `stars`, `created_at`) VALUES
(8, 16, 'Awesome', 5, '2024-01-03 15:27:57'),
(8, 47, 'Good Food', 4, '2024-01-03 12:20:30'),
(10, 47, 'Good Food', 3, '2024-01-06 15:43:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_tb`
--
ALTER TABLE `cart_tb`
  ADD PRIMARY KEY (`r_id`,`d_id`,`c_email`);

--
-- Indexes for table `customerlogin_tb`
--
ALTER TABLE `customerlogin_tb`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_email` (`c_email`),
  ADD UNIQUE KEY `c_id` (`c_id`);

--
-- Indexes for table `dishes_tb`
--
ALTER TABLE `dishes_tb`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `rest_id_2` (`rest_id`,`d_name`),
  ADD KEY `rest_id` (`rest_id`);

--
-- Indexes for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `restaurantlogin_tb`
--
ALTER TABLE `restaurantlogin_tb`
  ADD PRIMARY KEY (`rest_id`),
  ADD UNIQUE KEY `r_email` (`r_email`);

--
-- Indexes for table `restaurantreview_tb`
--
ALTER TABLE `restaurantreview_tb`
  ADD PRIMARY KEY (`rest_id`,`c_id`),
  ADD KEY `Foreign Key` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerlogin_tb`
--
ALTER TABLE `customerlogin_tb`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `dishes_tb`
--
ALTER TABLE `dishes_tb`
  MODIFY `d_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order_tb`
--
ALTER TABLE `order_tb`
  MODIFY `od_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `restaurantlogin_tb`
--
ALTER TABLE `restaurantlogin_tb`
  MODIFY `rest_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes_tb`
--
ALTER TABLE `dishes_tb`
  ADD CONSTRAINT `rest_id` FOREIGN KEY (`rest_id`) REFERENCES `restaurantlogin_tb` (`rest_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restaurantreview_tb`
--
ALTER TABLE `restaurantreview_tb`
  ADD CONSTRAINT `Foreign Key` FOREIGN KEY (`c_id`) REFERENCES `customerlogin_tb` (`c_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `Foreign Key 2` FOREIGN KEY (`rest_id`) REFERENCES `restaurantlogin_tb` (`rest_id`) ON DELETE CASCADE;
COMMIT;

