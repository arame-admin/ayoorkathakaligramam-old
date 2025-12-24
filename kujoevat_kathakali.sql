-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- 
-- Generation Time: Dec 01, 2025 at 02:07 PM
-- Server version: 8.0.44
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `p_id` int NOT NULL,
  `p_img` varchar(255) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_Group` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`p_id`, `p_img`, `p_title`, `p_Group`) VALUES
(1, 'images/Christmas-cardborder.jpg', 'Christmas-cardborder.jpg', 'test'),
(2, 'images/Chrysanthemum.jpg', 'Chrysanthemum.jpg', 'test'),
(3, 'images/g1.jpg', 'g1.jpg', 'Kathakali Art Form'),
(4, 'images/g2.jpg', 'g2.jpg', 'Kathakali Art Form'),
(5, 'images/g3.jpg', 'g3.jpg', 'Kathakali Art Form'),
(6, 'images/g4.jpg', 'g4.jpg', 'Kathakali Art Form'),
(7, 'images/g5.jpg', 'g5.jpg', 'Kathakali Art Form'),
(8, 'images/g6.jpg', 'g6.jpg', 'Kathakali Art Form'),
(9, 'images/g7.jpg', 'g7.jpg', 'Kathakali Art Form'),
(10, 'images/g8.jpg', 'g8.jpg', 'Kathakali Art Form'),
(11, 'images/g9.jpg', 'g9.jpg', 'Kathakali Art Form'),
(12, 'images/g10.jpg', 'g10.jpg', 'Kathakali Art Form'),
(13, 'images/g11.jpg', 'g11.jpg', 'Kathakali Art Form'),
(14, 'images/g12.jpg', 'g12.jpg', 'Kathakali Art Form'),
(15, 'images/g13.jpg', 'g13.jpg', 'Kathakali Art Form'),
(16, 'images/g14.jpg', 'g14.jpg', 'Kathakali Art Form'),
(17, 'images/g15.jpg', 'g15.jpg', 'Kathakali Art Form'),
(18, 'images/g16.jpg', 'g16.jpg', 'Kathakali Art Form'),
(19, 'images/g17.jpg', 'g17.jpg', 'Kathakali Art Form'),
(20, 'images/aw1.jpg', 'aw1.jpg', 'Kalamandalam Awards'),
(21, 'images/aw2.jpg', 'aw2.jpg', 'Kalamandalam Awards'),
(22, 'images/aw3.jpg', 'aw3.jpg', 'Kalamandalam Awards'),
(23, 'images/aw4a.jpg', 'aw4a.jpg', 'Kalamandalam Awards'),
(24, 'images/aw4b.jpg', 'aw4b.jpg', 'Kalamandalam Awards'),
(25, 'images/aw4c.jpg', 'aw4c.jpg', 'Kalamandalam Awards'),
(26, 'images/aw4d.jpg', 'aw4d.jpg', 'Kalamandalam Awards'),
(27, 'images/aw4e.jpg', 'aw4e.jpg', 'Kalamandalam Awards'),
(28, 'images/aw8.jpg', 'aw8.jpg', 'Kalamandalam Awards'),
(29, 'images/aw9.jpg', 'aw9.jpg', 'Kalamandalam Awards'),
(30, 'images/aw10.jpg', 'aw10.jpg', 'Kalamandalam Awards'),
(31, 'images/aw11.jpg', 'aw11.jpg', 'Kalamandalam Awards'),
(32, 'images/AW007.jpg', 'AW007.jpg', 'Appreciation Awards'),
(33, 'images/AW007a.jpg', 'AW007a.jpg', 'Appreciation Awards'),
(34, 'images/AW007b.jpg', 'AW007b.jpg', 'Appreciation Awards'),
(35, 'images/AW007c.jpg', 'AW007c.jpg', 'Appreciation Awards'),
(36, 'images/AW008.jpg', 'AW008.jpg', 'Appreciation Awards'),
(37, 'images/AW008a.jpg', 'AW008a.jpg', 'Appreciation Awards'),
(38, 'images/AW009.jpg', 'AW009.jpg', 'Appreciation Awards'),
(39, 'images/AW010.jpg', 'AW010.jpg', 'Appreciation Awards'),
(40, 'images/AW011.jpg', 'AW011.jpg', 'Appreciation Awards'),
(41, 'images/AW012.jpg', 'AW012.jpg', 'Appreciation Awards'),
(42, 'images/nw1.jpg', 'nw1.jpg', 'News Articles'),
(43, 'images/nw2.jpg', 'nw2.jpg', 'News Articles'),
(44, 'images/nw3.jpg', 'nw3.jpg', 'News Articles'),
(45, 'images/nw4.jpg', 'nw4.jpg', 'News Articles'),
(46, 'images/nw5.jpg', 'nw5.jpg', 'News Articles'),
(47, 'images/nw6.jpg', 'nw6.jpg', 'News Articles'),
(48, 'images/nw7.jpg', 'nw7.jpg', 'News Articles'),
(49, 'images/nw8.jpg', 'nw8.jpg', 'News Articles'),
(50, 'images/nw9.jpg', 'nw9.jpg', 'News Articles'),
(51, 'images/nw10.jpg', 'nw10.jpg', 'News Articles'),
(52, 'images/nw11.jpg', 'nw11.jpg', 'News Articles'),
(53, 'images/nw12.jpg', 'nw12.jpg', 'News Articles'),
(54, 'images/nw13.jpg', 'nw13.jpg', 'News Articles'),
(55, 'images/nw14.jpg', 'nw14.jpg', 'News Articles'),
(56, 'images/nw15.jpg', 'nw15.jpg', 'News Articles');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

DROP TABLE IF EXISTS `users_login`;
CREATE TABLE `users_login` (
  `ul_id` int NOT NULL,
  `ul_user` varchar(255) NOT NULL,
  `ul_pass` varchar(255) NOT NULL,
  `ul_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`ul_id`, `ul_user`, `ul_pass`, `ul_type`) VALUES
(1, 'joemon', 'joe89', 'tester'),
(2, 'KathSec', 'secet*ry', 'tester');

-- --------------------------------------------------------

--
-- Table structure for table `users_message`
--

DROP TABLE IF EXISTS `users_message`;
CREATE TABLE `users_message` (
  `um_id` int NOT NULL,
  `um_message` varchar(1000) NOT NULL,
  `um_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_message`
--

INSERT INTO `users_message` (`um_id`, `um_message`, `um_date`) VALUES
(15, 'KATHAKALI FEST 2022 ', '02.12.2021'),
(17, 'KATHAKALI FEST 2022 ', '02.12.2021'),
(24, 'KATHAKALI FEST 2022  Venue: District Kathakali Club Auditorium, Ayroor Kathakali Gramam, Cherukolpuzha  Date: January 3 -9, 2022  Strories  1. Balivijayam (03.01.2022 at 6.30 pm) 2. Lavanasuravadham (04.01.2022 at 6.30 pm) 3. Banayudham (05.01.2022 at 6.30 pm) Kirmeeravadham (part 2) (06.01.2022 at 6.30 pm) Nalacharitham IInd Day (07.01.2022 at 6.30 pm) Utharaswayamvaram (08.01.2022 at 6.30 pm) Duryodhanavadham (09.01.2022 at 6.30 pm)', ''),
(26, 'The Govt of Kerala vide Gazatte Notification No. G.O.(P) No.104/2023/RD/dated 5.04.2023 have accorded an order changing the name of Ayroor kara in pathanamthitta Dist as Ayirur Kathakali Gramam following the concurvance of the Ministry of Home Affairs , Govt of India. The Order came in to force with immediate effect', '5th April 2023'),
(28, 'testing', '27/11/2024'),
(29, '18th Kathakali Fest 2025 will start on january 6th Monday', '27/11/2024'),
(30, '', '27/11/2024'),
(31, 'Kathakal of this Festival; Lavanasura Vadham,Nalacharitham[4th Day],Ravana Vijayam,Keechaka Vadham,Kalakeya Vadham,Subhadraharanam and Bali Vadham.every day it starts at 6.30 pm.The festival starts on 6th january2025 and ends on 12th january. there will be kathakali for school children in day time,which will be the lessons of the 10th and +2 classes.e  ', '28/11/2025'),
(32, 'Kathakal of this Festival; Lavanasura Vadham,Nalacharitham[4th Day],Ravana Vijayam,Keechaka Vadham,Kalakeya Vadham,Subhadraharanam and Bali Vadham.every day it starts at 6.30 pm.The festival starts on 6th january2025 and ends on 12th january. there will be kathakali for school children in day time,which will be the lessons of the 10th and +2 classes.e  ', '28/11/2025'),
(33, 'Plays at day time for students ;;6th january 2025 Monday;Pralobhanam [Nalacharitham for 10th std.]7th january Tuesday Kesinee Mozhi[Nalacharitham for +2 students],,and Arangettam of Chenda[Keli],,8th january wednesday;Poothanaamoksham,, .9th january Thursday Patakam and kathakali Kalyana Saugandhikam,,10th January Friday;;Uthara swayamvaram,,.On11th and 12th January,saturday and Sunday there is competetions in Classical Art events like Vanchi pattu,Chithra Rachana,Kathakali Quis,Translation from Malayalam to English of Kathakali stories, Thayambaka,etc.Students can register through thier school to participate in the Patanakalari and arts competetions,,s,', '28/11/2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`ul_id`);

--
-- Indexes for table `users_message`
--
ALTER TABLE `users_message`
  ADD PRIMARY KEY (`um_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `p_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `ul_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_message`
--
ALTER TABLE `users_message`
  MODIFY `um_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
