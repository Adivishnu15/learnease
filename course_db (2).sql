-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 06:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('gEMNXbrZVp5T2J88Ls7N', 'IRHgZDWZuBHFqmLJLZXv', 'zcSvgAgMl3GnzIam5kr0', 'ee6lSlmfGn9X1T4mWyIy', 'EXCELLENT TEACHING', '2025-01-07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('IRHgZDWZuBHFqmLJLZXv', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'Introduction', '\r\nHTML is a markup language that structures web content, enabling the creation of text, images, links, and multimedia for websites.\r\n\r\n\r\n\r\n\r\n\r\n', 'mXbzo0P7oJp8FZYtZbZv.mp4', 'bpEXLFwGVl1Nimq3mnTj.png', '2025-01-07', 'active'),
('yUhlSA3wYoqLLu4gVajI', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'Introduction', 'Ep2', 'xrvJIBm442Pa7bZS4bLc.mp4', 'yC0Bx6fNnKMLMr8v37fO.png', '2025-01-07', 'active'),
('4qL424AIQnI7J8fPQCqx', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP3', 'EP3', 'zX72fGmKzpp1M5TYsKeC.mp4', 'LBbOG6srToXLnF6TqZ9K.png', '2025-01-07', 'active'),
('s7VxiR173kF9scyGA9CI', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP4', 'EP4', 'AnPMF2JC4ynXoRCbgfHz.mp4', 'r5ii3AOWON5zXM3h9Qfk.png', '2025-01-07', 'active'),
('fJvn6eNsA9koAC2b8MYg', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP5', 'EP5', '6C8deDtkhT3xjcBhSvfN.mp4', 'HkEkmYp40xfm9rNO3NL5.png', '2025-01-07', 'active'),
('q7dILYZob9SNKfMCxdEG', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP6', 'EP6', 'm7V1x4yt0kxSEaCcs1WF.mp4', 'ovlzzLluIOeA0AUkGamE.png', '2025-01-07', 'active'),
('hSKYsjpU9VmaLqI05J9N', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP7', 'EP7', 'V1R9ndFvv7G6rsYikFTd.mp4', 'nZ1fLd89Yr8ga5PLzOto.png', '2025-01-07', 'active'),
('fT8VtQXwXwsZRqrScgmZ', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP8', 'EP8', 'CmZ1ttLRx4KQ2Y3gJbOq.mp4', 'N9EjH7Iz7SRxbDIV7AEn.png', '2025-01-07', 'active'),
('4qzCZh7gSFlWpET1A9IY', 'ee6lSlmfGn9X1T4mWyIy', 'ZEaz4xVxF3ZTZJsuXiF5', 'EP9', 'EP9', 'jAJ8qtX9hVjylnjVGw9a.mp4', 'dzjMx1D5wfstToK3kKNr.png', '2025-01-07', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('zcSvgAgMl3GnzIam5kr0', 'ee6lSlmfGn9X1T4mWyIy', 'IRHgZDWZuBHFqmLJLZXv');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('ZEaz4xVxF3ZTZJsuXiF5', 'ee6lSlmfGn9X1T4mWyIy', 'HTML', '\r\nHTML is a markup language that structures web content, enabling the creation of text, images, links, and multimedia for websites.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'RP8fqmkmMXB4ogsb9tPJ.png', '2025-01-07', 'active'),
('suKWqAeYlIZl39dmplbz', 'ee6lSlmfGn9X1T4mWyIy', 'CSS', 'CSS (Cascading Style Sheets) is a stylesheet language used to design and customize websites, controlling layout, colors, fonts, spacing, and responsiveness for enhanced user experiences.', '3dYxb8Yan45LPlsxASXu.png', '2025-01-07', 'active'),
('MNKf5h88acFKhvJF1D7U', 'ee6lSlmfGn9X1T4mWyIy', 'JAVA SCRIPT', 'JavaScript is a versatile programming language enabling interactive web elements, dynamic content, animations, and enhancing user experiences on websites and applications.', '9df3bNOZWsTUcB3xHIo4.png', '2025-01-07', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`, `status`) VALUES
('ee6lSlmfGn9X1T4mWyIy', 'Bhuvi', 'teacher', 'Bhuvi@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'i70DrWT8XHbpqJTOf1r2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(4) NOT NULL DEFAULT 0 COMMENT '1 Active =2 InActive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `status`) VALUES
('zcSvgAgMl3GnzIam5kr0', 'Virat', 'Virat@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'VZzNXrWP0ia3A0OFcvyr.jpg', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
