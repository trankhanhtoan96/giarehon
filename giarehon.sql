-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2017 at 01:32 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giarehon`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `excerpt` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` varchar(36) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `parent_id`, `description`, `seo_title`, `seo_description`) VALUES
('0fbfa626124db3cf3b3fb5750da0911cOxbU', '2017-10-13 16:18:24', '2017-10-15 13:27:34', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Kinh nghiệm kế toán', '0', '', 'Kinh nghiệm kế toán', ''),
('d2de8157a449f16a46431797e3279180B9eB', '2017-10-13 16:18:39', '2017-10-15 13:19:48', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Tin tức kế toán', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_blog`
--

CREATE TABLE IF NOT EXISTS `blog_category_blog` (
  `id` varchar(36) NOT NULL,
  `blog_category_id` varchar(36) NOT NULL,
  `blog_id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `email_address`) VALUES
('6c58f9015d56775b1b736163cd3f416bP8MS', '2017-10-18 09:16:40', '2017-10-18 09:16:40', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '', 'taon@gmail.com'),
('8c3d342f6fcae2947e51ac0ae4ffd4bc0bMf', '2017-10-07 17:30:51', '2017-10-07 17:31:04', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '', 'nguyenthibichuyen96@gmail.com'),
('c94f0795e913ffaf1cec42a1d0048536ZLhM', '2017-10-10 21:21:24', '2017-10-10 21:21:24', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '', 'hangdo@gmail.com'),
('fdc4c0dc740a452cc55a0abbbf04f7429spm', '2017-10-18 09:40:07', '2017-10-18 09:40:07', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '', 'toan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `email_sent`
--

CREATE TABLE IF NOT EXISTS `email_sent` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sent`
--

INSERT INTO `email_sent` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `content`) VALUES
('074e31fc36f56b4a9e4f681f24350499Mx7X', '2017-10-11 12:06:06', '2017-10-11 12:06:06', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lan 4', '<p>nooji dung</p>\r\n'),
('3c64be3da25124bdcb199ff2534c7a08fEeQ', '2017-10-11 12:57:22', '2017-10-11 12:57:22', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'mẫu email 1', '<p>nội dung<img alt="" src="http://localhost/giarehon/uploads/images/user.jpg" style="height:300px; width:300px" /></p>\r\n'),
('57a083ad1e44e2aaf4355795821bbad8CvNr', '2017-10-11 11:55:12', '2017-10-11 11:55:12', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lanf 3', '<p>noji dung</p>\r\n'),
('5c9eadc9e99cba7ff0066db9209481d099Rp', '2017-10-11 11:48:27', '2017-10-11 11:48:27', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lan 1', '<p>nooji dung</p>\r\n'),
('75fcb991a87fcf1f4297969ccb2bd602QDOE', '2017-10-11 11:49:29', '2017-10-11 11:49:29', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lan 2', '<p>noojidung</p>\r\n'),
('9346cd422424a5e4646228b195b99f5cvtXq', '2017-10-11 14:39:17', '2017-10-11 14:39:17', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test làn 7', '<p>nji dung</p>\r\n'),
('9b750b3265de9a489f71ca1789135569yYG2', '2017-10-11 15:37:29', '2017-10-11 15:37:29', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test làn 8', '<p>noi dung</p>\r\n'),
('d90dac9c7ead3da96df5c772f4b65fa7RH8L', '2017-10-11 13:01:48', '2017-10-11 13:01:48', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lan 6', '<p>noi dung</p>\r\n'),
('f15789b3df029855066e0baafeb5fa32ftyw', '2017-10-11 12:52:37', '2017-10-11 12:52:37', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'tiêu đề email gởi đi để test lan 5', '<p>noji dung</p>\r\n'),
('f6878c29f94d3201cac799a6c639dcbdVrs6', '2017-10-16 23:00:07', '2017-10-16 23:00:07', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'a', '<p>a</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `email_sent_email`
--

CREATE TABLE IF NOT EXISTS `email_sent_email` (
  `id` varchar(36) NOT NULL,
  `email_sent_id` varchar(36) NOT NULL,
  `email_id` varchar(36) NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `date_entered` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sent_email`
--

INSERT INTO `email_sent_email` (`id`, `email_sent_id`, `email_id`, `date_modifiled`, `date_entered`, `status`, `user_created`, `user_modifiled`) VALUES
('5c9eadc9e99cba7ff0066db9209481d058cn', '5c9eadc9e99cba7ff0066db9209481d099Rp', '8c3d342f6fcae2947e51ac0ae4ffd4bc0bMf', '2017-10-11 11:48:27', '2017-10-11 11:48:27', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp');

-- --------------------------------------------------------

--
-- Table structure for table `email_sent_user`
--

CREATE TABLE IF NOT EXISTS `email_sent_user` (
  `id` varchar(36) NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `date_entered` datetime NOT NULL,
  `email_sent_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_sent_user`
--

INSERT INTO `email_sent_user` (`id`, `date_modifiled`, `date_entered`, `email_sent_id`, `user_id`, `status`, `user_created`, `user_modifiled`) VALUES
('1b20a07623d68dcb3f9fc5bfb4b1ce81QI30', '2017-10-11 12:57:28', '2017-10-11 12:57:28', '3c64be3da25124bdcb199ff2534c7a08fEeQ', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('1c7386e5c6745cd3000fa5dbb2ea55641FBO', '2017-10-11 15:37:34', '2017-10-11 15:37:34', '9b750b3265de9a489f71ca1789135569yYG2', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('3112776a7675cf81b641dd9b4f11d4130O5m', '2017-10-16 23:00:16', '2017-10-16 23:00:16', 'f6878c29f94d3201cac799a6c639dcbdVrs6', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('57a083ad1e44e2aaf4355795821bbad8QiQT', '2017-10-11 11:55:12', '2017-10-11 11:55:12', '57a083ad1e44e2aaf4355795821bbad8CvNr', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent_error', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('57aac2e0031a9f85d7f96cdc5a4b0784V96x', '2017-10-11 14:40:54', '2017-10-11 14:39:22', '9346cd422424a5e4646228b195b99f5cvtXq', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'read', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('75fcb991a87fcf1f4297969ccb2bd602J6Oq', '2017-10-11 11:49:29', '2017-10-11 11:49:29', '75fcb991a87fcf1f4297969ccb2bd602QDOE', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('8d47b8f51bf19a30e212aa4008f1f5a1mPl4', '2017-10-11 14:24:02', '2017-10-11 13:01:53', 'd90dac9c7ead3da96df5c772f4b65fa7RH8L', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'read', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('b3c42072bcc633b350b7190531f43c24ZHxm', '2017-10-11 12:06:14', '2017-10-11 12:06:14', '074e31fc36f56b4a9e4f681f24350499Mx7X', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp'),
('b7b800f3a4df8df4f17f8490fc7b8e01au1y', '2017-10-11 12:52:42', '2017-10-11 12:52:42', 'f15789b3df029855066e0baafeb5fa32ftyw', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'sent', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `content`) VALUES
('b2a19c7af0f9783caadaec2ec751cdaatz26', '2017-10-08 17:45:03', '2017-10-08 17:45:03', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'mẫu email', '<p>nội dung<img alt="" src="http://localhost/giarehon/uploads/images/user.jpg" style="height:300px; width:300px" /></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `other_role` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `other_role`) VALUES
('1873accc04e65c3414e6d795a7767ae8Bg5K', '2017-09-28 19:54:17', '2017-10-10 21:23:55', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'page', ''),
('4123124698fa0f951d01c8be235c449dCRM4', '2017-09-23 19:02:21', '2017-10-10 21:23:47', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'setting', ''),
('7a2dc0b8d0b4a0e2ac23d993f1c215e9Podj', '2017-10-09 14:12:33', '2017-10-10 21:25:10', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'email_template', ''),
('7e43d9c713b6d76d2679820cfa0e7a0ekEAk', '2017-09-30 23:49:48', '2017-10-10 21:24:03', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'blog_category', ''),
('8823c15423fafec2534afacb127f9b00Tp4J', '2017-10-09 14:52:28', '2017-10-10 21:25:18', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'email_sent', ''),
('bf714f850ad86724ffd11abd495aab6cxDPf', '2017-09-30 23:49:56', '2017-10-10 21:24:11', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'blog', ''),
('d1b4594b17557544817b968a801f299b0tPR', '2017-10-09 15:05:47', '2017-10-10 21:25:38', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'user', ''),
('d3969b7db1b6ecf4d96b647653c411b4JVxO', '2017-10-06 20:22:31', '2017-10-20 08:13:20', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'email', 'email_send_mail, email_filter_duplicate, email_filter_valid_email');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `excerpt` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `content`, `excerpt`, `seo_title`, `seo_description`, `image`) VALUES
('0efcc6d756edca82ccadb737e9edf2082xDP', '2017-10-15 14:21:29', '2017-10-15 14:21:29', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ báo cáo thuế', '<p>Do y&ecirc;u cầu ng&agrave;y c&agrave;ng cao n&ecirc;n việc&nbsp; c&aacute;c cơ quan thuế quản l&yacute; t&igrave;nh h&igrave;nh kinh doanh của c&aacute;c c&ocirc;ng ty/doanh nghiệp ng&agrave;y c&agrave;ng chặt chẽ, cụ thể l&agrave; lu&ocirc;n c&oacute; c&aacute;ch ch&iacute;nh s&aacute;ch thuế mới y&ecirc;u cầu doanh nghiệp phải chấp h&agrave;nh. Bạn l&agrave; c&ocirc;ng ty vừa mới th&agrave;nh lập v&agrave; chưa c&oacute; kế to&aacute;n hoặc kế to&aacute;n ở c&ocirc;ng ty bạn chưa đủ kinh nghiệm để thực hiện c&ocirc;ng việc b&aacute;o c&aacute;o thuế h&agrave;ng th&aacute;ng v&agrave; lu&ocirc;n cảm thấy lo lắng về c&aacute;c luật lệ, nghị định mới của cơ quan thuế. Giải ph&aacute;p tối ưu nhất cho những nỗi lo lắng v&agrave; băn khoăn tr&ecirc;n sẽ được&nbsp;ch&uacute;ng t&ocirc;i khắc phục v&agrave; giải quyết một c&aacute;ch chuy&ecirc;n nghiệp v&agrave; hiệu quả.</p>\r\n\r\n<p><img alt="dich vu bao cao thue" src="http://ketoanbanthoigian.com/images/dich-vu/dich-vu-bao-cao-thue.jpg" /></p>\r\n\r\n<p>Dịch Vụ Kế To&aacute;n Tại Nh&agrave; l&agrave;m b&aacute;o c&aacute;o thuế h&agrave;ng th&aacute;ng&nbsp;uy t&iacute;n chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i sẽ gi&uacute;p c&aacute;c doanh nghiệp giải quyết ho&agrave;n to&agrave;n c&aacute;c vướng mắc về sổ s&aacute;ch kế to&aacute;n cũng như giảm bớt g&aacute;nh nặng về c&ocirc;ng việc li&ecirc;n quan đến b&aacute;o c&aacute;o thuế h&agrave;ng th&aacute;ng với mức chi ph&iacute; hợp l&yacute; nhất. Để doanh nghiệp c&oacute; thể y&ecirc;n t&acirc;m ph&aacute;t triển kinh doanh m&agrave; kh&ocirc;ng phải lo lắng vấn đề g&igrave; về hệ thống sổ s&aacute;ch v&agrave; khai b&aacute;o thuế h&agrave;ng th&aacute;ng.</p>\r\n\r\n<h2>Những c&ocirc;ng việc sẽ thực hiện trong g&oacute;i dịch vụ l&agrave;m b&aacute;o c&aacute;o thuế của&nbsp;ch&uacute;ng t&ocirc;i</h2>\r\n\r\n<ul>\r\n	<li>So&aacute;t x&eacute;t h&oacute;a đơn đầu v&agrave;o, đầu ra, chuẩn bị hồ sơ k&egrave;m theo c&aacute;c chi ph&iacute; cần thiết</li>\r\n	<li>Nhập số dư đầu kỳ c&aacute;c t&agrave;i khoản, nhập số lượng h&agrave;ng tồn kho đầu kỳ</li>\r\n	<li>T&iacute;nh gi&aacute; vốn h&agrave;ng h&oacute;a, nhập số liệu ng&acirc;n h&agrave;ng</li>\r\n	<li>Nhập dữ liệu đầu v&agrave;o v&agrave; đầu ra</li>\r\n	<li>Khớp thuế GTGT đầu v&agrave;o, đầu ra theo từng th&aacute;ng hoặc từng Qu&yacute;.</li>\r\n	<li>Kết chuyển thuế GTGT &ndash; Lập bảng khấu hao TSCĐ</li>\r\n	<li>Kiểm tra c&ocirc;ng nợ v&agrave; đối chiếu lại c&ocirc;ng nợ thực tế với doanh nghiệp</li>\r\n	<li>Kiểm tra h&agrave;ng h&oacute;a v&agrave; c&acirc;n đối h&agrave;ng tồn kho</li>\r\n	<li>Lập bảng ph&acirc;n bổ chi ph&iacute; trả trước ngắn hạn v&agrave; d&agrave;i hạn</li>\r\n	<li>Lập phiếu thu, chi cho c&aacute;c đối tượng cho nh&agrave; cung cấp thanh to&aacute;n bằng tiền mặt</li>\r\n	<li>Nhập chi ph&iacute; lương nh&acirc;n vi&ecirc;n từng bộ phận</li>\r\n	<li>Nhập số liệu c&aacute;c chi ph&iacute; cố định (TSCĐ, chi ph&iacute; trả trước ngắn hạn v&agrave; d&agrave;i hạn)</li>\r\n	<li>Lập bảng chấm c&ocirc;ng v&agrave; bảng lương &ndash; C&acirc;n đối số liệu v&agrave; t&iacute;nh kết quả lỗ l&atilde;i</li>\r\n</ul>\r\n\r\n<h2>Khi n&agrave;o bạn n&ecirc;n t&igrave;m đến dịch vụ l&agrave;m b&aacute;o c&aacute;o thuế h&agrave;ng th&aacute;ng gi&aacute; rẻ</h2>\r\n\r\n<ul>\r\n	<li>Bạn&nbsp; l&agrave; doanh nghiệp mới th&agrave;nh lập, chưa c&oacute; kế to&aacute;n, chưa c&oacute; nhiều chi ph&iacute; đầu tư n&ecirc;n chọn giải ph&aacute;p tự m&igrave;nh k&ecirc; khai thuế.</li>\r\n	<li>C&ocirc;ng ty bạn chưa c&oacute; kế to&aacute;n hoặc kế to&aacute;n đang nghỉ sinh, cần c&oacute; người thay thế trong một thời gian nhất định</li>\r\n	<li>Doanh nghiệp của bạn cần một người c&oacute; đủ kinh nghiệm, kỹ năng v&agrave; bằng cấp để quản l&yacute; v&agrave; hướng dẫn mọi thứ li&ecirc;n quan đến b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</li>\r\n</ul>\r\n\r\n<h2>Tại sao bạn n&ecirc;n sử dụng dịch vụ b&aacute;o c&aacute;o thuế h&agrave;ng th&aacute;ng của ch&uacute;ng t&ocirc;i?</h2>\r\n\r\n<ul>\r\n	<li>Đội ngũ chuy&ecirc;n vi&ecirc;n kế to&aacute;n, kế to&aacute;n trưởng v&agrave; kiểm to&aacute;n vi&ecirc;n chuy&ecirc;n nghiệp c&oacute; kinh nghiệm tr&ecirc;n dưới 10 năm, đảm bảo được tất cả những t&igrave;nh huống c&oacute; thể xảy ra cho doanh nghiệp</li>\r\n	<li>Mang lại lợi &iacute;ch tối đa cho doanh nghiệp với mức chi ph&iacute; ph&ugrave; hợp nhất.</li>\r\n	<li>Lu&ocirc;n cập nhật nhanh ch&oacute;ng nhất c&aacute;c thay đổi th&ocirc;ng tin, nghị định thuế</li>\r\n	<li>Tư vấn c&acirc;n đối chi ph&iacute; hang th&aacute;ng để tiết kiệm tối đa nhất cho doanh nghiệp</li>\r\n	<li>Chế độ chăm s&oacute;c v&agrave; tư vấn kh&aacute;ch h&agrave;ng tận t&igrave;nh 24/7</li>\r\n</ul>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('120e26f7dbd4efb993eb880c0714e997GqwQ', '2017-10-15 14:24:39', '2017-10-15 14:24:39', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ làm BHXH - BHYT', '<p>Dịch Vụ Khai B&aacute;o Bảo Hiểm X&atilde; Hội - BHYT - BHTN - Kinh Ph&iacute; C&ocirc;ng Đo&agrave;n</p>\r\n\r\n<p>Bạn l&agrave; c&aacute; nh&acirc;n hay doanh nghiệp đang gặp phải vướng mắc về bảo hiểm x&atilde; hội, bảo hiểm y tế, bảo hiểm thất nghiệp v&agrave; lao động tiền lương h&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i sẽ thay mặt bạn giải quyết c&aacute;c thủ tục ph&aacute;p l&yacute; tr&ecirc;n được nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c nhất, đảm bảo cho người lao động nhận được mọi ph&uacute;c lợi về bảo hiểm, gi&uacute;p doanh nghiệp y&ecirc;n t&acirc;m ph&aacute;t triển sản xuất kinh doanh:</p>\r\n\r\n<p>I/ DỊCH VỤ ĐĂNG K&Yacute; LAO ĐỘNG TRỌN G&Oacute;I: 1.000.000 ĐỒNG</p>\r\n\r\n<p>1) Đăng k&yacute; khai tr&igrave;nh sử dụng lao động với cơ quan lao động</p>\r\n\r\n<p>2) L&agrave;m hồ sơ x&aacute;c nhận chưa đủ điều kiện th&agrave;nh lập c&ocirc;ng đo&agrave;n hoặc hồ sơ th&agrave;nh lập c&ocirc;ng đo&agrave;n.</p>\r\n\r\n<p>3) Soạn thảo v&agrave; đăng k&yacute; Nội quy lao động, Thỏa ước lao động tập thể theo Bộ luật Lao động.</p>\r\n\r\n<p>4) X&acirc;y dựng ti&ecirc;u chuẩn v&agrave; bảng m&ocirc; tả chức danh c&ocirc;ng việc.</p>\r\n\r\n<p>5) X&acirc;y dựng v&agrave; đăng k&yacute; hệ thống thang lương, bảng lương với cơ quan nh&agrave; nước.</p>\r\n\r\n<p>II/ DỊCH VỤ L&Agrave;M HỒ SƠ BHXH LẦN ĐẦU TRỌN G&Oacute;I: 1.500.000 ĐỒNG</p>\r\n\r\n<p>1) Soạn thảo hồ sơ v&agrave; thực hiện đăng k&yacute; Bảo hiểm x&atilde; hội<br />\r\n2) Hồ sơ Bảo Hiểm Y Tế<br />\r\n3) Hồ sơ Bảo Hiểm Thất Nghiệp&nbsp;<br />\r\n4) Soạn thảo hợp đồng lao động, bảng lương. Đồng thời giải tr&igrave;nh kh&ocirc;ng bị truy thu đối với những c&ocirc;ng ty đ&atilde; th&agrave;nh lập từ l&acirc;u hoặc truy thu theo y&ecirc;u cầu của Qu&yacute; Doanh nghiệp.</p>\r\n\r\n<p>Thời gian ho&agrave;n th&agrave;nh 2 g&oacute;i dịch vụ tr&ecirc;n v&agrave; b&agrave;n giao kết quả hồ sơ lao động, hồ sơ bảo hiểm như thẻ BHYT, sổ BHXH, v.v&hellip; l&agrave; 15 ng&agrave;y.</p>\r\n\r\n<p>III/ DỊCH VỤ THEO D&Otilde;I BHXH, BHYT, BHTN H&Agrave;NG TH&Aacute;NG: 500.000 &ndash; 1.000.000 đồng/th&aacute;ng&nbsp;(T&ugrave;y theo số lượng người lao động tham gia BHXH, BHYT, BHTN của Doanh nghiệp)</p>\r\n\r\n<p>Bao gồm những c&ocirc;ng việc sau:</p>\r\n\r\n<p>- Hồ tăng giảm lao động, chốt sổ BHXH.</p>\r\n\r\n<p>- Hồ sơ điều chỉnh lương, điều chỉnh th&ocirc;ng tin c&aacute; nh&acirc;n.</p>\r\n\r\n<p>- Hồ sơ giải quyết chế độ ốm đau, thai sản, nghỉ dưỡng sức v&agrave; hồ sơ tai nạn lao động.</p>\r\n\r\n<p>- Hồ sơ cấp sổ BHXH khi bị mất hoặc hư hỏng.</p>\r\n\r\n<p>- Hồ sơ gộp sổ khi ph&aacute;t hiện người lao động c&oacute; nhiểu sổ BHXH.</p>\r\n\r\n<p>- Đối chiếu v&agrave; th&ocirc;ng b&aacute;o số tiền bảo hiểm phải nộp h&agrave;ng th&aacute;ng.</p>\r\n\r\n<p>- Gia hạn thẻ bảo hiểm y tế</p>\r\n\r\n<p>- Hồ sơ tiếp đo&agrave;n kiểm tra Doanh nghiệp của BHXH, Li&ecirc;n đo&agrave;n, UBND v&agrave; Thanh tra Sở LĐ TB&amp;XH</p>\r\n\r\n<p>- B&agrave;n giao c&aacute;c số liệu khi c&oacute; y&ecirc;u cầu</p>\r\n\r\n<p>IV/ DỊCH VỤ THEO D&Otilde;I HỒ SƠ LAO ĐỘNG H&Agrave;NG TH&Aacute;NG: 500.000 &ndash; 1.000.000 ĐỒNG</p>\r\n\r\n<p>- Lập c&aacute;c b&aacute;o c&aacute;o khai tr&igrave;nh lao động khi c&oacute; tăng giảm lao động với cơ quan lao động.</p>\r\n\r\n<p>- B&aacute;o c&aacute;o lao động định kỳ h&agrave;ng qu&yacute; v&agrave; h&agrave;ng năm.</p>\r\n\r\n<p>- X&acirc;y dựng nội quy lao động, hệ thống thang bảng lương h&agrave;ng năm.</p>\r\n\r\n<p>- X&acirc;y dựng thỏa ước lao động tập thể (nếu ph&aacute;t sinh)</p>\r\n\r\n<p>- Tư vấn c&aacute;c vấn đề li&ecirc;n quan đến Luật Lao động, Luật BHXH, BHYT, BHTN v&agrave; c&aacute;c nghị định của Ch&iacute;nh phủ về lao động v&agrave; tiền lương</p>\r\n\r\n<p>- Bi&ecirc;n soạn c&aacute;c loại hợp đồng lao động</p>\r\n\r\n<p>- Chuẩn bị hồ sơ lao động cho c&aacute;c Doanh nghiệp khi c&oacute; văn bản th&ocirc;ng b&aacute;o kiểm tra Doanh nghiệp v&agrave; c&ugrave;ng Doanh nghiệp tiếp đo&agrave;n kiểm tra nhằm hạn chế tối đa Doanh nghiệp kh&ocirc;ng bị xử phạt vi phạm h&agrave;nh ch&iacute;nh trong c&aacute;c lĩnh vực</p>\r\n\r\n<p>- Hồ sơ tranh chấp lao động (nếu c&oacute;)</p>\r\n\r\n<p>Đặc biệt: Nhận gỡ rối v&agrave; dọn sổ s&aacute;ch cho c&aacute;c c&ocirc;ng ty tham gia BHXH nhưng đ&atilde; bị gi&aacute;n đoạn trong một thời gian d&agrave;i hoặc kh&ocirc;ng đối chiếu được số liệu với cơ quan BHXH. Nhận l&agrave;m hồ sơ hưu tr&iacute;, hồ sơ hưởng trợ cấp thất nghiệp v&agrave; trợ cấp BHXH 1 lần.</p>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('3366adacd5682e7f8aa34e7bf7a4b9a4i1o3', '2017-10-15 14:23:52', '2017-10-15 14:23:52', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ làm sổ sách kế toán', '<p>Qu&yacute; kh&aacute;ch h&agrave;ng đang c&acirc;n nhắc để c&oacute; thể lựa chọn một c&ocirc;ng ty chuy&ecirc;n cung cấp dịch vụ kế to&aacute;n thuế được th&agrave;nh lập v&agrave; hoạt động theo đ&uacute;ng quy định của ph&aacute;p luật, c&aacute;n bộ của họ đều c&oacute; chứng chỉ h&agrave;nh nghề kế to&aacute;n v&agrave; đăng k&yacute; h&agrave;nh nghề kế to&aacute;n theo quy định, hợp t&aacute;c với ch&uacute;ng t&ocirc;i doanh nghiệp bạn sẽ được tiếp cận với một đội ngũ kế to&aacute;n chuy&ecirc;n nghiệp nhiều năm kinh nghiệm l&agrave;m việc thực tế, đ&atilde; từng quyết to&aacute;n cho rất nhiều doanh nghiệp lớn. Với chi ph&iacute; bằng một nửa chi ph&iacute; phải trả cho một kế to&aacute;n vi&ecirc;n chưa c&oacute; kinh nghiệm liệu c&oacute; thể ?</p>\r\n\r\n<p>Với dịch vụ kế to&aacute;n trọn g&oacute;i, ch&uacute;ng t&ocirc;i bảo đảm sẽ tư vấn cho doanh nghiệp c&oacute; được sự ph&ograve;ng tr&aacute;nh tối đa c&aacute;c rủi ro về thuế v&agrave; tập trung v&agrave;o ph&aacute;t triển kinh doanh bền vững. Khi doanh nghiệp bạn c&oacute; quyết to&aacute;n thuế với cơ quan thuế, ch&uacute;ng t&ocirc;i sẽ đứng ra đại diện cho doanh nghiệp bạn giải tr&igrave;nh trước cơ quan thuế về c&aacute;c nghiệp vụ ph&aacute;t sinh trong năm cũng như giải đ&aacute;p c&aacute;c thắc mắc của cơ quan thuế về hệ thống sổ s&aacute;ch của doanh nghiệp bạn.</p>\r\n\r\n<p><img alt="hop tac 2" src="http://ketoanbanthoigian.com/images/dich-vu/hop-tac-2.jpg" /></p>\r\n\r\n<p><strong>C&aacute;c c&ocirc;ng việc m&agrave; ch&uacute;ng t&ocirc;i sẽ thực hiện cho doanh nghiệp như sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Nhận chứng từ, sổ s&aacute;ch của DN để thực hiện v&agrave; xử l&yacute; c&ocirc;ng việc</li>\r\n	<li>Thiết lập v&agrave; x&acirc;y dựng hệ thống sổ s&aacute;ch kế to&aacute;n ban đầu.</li>\r\n	<li>Khai thuế m&ocirc;n b&agrave;i h&agrave;ng năm.</li>\r\n	<li>Lập c&aacute;c b&aacute;o c&aacute;o thuế gửi cho cơ quan thuế h&agrave;ng th&aacute;ng theo quy định.</li>\r\n	<li>Kiểm tra c&aacute;c chứng từ đầu v&agrave;o, đầu ra cho ph&ugrave; hợp với quy định của ph&aacute;p luật.</li>\r\n	<li>Ph&acirc;n loại, sắp xếp, đ&oacute;ng chứng từ kế to&aacute;n.</li>\r\n	<li>Thực hiện hạch to&aacute;n v&agrave; ghi sổ kế to&aacute;n c&aacute;c chứng từ, c&aacute;c giao dịch theo quy định.</li>\r\n	<li>C&acirc;n đối kế to&aacute;n, kết quả kinh doanh, lưu chuyển tiền tệ &hellip;</li>\r\n	<li>Lập b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh cuối năm.</li>\r\n	<li>Lập b&aacute;o c&aacute;o quyết to&aacute;n thuế thu nhập doanh nghiệp h&agrave;ng năm.</li>\r\n	<li>Lập b&aacute;o c&aacute;o quyết to&aacute;n thuế thu nhập c&aacute; nh&acirc;n.</li>\r\n	<li>Ho&agrave;n thiện hệ thống chứng từ cho c&ocirc;ng ty.</li>\r\n	<li>Đại diện cho Doanh nghiệp l&agrave;m việc với cơ quan thuế chủ quản.</li>\r\n</ul>\r\n\r\n<p><strong>Những lợi &iacute;ch m&agrave; doanh nghiệp bạn nhận được khi lựa chọn dịch vụ kế to&aacute;n chuy&ecirc;n nghiệp của ch&uacute;ng t&ocirc;i:</strong></p>\r\n\r\n<ul>\r\n	<li>Lu&ocirc;n cập nhật kịp thời về những điều luật, nghị định, c&ocirc;ng văn của Tổng cục thuế v&agrave; chế độ kế to&aacute;n hiện h&agrave;nh mang lại lợi &iacute;ch thiết thực cho doanh nghiệp. (Với kinh nghiệm xử l&yacute; cho h&agrave;ng trăm doanh nghiệp với đa loại h&igrave;nh c&ocirc;ng ty n&ecirc;n qu&yacute; kh&aacute;ch h&agrave;ng h&atilde;y y&ecirc;n t&acirc;m khi lựa chọn ch&uacute;ng t&ocirc;i).</li>\r\n	<li>Tư vấn miễn ph&iacute; c&aacute;c vấn đề kế to&aacute;n m&agrave; doanh nghiệp thắc mắc chưa t&igrave;m ra hướng giải quyết cả thuế v&agrave; nội bộ, gi&uacute;p doanh nghiệp vững bước ph&aacute;t triển.<br />\r\n	Khi sử dụng dịch vụ của C&ocirc;ng Ty Quản L&yacute; H&agrave; Nội. ch&uacute;ng t&ocirc;i lu&ocirc;n song h&agrave;nh c&ugrave;ng qu&yacute; doanh nghiệp tr&ecirc;n mỗi bước đường kinh doanh, lu&ocirc;n t&igrave;m nhiều phương c&aacute;ch hỗ trợ, chăm s&oacute;c qu&yacute; kh&aacute;ch h&agrave;ng tốt nhất, hiệu quả nhất để hỗ trợ kh&aacute;ch h&agrave;ng ph&aacute;t triển.</li>\r\n	<li>Chịu tr&aacute;ch nhiệm giải tr&igrave;nh trực tiếp với cơ quan thuế chủ quản, chịu tr&aacute;ch nhiệm bồi thường thiệt hại khi l&agrave;m sai v&agrave; chậm thời gian dịch vụ g&acirc;y ảnh hưởng tới doanh nghiệp.</li>\r\n	<li>Đội ngũ kế to&aacute;n trưởng, kiểm to&aacute;n vi&ecirc;n, chuy&ecirc;n vi&ecirc;n kế to&aacute;n c&oacute; từ 5 &ndash; 7 năm kinh nghiệm thực tế sẽ tư vấn gi&uacute;p Qu&yacute; doanh nghiệp đưa ra những giải ph&aacute;p hợp l&yacute; v&agrave; tối ưu về Kế to&aacute;n, Thuế.</li>\r\n</ul>\r\n\r\n<p><img alt="hop tac" src="http://ketoanbanthoigian.com/images/dich-vu/hop-tac.jpg" /></p>\r\n\r\n<p>G&oacute;i dịch vụ sẽ gi&uacute;p doanh nghiệp ho&agrave;n to&agrave;n c&oacute; thể an t&acirc;m để ph&aacute;t triển kinh doanh v&igrave; Ch&uacute;ng t&ocirc;i sẽ thay mặt doanh nghiệp giải quyết từ A -&gt; Z những kh&oacute; khăn, vướng mắc với cơ quan thuế ph&aacute;t sinh trong qu&aacute; tr&igrave;nh l&agrave;m việc v&agrave; ho&agrave;n to&agrave;n chịu tr&aacute;ch nhiệm, nộp phạt với những c&ocirc;ng việc m&agrave; c&ocirc;ng ty ch&uacute;ng t&ocirc;i l&agrave;m sai.</p>\r\n\r\n<p>Với mức ph&iacute; thấp cho dịch vụ kế to&aacute;n trọn g&oacute;i. Qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về hệ thống sổ s&aacute;ch kế to&aacute;n, y&ecirc;n t&acirc;m ph&aacute;t triển doanh nghiệp m&agrave; kh&ocirc;ng phải lo ngại về sổ s&aacute;ch kế to&aacute;n.</p>\r\n\r\n<p>Rất mong c&oacute; cơ hội được hợp t&aacute;c c&ugrave;ng Qu&yacute; Doanh nghiệp.</p>\r\n\r\n<p>Ch&uacute;c qu&yacute; doanh nghiệp th&agrave;nh c&ocirc;ng !</p>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('48066c37e639b59b68f291036b4932b1E6M6', '2017-10-18 11:41:54', '2017-10-18 11:42:29', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Liên hệ', '<p><strong>Kế to&aacute;n trưởng:</strong>&nbsp;Đỗ Hằng<br />\r\n<strong>Điện thoại:</strong>&nbsp;0937.31.91.94<br />\r\n<strong>Giờ l&agrave;m việc:</strong>&nbsp;S&aacute;ng 8h30-11h30, Chiều 13h30-17h00<br />\r\n<strong>Email:</strong>&nbsp;dvktHang@yahoo.com<br />\r\n<strong>Địa chỉ:</strong>&nbsp;56 Đường D2, Phường 25, Quận B&igrave;nh Thạnh, Tp HCM</p>\r\n', '', '', '', ''),
('a021e8436874e9b351f91c841a8ba13d5ZI3', '2017-10-15 14:22:47', '2017-10-15 14:22:47', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ quyết toán thuế', '<p>Nắm bắt dược tầm quan trọng của việc quyết to&aacute;n thuế với doanh nghiệp, ch&uacute;ng t&ocirc;i cung cấp&nbsp;dịch vụ quyết to&aacute;n thuế&nbsp;TNDN sẽ gi&uacute;p bạn giải quyết những thắc mắc, kh&oacute; khăn về vấn đề kế to&aacute;n, t&agrave;i ch&iacute;nh, cập nhật những nghị định, th&ocirc;ng tư thuế trong qu&aacute; tr&igrave;nh hoạt động kinh doanh. Với đội ngũ chuy&ecirc;n vi&ecirc;n kế to&aacute;n, kiểm to&aacute;n c&oacute; kinh nghiệm l&agrave;m việc tr&ecirc;n dưới 8 năm, giải quyết v&ocirc; số những t&igrave;nh huống trong ng&agrave;nh&nbsp;dịch vụ kế to&aacute;n&nbsp;sẽ gi&uacute;p bạn giảm thiểu những lo lắng khi phải giải tr&igrave;nh với c&aacute;c cơ quan thuế. Khi hợp t&aacute;c với ch&uacute;ng t&ocirc;i, bạn sẽ được ch&uacute;ng t&ocirc;i thực hiện to&agrave;n bộ c&aacute;c c&ocirc;ng việc về quyết to&aacute;n thuế, giữ vai tr&ograve; l&agrave; một nh&acirc;n vi&ecirc;n kế to&aacute;n ch&iacute;nh thức để c&oacute; thể quản l&yacute;, hướng dẫn v&agrave; giải tr&igrave;nh với cơ quan thuế.</p>\r\n\r\n<h2><img alt="dich vu quyet toan thue" src="http://ketoanbanthoigian.com/images/dich-vu/dich-vu-quyet-toan-thue.jpg" /></h2>\r\n\r\n<h2>G&oacute;i dịch vụ quyết to&aacute;n thuế TNDN của ch&uacute;ng t&ocirc;i được thực hiện như sau :</h2>\r\n\r\n<ul>\r\n	<li>Thu thập th&ocirc;ng tin l&agrave; c&aacute;c h&oacute;a đơn, chứng từ, sổ s&aacute;ch của doanh nghiệp;</li>\r\n	<li>Khảo s&aacute;t thực tế quy tr&igrave;nh hoạt động của doanh nghiệp;</li>\r\n	<li>Kiểm tra chứng từ kế to&aacute;n, ph&acirc;n loại v&agrave; sắp xếp chứng từ kế to&aacute;n;</li>\r\n	<li>Nhập lại số liệu kế to&aacute;n của cả năm, ph&acirc;n bổ hạch to&aacute;n theo đ&uacute;ng chuẩn mực v&agrave; Lập to&agrave;n bộ hệ thống sổ s&aacute;ch kế to&aacute;n.</li>\r\n	<li>Kiểm tra, xử l&yacute;, ho&agrave;n thiện hệ thống SSKT đảm bảo quyết to&aacute;n thuế: R&agrave; so&aacute;t, lập lại hệ thống c&aacute;c loại sổ chi tiết, sổ c&aacute;i c&aacute;c t&agrave;i khoản, sổ nhật k&yacute; chung.</li>\r\n	<li>Thiết lập lại số s&aacute;ch kế to&aacute;n, b&aacute;o c&aacute;o thuế theo đ&uacute;ng quy định của c&aacute;c luật thuế.</li>\r\n	<li>Loại bỏ, điều chỉnh, chỉnh sửa c&aacute;c chứng từ kh&ocirc;ng ph&ugrave; hợp đồng thời trao đổi với doanh nghiệp c&aacute;c nội dung, nghiệp vụ c&oacute; li&ecirc;n quan đến kết quả thực hiện.</li>\r\n	<li>Tư vấn cho doanh nghiệp c&aacute;c nội dung c&oacute; li&ecirc;n quan trong qu&aacute; tr&igrave;nh tổng hợp th&ocirc;ng tin để lập quyết to&aacute;n thuế..</li>\r\n	<li>Đại diện cho Doanh nghiệp để l&agrave;m việc với Cơ Quan Thuế, giải tr&igrave;nh hợp l&yacute; tất cả c&aacute;c vấn đề m&agrave; Cơ Quan Thuế y&ecirc;u cầu giải tr&igrave;nh.</li>\r\n</ul>\r\n\r\n<h2>Khi n&agrave;o bạn n&ecirc;n t&igrave;m đến dịch vụ quyết to&aacute;n&nbsp;thuế cuối năm&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>Bạn&nbsp; l&agrave; doanh nghiệp mới th&agrave;nh lập, chưa c&oacute; kế to&aacute;n, chưa c&oacute; nhiều chi ph&iacute; đầu tư n&ecirc;n chọn giải ph&aacute;p tự m&igrave;nh k&ecirc; khai thuế.</li>\r\n	<li>C&ocirc;ng ty bạn chưa c&oacute; kế to&aacute;n hoặc kế to&aacute;n đang nghỉ sinh, cần c&oacute; người thay thế trong một thời gian nhất định</li>\r\n	<li>Doanh nghiệp của bạn cần một người c&oacute; đủ kinh nghiệm, kỹ năng v&agrave; bằng cấp để quản l&yacute; v&agrave; hướng dẫn mọi thứ li&ecirc;n quan đến b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</li>\r\n</ul>\r\n\r\n<h2>Tại sao bạn n&ecirc;n sử dụng dịch vụ quyết to&aacute;n&nbsp;thuế cuối năm&nbsp;của ch&uacute;ng t&ocirc;i?</h2>\r\n\r\n<ul>\r\n	<li>Đội ngũ chuy&ecirc;n vi&ecirc;n kế to&aacute;n, kế to&aacute;n trưởng v&agrave; kiểm to&aacute;n vi&ecirc;n chuy&ecirc;n nghiệp c&oacute; kinh nghiệm tr&ecirc;n dưới 8 năm, đảm bảo được tất cả những t&igrave;nh huống c&oacute; thể xảy ra cho doanh nghiệp</li>\r\n	<li>Mang lại lợi &iacute;ch tối đa cho doanh nghiệp với mức chi ph&iacute; ph&ugrave; hợp nhất.</li>\r\n	<li>Lu&ocirc;n cập nhật nhanh ch&oacute;ng nhất c&aacute;c thay đổi th&ocirc;ng tin, nghị định thuế</li>\r\n	<li>Tư vấn c&acirc;n đối chi ph&iacute; hang th&aacute;ng để tiết kiệm tối đa nhất cho doanh nghiệp</li>\r\n	<li>Chế độ chăm s&oacute;c v&agrave; tư vấn kh&aacute;ch h&agrave;ng tận t&igrave;nh 24/7</li>\r\n</ul>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('a4ebb7ddbba4a231455fa89a60dd97adeGt8', '2017-10-15 14:20:42', '2017-10-15 14:20:42', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ thành lập doanh nghiệp', '<p>Dịch vụ tư vấn th&agrave;nh lập doanh nghiệp của ch&uacute;ng t&ocirc;i với đội ngũ nh&acirc;n vi&ecirc;n giỏi, c&oacute; kinh nghiệm tư vấn v&agrave; giải quyết hồ sơ th&agrave;nh lập doanh nghiệp&nbsp;trong nhiều năm sẽ gi&uacute;p qu&yacute; kh&aacute;ch ho&agrave;n tất to&agrave;n bộ hồ sơ th&agrave;nh lập doanh nghiệp, tư vấn trọn g&oacute;i trong suốt thời gian l&agrave;m hồ sơ một c&aacute;ch nhanh ch&oacute;ng, thuận lợi với&nbsp;mức chi phi ph&iacute; tiết kiệm nhất.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp dịch vụ tư vấn th&agrave;nh lập doanh nghiệp tư nh&acirc;n trọn g&oacute;i, dịch vụ kế to&aacute;n trọn g&oacute;i, k&ecirc; khai thuế chuy&ecirc;n nghiệp với mức chi ph&iacute; hợp l&yacute; nhất tại TPHCM v&agrave; c&aacute;c tỉnh l&acirc;n cận. Với đội ngũ nh&acirc;n vi&ecirc;n giỏi, c&oacute; kinh nghiệm tư vấn v&agrave; giải quyết hồ sơ th&agrave;nh lập doanh nghiệp, ch&uacute;ng t&ocirc;i đ&atilde; tư vấn th&agrave;nh c&ocirc;ng cho hơn h&agrave;ng ng&agrave;n doanh nghiệp trong suốt qu&aacute; tr&igrave;nh hoạt động. Dịch vụ tư vấn th&agrave;nh lập doanh nghiệp trọn g&oacute;i của ch&uacute;ng t&ocirc;i sẽ gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm chi ph&iacute;, thời gian v&agrave; c&oacute; một chất lượng dịch vụ tuyệt vời nhất.</p>\r\n\r\n<p>Dịch vụ tư vấn th&agrave;nh lập doanh nghiệp trọn g&oacute;i bao gồm những nội dung như sau :</p>\r\n\r\n<p><strong>1. Tư vấn trước khi th&agrave;nh lập c&ocirc;ng ty :</strong></p>\r\n\r\n<p>Tư vấn lựa chọn loại h&igrave;nh c&ocirc;ng ty (C&ocirc;ng ty Tr&aacute;ch nhiệm hữu hạn, c&ocirc;ng ty cổ phần, c&ocirc;ng ty c&oacute; vốn đầu tư nước ng&ograve;ai...);<br />\r\nTư vấn t&ecirc;n c&ocirc;ng ty (Lựa chọn t&ecirc;n v&agrave; tra cứu t&ecirc;n) ;<br />\r\nTư vấn trụ sở c&ocirc;ng ty (Trụ sở đi thu&ecirc; hoặc thuộc quyền sử dụng hợp ph&aacute;p của C&ocirc;ng ty) ;<br />\r\nTư vấn đăng k&yacute; vốn điều lệ (Ph&ugrave; hợp với từng ng&agrave;nh nghề kinh doanh v&agrave; loại h&igrave;nh doanh nghiệp) ;<br />\r\nTư vấn lựa chọn ng&agrave;nh nghề kinh doanh (Theo hệ thống ng&agrave;nh nghề kinh tế quốc d&acirc;n) ;<br />\r\nTư vấn về người s&aacute;ng lập của c&ocirc;ng ty (Ph&ugrave; hợp với quy định của ph&aacute;p luật hiện h&agrave;nh) ;<br />\r\nTư vấn thủ tục v&agrave; c&aacute;c vấn đề li&ecirc;n quan đến nội bộ doanh nghiệp (Tư vấn tổ chức bộ m&aacute;y v&agrave; hoạt động của c&ocirc;ng ty) ;<br />\r\nLập hồ sơ th&agrave;nh lập c&ocirc;ng ty (Chuẩn h&oacute;a hồ sơ theo y&ecirc;u cầu : Đơn đăng k&yacute; kinh doanh, điều lệ c&ocirc;ng ty, danh s&aacute;ch cổ đ&ocirc;ng v&agrave; c&aacute;c t&agrave;i liệu kh&aacute;c theo quy định của ph&aacute;p luật) ;</p>\r\n\r\n<p><strong>2. Thực hiện c&aacute;c c&ocirc;ng việc theo ủy quyền:</strong></p>\r\n\r\n<p>Chuy&ecirc;n vi&ecirc;n tư vấn của C&ocirc;ng ty sẽ thực hiện c&ocirc;ng việc theo sự ủy quyền của Qu&yacute; kh&aacute;ch h&agrave;ng tại c&aacute;c cơ quan Nh&agrave; nước c&oacute; thẩm quyền bao gồm:<br />\r\nĐăng k&yacute; cấp giấy chứng nhận kinh doanh tại Sở kế hoạch đầu tư;<br />\r\nCấp m&atilde; số doanh nghiệp/M&atilde; số thuế tại Cục thuế;<br />\r\nCấp dấu ph&aacute;p nh&acirc;n tại cơ quan c&ocirc;ng an. Cụ thể:<br />\r\n&ndash; Đại diện cho kh&aacute;ch h&agrave;ng nộp, r&uacute;t, nhận hồ sơ đăng k&yacute; kinh doanh tại Ph&ograve;ng đăng k&yacute; kinh doanh;</p>\r\n\r\n<p>&ndash; Tiến h&agrave;nh thủ tục để khắc dấu cho C&ocirc;ng ty (dấu c&ocirc;ng ty, dấu chức danh, dấu đăng k&yacute; m&atilde; số thuế);</p>\r\n\r\n<p>&ndash; Tiến h&agrave;nh thủ tục đăng k&yacute; m&atilde; số thuế v&agrave; chức năng xuất nhập khẩu cho doanh nghiệp.</p>\r\n\r\n<p><strong>3. Thời gian ho&agrave;n thiện thủ tục đăng k&yacute; th&agrave;nh lập c&ocirc;ng ty :</strong></p>\r\n\r\n<p>&ndash; Theo quy định của ph&aacute;p luật thời gian cấp giấy chứng nhận đăng k&yacute; kinh doanh v&agrave; dấu ph&aacute;p nh&acirc;n đối với c&ocirc;ng ty l&agrave;: 10 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y nộp đủ chứng từ hồ sơ theo quy định của ph&aacute;p luật. Tuy nhi&ecirc;n, nhằm đ&aacute;p ứng tốt nhất y&ecirc;u cầu của Qu&yacute; kh&aacute;ch h&agrave;ng về việc nhanh ch&oacute;ng th&agrave;nh lập doanh nghiệp tận dụng tốt nhất thời cơ kinh doanh &ndash; Ch&uacute;ng t&ocirc;i c&oacute; thể ho&agrave;n thiện mọi thủ tục tr&ecirc;n trong thời hạn 2-3 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y Qu&yacute; kh&aacute;ch h&agrave;ng cung cấp đầy đủ hồ sơ với mức chi ph&iacute; cạnh tranh.</p>\r\n\r\n<p><strong>4. Hoạt động tư vấn, trợ gi&uacute;p kh&aacute;ch h&agrave;ng sau th&agrave;nh lập c&ocirc;ng ty :</strong></p>\r\n\r\n<p>C&ocirc;ng ty Kế To&aacute;n Ph&iacute;a Nam hỗ trợ v&agrave; tư vấn về c&aacute;c vấn đề:</p>\r\n\r\n<p>Tư vấn khởi nghiệp (C&aacute;c c&ocirc;ng việc cần l&agrave;m của một doanh nghiệp mới, bước đầu x&acirc;y dựng thương hiệu thống nhất...)<br />\r\nTư vấn hoạt động của doanh nghiệp (qua email, thư, fax);<br />\r\nCung cấp văn bản ph&aacute;p luật theo y&ecirc;u cầu (qua email);<br />\r\nSoạn thảo hồ sơ nội bộ của doanh nghiệp, gồm: Điều lệ, Bi&ecirc;n bản g&oacute;p vốn th&agrave;nh lập c&ocirc;ng ty, bầu chủ tịch, cử người đại diện theo ph&aacute;p luật, Quyết định bổ nhiệm gi&aacute;m đốc, Quyết định bổ nhiệm kế to&aacute;n trưởng, Chứng nhận sở hữu cổ phần, Sổ cổ đ&ocirc;ng, Th&ocirc;ng b&aacute;o lập sổ cổ đ&ocirc;ng...</p>\r\n\r\n<p><strong>5. Cơ sở ph&aacute;p l&yacute; của thủ tục đăng k&yacute; th&agrave;nh lập c&ocirc;ng ty :</strong></p>\r\n\r\n<p>Luật doanh nghiệp số 60/2005/QH11;<br />\r\nNghị định số 43/2010/N&ETH;-CP về đăng k&yacute; doanh nghiệp;<br />\r\nTh&ocirc;ng tư số 14/2010/TT-BKH quy định về hồ sơ, tr&igrave;nh tự, thủ tục đăng k&yacute; doanh nghiệp;<br />\r\nQuyết định 10/2007/QĐ-TTg ban h&agrave;nh hệ thống ng&agrave;nh kinh tế của Việt Nam;<br />\r\nQuyết định số 337/QĐ-BKH về việc ban h&agrave;nh quy định nội dung Hệ thống ng&agrave;nh kinh tế của Việt Nam;</p>\r\n\r\n<p>Rất mong nhận được sự hợp t&aacute;c với Qu&yacute; kh&aacute;ch h&agrave;ng!</p>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('ccd67975c1898a0806d126ba255a50e04oD1', '2017-10-15 14:12:57', '2017-10-15 14:12:57', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Giới thiệu', '<p>Theo Điều 55 của Luật Kế to&aacute;n v&agrave; theo Điểm 4.6, Mục 1, Th&ocirc;ng tư số 72/2007/TT-BTC ng&agrave;y 27/6/2007 của Bộ T&agrave;i ch&iacute;nh về hướng dẫn việc đăng k&yacute; v&agrave; quản l&yacute; h&agrave;nh nghề kế to&aacute;n th&igrave; những doanh nghiệp kế to&aacute;n c&oacute; &iacute;t nhất 2 người c&oacute; chứng chỉ h&agrave;nh nghề kế to&aacute;n hoặc chứng chỉ kiểm to&aacute;n vi&ecirc;n do Bộ T&agrave;i ch&iacute;nh cấp, c&oacute; giấy đăng k&yacute; kinh doanh dịch vụ kế to&aacute;n, đ&atilde; đăng k&yacute; h&agrave;nh nghề kế to&aacute;n v&agrave; được Hội Kế to&aacute;n v&agrave; Kiểm to&aacute;n Việt Nam (VAA) x&aacute;c nhận v&agrave; th&ocirc;ng b&aacute;o c&ocirc;ng khai mới đủ điều kiện cung cấp&nbsp; dịch vụ kế to&aacute;n. Người kh&ocirc;ng c&oacute; t&ecirc;n trong danh s&aacute;ch đăng k&yacute; h&agrave;nh nghề kế to&aacute;n được VAA x&aacute;c nhận v&agrave; th&ocirc;ng b&aacute;o c&ocirc;ng khai th&igrave; kh&ocirc;ng được k&yacute; v&agrave;o sổ kế to&aacute;n (đối với dịch vụ l&agrave;m sổ kế to&aacute;n), kh&ocirc;ng được k&yacute; v&agrave;o b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh (đối với dịch vụ lập b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh) v&agrave; kh&ocirc;ng được k&yacute; b&aacute;o c&aacute;o kết quả c&aacute;c dịch vụ kế to&aacute;n kh&aacute;c.</p>\r\n\r\n<p>Ng&agrave;nh nghề kinh doanh dịch vụ kế to&aacute;n l&agrave; ng&agrave;nh nghề kinh doanh c&oacute; điều kiện, C&ocirc;ng ty ch&uacute;ng t&ocirc;i đ&atilde; thỏa m&atilde;n những điều kiện n&ecirc;u tr&ecirc;n v&agrave; đ&atilde; được Hội Kế to&aacute;n v&agrave; Kiểm to&aacute;n Việt Nam (VAA) x&aacute;c nhận v&agrave; th&ocirc;ng b&aacute;o c&ocirc;ng khai đủ điều kiện cung cấp dịch vụ kế to&aacute;n.</p>\r\n', 'Đối với các doanh nghiệp vừa mới thành lập, sổ sách kế toán và các công việc kê khai thuế chính là nỗi trăn trở nhất. Bạn tốn nhiều chi phí cho một nhân viên kế toán mà chưa chắc họ có thể nắm vững toàn bộ kiến thức thuế chính xác và đúng theo quy định của pháp luật?', 'Giới thiệu', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png'),
('e053ad639039efa05154def8cf67208bmtn2', '2017-10-15 14:23:20', '2017-10-15 14:23:20', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Dịch vụ báo cáo tài chính', '<p>Để giảm thiểu chi ph&iacute; ph&aacute;t sinh, nhiều doanh nghiệp vừa mới th&agrave;nh lập chọn giải ph&aacute;p tự m&igrave;nh k&ecirc; khai t&agrave;i ch&iacute;nh hoặc thu&ecirc; c&aacute;c kế to&aacute;n &iacute;t kinh nghiệm với mức chi ph&iacute; thấp. Điều n&agrave;y dẫn đến t&igrave;nh trạng t&agrave;i ch&iacute;nh , hệ thống sổ s&aacute;ch v&agrave; b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh cuối năm của c&aacute;c doanh nghiệp chưa được ho&agrave;n thiện, điều n&agrave;y rất nguy hiểm cho c&aacute;c doanh nghiệp khi bị thanh tra, quyết to&aacute;n thuế&hellip;Vậy bạn c&oacute; suy nghĩ đến việc sẽ t&igrave;m cho m&igrave;nh một&nbsp;dịch vụ l&agrave;m b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh&nbsp;chuy&ecirc;n nghiệp để gi&uacute;p bạn giải quyết những kh&oacute; khăn n&agrave;y chưa?</p>\r\n\r\n<p><img alt="dich vu bao cao tai chinh" src="http://ketoanbanthoigian.com/images/dich-vu/dich-vu-bao-cao-tai-chinh.jpg" /></p>\r\n\r\n<p>Dịch vụ l&agrave;m b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của&nbsp;C&ocirc;ng Ty&nbsp;ch&uacute;ng t&ocirc;i với đội ngủ kế to&aacute;n, kiểm to&aacute;n vi&ecirc;n c&oacute; kinh nghiệm tr&ecirc;n dưới 10 năm sẽ gi&uacute;p bạn quản l&yacute; v&agrave; thực hiện c&aacute;c vấn đề về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh cuối năm, giải quyết những kh&oacute; khăn, vướng mắc, ho&agrave;n thiện hệ thống kế to&aacute;n, tiết kiệm chi ph&iacute; tối đa v&agrave; giảm thiểu rủi ro cho c&aacute;c doanh nghiệp khi quyết to&aacute;n thuế.</p>\r\n\r\n<h2>Những c&ocirc;ng việc sẽ thực hiện trong g&oacute;i dịch vụ b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh của ch&uacute;ng t&ocirc;i</h2>\r\n\r\n<ul>\r\n	<li>Kiểm tra, r&agrave; so&aacute;t, đối chiếu tờ khai thuế h&agrave;ng th&aacute;ng với chứng từ gốc (h&oacute;a đơn đầu ra, đầu v&agrave;o&hellip;), thực hiện điều chỉnh ngay nếu ph&aacute;t hiện c&oacute; sai s&oacute;t về h&oacute;a đơn giả, h&oacute;a đơn khống hay lỗi do k&ecirc; khai sai s&oacute;t.</li>\r\n	<li>Tổ chức sắp xếp ho&agrave;n thiện v&agrave; ph&acirc;n loại chứng từ trước khi l&ecirc;n c&aacute;c sổ s&aacute;ch(sổ chi tiết, tổng hợp, c&aacute;c bảng ph&acirc;n bổ&hellip;) v&agrave; B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh.</li>\r\n	<li>Ho&agrave;n thiện chứng từ cần thiết: Phiếu thu &ndash; chi, phiếu nhập &ndash; xuất&hellip;</li>\r\n	<li>Th&ocirc;ng b&aacute;o cho doanh nghiệp kịp thời c&aacute;c vấn đề về quỹ tiền mặt, ng&acirc;n h&agrave;ng, h&agrave;ng tồn kho, c&ocirc;ng nợ, chi ph&iacute; c&aacute;c loại&hellip;.</li>\r\n	<li>Tư vấn c&aacute;c ch&iacute;nh s&aacute;ch, văn bản về thuế, kế to&aacute;n v&agrave; c&aacute;c vấn đề xử phạt thuế khi l&agrave;m sai để doạnh nghiệp nắm bắt.</li>\r\n	<li>&nbsp;Chỉ ra cho doanh nghiệp những vấn đề tồn đọng trong c&aacute;c vấn đề về kế t&oacute;a t&agrave;i ch&iacute;nh năm qua v&agrave; đưa ra c&aacute;c giải ph&aacute;p khắc phục</li>\r\n	<li>C&acirc;n đối l&atilde;i lỗ, tư vấn c&aacute;c vấn rủi ro cho doanh nghiệp\r\n	<ul>\r\n		<li>C&acirc;n đối doanh thu chi ph&iacute;</li>\r\n		<li>C&acirc;n đối c&aacute;c khoản thuế(GTGT, TNDN, TNCN&hellip;)</li>\r\n		<li>C&acirc;n đối h&agrave;ng h&oacute;a, chi ph&iacute;, lợi nhuận</li>\r\n		<li>C&acirc;n đối d&ograve;ng tiền cho doanh nghiệp.</li>\r\n	</ul>\r\n	</li>\r\n	<li>Chốt số liệu, lập c&aacute;c&nbsp;b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh&nbsp;ho&agrave;n chỉnh.\r\n	<ul>\r\n		<li>Bộ b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</li>\r\n		<li>Quyết to&aacute;n thuế TNDN</li>\r\n		<li>Quyết to&aacute;n thuế TNCN&hellip;</li>\r\n	</ul>\r\n	</li>\r\n	<li>In sổ s&aacute;ch, chứng từ b&agrave;n giao đầy đủ cho doanh nghiệp.</li>\r\n	<li>Sau khi khảo s&aacute;t hồ sơ tại doanh nghi&ecirc;̣p, ch&uacute;ng t&ocirc;i sẽ gửi danh mục c&ocirc;ng việc cần thực hiện cụ thể v&agrave; b&aacute;o gi&aacute; đến Qu&yacute; kh&aacute;ch h&agrave;ng</li>\r\n	<li>Đ&ocirc;̀ng thời trong qu&aacute; tr&igrave;nh thực hi&ecirc;̣n , ch&uacute;ng t&ocirc;i sẽ tư v&acirc;́n cho qu&yacute; c&ocirc;ng ty c&aacute;c n&ocirc;̣i n&ocirc;̣i dung v&agrave; v&acirc;́n đ&ecirc;̀ li&ecirc;n quan đ&ecirc;́n k&ecirc;́ to&aacute;n , lu&acirc;̣t thu&ecirc;́ v&agrave; h&oacute;a đơn chứng từ trong hoạt đ&ocirc;̣ng kinh doanh .</li>\r\n</ul>\r\n\r\n<h2>Khi n&agrave;o bạn n&ecirc;n t&igrave;m đến dịch vụ l&agrave;m b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh cuối năm &nbsp;gi&aacute; rẻ</h2>\r\n\r\n<ul>\r\n	<li>Bạn&nbsp; l&agrave; doanh nghiệp mới th&agrave;nh lập, chưa c&oacute; kế to&aacute;n, chưa c&oacute; nhiều chi ph&iacute; đầu tư n&ecirc;n chọn giải ph&aacute;p tự m&igrave;nh k&ecirc; khai thuế.</li>\r\n	<li>C&ocirc;ng ty bạn chưa c&oacute; kế to&aacute;n hoặc kế to&aacute;n đang nghỉ sinh, cần c&oacute; người thay thế trong một thời gian nhất định</li>\r\n	<li>Doanh nghiệp của bạn cần một người c&oacute; đủ kinh nghiệm, kỹ năng v&agrave; bằng cấp để quản l&yacute; v&agrave; hướng dẫn mọi thứ li&ecirc;n quan đến b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh</li>\r\n</ul>\r\n\r\n<h2>Tại sao bạn n&ecirc;n sử dụng dịch vụ b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh cuối năm của ch&uacute;ng t&ocirc;i?</h2>\r\n\r\n<ul>\r\n	<li>Đội ngũ chuy&ecirc;n vi&ecirc;n kế to&aacute;n, kế to&aacute;n trưởng v&agrave; kiểm to&aacute;n vi&ecirc;n chuy&ecirc;n nghiệp c&oacute; kinh nghiệm tr&ecirc;n dưới 10 năm, đảm bảo được tất cả những t&igrave;nh huống c&oacute; thể xảy ra cho doanh nghiệp</li>\r\n	<li>Mang lại lợi &iacute;ch tối đa cho doanh nghiệp với mức chi ph&iacute; ph&ugrave; hợp nhất.</li>\r\n	<li>Lu&ocirc;n cập nhật nhanh ch&oacute;ng nhất c&aacute;c thay đổi th&ocirc;ng tin, nghị định thuế</li>\r\n	<li>Tư vấn c&acirc;n đối chi ph&iacute; hang th&aacute;ng để tiết kiệm tối đa nhất cho doanh nghiệp</li>\r\n	<li>Chế độ chăm s&oacute;c v&agrave; tư vấn kh&aacute;ch h&agrave;ng tận t&igrave;nh 24/7</li>\r\n</ul>\r\n', '', '', '', 'http://localhost/giarehon/uploads/images/KeToanTaiNha.png');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `id` varchar(36) NOT NULL,
  `module_1` varchar(255) NOT NULL,
  `module_2` varchar(255) NOT NULL,
  `order_table` varchar(2) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`id`, `module_1`, `module_2`, `order_table`) VALUES
('359d5a97d9ce0a649f5d4ce524316ec0ZGlL', 'email', 'email_sent', '21'),
('4aaefa819c73d1bf7df247a09982dc4236BC', 'blog', 'blog_category', '21'),
('5fc636bc0e8660449f539b9f5433b31dpAAg', 'email_sent', 'user', '12'),
('66671b71cd89a089b0510fb07d4cbe01SIJQ', 'email_sent', 'email', '12'),
('f370ca2d5b31ed9abb77050741d1a373pT34', 'user', 'email_sent', '21'),
('fa5cc47295f7f3a4b00763c1b40bbfb8Fdk6', 'blog_category', 'blog', '12');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `date_entered`, `date_modifiled`, `user_created`, `user_modifiled`, `name`, `description`, `detail`) VALUES
('2e3ecd585aab4a2f0980b67cec8d5bd7HtPt', '2017-10-07 09:50:14', '2017-10-10 21:29:08', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Tác giả', '', '{"user_edit":null,"user_view":null,"user_delete":null,"user_other":[],"email_sent_edit":null,"email_sent_view":null,"email_sent_delete":null,"email_sent_other":[],"email_template_edit":null,"email_template_view":null,"email_template_delete":null,"email_template_other":[],"email_edit":null,"email_view":null,"email_delete":null,"email_other":[],"blog_edit":"on","blog_view":"on","blog_delete":"on","blog_other":[],"blog_category_edit":null,"blog_category_view":"on","blog_category_delete":null,"blog_category_other":[],"page_edit":"on","page_view":"on","page_delete":"on","page_other":[],"setting_edit":null,"setting_view":null,"setting_delete":null,"setting_other":[]}'),
('6ff7a7f6df573b72793750e642040e4bIM45', '2017-10-06 20:23:02', '2017-10-20 08:12:57', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Quản trị', '', '{"user_edit":"on","user_view":"on","user_delete":"on","user_other":[],"email_sent_edit":"on","email_sent_view":"on","email_sent_delete":"on","email_sent_other":[],"email_template_edit":"on","email_template_view":"on","email_template_delete":"on","email_template_other":[],"email_edit":"on","email_view":"on","email_delete":"on","email_other":["email_send_mail","email_filter_duplicate","email_filter_valid_email"],"blog_edit":"on","blog_view":"on","blog_delete":"on","blog_other":[],"blog_category_edit":"on","blog_category_view":"on","blog_category_delete":"on","blog_category_other":[],"page_edit":"on","page_view":"on","page_delete":"on","page_other":[],"setting_edit":"on","setting_view":"on","setting_delete":"on","setting_other":[]}'),
('f68f965beddd9d1f414e4f9a3980726ctzrp', '2017-10-06 20:23:29', '2017-10-10 21:32:08', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 'Người viết bài', '', '{"user_edit":null,"user_view":null,"user_delete":null,"user_other":[],"email_sent_edit":null,"email_sent_view":null,"email_sent_delete":null,"email_sent_other":[],"email_template_edit":null,"email_template_view":null,"email_template_delete":null,"email_template_other":[],"email_edit":"on","email_view":null,"email_delete":null,"email_other":[],"blog_edit":"on","blog_view":"on","blog_delete":null,"blog_other":[],"blog_category_edit":null,"blog_category_view":null,"blog_category_delete":null,"blog_category_other":[],"page_edit":null,"page_view":null,"page_delete":"on","page_other":[],"setting_edit":null,"setting_view":"on","setting_delete":null,"setting_other":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `router`
--

CREATE TABLE IF NOT EXISTS `router` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `target_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `target_id` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `router`
--

INSERT INTO `router` (`id`, `name`, `target_id`) VALUES
('0efcc6d756edca82ccadb737e9edf208RWQ3', 'dich-vu-bao-cao-thue', '0efcc6d756edca82ccadb737e9edf2082xDP'),
('120e26f7dbd4efb993eb880c0714e997D7ZH', 'dich-vu-lam-bhxh-bhyt', '120e26f7dbd4efb993eb880c0714e997GqwQ'),
('3366adacd5682e7f8aa34e7bf7a4b9a48w9Z', 'dich-vu-lam-so-sach-ke-toan', '3366adacd5682e7f8aa34e7bf7a4b9a4i1o3'),
('48066c37e639b59b68f291036b4932b1Np8n', 'lien-he', '48066c37e639b59b68f291036b4932b1E6M6'),
('51f4fe64e01d226fd55ebe187b7e91bfRWsm', 'kinh-nghiem-ke-toan', '0fbfa626124db3cf3b3fb5750da0911cOxbU'),
('61aacfb31460de9be908ea0232689837jcFh', 'dich-vu-quyet-toan-thue', 'a021e8436874e9b351f91c841a8ba13d5ZI3'),
('8efebfcf104c95ad5f878163d1cc4b810mX6', 'tin-tuc-ke-toan', 'd2de8157a449f16a46431797e3279180B9eB'),
('a4ebb7ddbba4a231455fa89a60dd97ad1HUE', 'dich-vu-thanh-lap-doanh-nghiep', 'a4ebb7ddbba4a231455fa89a60dd97adeGt8'),
('ccd67975c1898a0806d126ba255a50e0yKFN', 'gioi-thieu', 'ccd67975c1898a0806d126ba255a50e04oD1'),
('e053ad639039efa05154def8cf67208bW8hr', 'dich-vu-bao-cao-tai-chinh', 'e053ad639039efa05154def8cf67208bmtn2');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`name`, `value`) VALUES
('page_title', 'Tiêu đề trang web'),
('page_description', 'Mô tả trang web'),
('logo', 'http://localhost/web//uploads/images/logo(2).png'),
('icon', 'http://localhost/web//uploads/images/18403470_1493652630677594_3378762728730702751_n.png'),
('mail_host', 'smtp.zoho.com'),
('mail_secure', 'tls'),
('mail_port', '587'),
('mail_username', 'me@bukt.info'),
('mail_password', 'Poipoi12355880'),
('mail_from', 'me@bukt.info'),
('mail_from_name', 'Trần Khánh Toàn'),
('num_posts_per_page', '10'),
('mail_signature', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(36) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modifiled` datetime NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_created` varchar(36) NOT NULL,
  `user_modifiled` varchar(36) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `date_entered`, `date_modifiled`, `username`, `password`, `avatar`, `first_name`, `last_name`, `email`, `phone`, `description`, `user_created`, `user_modifiled`, `admin`, `role_id`) VALUES
('0407a81661f4af8c080afcac3d15ff0eZTl8', '2017-10-06 20:24:53', '2017-10-07 11:18:04', 'dohang', '$2y$10$7.ztl8sSnI8EhyZuZm/WKOO2NCjybwKEzVU8fQr2IEpWIqZyap.U.', 'http://localhost/giarehon/uploads/images/user.jpg', 'Đỗ Thị Thúy', 'Hằng', 'hangdvkt@yahoo.com', '0937319194', 'mô tả', '', '', 0, '2e3ecd585aab4a2f0980b67cec8d5bd7HtPt'),
('749c6ffa523195afa50eaeb6b25ff4ee8gCp', '2017-09-08 14:14:26', '2017-10-07 11:19:48', 'admin', '$2y$10$8v2cFLmOjX.gQf7g/X9EC.n5QX40zTix7MlS/zns4dgYbcGjaORue', 'http://localhost/giarehon/uploads/images/user.jpg', 'Trần Khánh', 'Toàn', 'trankhanhtoan96@gmail.com', '01636634028', 'mô tả bản thân', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', '749c6ffa523195afa50eaeb6b25ff4ee8gCp', 1, 'f68f965beddd9d1f414e4f9a3980726ctzrp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
