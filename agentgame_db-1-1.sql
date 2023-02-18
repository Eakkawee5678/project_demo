-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2022 at 06:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agentgame_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agents`
--

CREATE TABLE `tbl_agents` (
  `agentID` int(11) NOT NULL,
  `gameID` int(11) NOT NULL,
  `agentFullname` varchar(50) NOT NULL,
  `agentEmail` varchar(50) NOT NULL,
  `agentPassword` varchar(50) NOT NULL,
  `agentPhone` varchar(20) DEFAULT NULL,
  `agentAddress` varchar(100) DEFAULT NULL,
  `agentPic` varchar(50) DEFAULT NULL,
  `agentStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_agents`
--

INSERT INTO `tbl_agents` (`agentID`, `gameID`, `agentFullname`, `agentEmail`, `agentPassword`, `agentPhone`, `agentAddress`, `agentPic`, `agentStatus`) VALUES
(1, 1, 'Manatsawee Komkam', 'ween@email.com', '123', '085456785', 'Phangnga', 'p2.jpg', 'Y'),
(2, 1, 'Perawich Nualtong', 'Nicky@email.com', 'nick123', '0879874569', 'Trang', 'p3.jpg', 'Y'),
(3, 2, 'Panutchanat Watchana', 'Imeen@gmail.com', 'm123', '0899874521', 'Surat Thani', '20221026484701870.jpg', 'Y'),
(4, 2, 'Chonticha Pongprasit', 'Boos@gmail.com', 'Boos123', '0875463214', 'Krabi', '20221026430820651.jpg', 'Y'),
(5, 4, 'Amita Into', 'Ing@gmail.com', 'ing123', '0857456321', 'Surat Thani', '202210261352427007.jpg', 'Y'),
(6, 4, 'Atsadawat Kontha', 'Boat@gmail.com', 'boat123', '0899546621', 'Surat Thani', '202210261295141544.jpg', 'Y'),
(7, 5, 'montira ruksuk', 'Jee@gmail.com', 'jee123', '0844562135', 'Surat Thani', '202210261590954508.jpg', 'Y'),
(8, 5, 'martin ratcha', 'Tin@gmail.com', 'tin123', '0855621354', 'Surat Thani', '202210261568080673.jpg', 'Y'),
(9, 6, 'weriyaporn insuan', 'panpan@gmail.com', 'pan123', '0846651234', 'Surat Thani', '20221026527308992.jpg', 'Y'),
(10, 6, 'Nattawut Yingyuad', 'soll@gmail.com', 'soll123', '0877745562', 'Songkla', '202210261034438565.jpg', 'Y'),
(11, 7, 'Jiraphinya Naunnim', 'tair@gmail.com', 'tair123', '0854421354', 'Pattalung', '202210261713062107.jpg', 'Y'),
(12, 7, 'Natnaree Phianjud', 'Prang@gmail.com', 'prang123', '0864521356', 'nakhon si thammarat', '202210261369090187.jpg', 'Y'),
(13, 8, 'Warit Attharat', 'fangtuinui@gmail.com', 'fang123', '0874456215', 'Ranong', '20221026719399527.jpg', 'Y'),
(14, 8, 'Wittawat Klinnoy', 'Aun@gmail.com', 'aun123', '0845513256', 'Surat Thani', '202210261757137413.jpg', 'Y'),
(15, 9, 'natthaporn anukun', 'mine@gmail.com', 'mine123', '0857654421', 'Surat Thani', '20221026108672887.jpg', 'Y'),
(16, 9, 'anurat sukkerd', 'Cap@gmail.com', 'cap123', '0856641234', 'Surat Thani', '20221026583088580.jpg', 'Y'),
(17, 10, 'apirat wanichsombat', 'api@gmail.com', 'api123', '0865432215', 'Chomporn', '20221026280270785.jpg', 'Y'),
(18, 10, 'anawat kanchanakoon', 'arm@gmail.com', 'arm123', '0955564421', 'Trang', '202210261535392107.jpg', 'Y'),
(19, 10, 'sitthiet sitthiwet', 'sit@gmail.com', 'sit123', '0966512452', 'Phuket', '20221026105305753.jpg', 'Y'),
(20, 1, 'Tanakrit Kumplong', 'Tana@gmail.com', 'tana123', '0944778543', 'Nakorn Sri Tammarat', '202210261295009401.jpg', 'Y'),
(21, 2, 'phanu rueangrak', 'phanu5@gmail.com', 'phanu123', '0965523145', 'Phuket', '202210261331816147.jpg', 'Y'),
(22, 8, 'Peeraphat Muknak', 'pepe@gmail.com', 'pe123', '0856632215', 'Phattalung', '20221026207146712.jpg', 'Y'),
(23, 10, 'Yarinda Mueangthip', 'yarin@gmail.com', 'yarin123', '0966312254', 'Yala', '202210262083245623.jpg', 'Y'),
(24, 7, 'Wasinee Pitak', 'wasi@gmail.com', 'wasi123', '0877455563', 'Satun', '202210261096845975.jpg', 'Y'),
(25, 1, 'sutthawee kongpiem', 'peem001@email.com', '001', '0523697412', 'Surat Thani', 'proicon.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_game`
--

CREATE TABLE `tbl_game` (
  `gameID` int(11) NOT NULL,
  `gameName` varchar(50) NOT NULL,
  `gamePic` varchar(50) NOT NULL,
  `gameCateID` int(11) NOT NULL,
  `gameStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_game`
--

INSERT INTO `tbl_game` (`gameID`, `gameName`, `gamePic`, `gameCateID`, `gameStatus`) VALUES
(1, 'valorant', 'valorant.jpg', 1, 'Y'),
(2, 'Rov', 'rov.jpg', 2, 'Y'),
(4, 'League of Legends', 'lol.jpg', 2, 'Y'),
(5, 'Overwatch2', 'Overwatch2.jpg', 1, 'Y'),
(6, 'Apex Legends', 'Ap.jpg', 1, 'Y'),
(7, 'Counter-Strike', 'csgo.jpg', 1, 'Y'),
(8, 'pubg', 'pubg.jpg', 1, 'Y'),
(9, 'call of duty mobile', '20221026519580140.jpg', 1, 'Y'),
(10, 'Pokémon UNITE', '202210261826085716.jpg', 2, 'Y'),
(11, 'nickky', '20221026233454474.png', 1, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamecategory`
--

CREATE TABLE `tbl_gamecategory` (
  `gameCateID` int(11) NOT NULL,
  `gameCateName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gamecategory`
--

INSERT INTO `tbl_gamecategory` (`gameCateID`, `gameCateName`) VALUES
(1, 'FPS'),
(2, 'Moba');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userFullname` varchar(50) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userPassword` varchar(50) NOT NULL,
  `userPhone` varchar(20) DEFAULT NULL,
  `userAddress` varchar(100) DEFAULT NULL,
  `userPic` varchar(50) DEFAULT NULL,
  `role` varchar(10) NOT NULL,
  `userStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userID`, `userFullname`, `userEmail`, `userPassword`, `userPhone`, `userAddress`, `userPic`, `role`, `userStatus`) VALUES
(1, 'Eakkawee Puanggbuppha', 'eak123@email.com', 'eak123', '085456789', 'Suratthani', 'p1.jpg', 'user', 'Y'),
(2, 'admin', 'admin3@email.com', '123', '1234567895', 'suratthani', '202210251872844273.jpg', 'admin', 'Y'),
(3, 'sutthawee kongpiem', 'peem001@email.com', '123', '0523697412', 'Surat Thani', '2022102645591211.jpg', 'user', 'Y'),
(4, 'Nattaworn Yodrabam', 'natta123@gmail.com', 'zxc123', '0645587954', 'Krabi', '', 'user', 'N'),
(5, 'Kotchawan Sangnui', 'kotkot11@gmail.com', 'kot123', '0965513254', 'Patumthani', '', 'user', 'N'),
(6, 'Wanchaloem Phromjan', 'wancha@gmail.com', 'wanwan123', '0995461124', 'Phannga', '', 'user', 'N'),
(7, 'Todsaporn Ramat', 'Todtod@gmail.com', 'tod123', '0855641354', 'Chumporn', '20221026551476490.jpg', 'user', 'Y'),
(8, 'Kanokoon Kanhawong', 'kaka@gmail.com', 'ka123', '0855654442', 'Prajuab', '20221026748829590.jpg', 'user', 'Y'),
(9, 'Sunattha Suwantheap', 'susu@gmail.com', 'su123', '0844621512', 'Chumporn', '20221026320561531.jpg', 'user', 'Y'),
(10, 'Pattanapong Saeleung', 'pappt@gmail.com', 'pap123', '0846625546', 'Bangkok', '202210261899093139.jpg', 'user', 'Y'),
(11, 'Phallapa Panpetch', 'phaa@gmail.com', 'pha123', '0965551556', 'Chonburi', '20221026576472789.jpg', 'user', 'Y'),
(12, 'Suparat Prachum', 'susup@gmail.com', 'sus123', '0956623315', 'Bangkok', '202210261821354768.jpg', 'user', 'Y'),
(13, 'Sunisa Chetaphai', 'suni1@gmail.com', 'suni123', '0845576563', 'Surat Thani', '20221026780022305.jpg', 'user', 'Y'),
(14, 'Nuttanun Lekkhum', 'pond@gmail.com', 'pond123', '0946582215', 'Krabi', '20221026296779996.jpg', 'user', 'Y'),
(15, 'Wutthichai Chaichana', 'wutwut@gmail.com', 'wut132', '0956623315', 'Surat Thani', '202210261785426874.jpg', 'user', 'Y'),
(16, 'Jirawat Somphak', 'jiji@gmail.com', 'ji123', '0988546625', 'Phattalung', '202210261089384098.jpg', 'user', 'Y'),
(17, 'Kusuma Chuadchum', 'kuskus@gmail.com', 'kus123', '0856664557', 'Krabi', '202210261841970646.jpg', 'user', 'Y'),
(18, 'Parichat Chanhorm', 'papa@gmail.com', 'papap123', '087756554', 'Phattalung', '20221026954287203.jpg', 'user', 'Y'),
(19, 'Maliwan Paradorn', 'mali@gmail.com', 'ma123', '0896541123', 'Phuket', '20221026688208220.jpg', 'user', 'Y'),
(20, 'Tananun Nunjamnong', 'tatata@gmail.com', 'ta123', '0988856125', 'Trad', '202210261785775269.jpg', 'user', 'Y'),
(21, 'Natthawadi Phetchu', 'nanant@gmail.com', 'nan123', '0847756621', 'Trang', '20221026486079212.jpg', 'user', 'Y'),
(22, 'Pichapan Wetchakarn', 'pipi@gmail.com', 'pi123', '', 'Nan', '202210261145018844.jpg', 'user', 'Y'),
(23, 'Thanyalak Wanrayat', 'than@gmail.com', 'than123', '0956648875', 'Chiangmai', '2022102624262827.jpg', 'user', 'Y'),
(24, 'Waraporn Hitanon', 'wawa123@gmail.com', 'wawa123', '0896654462', 'Phuket', '202210261283669468.jpg', 'user', 'Y'),
(25, 'Chakkraphat Thiansai', 'chak@gmail.com', 'chak123', '0966523156', 'Rayong', '202210261474128635.jpg', 'user', 'Y'),
(26, 'Patipon Chanpruk', 'pati@gmail.com', 'pati123', '0975531125', 'Surin', '202210261614709911.jpg', 'user', 'Y'),
(27, 'sutthawee kongpiem', 'eak124@email.com', '124', '0523697413', 'Surat Thani', '20221026771780001.jpg', 'user', 'Y'),
(28, 'sutthawee kongpiem', 'eak125@email.com', '125', '0523697412', 'Surat Thani', '20221026385032195.jpg', 'user', 'Y'),
(29, 'sutthawee kongpiem', 'cherdem10@gmail.com', 'cd10', '0523697412', 'Surat Thani', '202210261447233452.jpg', 'user', 'Y'),
(30, 'sutthawee kongpiem', 'cherdem11@gmail.com', 'cd11', '0523697412', 'Surat Thani', 'proicon.jpg', 'user', 'Y'),
(31, 'sutthawee kongpiem', 'peem002@email.com', '002', '0523697412', 'Surat Thani', 'proicon.jpg', 'user', 'Y'),
(32, 'sutthawee kongpiem', 'peem003@email.com', '003', '0523697412', 'Surat Thani', 'proicon.jpg', 'user', 'Y'),
(33, 'sutthawee kongpiem', 'peem006@email.com', '006', '0523697412', 'Surat Thani', '2022102619846736.png', 'user', 'N'),
(34, 'sutthawee kongpiem', 'peem007@email.com', '007', '0523697412', 'Surat Thani', '20221026523490085.jpg', 'user', 'Y'),
(35, 'sutthawee kongpiem', 'peem008@email.com', '008', '0523697412', 'Surat Thani', '202210261730585372', 'user', 'Y'),
(36, 'sutthawee kongpiem', 'peem009@email.com', '009', '0523697412', 'Surat Thani', '202210261445280452', 'user', 'Y'),
(37, 'sutthawee kongpiem', 'peem010@email.com', '010', '0523697412', 'Surat Thani', '20221026548044200.jpg', 'user', 'Y'),
(38, '', '', '', '', '', 'proicon.jpg', 'user', 'N'),
(39, 'Kinkaolaw Aimmak', 'kinkao@gmail.com', '123', '0966652135', 'Rayong', 'proicon.jpg', 'user', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agents`
--
ALTER TABLE `tbl_agents`
  ADD PRIMARY KEY (`agentID`),
  ADD KEY `gameID` (`gameID`);

--
-- Indexes for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD PRIMARY KEY (`gameID`),
  ADD KEY `gameCateID` (`gameCateID`);

--
-- Indexes for table `tbl_gamecategory`
--
ALTER TABLE `tbl_gamecategory`
  ADD PRIMARY KEY (`gameCateID`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agents`
--
ALTER TABLE `tbl_agents`
  MODIFY `agentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_game`
--
ALTER TABLE `tbl_game`
  MODIFY `gameID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_gamecategory`
--
ALTER TABLE `tbl_gamecategory`
  MODIFY `gameCateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_agents`
--
ALTER TABLE `tbl_agents`
  ADD CONSTRAINT `tbl_agents_ibfk_1` FOREIGN KEY (`gameID`) REFERENCES `tbl_game` (`gameID`);

--
-- Constraints for table `tbl_game`
--
ALTER TABLE `tbl_game`
  ADD CONSTRAINT `tbl_game_ibfk_1` FOREIGN KEY (`gameCateID`) REFERENCES `tbl_gamecategory` (`gameCateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
