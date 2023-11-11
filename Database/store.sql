-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 06:23 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meeting_id` int(10) NOT NULL,
  `meeting_title` varchar(150) NOT NULL,
  `host_email` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meeting_id`, `meeting_title`, `host_email`, `active`) VALUES
(1, 'Leadership', 'Catherine@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_hosts`
--

CREATE TABLE `meeting_hosts` (
  `meeting_id` int(10) NOT NULL,
  `host_email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting_hosts`
--

INSERT INTO `meeting_hosts` (`meeting_id`, `host_email`) VALUES
(1, 'Catherine@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `photo title` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `Image` varchar(255) NOT NULL,
  `license` text NOT NULL,
  `dimension` varchar(150) NOT NULL,
  `format` varchar(15) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `tag_id` int(250) NOT NULL,
  `views` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo title`, `date`, `Image`, `license`, `dimension`, `format`, `active`, `tag_id`, `views`) VALUES
(1, 'clocks', '2023-11-01', 'img-03.jpg', ' Authentic Brands Group', '420 x 236', 'jpg', 1, 11, 12.3254),
(2, 'plants', '2023-10-04', 'img-04.jpg', ' Hasbro', '420 x 236', 'jpg', 1, 1, 21.4565),
(3, 'morning', '2023-10-14', 'img-05.jpg', ' NBCUniversal/Universal Products & Experiences', '420 x 236', 'jpg', 1, 5, 21.3553),
(4, 'pinky', '2023-10-25', 'img-06.jpg', ' NBCUniversal/Universal Products & Experiences', '420 x 236', 'jpg', 1, 11, 45.4356),
(5, 'hangers', '2023-11-15', 'img-01.jpg', ' Mattel', '420 x 236', 'jpg', 1, 11, 52.3434),
(6, 'perfumes', '2023-10-01', 'img-02.jpg', ' Authentic Brands Group', '420 x 236', 'jpg', 1, 11, 12.4565),
(7, 'bus', '2023-12-13', 'img-07.jpg', ' The Walt Disney Company', '420 x 236', 'jpg', 1, 9, 12.546),
(8, 'new york', '2023-10-07', 'img-08.jpg', ' Authentic Brands Group', '420 x 236', 'jpg', 1, 8, 12.456),
(9, 'abstract', '2023-11-04', 'img-09.jpg', ' Hasbro', '420 x 236', 'jpg', 1, 9, 123.546),
(10, 'flowers', '2023-08-24', 'img-10.jpg', ' Dotdash Meredith', '420 x 236', 'jpg', 1, 1, 12.234),
(11, 'rose', '2023-10-05', 'img-11.jpg', ' Public Domain', '420 x 236', 'jpg', 1, 1, 12.456),
(12, 'rocki', '2023-10-03', 'img-12.jpg', ' Public Domain', '420 x 236', 'jpg', 1, 9, 12.678),
(13, 'boat', '2023-10-09', 'img-13.jpg', ' Public Domain', '420 x 236', 'jpg', 1, 8, 12.989),
(14, 'sea', '2023-10-27', 'img-14.jpg', ' Public Domain', '420 x 236', 'jpg', 1, 5, 13.087),
(15, 'turtle', '2023-10-10', 'img-15.jpg', ' Public Domain', '420 x 236', 'jpg', 1, 3, 12.67),
(16, 'peace', '2023-10-04', 'img-16.jpg', 'Royalty Free License (RF)', '420 x 236', 'jpg', 1, 1, 1256.67),
(17, 'blond girl', '2023-02-24', 'blond girl.jpeg', ' Royalty Free License (RF)', '736 x 919', 'jpeg', 1, 7, 12.678),
(18, 'coconut', '2023-10-04', 'coconut.jpeg', ' Public Domain', '499 x 750', 'jpeg', 1, 10, 12.656),
(19, 'notebook', '2023-10-01', 'notebook.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 4, 12.7778),
(20, 'Les montages', '2023-10-04', 'Les montages .jpeg', ' Public Domain', '736 x 913', 'jpeg', 0, 9, 16.7878),
(21, 'new born', '2023-02-13', 'Newborn.jpeg', ' Rights Managed (RM) License', '713 x 713', 'jpeg', 1, 2, 16.234),
(22, ' Coffee', '2023-10-02', 'Coffee.jpeg', '', '736 x 919', 'jpeg', 1, 4, 16.568),
(23, 'My Small World', '2023-10-18', 'My Small World.jpeg', ' Royalty Free Extended License', '735 x 735', 'jpeg', 1, 9, 14.5656),
(24, 'Cranberry Sauce', '2023-10-03', 'Cranberry Sauce.jpeg', ' Public Domain', '600 x 600', 'jpeg', 1, 10, 22.5688),
(25, ' sea glass', '2023-10-01', 'sea glass.jpeg', ' Public Domain', '736 x 736', 'jpeg', 1, 5, 33.566),
(26, ' glasses', '2023-03-12', 'glasses.jpeg', ' Royalty Free License (RF)', '633 x 600', 'jpeg', 1, 6, 55.786),
(27, 'Autumn', '2023-09-12', 'Autumn .jpeg', ' Royalty Free Extended License', '736 x 736', 'jpeg', 1, 8, 8.585),
(28, 'o r a n g e', '2023-06-18', 'o r a n g e .jpeg', ' Royalty Free Extended License', '564 x 564', 'jpeg', 1, 1, 75.55),
(29, 'pizza', '2023-07-10', 'pizza.jpeg', ' Public Domain\r\n', '736 x 736', 'jpeg', 1, 10, 24.758),
(30, 'Bobby', '2023-10-05', 'Bobby.jpeg', ' Public Domain\r\n', '736 x 735', 'jpeg', 1, 3, 22.68),
(31, 'blue roses', '2023-10-02', 'blue roses.jpeg', ' Public Domain', '640 x 640', 'jpeg', 1, 1, 43.575),
(32, 'books', '2023-08-17', 'Inspirations .jpeg', ' Public Domain\r\n', '500 x 500', 'jpeg', 1, 4, 19.5767),
(33, 'bike', '2023-01-18', 'bike .jpeg', ' Public Domain\r\n', '600 x 900', 'jpeg', 1, 8, 17.788),
(34, ' Coconut Yogurt', '2023-10-03', 'Coconut Yogurt.jpeg', ' Editorial Use License\r\n', '736 x 1104', 'jpeg', 1, 10, 16.657),
(35, 'Wonderful Flower', '2023-10-09', 'Wonderful Flower.jpeg', ' Creative Commons License', '736 x 1104', 'jpeg', 1, 1, 14.7868),
(36, 'Fried Idli', '2023-10-03', 'Fried Idli.jpeg', ' Public Domain', '650 x 951', 'jpeg', 1, 10, 12.7687),
(37, ' Baby cat', '2023-10-01', 'Baby cat.jpeg', ' Editorial Use License\r\n', '500 x 676', 'jpeg', 1, 3, 11.7788),
(38, 'palestine', '2023-10-09', 'palestine.jpeg', ' Public Domain', '675 x 1200', 'jpeg', 1, 6, 11.7868),
(39, 'sunrise', '2023-08-28', 'Sunrise .jpeg', ' Creative Commons License', '736 x 981', 'jpeg', 1, 5, 11.5667),
(40, 'deer', '2023-10-02', 'deer.jpeg', ' Royalty Free License (RF)\r\n', '640 x 800', 'jpeg', 1, 3, 11.5466),
(41, ' les coulisses', '2023-07-24', 'les coulisses .jpeg', ' Creative Commons License', '736 x 919', 'jpeg', 1, 7, 11.3435),
(42, 'winter bookwor4', '2023-10-14', 'winter bookworms.jpeg', ' Royalty Free License (RF)\r\n', '575 x 682', 'jpeg', 1, 4, 11.5466),
(43, 'dreams', '2023-09-21', 'Dreams.jpeg', ' Creative Commons License', '700 x 875', 'jpeg', 1, 9, 19.457),
(44, 'fall', '2023-10-09', 'Fall .jpeg', ' Public Domain', '736 x 915', 'jpeg', 1, 8, 18.555),
(45, 'travel', '2023-09-17', 'Travel Photos.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 7, 14.554),
(46, 'way', '2023-04-06', 'way.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 8, 12.552),
(47, 'crazy', '2023-08-27', 'crazy.jpeg', '', '735 x 1102', 'jpeg', 1, 7, 11.5775),
(48, ' Chocolate Chip Cookies', '2023-09-27', 'Chocolate Chip Cookies.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 10, 13.688),
(49, 'photoshoot', '2023-09-20', 'Photoshoot .jpeg', ' Public Domain', '735 x 917', 'jpeg', 1, 7, 44.865),
(50, 'cats', '2023-09-13', 'cats.jpeg', ' Public Domain', '605 x 762', 'jpeg', 1, 3, 5.885),
(51, 'camping', '2023-10-15', 'Camping.jpeg', ' Public Domain', '600 x 750', 'jpeg', 1, 8, 13.546),
(52, 'street', '2023-09-27', 'Paris.jpeg', ' Public Domain', '736 x 920', 'jpeg', 1, 8, 14.657),
(53, 'pancackes', '2023-09-21', 'pancackes.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 10, 12.657),
(54, 'Woman Delice', '2023-10-08', 'Woman Delice.jpeg', ' Rights Managed (RM) License', '564 x 846', 'jpeg', 1, 6, 15.546),
(55, 'cute dog', '2023-10-01', 'cute Dog .jpeg', ' Rights Managed (RM) License', '736 x 1102', 'jpeg', 1, 3, 11.6556),
(56, 'night', '2023-08-27', 'night.jpeg', ' Rights Managed (RM) License', '735 x 1101', 'jpeg', 1, 6, 11.5666),
(57, 'socks', '2023-09-06', 'Socks .jpeg', ' Public Domain', '736 x 1177', 'jpeg', 1, 6, 11.567),
(58, 'jungles', '2023-09-13', 'jungles.jpeg', ' Public Domain', '640 x 1012', 'jpeg', 1, 8, 10.7677),
(59, 'winter', '2023-10-06', 'winter!.jpeg', ' Public Domain', '736 x 1177', 'jpeg', 1, 6, 9.6767),
(60, 'chair', '2023-10-08', 'chair.jpeg', ' Public Domain', '736x 1150', 'jpeg', 1, 11, 10.6547),
(61, 'winter', '2023-08-14', 'winter.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 6, 11.5456),
(62, 'evil tower', '2023-10-05', 'evil tower.jpeg', ' Public Domain', '736 x 1103', 'jpeg', 1, 8, 11.546),
(63, 'cinamon', '2023-10-02', 'cinamon.jpeg', ' Public Domain', '700 x 1050', 'jpeg', 1, 10, 20.667),
(64, 'yasmine', '2023-10-02', 'yasmine.jpeg', ' Public Domain', '736 x 1104', 'jpeg', 1, 1, 16.6767);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `category_id` int(250) NOT NULL,
  `category` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`category_id`, `category`) VALUES
(1, 'Flowers'),
(2, 'Babies'),
(3, 'Animals'),
(4, 'Books'),
(5, 'Nature'),
(6, 'Advantage'),
(7, 'Girls'),
(8, 'Outdoor'),
(9, 'Fantasy'),
(10, 'Food'),
(11, 'Home Interior');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fullname` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(150) NOT NULL,
  `registration date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(150) NOT NULL,
  `role` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullname`, `username`, `email`, `active`, `password`, `registration date`, `image`, `role`) VALUES
('Catherine Pinky', 'Catherine Pinky', 'Catherine@gmail.com', 1, '123', '2023-10-23 23:13:24', 'img/people-2.jpg', 'Chief Marketing Officer'),
('George Nelson', 'George Nelson', 'George@gmail.com', 1, '123', '2023-10-23 23:13:25', 'img/people-4.jpg', 'Creative Art Director #C69'),
('Johnny Brief', 'Johnny Brief', 'Johnny@gmail.com', 1, '123', '2023-10-23 23:13:00', 'img/people-3.jpg', 'Accounting Executive'),
('Ryan White', 'Ryan White\r\n', 'Ryan@gmail.com', 1, '123', '2023-10-23 23:13:00', 'img/people-1.jpg', 'Chief Executive Officer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `host_email` (`host_email`);

--
-- Indexes for table `meeting_hosts`
--
ALTER TABLE `meeting_hosts`
  ADD KEY `host_email` (`host_email`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `meeting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `category_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meeting_hosts`
--
ALTER TABLE `meeting_hosts`
  ADD CONSTRAINT `meeting_hosts_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`meeting_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meeting_hosts_ibfk_2` FOREIGN KEY (`host_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
