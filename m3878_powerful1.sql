-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql2.serv00.com
-- Generation Time: Apr 20, 2024 at 08:24 PM
-- Server version: 8.0.35
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m3878_powerful1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `admin_id` int NOT NULL,
  `action` varchar(60) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_id`, `action`, `time`) VALUES
(1, 1, 'Banned user2 for 0 minutes', '0000-00-00 00:00:00'),
(2, 1, 'Banned user3 for 0 minutes', '0000-00-00 00:00:00'),
(3, 3, 'Banned user2 for 0 minutes', '0000-00-00 00:00:00'),
(4, 5, 'Banned user2 for 0 minutes', '0000-00-00 00:00:00'),
(5, 5, 'Granted user1 item 3', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `aeo_table`
--

CREATE TABLE `aeo_table` (
  `winnerip` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int NOT NULL,
  `alert` varchar(225) NOT NULL,
  `textcolor` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `type` enum('warning','success','error') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'warning'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `user_id` int NOT NULL,
  `head_color` varchar(6) NOT NULL,
  `torso_color` varchar(6) NOT NULL,
  `right_arm_color` varchar(6) NOT NULL,
  `left_arm_color` varchar(6) NOT NULL,
  `right_leg_color` varchar(6) NOT NULL,
  `left_leg_color` varchar(6) NOT NULL,
  `face` int NOT NULL DEFAULT '0',
  `shirt` int NOT NULL DEFAULT '0',
  `pants` int NOT NULL DEFAULT '0',
  `tshirt` int NOT NULL DEFAULT '0',
  `hat1` int NOT NULL DEFAULT '0',
  `hat2` int NOT NULL DEFAULT '0',
  `hat3` int NOT NULL DEFAULT '0',
  `hat4` int NOT NULL DEFAULT '0',
  `hat5` int NOT NULL DEFAULT '0',
  `tool` int NOT NULL DEFAULT '0',
  `head` int NOT NULL DEFAULT '0',
  `cache` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`user_id`, `head_color`, `torso_color`, `right_arm_color`, `left_arm_color`, `right_leg_color`, `left_leg_color`, `face`, `shirt`, `pants`, `tshirt`, `hat1`, `hat2`, `hat3`, `hat4`, `hat5`, `tool`, `head`, `cache`) VALUES
(1, 'f3b700', '3292d3', 'f3b700', 'f3b700', '76603f', '76603f', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1433134277),
(2, 'f3b700', '3292d3', 'f3b700', 'f3b700', '1c4399', '1c4399', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83696176),
(3, 'f3b700', 'e58700', 'f3b700', 'f3b700', '76603f', '76603f', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1902622349),
(4, 'f3b700', '85ad00', 'f3b700', 'f3b700', '1d6a19', '1d6a19', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 475924343),
(5, 'f3b700', 'd34a05', 'f3b700', 'f3b700', '1c4399', '1c4399', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1822207413);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `category` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beta_buy`
--

CREATE TABLE `beta_buy` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `gross` decimal(5,2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beta_users`
--

CREATE TABLE `beta_users` (
  `id` int NOT NULL,
  `username` varchar(26) NOT NULL,
  `usernameL` varchar(100) NOT NULL,
  `password` varchar(70) NOT NULL,
  `IP` varchar(46) NOT NULL,
  `birth` date NOT NULL,
  `gender` enum('male','female','hidden') NOT NULL DEFAULT 'hidden',
  `pronouns` enum('she/her','he/him','they/them') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `last_online` datetime NOT NULL,
  `daily_bits` datetime NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `views` int NOT NULL,
  `bucks` int NOT NULL DEFAULT '1',
  `bits` int NOT NULL DEFAULT '10',
  `primary_group` int DEFAULT '-1',
  `power` int NOT NULL DEFAULT '0',
  `avatar_id` int NOT NULL,
  `unique_key` varchar(20) NOT NULL,
  `theme` int NOT NULL,
  `displayname` varchar(26) NOT NULL,
  `invite` int NOT NULL,
  `verifiedshopdev` int NOT NULL,
  `followers` int NOT NULL,
  `jackpot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beta_users`
--

INSERT INTO `beta_users` (`id`, `username`, `usernameL`, `password`, `IP`, `birth`, `gender`, `pronouns`, `date`, `last_online`, `daily_bits`, `description`, `views`, `bucks`, `bits`, `primary_group`, `power`, `avatar_id`, `unique_key`, `theme`, `displayname`, `invite`, `verifiedshopdev`, `followers`, `jackpot`) VALUES
(1, 'robin', 'robin', '$2y$10$tOkRUpVFd4oIHmWAbv.4Hexr8FErd7OR/HqKPhwvB/7q0LGXiJJeS', '208.59.154.189', '0000-00-00', 'hidden', NULL, '2024-04-20', '2024-04-20 16:29:54', '2024-04-20 00:00:00', 'Hi, my Name Is Robin Im The Owner Of The Site!', 31, 100000, 100000, -1, 100000, 3, 'e6ef28b9e55dd9c2fdb2', 4, '', 0, 0, 0, 0),
(2, 'RobinRec', 'robinrec', '$2y$10$a1/GDniRANXOoVEAA/KfZ.ymTo2mxpx3LL8LaD54OAWqfL4Z4Zp3W', '208.59.154.189', '0000-00-00', '', NULL, '2024-04-20', '2024-04-20 04:58:56', '2024-04-20 00:00:00', '', 12, 1, 10, -1, 0, 2, 'b093f502df56d681d064', 0, '', 0, 0, 0, 0),
(3, 'Zenix', 'zenix', '$2y$10$zYrkHTXoXEuj6Ad/urkepuXkyYrS4RpE2mtLhPRA.cHiQtZC846re', '176.215.237.135', '0000-00-00', 'hidden', NULL, '2024-04-20', '2024-04-20 16:29:11', '2024-04-20 00:00:00', 'Im Zenix\r\nBricktip Administrator\r\nIf you have any issues, please contact support\r\n', 16, 1, 10, -1, 1000, 4, 'cb7d96b979cecea57ef4', 0, '', 0, 0, 0, 0),
(4, 'integrity', 'integrity', '$2y$10$MqXtVIlGyVciPSG3iK045.SGv4t/CMwN.v6BYYCgAqPVQ/wbzmju2', '68.56.179.249', '0000-00-00', '', NULL, '2024-04-20', '2024-04-20 06:32:55', '2024-04-20 00:00:00', '', 15, 1, 10, -1, 0, 8, '0a505dbc0c2356d6b1af', 0, '', 0, 0, 2, 0),
(5, 'Shadow', 'Shadow', '$2y$10$1gzO3.VvNy8cWTHc8lwAXO1vWwue0qHX0.Mduk11YRLKkPVdNe8V6', '108.36.209.113', '0000-00-00', '', NULL, '2024-04-20', '2024-04-20 15:39:27', '2024-04-20 00:00:00', '', 12, 89999250, 8000000, -1, 2147483647, 7, '8bab7db05b6cb73d2596', 0, '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `information` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `author_id` int NOT NULL,
  `pinned` int NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL,
  `creation` date DEFAULT NULL,
  `background` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `clans`
--

CREATE TABLE `clans` (
  `id` int NOT NULL,
  `owner_id` int NOT NULL,
  `name` varchar(26) NOT NULL,
  `tag` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `members` int NOT NULL,
  `approved` enum('yes','no','declined') NOT NULL DEFAULT 'no',
  `funds` int NOT NULL,
  `verified` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clans_members`
--

CREATE TABLE `clans_members` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rank` int NOT NULL DEFAULT '1',
  `status` enum('in','out','banned') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clans_ranks`
--

CREATE TABLE `clans_ranks` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `power` int NOT NULL,
  `name` varchar(26) NOT NULL,
  `perm_ranks` enum('yes','no') NOT NULL,
  `perm_posts` enum('yes','no') NOT NULL,
  `perm_members` enum('yes','no') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clans_walls`
--

CREATE TABLE `clans_walls` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `owner_id` int NOT NULL,
  `post` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `type` enum('pinned','normal','deleted') NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crate`
--

CREATE TABLE `crate` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL,
  `serial` int NOT NULL DEFAULT '0',
  `payment` enum('bits','bucks') NOT NULL DEFAULT 'bits',
  `price` int NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `own` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crate`
--

INSERT INTO `crate` (`id`, `user_id`, `item_id`, `serial`, `payment`, `price`, `date`, `own`) VALUES
(1, 1, 0, 1, 'bits', 0, '2024-04-20 04:50:20', 'yes'),
(2, 2, 0, 2, 'bits', 0, '2024-04-20 04:55:27', 'yes'),
(3, 3, 0, 3, 'bits', 0, '2024-04-20 05:17:39', 'yes'),
(4, 4, 0, 4, 'bits', 0, '2024-04-20 06:11:02', 'yes'),
(5, 5, 0, 5, 'bits', 0, '2024-04-20 14:42:38', 'yes'),
(6, 5, 3, 1, 'bits', 0, '2024-04-20 15:28:37', 'yes'),
(7, 1, 3, 2, 'bits', 0, '2024-04-20 15:32:31', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `verified` enum('yes','no') NOT NULL DEFAULT 'no',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `user_id`, `email`, `verified`, `date`) VALUES
(1, 1, 'robinkamdems@gmail.com', 'no', '2024-04-20 04:50:20'),
(2, 2, 'robinkamdems@gmail.com', 'no', '2024-04-20 04:55:27'),
(3, 3, 'aa@gmail.com', 'no', '2024-04-20 05:17:39'),
(4, 4, 'somebodyisnotcool97@gmail.com', 'no', '2024-04-20 06:11:02'),
(5, 5, 'masonfagwfa@gmail.com', 'no', '2024-04-20 14:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `forum_banners`
--

CREATE TABLE `forum_banners` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_boards`
--

CREATE TABLE `forum_boards` (
  `id` int NOT NULL,
  `name` varchar(26) NOT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int NOT NULL,
  `author_id` int NOT NULL,
  `thread_id` int NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_threads`
--

CREATE TABLE `forum_threads` (
  `id` int NOT NULL,
  `author_id` int NOT NULL,
  `board_id` int NOT NULL,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `pinned` enum('yes','no') NOT NULL DEFAULT 'no',
  `deleted` enum('yes','no') NOT NULL DEFAULT 'no',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int NOT NULL,
  `latest_post` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int NOT NULL,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `status` enum('pending','accepted','declined') NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `from_id`, `to_id`, `status`) VALUES
(1, 1, 2, 'accepted'),
(2, 3, 4, 'pending'),
(3, 5, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `playing` int NOT NULL DEFAULT '0',
  `visits` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(15) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `active` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `type` enum('hat','shirt') NOT NULL,
  `robux` int NOT NULL,
  `tickets` int NOT NULL,
  `method` enum('free','both','robux','tickets','offsale') NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_comments`
--

CREATE TABLE `item_comments` (
  `id` int NOT NULL,
  `author_id` int NOT NULL,
  `item_id` int NOT NULL,
  `comment` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `uploaded` enum('Yes','No') NOT NULL,
  `bits` int NOT NULL DEFAULT '-1',
  `bucks` int NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `action`, `date`) VALUES
(1, 'User 1 logged in from 0', '2024-03-24 20:06:15'),
(2, 'User 1 logged in from 0', '2024-03-25 00:33:02'),
(3, 'User 1 logged in from 0', '2024-03-25 00:34:52'),
(4, 'User 1 logged in from 0', '2024-03-25 15:44:20'),
(5, 'User 1 logged in from 0', '2024-04-20 04:56:44'),
(6, 'User 2 logged in from 0', '2024-04-20 04:58:46'),
(7, 'User 1 logged in from 0', '2024-04-20 04:59:36'),
(8, 'User 3 logged in from 0', '2024-04-20 09:57:38'),
(9, 'User 3 logged in from 0', '2024-04-20 12:53:05'),
(10, 'User 5 logged in from 0', '2024-04-20 15:27:08'),
(11, 'User 1 logged in from 0', '2024-04-20 16:08:25'),
(12, 'User 3 logged in from 0', '2024-04-20 16:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `membership` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `length` int NOT NULL,
  `active` enum('yes','no') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership_values`
--

CREATE TABLE `membership_values` (
  `value` int NOT NULL,
  `name` varchar(12) NOT NULL,
  `daily_bucks` int NOT NULL,
  `sets` int NOT NULL,
  `items` int NOT NULL,
  `create_clans` int NOT NULL,
  `join_clans` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `author_id` varchar(26) NOT NULL,
  `recipient_id` int NOT NULL,
  `date` date NOT NULL,
  `title` varchar(52) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `read` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `author_id`, `recipient_id`, `date`, `title`, `message`, `read`) VALUES
(1, '1', 1, '2024-04-20', 'Welcome to SAU!', 'Hello there, robin!\n\nWelcome to SAU, we\'re glad to have you here. We hope you have a wonderful time, but to make sure you can make the most here, we ask that you brush up on a few of our guidelines.\n\nHere are some basic rules to get you settled in with the crowd! If you\'re unsure about anything, then you can always take a look at our Terms of Service, which will always be situated at the footer of each page!\n\nThanks for stopping by,\nEpic ', 0),
(2, '1', 2, '2024-04-20', 'Welcome to SAU!', 'Hello there, RobinRec!\n\nWelcome to SAU, we\'re glad to have you here. We hope you have a wonderful time, but to make sure you can make the most here, we ask that you brush up on a few of our guidelines.\n\nHere are some basic rules to get you settled in with the crowd! If you\'re unsure about anything, then you can always take a look at our Terms of Service, which will always be situated at the footer of each page!\n\nThanks for stopping by,\nEpic ', 0),
(3, '1', 3, '2024-04-20', 'Welcome to SAU!', 'Hello there, Zenix!\n\nWelcome to SAU, we\'re glad to have you here. We hope you have a wonderful time, but to make sure you can make the most here, we ask that you brush up on a few of our guidelines.\n\nHere are some basic rules to get you settled in with the crowd! If you\'re unsure about anything, then you can always take a look at our Terms of Service, which will always be situated at the footer of each page!\n\nThanks for stopping by,\nEpic ', 1),
(4, '1', 4, '2024-04-20', 'Welcome to SAU!', 'Hello there, integrity!\n\nWelcome to SAU, we\'re glad to have you here. We hope you have a wonderful time, but to make sure you can make the most here, we ask that you brush up on a few of our guidelines.\n\nHere are some basic rules to get you settled in with the crowd! If you\'re unsure about anything, then you can always take a look at our Terms of Service, which will always be situated at the footer of each page!\n\nThanks for stopping by,\nEpic ', 0),
(5, '1', 5, '2024-04-20', 'Welcome to SAU!', 'Hello there, Shadow!\n\nWelcome to SAU, we\'re glad to have you here. We hope you have a wonderful time, but to make sure you can make the most here, we ask that you brush up on a few of our guidelines.\n\nHere are some basic rules to get you settled in with the crowd! If you\'re unsure about anything, then you can always take a look at our Terms of Service, which will always be situated at the footer of each page!\n\nThanks for stopping by,\nEpic ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `featured_game_id` varchar(1) NOT NULL,
  `alert` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `moderation`
--

CREATE TABLE `moderation` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `reason` enum('Excessive or inappropriate use of profanity','Inappropriate/adult content','Requesting or giving private information','Engaging in third party/offsite deals','Harassing/bullying other users','Exploiting/scamming other users','Stolen account','Phishing/hacking/trading accounts','Other') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_note` text NOT NULL,
  `issued` datetime NOT NULL,
  `length` int NOT NULL,
  `active` enum('yes','no') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moderation`
--

INSERT INTO `moderation` (`id`, `user_id`, `admin_id`, `reason`, `admin_note`, `issued`, `length`, `active`) VALUES
(1, 2, 1, 'Excessive or inappropriate use of profanity', 'Glad', '2024-04-20 04:57:28', 0, 'no'),
(2, 3, 1, 'Excessive or inappropriate use of profanity', 'Testing Ban', '2024-04-20 06:01:13', 0, 'no'),
(3, 2, 3, 'Phishing/hacking/trading accounts', 'Do not violate our Term of Use (im jus testing yk)', '2024-04-20 06:08:05', 0, 'yes'),
(4, 2, 5, 'Excessive or inappropriate use of profanity', 'Wow ', '2024-04-20 14:46:26', 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `code` varchar(255) NOT NULL,
  `itemid` varchar(100) NOT NULL DEFAULT '0',
  `uses` int NOT NULL DEFAULT '-1',
  `used` int NOT NULL DEFAULT '0',
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `expirationdate` timestamp NOT NULL DEFAULT '2037-12-31 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `gross` decimal(5,2) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  `receipt` varchar(60) NOT NULL,
  `product` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_keys`
--

CREATE TABLE `reg_keys` (
  `id` int NOT NULL,
  `key_content` varchar(1000) NOT NULL,
  `used` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `r_type` varchar(10) NOT NULL,
  `r_id` int NOT NULL,
  `r_reason` text,
  `seen` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_items`
--

CREATE TABLE `shop_items` (
  `id` int NOT NULL,
  `owner_id` int NOT NULL,
  `name` varchar(52) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `bucks` int NOT NULL DEFAULT '-1',
  `bits` int NOT NULL DEFAULT '-1',
  `type` varchar(10) NOT NULL COMMENT 'HAT | FACE | TOOL | SHIRT | TSHIRT | PANTS ',
  `date` date NOT NULL,
  `last_updated` date NOT NULL,
  `offsale` enum('yes','no') NOT NULL DEFAULT 'no',
  `collectible` enum('yes','no') NOT NULL DEFAULT 'no',
  `collectable-edition` enum('yes','no') NOT NULL DEFAULT 'no',
  `collectible_q` int NOT NULL DEFAULT '0',
  `zoom` varchar(11) DEFAULT NULL,
  `approved` enum('yes','no','declined') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `private` int NOT NULL,
  `eventinfo` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_items`
--

INSERT INTO `shop_items` (`id`, `owner_id`, `name`, `description`, `bucks`, `bits`, `type`, `date`, `last_updated`, `offsale`, `collectible`, `collectable-edition`, `collectible_q`, `zoom`, `approved`, `private`, `eventinfo`) VALUES
(1, 1, 'Pants test', 'test', 0, 0, 'pants', '2024-03-25', '2024-03-25', 'no', 'no', 'no', 0, NULL, 'yes', 0, ''),
(2, 1, 'Blue Test Cap', 'testing', -1, -1, 'hat', '2024-04-20', '2024-04-20', 'no', 'no', 'no', 0, NULL, 'yes', 0, ''),
(3, 1, 'Admin face', 'Given to the goofy loyal administrators of brick hill', -1, -1, 'face', '2024-04-20', '2024-04-20', 'no', 'no', 'no', 0, NULL, 'yes', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `site_banner`
--

CREATE TABLE `site_banner` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `special_sellers`
--

CREATE TABLE `special_sellers` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL,
  `serial` int NOT NULL,
  `bucks` int NOT NULL,
  `active` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int NOT NULL,
  `owner_id` int NOT NULL,
  `body` varchar(124) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int NOT NULL,
  `crap` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `theme selected` enum('defualt','theme1') NOT NULL DEFAULT 'defualt'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(70) NOT NULL,
  `age` enum('under13','over13') NOT NULL,
  `safechat` enum('safe','supersafe') NOT NULL,
  `email` varchar(100) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `robux` int NOT NULL DEFAULT '0',
  `tickets` int NOT NULL DEFAULT '0',
  `description` text,
  `last_seen` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_promocodes`
--

CREATE TABLE `user_promocodes` (
  `id` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `user` int NOT NULL,
  `timeredeemed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_rewards`
--

CREATE TABLE `user_rewards` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `reward_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_walls`
--

CREATE TABLE `user_walls` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `owner_id` int NOT NULL,
  `post` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `type` enum('pinned','normal','deleted') NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aeo_table`
--
ALTER TABLE `aeo_table`
  ADD PRIMARY KEY (`winnerip`);

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beta_buy`
--
ALTER TABLE `beta_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beta_users`
--
ALTER TABLE `beta_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans`
--
ALTER TABLE `clans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans_members`
--
ALTER TABLE `clans_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans_ranks`
--
ALTER TABLE `clans_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clans_walls`
--
ALTER TABLE `clans_walls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crate`
--
ALTER TABLE `crate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_banners`
--
ALTER TABLE `forum_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_boards`
--
ALTER TABLE `forum_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_threads`
--
ALTER TABLE `forum_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_comments`
--
ALTER TABLE `item_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_values`
--
ALTER TABLE `membership_values`
  ADD PRIMARY KEY (`value`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misc`
--
ALTER TABLE `misc`
  ADD KEY `featured_game_id` (`featured_game_id`);

--
-- Indexes for table `moderation`
--
ALTER TABLE `moderation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_keys`
--
ALTER TABLE `reg_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_items`
--
ALTER TABLE `shop_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_sellers`
--
ALTER TABLE `special_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_promocodes`
--
ALTER TABLE `user_promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_rewards`
--
ALTER TABLE `user_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_walls`
--
ALTER TABLE `user_walls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beta_buy`
--
ALTER TABLE `beta_buy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beta_users`
--
ALTER TABLE `beta_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clans`
--
ALTER TABLE `clans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans_members`
--
ALTER TABLE `clans_members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans_ranks`
--
ALTER TABLE `clans_ranks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clans_walls`
--
ALTER TABLE `clans_walls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crate`
--
ALTER TABLE `crate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `forum_banners`
--
ALTER TABLE `forum_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_boards`
--
ALTER TABLE `forum_boards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_threads`
--
ALTER TABLE `forum_threads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_comments`
--
ALTER TABLE `item_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `membership_values`
--
ALTER TABLE `membership_values`
  MODIFY `value` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `moderation`
--
ALTER TABLE `moderation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reg_keys`
--
ALTER TABLE `reg_keys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_items`
--
ALTER TABLE `shop_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_sellers`
--
ALTER TABLE `special_sellers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_promocodes`
--
ALTER TABLE `user_promocodes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rewards`
--
ALTER TABLE `user_rewards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_walls`
--
ALTER TABLE `user_walls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
