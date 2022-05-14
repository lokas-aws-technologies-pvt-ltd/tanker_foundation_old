-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2017 at 01:56 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lokasco_orange`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` char(1) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `modified_by` tinyint(4) NOT NULL COMMENT 'Modified by which admin',
  `modified_on` datetime DEFAULT NULL COMMENT 'Modified Date and Time'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='This table contains all admin users details';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `type`, `created_on`, `status`, `last_login`, `modified_by`, `modified_on`) VALUES
(1, 'admin', 'admin@oystor.com', '90a7bfae60e5bbb4c8d540b6765da3b4', 'N', '2011-03-11 00:00:00', 'A', '2017-06-16 02:32:04', 0, '2011-03-28 16:30:03'),
(4, 'kamaraj', 'kamaraj.sivam@m9online.com', '40be4e59b9a2a2b5dffb918c0e86b3d7', 'N', '2011-03-25 09:17:32', 'A', '2011-09-22 15:43:21', 0, NULL),
(8, 'KP', 'krishna.prasad@m9online.com', '26b568e4192a164d5b3eacdbd632bc2e', 'N', '2011-03-29 11:58:48', 'A', '2011-06-21 23:16:17', 1, '2011-06-21 23:05:38'),
(16, 'Ashok', 'ashok@m9online.com', '40be4e59b9a2a2b5dffb918c0e86b3d7', 'N', '2011-06-07 00:17:14', 'A', '2011-09-22 13:58:57', 1, '2011-07-12 10:24:06'),
(17, 'Nicole', 'nicole.leo@m9online.com', '40be4e59b9a2a2b5dffb918c0e86b3d7', 'N', '2011-06-07 00:19:13', 'A', '2011-09-05 07:04:44', 0, NULL),
(18, 'Thazin', 'Thazin@m9online.com', 'af8f7bd6582b99a958e1829becb70308', 'N', '2011-06-07 00:21:42', 'A', '2011-09-06 06:39:58', 0, NULL),
(19, 'Raja', 'pulandranraja.t@m9online.com', '40be4e59b9a2a2b5dffb918c0e86b3d7', 'N', '2011-06-07 01:17:35', 'A', '2011-08-30 17:09:23', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `rrn` varchar(20) NOT NULL,
  `stan` varchar(20) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `approval_code` varchar(20) NOT NULL,
  `3ds_eci` varchar(100) NOT NULL,
  `3ds_cavv_aav` varchar(50) NOT NULL,
  `3ds_status` varchar(2) NOT NULL,
  `pg_error_code` varchar(15) DEFAULT NULL,
  `pg_error_detail` text,
  `pg_error_msg` text NOT NULL,
  `command` varchar(100) NOT NULL,
  `card_type` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `locale` varchar(100) NOT NULL,
  `order_info` varchar(100) NOT NULL,
  `merchant_id` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `transaction_id`, `amount`, `status`, `rrn`, `stan`, `invoice`, `approval_code`, `3ds_eci`, `3ds_cavv_aav`, `3ds_status`, `pg_error_code`, `pg_error_detail`, `pg_error_msg`, `command`, `card_type`, `message`, `version`, `locale`, `order_info`, `merchant_id`) VALUES
(6, 33, 15459601, '1', '50020', '506808250361', '003976', '003758', '049710', '05', 'AAABAWcAAEdRcXgZhQAAAAAAAAA=', 'Y', '0', '', 'Success', '', '', '', '', '', '', ''),
(7, 34, 15464199, '1', '50020', '506811550134', '003977', '003759', '067579', '05', 'AAABAWcAAIQFEyCGcQAAAAAAAAA=', 'Y', '0', '', 'Success', '', '', '', '', '', '', ''),
(8, 55, 5456, '50000', '0', '1504031665', '125252', '805', 'M', 'Unsup', 'Y', '00', '0', 'Transaction Successful', 'Transaction Successful', 'pay', 'AE', 'Approved', '1', 'en', 'First', 'TEST9824659023'),
(9, 57, 5457, '500', '0', '1504031666', '125541', '805', 'M', 'Unsup', 'Y', '00', '0', 'Transaction Successful', 'Transaction Successful', 'pay', 'AE', 'Approved', '1', 'en', 'First', 'TEST9824659023'),
(10, 58, 5458, '500', '0', '1504031667', '125616', '805', 'M', 'Unsupported', 'Y', '00', '0', 'Transaction Successful', 'Transaction Successful', 'pay', 'AE', 'Approved', '1', 'en', 'First', 'TEST9824659023'),
(11, 60, 0, '25000', 'F', '', '', '0', '', '', '', '', 'F', '3D Secure Authentication failed', '3D Secure Authentication failed', 'pay', '', 'The card holder was not authorised. This is used in 3-D Secure Authentication.', '1', 'en', 'Rainbows are real', 'TEST9824659023'),
(12, 61, 5459, '2000', '0', '1504031668', '125728', '805', 'M', 'Unsupported', 'Y', '00', '0', 'Transaction Successful', 'Transaction Successful', 'pay', 'AE', 'Approved', '1', 'en', 'Lets make smoking uncool', 'TEST9824659023'),
(13, 62, 5460, '2000', '0', '1504031669', '125806', '805', 'M', 'Unsupported', 'Y', '00', '0', 'Transaction Successful', 'Transaction Successful', 'pay', 'AE', 'Approved', '1', 'en', 'Lets make smoking uncool', 'TEST9824659023'),
(14, 64, 16577249, '25000', '50011', '0', '0', '0', '0', '0', '0', '0', '10030', 'User Canceled Capture Page', 'Card Capture Aborted', '', '', '', '', '', '', ''),
(15, 66, 16580876, '50000', '50011', '0', '0', '0', '0', '0', '0', '0', '10030', 'User Canceled Capture Page', 'Card Capture Aborted', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign`
--

CREATE TABLE IF NOT EXISTS `tbl_campaign` (
  `id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `campTitle` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `campDesc` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `open_campaign` tinyint(1) DEFAULT NULL COMMENT '0 - no, 1-yes',
  `is_show_home` int(11) NOT NULL COMMENT '1 - Show in Homepage, 0 - Dont Show',
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `typeId` smallint(6) DEFAULT NULL,
  `campUrl` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `campLoc` text CHARACTER SET utf8,
  `campTarAmount` float DEFAULT NULL,
  `denAmt1` int(11) DEFAULT NULL,
  `denAmt2` int(11) DEFAULT NULL,
  `denAmt3` int(11) DEFAULT NULL,
  `abtCamp` text CHARACTER SET utf8,
  `projSumm` text CHARACTER SET utf8,
  `abtOrg` text CHARACTER SET utf8,
  `projDet` text CHARACTER SET utf8,
  `video_link` text CHARACTER SET utf8,
  `video_type` int(1) NOT NULL COMMENT '1-youtube,2-normal',
  `numViews` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `isSponsor` tinyint(4) DEFAULT NULL,
  `amtCollected` float DEFAULT '0',
  `createDate` datetime DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'D-draft, P-process for approval, A-approved'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaign`
--

INSERT INTO `tbl_campaign` (`id`, `creator_id`, `campTitle`, `campDesc`, `open_campaign`, `is_show_home`, `startDate`, `endDate`, `typeId`, `campUrl`, `campLoc`, `campTarAmount`, `denAmt1`, `denAmt2`, `denAmt3`, `abtCamp`, `projSumm`, `abtOrg`, `projDet`, `video_link`, `video_type`, `numViews`, `categoryId`, `isSponsor`, `amtCollected`, `createDate`, `status`) VALUES
(4, NULL, 'Rainbows are real', 'Produce the Film      ', 1, 1, '0000-00-00', '0000-00-00', NULL, 'rainbow', 'Saidapet', 250000, 25000, 50000, 10000, 'Producing the film', 'Production', 'Rainbow', 'Rainbows are real      ', 'FgbJ1keDxfQ', 1, NULL, NULL, NULL, 125000, '2015-01-20 12:36:24', 'A'),
(5, NULL, 'First', 'First Campaign for water        ', 1, 1, '0000-00-00', '0000-00-00', NULL, 'water', 'Mandaveli', 12500, 500, 1000, 2500, 'Campaign Description', 'Campaign Summary', 'About Water Organisation', 'Campaign Details        ', '7W_2pe0SorQ', 1, NULL, NULL, NULL, 7500, '2015-01-21 10:25:34', 'A'),
(6, NULL, 'Battle of the Buffet', 'Eat for a Cause   ', 1, 1, '0000-00-00', '0000-00-00', NULL, 'buffet_battle', 'Anna Nagar', 10000, 1000, 1500, 2000, '100% of your funds would be given as donation to NalandaWay Foundation. NalandaWay is an NGO based in Chennai that seeks to develop a sense of self-importance and individuality and encourage self-expression among disadvantaged children through its arts-based programmes.', 'Battle of Buffet', '''Battle of Buffet'' is organized as part of ''Joy of Giving Week'' to raise funds for NGOs in Tamil Nadu. To buy a ticket, please make a donation of Rs 5000 by clicking on the ''donate'' button on this page. In the donation page, please mention your complete postal address and correct phone number. ', 'Buy a ticket for Rs. 5000 and be entitled to a free dinner coupon for a buffet offered by Chennai''s top 4 & 5 star restaurants at ''Battle of the Buffet'' to be held on October 1, 2013 at Chennai Trade Centre  ', 'sVTy-oEEC8g', 1, NULL, NULL, NULL, 8000, '2015-01-17 17:34:57', 'A'),
(7, NULL, 'cxvzxcv', 'xcvzxc             ', 0, 0, '2015-01-19', '2015-01-19', NULL, 'xcvzxc', 'rgsertwer', 34534, 35423, 2345, 2345234, 'xzcvzxc', 'xcvzxcv', 'xczvxcv', 'xczvzxc             ', 'cx190115060432vd.mp4', 2, NULL, NULL, NULL, NULL, '2015-01-17 18:39:05', 'D'),
(8, NULL, 'Lets make smoking uncool', 'Celebrating ''The Golden Jubilee 60 years of the Cancer Institute (Chennai)'', they have teamed up with Evam to create an unique project, ''Lets make Smoking uncool'' , to reach out to school children with a fun quirky memorable piece of Street Theatre  ', 0, 1, '2015-03-27', '2015-05-20', NULL, 'uncool', 'Mylapore', 25000, 2000, 2500, 3000, 'Smoking Uncool', 'All donations made via www.orangestreet.in are eligible for tax reduction receipts under Section 80(G) of the Income Tax Act.', 'Entrepreneurships with the mission of "making a positive impact" in the lives of people through the medium of arts, especially Theatre. ', 'We, together, aim to raise funds from individuals and corporates via www.Orangestreet.in to enable this project to reach out to as many schools in and around Tamilnadu, ensuring that we get across the message of how nicotine is addictive and experimenting it even once is risky, and also that early detection of Cancer is important.           ', 'mzTHu3U4Plc', 1, NULL, NULL, NULL, 7000, '2015-01-19 19:36:15', 'A'),
(9, NULL, 'teste', 'sfsfsdfsf  ', 1, 0, '0000-00-00', '0000-00-00', NULL, 'reerere', 'India', 100000, 1000, 5000, 10000, 'fdsfdsfdsfs', 'sfsdfdsfds', 'ffdsfdsfdsf', 'dsfdsffsf  ', '7W_2pe0SorQ', 1, NULL, NULL, NULL, 0, '2015-05-27 12:28:40', 'A'),
(10, NULL, 'raghu', 'raghu ', 1, 1, '0000-00-00', '0000-00-00', NULL, 'lokas.in', 'raghu', 10000, 1500, 2000, 2500, 'raghu', 'raghu', 'raghu', 'raghu ', 'kY5P9sZqFas', 1, NULL, NULL, NULL, 0, '2017-01-11 05:15:04', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign_custom_data`
--

CREATE TABLE IF NOT EXISTS `tbl_campaign_custom_data` (
  `data_id` int(11) NOT NULL,
  `campId` int(11) NOT NULL,
  `data_title` varchar(50) NOT NULL,
  `data_loc` varchar(200) NOT NULL,
  `data_desc` text NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_campaign_custom_data`
--

INSERT INTO `tbl_campaign_custom_data` (`data_id`, `campId`, `data_title`, `data_loc`, `data_desc`, `sort_order`) VALUES
(24, 6, 'Mumbai Flag', '1.jpg', 'Yes, all WakaTime plugins play well together. You can switch between multiple supported editors and your time will be logged correctly. If you use revision control software, your time will be logged to the correct project even when using multiple editors.', 1),
(25, 6, 'Loading Wheel', '2.png', 'Make sure to update your api key in $HOME/.wakatime.cfg(for plugins using wakatime cli) or WakaTime.sublime-settings(for Sublime Text) with your newly generated api key.', 2),
(26, 6, 'Christmas balls', '3.png', 'For example, if you took a 10 minute break and your timeout is set to the default 15 minutes, the 10 minutes where you were AFK will be logged. However, setting your timeout to 5 minutes would not log your 10 minute break.', 3),
(36, 9, 'First Icon', '91.png', 'dfvgdfgdfg', 1),
(37, 9, 'Second Icon', '92.png', 'dfdsfsdfds', 2),
(38, 9, 'Third Icon', '93.png', 'sdfdsfdsfddsf', 3),
(39, 8, 'Bell 1', '81.png', 'Yes, when working offline your logged time is saved in an sqlite3 database at $HOME/.wakatime.db. The next time you use WakaTime with internet access, your logged time is syncronized to the api.', 1),
(40, 8, 'Bell 2', '82.png', 'WakaTime loves third party developers. We want to help make your project awesome!\r\nThat''s why we''ve put together downloadable logos and assets which you can use in your own projects.', 2),
(41, 8, 'Bell 3', '83.png', 'WakaTime only logs time when you''re using your text editor by "pinging" the api with heartbeat events. You set a timeout value (default 15 minutes) and when you''re not using your text editor for longer than your timeout value, that time doesn''t get logged.', 3),
(42, 4, 'Why', '41.jpg', 'Classroom learning is boring, irrelevant and stressful leading to drop-outs', 1),
(43, 10, 'rtyd', '101.png', 'dfghf', 1),
(44, 10, 'fghfgh', '102.png', 'dfghdfgh', 2),
(45, 10, 'dfgsdf', '103.png', 'sdfsdfsd', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign_gifts`
--

CREATE TABLE IF NOT EXISTS `tbl_campaign_gifts` (
  `id` int(11) NOT NULL,
  `gift_desc` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `gift_amt` int(11) DEFAULT NULL,
  `gift_quan` int(11) DEFAULT NULL,
  `gift_unit` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `campId` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaign_gifts`
--

INSERT INTO `tbl_campaign_gifts` (`id`, `gift_desc`, `gift_amt`, `gift_quan`, `gift_unit`, `imageId`, `campId`) VALUES
(3, 'Water Bottle', 25, 1, 100, 536, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign_images`
--

CREATE TABLE IF NOT EXISTS `tbl_campaign_images` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `file_type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `location` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8 NOT NULL,
  `campId` int(11) NOT NULL,
  `uploadType` varchar(5) CHARACTER SET utf8 NOT NULL COMMENT 'T-Thumbnail, A-Album, I-Infographic, S-Sponsors, G-Gifts, D - Custom Icon in Details Page',
  `sort_order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaign_images`
--

INSERT INTO `tbl_campaign_images` (`id`, `filename`, `file_type`, `location`, `description`, `campId`, `uploadType`, `sort_order`) VALUES
(518, '518.png', 'png', '', '', 4, 'I', 1),
(529, 'fi300315115553tn.png', 'png', '', '', 5, 'T', 1),
(530, '530.jpg', 'jpg', '', '', 5, 'A', 1),
(531, '531.jpg', 'jpg', '', '', 5, 'A', 1),
(532, '532.jpg', 'jpg', '', '', 5, 'A', 1),
(533, '533.jpg', 'jpg', '', '', 5, 'I', 1),
(534, '534.jpg', 'jpg', '', '', 5, 'I', 1),
(535, '535.jpg', 'jpg', '', '', 5, 'I', 1),
(536, '5/536.jpg', 'jpg', '', '', 5, 'G', 1),
(537, '5/537.jpg', 'jpg', '', '', 5, 'S', 1),
(538, '538.jpeg', 'jpeg', '', '', 4, 'A', 1),
(539, '539.jpg', 'jpg', '', '', 4, 'A', 1),
(540, '540.jpg', 'jpg', '', '', 4, 'A', 1),
(541, 'ra300315125440tn.jpeg', 'jpeg', '', '', 4, 'T', 1),
(548, 'ba300315120354tn.jpg', 'jpg', '', '', 6, 'T', 1),
(549, '549.jpg', 'jpg', '', '', 6, 'A', 1),
(550, '550.jpg', 'jpg', '', '', 6, 'I', 1),
(551, '551.jpg', 'jpg', '', '', 6, 'I', 1),
(552, '552.jpg', 'jpg', '', '', 6, 'A', 1),
(553, 'le300315010809tn.jpg', 'jpg', '', '', 8, 'T', 1),
(554, '554.jpg', 'jpg', '', '', 8, 'A', 1),
(555, '555.jpg', 'jpg', '', '', 8, 'I', 1),
(569, 'te270515122840tn.png', 'png', '', '', 9, 'T', 1),
(570, '570.png', 'png', '', '', 9, 'A', 1),
(571, '571.png', 'png', '', '', 9, 'A', 1),
(572, '572.png', 'png', '', '', 9, 'I', 1),
(573, '573.png', 'png', '', '', 9, 'I', 1),
(574, '574.jpg', 'jpg', '', '', 4, 'I', 1),
(575, 'ra110117051504tn.jpg', 'jpg', '', '', 10, 'T', 1),
(576, '576.jpg', 'jpg', '', '', 10, 'A', 1),
(577, '577.jpg', 'jpg', '', '', 10, 'I', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_campaign_sponsors`
--

CREATE TABLE IF NOT EXISTS `tbl_campaign_sponsors` (
  `id` int(11) NOT NULL,
  `spon_desc` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `spon_amt` int(11) DEFAULT NULL,
  `imageId` int(11) DEFAULT NULL,
  `campId` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaign_sponsors`
--

INSERT INTO `tbl_campaign_sponsors` (`id`, `spon_desc`, `spon_amt`, `imageId`, `campId`, `status`) VALUES
(48, 'Water Can', 150, 537, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `word` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(136, 1484132230, '122.174.49.225', '22826398'),
(137, 1484133405, '122.174.49.225', '84285488'),
(138, 1484133851, '122.174.49.225', '43896419'),
(139, 1484134113, '122.174.49.225', '55247126'),
(140, 1484134288, '122.174.49.225', '81385181'),
(141, 1484134357, '122.174.49.225', '51749182'),
(142, 1484134426, '122.174.49.225', '45968712'),
(143, 1484134862, '122.174.49.225', '11232416'),
(144, 1484134862, '122.174.49.225', '89534866'),
(145, 1495020696, '106.51.1.132', '33878449'),
(146, 1495082300, '27.62.144.210', '15998789'),
(147, 1495083206, '27.62.144.210', '77786252'),
(148, 1495088549, '117.207.67.121', '65462742'),
(149, 1495088669, '117.207.67.121', '68597818'),
(150, 1497598263, '59.93.17.183', '97616357');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donate`
--

CREATE TABLE IF NOT EXISTS `tbl_donate` (
  `id` int(11) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 NOT NULL,
  `anonymous` varchar(5) CHARACTER SET utf8 NOT NULL,
  `altname` varchar(80) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `pincode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `country` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telPhone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `amountType` varchar(5) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(50) CHARACTER SET utf8 NOT NULL,
  `payingType` varchar(20) CHARACTER SET utf8 NOT NULL,
  `chequeNo` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bankName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `branchName` varchar(100) CHARACTER SET utf8 NOT NULL,
  `refNo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `status` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT 'P',
  `campId` int(11) NOT NULL,
  `createdDate` datetime NOT NULL,
  `updatedDate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donate`
--

INSERT INTO `tbl_donate` (`id`, `name`, `anonymous`, `altname`, `address`, `pincode`, `country`, `email`, `telPhone`, `amountType`, `amount`, `payingType`, `chequeNo`, `bankName`, `branchName`, `refNo`, `status`, `campId`, `createdDate`, `updatedDate`) VALUES
(2, 'test', 'O', 'sdfsdfsf', 'fsfsfsdsdf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-23 09:28:24', '0000-00-00 00:00:00'),
(16, '', 'O', 'fdsfsdfs', 'vxcvxvx', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-23 15:54:45', '0000-00-00 00:00:00'),
(17, 'sdfsf', 'O', 'asdasdczx', 'sdsdfsdfsdf', '1234567890', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-28 18:52:17', '0000-00-00 00:00:00'),
(18, '', 'O', '', 'sdfsdf', '234234', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-28 18:57:40', '0000-00-00 00:00:00'),
(19, 'test', 'O', 'fdsfsdfs', 'sdfsdfsdf', '123123', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-28 19:17:38', '0000-00-00 00:00:00'),
(20, 'test', 'O', 'fdsfsdfs', 'sdfsdfsdf', '123123', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-02-28 19:20:21', '0000-00-00 00:00:00'),
(21, '', '0', 'fdsfsdfs', 'sdfsdfdsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-02 11:31:48', '0000-00-00 00:00:00'),
(22, '', '0', 'fdsfsdfs', 'sdfsdfdsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-02 11:42:04', '0000-00-00 00:00:00'),
(23, '', '0', 'fdsfsdfs', 'sdfsdfdsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-02 11:44:08', '0000-00-00 00:00:00'),
(24, '', '0', 'fdsfsdfs', 'sdfsdfdsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-02 11:44:35', '0000-00-00 00:00:00'),
(25, '', '0', 'fdsfsdfs', 'sdfdsfds', '324324', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-02 12:27:06', '0000-00-00 00:00:00'),
(26, 'asdsads', 'O', 'asdsadsa', 'asdsadsad', '123123', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-05 20:28:38', '0000-00-00 00:00:00'),
(27, 'asdsads', 'O', 'fdsfsdfs', 'sdfsdfds', '12312312', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-05 20:37:09', '0000-00-00 00:00:00'),
(28, 'fsdfdsf', 'O', 'fdsfsdfs', 'sdfdsfsdf', '34324234', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-06 10:17:58', '0000-00-00 00:00:00'),
(29, 'sfdsf', 'O', 'sdfsfsd', 'sdfsdfdsf', '2131312', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-09 13:36:02', '0000-00-00 00:00:00'),
(30, 'asdsads', 'O', 'fdsfsdfs', 'sdfdsfsdf', '23423432', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-09 13:41:23', '0000-00-00 00:00:00'),
(31, 'asdsads', 'O', 'asdsadsa', 'xcvcxvx', '213234', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564.00', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-09 13:46:50', '0000-00-00 00:00:00'),
(32, 'asdsads', 'O', 'fdsfsdfs', 'nuiuibib', '658948', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '4564', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-09 13:50:33', '0000-00-00 00:00:00'),
(33, 'asdsads', 'O', 'asdsadsa', 'kniounhuon', '651893', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '100', 'Visa-Master', '', '', '', '', 'A', 5, '2015-03-09 13:53:17', '0000-00-00 00:00:00'),
(34, 'asdsads', 'O', 'fdsfsdfs', 'sdfdsfsdf', '324234243', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '100', 'Visa-Master', '', '', '', '', 'A', 5, '2015-03-09 17:23:28', '0000-00-00 00:00:00'),
(35, 'raghav', '0', '', '72/2a patel', '600011', 'india', 'raghav@lokas.in', '72', 'inr', '23400', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-10 09:38:03', '0000-00-00 00:00:00'),
(36, 'test', '0', '', 'test', '600011', 'india', 'bala@lokas.in', '43324891', 'inr', '100', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-10 10:27:28', '0000-00-00 00:00:00'),
(37, 'bala', '0', '', 'chnn', '600011', 'india', 'bala@lokas.in', '9952151113', 'inr', '100', 'Visa-Master', '', '', '', '', 'P', 5, '2015-03-16 16:13:23', '0000-00-00 00:00:00'),
(38, 'fasfsdfd', '0', '', 'xcvcxvxcv', '600061', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-03-24 15:59:24', '0000-00-00 00:00:00'),
(39, 'fasfsdfd', '0', '', 'xcvcxvxcv', '600061', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-03-24 16:16:05', '0000-00-00 00:00:00'),
(40, 'fasfsdfd', '0', '', 'asdasdsa', '1234565', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-03-24 16:41:29', '0000-00-00 00:00:00'),
(41, 'fasfsdfd', '0', '', 'asdadssad', '213213213', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-03-24 16:46:41', '0000-00-00 00:00:00'),
(42, 'fasfsdfd', '0', '', 'sdfsdfdsf', '123456', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-03-25 13:58:01', '0000-00-00 00:00:00'),
(43, 'Niraj', 'A', '', 'Test', '122001', 'India', 'test@test.com', '9999999999', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-02 18:00:42', '0000-00-00 00:00:00'),
(44, 'Niraj', '0', '', 'Test', '122001', 'India', 'test@test.com', '9999999999', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-02 18:01:43', '0000-00-00 00:00:00'),
(45, 'Niraj', '0', '', 'TEst', '122001', 'India', 'test@test.com', '9999999999', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 11:19:22', '0000-00-00 00:00:00'),
(46, 'Prabhu G', '0', '', 'Lakshmi Nagar, Nanganallur', '', 'India', 'pradeep@nsolutionz.com', '08056281019', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 13:18:14', '0000-00-00 00:00:00'),
(47, 'fasfsdfd', '0', '', 'gsgsg', '32432', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 13:30:01', '0000-00-00 00:00:00'),
(48, 'fasfsdfd', '0', '', 'sdfsdf', '12331242', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 13:39:04', '0000-00-00 00:00:00'),
(49, 'fasfsdfd', '0', '', 'asdadsadsad', '213231432', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 13:43:32', '0000-00-00 00:00:00'),
(50, 'niraj', '0', '', 'Test', '122001', 'India', 'test@test.com', '9999999999', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 14:05:35', '0000-00-00 00:00:00'),
(51, 'fasfsdfd', '0', '', 'ghvtuf8yvg', '786876896', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 14:30:54', '0000-00-00 00:00:00'),
(52, 'fasfsdfd', '0', '', 'sdfsdfds', '34234324', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 14:45:18', '0000-00-00 00:00:00'),
(53, 'fasfsdfd', '0', '', 'edfsdsd', '12321', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 14:46:32', '0000-00-00 00:00:00'),
(54, 'Niraj', '0', '', 'Test', '122001', 'India', 'test@test.com', '9999999999', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 15:19:42', '0000-00-00 00:00:00'),
(55, 'rerrrrrr', '0', '', 'sdfsdfdsf', '12312312', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'A', 5, '2015-04-03 16:07:46', '0000-00-00 00:00:00'),
(56, 'ghghghg', '0', '', 'asdsadsad', '121231231', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'P', 5, '2015-04-03 16:55:01', '0000-00-00 00:00:00'),
(57, 'wewweweww', '0', '', 'zxxzxzc', '21323213', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'A', 5, '2015-04-03 17:40:24', '0000-00-00 00:00:00'),
(58, 'ererere', '0', '', 'xcvxvx', '32423423', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '50000', 'Amex-Jcb', '', '', '', '', 'A', 5, '2015-04-03 17:51:37', '0000-00-00 00:00:00'),
(59, 'fasfsdfd', '0', '', 'asdsasadasd', '12312312', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '100000', 'Amex-Jcb', '', '', '', '', 'P', 6, '2015-04-03 18:25:46', '0000-00-00 00:00:00'),
(60, 'trytrytryrt', '0', '', 'asdasdsadsad', '35435345', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '2500000', 'Amex-Jcb', '', '', '', '', 'P', 4, '2015-04-03 18:27:39', '0000-00-00 00:00:00'),
(61, 'Prabhu', 'A', '', 'chennai', '600117', 'india', 'prabhu@nsolutionz.com', '8056281019', 'inr', '200000', 'Amex-Jcb', '', '', '', '', 'A', 8, '2015-04-03 18:36:40', '0000-00-00 00:00:00'),
(62, 'asdsadsad', '0', '', 'asdasdsadsa', '234324324', 'India', 'pradeep@nsolutionz.com', '1234657894', 'inr', '200000', 'Amex-Jcb', '', '', '', '', 'A', 8, '2015-04-03 18:52:19', '0000-00-00 00:00:00'),
(63, 'asdsads', '0', '', 'sdfdsfdsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '2500000', 'Amex-Jcb', '', '', '', '', 'P', 4, '2015-05-26 10:51:26', '0000-00-00 00:00:00'),
(64, 'Pradeep Go', '0', '', 'sdfds', '600114', 'United States', 'pradeep@nsolutionz.com', '911234556734', 'inr', '2500000', 'Visa-Master', '', '', '', '', 'P', 4, '2015-05-26 10:52:10', '0000-00-00 00:00:00'),
(65, 'dsfdsf', '0', '', 'dsfdsfsf', '600114', 'India', 'pradeep@nsolutionz.com', '911234556734', 'inr', '5000000', 'Netbanking', '', '', '', '', 'P', 4, '2015-05-26 14:01:11', '0000-00-00 00:00:00'),
(66, 'Pradeep Go', '0', '', 'sdfsf', '600114', 'United States', 'pradeep@nsolutionz.com', '911234556734', 'inr', '5000000', 'Visa-Master', '', '', '', '', 'P', 4, '2015-05-26 14:01:37', '0000-00-00 00:00:00'),
(67, 'asdkl', 'A', '', 'askkzfas;lk', '630017', 'india', 'prakash@lokas.info', '9787128371', 'inr', '2500000', 'Visa-Master', '', '', '', '', 'P', 4, '2017-01-10 13:26:17', '0000-00-00 00:00:00'),
(68, 'thanthoni', '0', '', 'dfgbdfgh', '124512', 'india', 'thanthoni@lokas.in', '54651554', 'inr', '150000', 'Cheque-DD', '3455423', 'sbi', 'mandaveli', '56563', 'P', 10, '2017-01-11 16:55:21', '0000-00-00 00:00:00'),
(69, 'dxcfdsf', '0', '', 'sdfasdf', '45342', 'sdfsdf', 'sdfsdf@fgdf.sdf', '453454', 'inr', '200000', 'Visa-Master', '', '', '', '', 'P', 10, '2017-01-11 16:59:05', '0000-00-00 00:00:00'),
(70, 'rtyytuyt', '0', '', 'fghfghdfg', '54345', 'fsdfsdf', 'dfsgdfgfdg@dfgdsfg.cvb', '464556345', 'inr', '250000', 'Netbanking', '', '', '', '', 'P', 10, '2017-01-11 17:02:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donate_sponsors_temp`
--

CREATE TABLE IF NOT EXISTS `tbl_donate_sponsors_temp` (
  `id` int(11) NOT NULL,
  `donateId` int(11) NOT NULL,
  `sponsId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`), ADD KEY `modified_by` (`modified_by`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tbl_campaign`
--
ALTER TABLE `tbl_campaign`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `campUrl` (`campUrl`);

--
-- Indexes for table `tbl_campaign_custom_data`
--
ALTER TABLE `tbl_campaign_custom_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `tbl_campaign_gifts`
--
ALTER TABLE `tbl_campaign_gifts`
  ADD PRIMARY KEY (`id`), ADD KEY `dfasdfs` (`campId`), ADD KEY `ftghfdf` (`imageId`);

--
-- Indexes for table `tbl_campaign_images`
--
ALTER TABLE `tbl_campaign_images`
  ADD PRIMARY KEY (`id`), ADD KEY `gfgdfd` (`campId`);

--
-- Indexes for table `tbl_campaign_sponsors`
--
ALTER TABLE `tbl_campaign_sponsors`
  ADD PRIMARY KEY (`id`), ADD KEY `campId` (`campId`);

--
-- Indexes for table `tbl_captcha`
--
ALTER TABLE `tbl_captcha`
  ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

--
-- Indexes for table `tbl_donate`
--
ALTER TABLE `tbl_donate`
  ADD PRIMARY KEY (`id`), ADD KEY `campId` (`campId`);

--
-- Indexes for table `tbl_donate_sponsors_temp`
--
ALTER TABLE `tbl_donate_sponsors_temp`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `donateId` (`donateId`,`sponsId`), ADD UNIQUE KEY `sponsId` (`sponsId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_campaign`
--
ALTER TABLE `tbl_campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_campaign_custom_data`
--
ALTER TABLE `tbl_campaign_custom_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tbl_campaign_gifts`
--
ALTER TABLE `tbl_campaign_gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_campaign_images`
--
ALTER TABLE `tbl_campaign_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=578;
--
-- AUTO_INCREMENT for table `tbl_campaign_sponsors`
--
ALTER TABLE `tbl_campaign_sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_captcha`
--
ALTER TABLE `tbl_captcha`
  MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `tbl_donate`
--
ALTER TABLE `tbl_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `tbl_donate_sponsors_temp`
--
ALTER TABLE `tbl_donate_sponsors_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_campaign_gifts`
--
ALTER TABLE `tbl_campaign_gifts`
ADD CONSTRAINT `tbl_campaign_gifts_ibfk_1` FOREIGN KEY (`imageId`) REFERENCES `tbl_campaign_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_campaign_gifts_ibfk_2` FOREIGN KEY (`campId`) REFERENCES `tbl_campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_campaign_images`
--
ALTER TABLE `tbl_campaign_images`
ADD CONSTRAINT `tbl_campaign_images_ibfk_1` FOREIGN KEY (`campId`) REFERENCES `tbl_campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_campaign_sponsors`
--
ALTER TABLE `tbl_campaign_sponsors`
ADD CONSTRAINT `tbl_campaign_sponsors_ibfk_1` FOREIGN KEY (`campId`) REFERENCES `tbl_campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_donate`
--
ALTER TABLE `tbl_donate`
ADD CONSTRAINT `tbl_donate_ibfk_1` FOREIGN KEY (`campId`) REFERENCES `tbl_campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_donate_sponsors_temp`
--
ALTER TABLE `tbl_donate_sponsors_temp`
ADD CONSTRAINT `tbl_donate_sponsors_temp_ibfk_1` FOREIGN KEY (`donateId`) REFERENCES `tbl_donate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_donate_sponsors_temp_ibfk_2` FOREIGN KEY (`sponsId`) REFERENCES `tbl_campaign_sponsors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
