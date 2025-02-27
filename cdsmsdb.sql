-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 07:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin User', 'admin', 8979555556, 'Test@gmail.com', 'ca99104c044b832e9438e6b544a03285', '2019-04-25 04:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Enquiry` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Is_Read` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `FullName`, `MobileNumber`, `Email`, `Enquiry`, `EnquiryDate`, `Is_Read`) VALUES
(4, 'Mahesh Shukla', 8978979797, 'Test1@gmail.com', 'vjhgjhgkhkjlkljiojnhkjhjbjhb', '2019-04-29 12:52:06', '1'),
(5, 'Mahesh Shukla', 8978979797, 'Test1@gmail.com', 'vjhgjhgkhkjlkljiojnhkjhjbjhb', '2019-04-29 12:53:08', '1'),
(8, 'Rajnikant', 77978979, 'raj@gmail.com', 'gjytrewsrdsfxchjbklopityrdxcbvnk', '2019-04-30 07:07:07', '1'),
(9, 'Renu Mishra', 7899779746, 'mishra@gmail.com', 'Tell me the cost of normal training', '2019-05-01 09:02:32', '1'),
(11, 'harish', 4564478744, 'gh@gmail.com', 'Any discounts running this time', '2019-05-01 09:05:39', '1'),
(12, 'Menu Tiwari', 9654854896, 'ti@gmail.com', 'Any discounts running this time', '2019-05-01 09:08:55', '1'),
(13, 'sfdgsdgsd', 2832376757, 'gsdgsdg@hggdhg.com', 'dskfhkdshgkhgdg', '2019-05-01 16:14:15', '1'),
(14, 'Hansika', 8899797979, 'sika@gmail.com', 'How much time will you take to teach suv', '2019-05-09 09:34:10', '1'),
(15, 'czxczx', 2342333333, 'cxzczx@jkdah.com', 'This is sample text for testing', '2019-05-16 17:09:52', '1'),
(16, 'Anuj kumar', 1234567890, 'phpgurukulofficial@gmail.com', 'This is sample text for testing', '2019-05-16 17:19:01', NULL),
(17, 'anuj', 1234567890, 'support@phpgurukul.com', 'This isa sample text for testing.', '2019-05-16 17:19:46', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpackages`
--

CREATE TABLE `tblpackages` (
  `ID` int(5) NOT NULL,
  `PackageName` varchar(120) DEFAULT NULL,
  `PackageDec` varchar(250) DEFAULT NULL,
  `PackageDuration` varchar(120) DEFAULT NULL,
  `PackagePrice` varchar(120) DEFAULT NULL,
  `PackageDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpackages`
--

INSERT INTO `tblpackages` (`ID`, `PackageName`, `PackageDec`, `PackageDuration`, `PackagePrice`, `PackageDate`) VALUES
(1, 'Training by Hatchback(45 days)', 'Training by Hatchback: Their is different hatchback car available.', '45', '3000', NULL),
(2, 'Training by Hatchback(30 days)', 'Training by Hatchback: Their is different hatchback car available like Maruti Wagon, Maruti Baleno, Hyundai Elite,Maruti Swift and Renault KWID', '30', '4000', '2019-04-25 11:36:37'),
(3, 'Training by SUV(30 days)', 'Training by Hatchback: Their is different SUV car available for training like.', '30', '5000', '2019-04-25 11:39:31'),
(4, 'Training by SUV(45 days)', 'Training by Hatchback: Their is different SUV car available for training like.', '45', '6000', '2019-04-25 11:39:44'),
(5, 'Training by SUV(20 days)', 'Training by Hatchback: Their is different SUV car available for training like.', '20', '5000', '2019-04-25 11:44:58'),
(6, 'Training by Hatchback(15 days)', 'Training by Hatchback: Their is different hatchback car available like Maruti Wagon, Maruti Baleno, Hyundai Elite,Maruti Swift and Renault KWID', '15', '4000', '2019-04-25 14:42:14'),
(7, 'Test1', 'fhfjhk.juioyuyfcbvmnhkjhyiffcnbkhkjgfc', '25', '2500', '2019-05-03 10:27:16'),
(8, 'Test2', 'ytruiuonb bvcgfg', '15', '5000', '2019-05-09 10:26:46'),
(9, 'Test package', 'Sample text for testing.', '60 days', '5000', '2019-05-16 17:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                                        <div style=\"text-align: left;\"><b>Car Driving School Management System</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">It is ultimately the goal of the company to offer a one-stop facility for all driver needs, including registration, licensing, etc. In this way the company could offer greater perceived value for the customer that he or she could use for their entire driving career.<br></div><div style=\"text-align: left;\">&nbsp;Sample text for testing.</div>', '2019-05-16 17:22:35'),
(2, 'contactus', 'Contact Us', '<b>Car Driving School Management System</b><div><b>Contact Number:</b>+91-0123456789</div><div><b>email: </b>info@gmail.com</div>', '2019-05-16 17:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblpaymenthistory`
--

CREATE TABLE `tblpaymenthistory` (
  `id` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `PaymentAmount` bigint(12) DEFAULT NULL,
  `Remark` mediumtext,
  `PaymentStatus` varchar(100) DEFAULT NULL,
  `PaymentDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpaymenthistory`
--

INSERT INTO `tblpaymenthistory` (`id`, `UserId`, `PaymentAmount`, `Remark`, `PaymentStatus`, `PaymentDate`) VALUES
(1, '16', 2000, 'Partially amount deposit.', 'Partial Payment', '2019-05-15 16:24:38'),
(2, '16', 1000, 'Full payment received.', 'Completed', '2019-05-15 16:52:27'),
(3, '20', 2000, 'Joining on time. Half payment received', 'Partial Payment', '2019-05-15 16:54:26'),
(4, '20', 1000, 'payment received. Remaining after package completion', 'Partial Payment', '2019-05-15 16:55:32'),
(5, '20', 1000, 'full payment received', 'Completed', '2019-05-15 16:56:03'),
(6, '27', 200, 'Half payment recieved', 'Partial Payment', '2019-05-16 17:17:08'),
(7, '27', 1000, '1000 received . remaining after training.', 'Partial Payment', '2019-05-16 17:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `SubscribedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`ID`, `FullName`, `Email`, `SubscribedDate`) VALUES
(1, 'Mahesh', 'info@w3gang.com', '2019-04-30 05:09:52'),
(3, 'Aman', 'verma@gmail.com', '2019-04-30 05:09:52'),
(4, 'Jennifer', 'a@gmail.com', '2019-04-30 05:12:27'),
(14, 'Gaurav Kumar', 'kumar@gmail.com', '2019-05-01 06:17:36'),
(15, 'Gaurav Kumar', 'kumar@gmail.com', '2019-05-01 06:18:38'),
(16, 'rajesh mittal', 'mittal@gmail.com', '2019-05-09 09:34:56'),
(17, 'anuj kumar', 'phpgurukulofficial@gmail.com', '2019-05-16 17:22:00'),
(18, 'test', 'test@gmail.com', '2019-05-16 17:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `PackID` int(10) NOT NULL,
  `RegNumber` int(10) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) NOT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Age` int(10) DEFAULT NULL,
  `LicenceNumber` varchar(120) DEFAULT NULL,
  `UploadLicence` varchar(120) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `AlternateNumber` bigint(11) DEFAULT NULL,
  `TrainingDate` date DEFAULT NULL,
  `TrainingTiming` varchar(120) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarkdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `PackID`, `RegNumber`, `FullName`, `Email`, `MobileNumber`, `Gender`, `Age`, `LicenceNumber`, `UploadLicence`, `Address`, `AlternateNumber`, `TrainingDate`, `TrainingTiming`, `Status`, `RegDate`, `Remarkdate`) VALUES
(11, 1, 940619695, 'Mahesh Shukla', 'Test1@gmail.com', 8975895698, 'Female', 21, '4654666468', 'fe5df232cafa4c4e0f1a0294418e5660.jpg', 'htgrfh', 324234, '2019-04-02', '00:20:19', '', '2019-05-02 05:41:48', '2019-05-16 17:53:43'),
(12, 2, 671376346, 'Mahesh Shukla', 'sdgsdgsd@dghgsha.com', 4376457544, 'Female', 34, '7798798797987', '799bad5a3b514f096e69bbc4a7896cd9.jpg', 'hujtyu', 654645645, '2019-05-09', '00:20:19', '', '2019-05-02 05:41:48', '2019-05-16 17:53:47'),
(14, 2, 279354401, 'hthggfh', 'hgdhggfgjfhuj@fdjsgfjsdg.com', 4234235235, 'Female', 23, '4324234324', 'f3ccdd27d2000e3f9255a7e3e2c48800.jpg', 'geterte', 4353454354, '2019-05-01', '00:20:19', '', '2019-05-02 05:41:48', '2019-05-16 17:53:37'),
(16, 1, 390264073, 'vjhggh', 'ghjgk', 2322323232, 'Female', 32, '1354656546544', '18e2999891374a475d0687ca9f989d83.jpg', 'ftyjuyu', 4564654564, '2019-05-14', '00:20:19', 'Completed', '2019-05-03 14:31:50', '2019-05-15 16:52:27'),
(17, 1, 704705112, 'Rajesh', 'pal@gmail.com', 7777878787, 'Male', 21, '65446464654', 'd0096ec6c83575373e3a21d129ff8fef.jpg', 'g-45, adarsh nagar', 4654646464, '2019-05-17', '00:20:19', '', '2019-05-03 15:44:04', NULL),
(20, 6, 425392320, 'Tanushri', 'ghyu@gmail.com', 4654654646, 'Male', 34, '2323232', 'cff8ad28cf40ebf4fbdd383fe546098d.jpg', 'ljhojolk', 2132326352, '2019-05-16', '00:20:19', 'Completed', '2019-05-09 09:55:17', '2019-05-15 16:56:03'),
(22, 4, 361791309, 'Mansi', 'nmn@gmail.com', 7979746465, 'Transgender', 34, 'DEL-1226787', 'cff8ad28cf40ebf4fbdd383fe546098d.jpg', 'gjgjbiuikhnkjnkjhkjhbkjnhkj', 4798766565, '2019-05-21', '00:20:19', '', '2019-05-09 09:58:23', '2019-05-16 17:53:52'),
(23, 4, 950700534, 'Mansi', 'nmn@gmail.com', 7979746465, 'Transgender', 34, 'DEL-1226787', 'cff8ad28cf40ebf4fbdd383fe546098d.jpg', 'gjgjbiuikhnkjnkjhkjhbkjnhkj', 4798766565, '2019-05-21', '00:20:19', '', '2019-05-09 09:59:45', NULL),
(24, 6, 252367395, 'Akash Jha', 'jha@gmail.com', 7979797979, 'Male', 21, 'DEL575765', 'cff8ad28cf40ebf4fbdd383fe546098d.jpg', 'jhgghkjhkjhkijik', 4679779798, '2019-05-08', '10:00:00', '', '2019-05-09 10:03:36', NULL),
(25, 6, 188206952, 'Akash Jha', 'jha@gmail.com', 7979797979, 'Male', 21, 'DEL575765', 'cff8ad28cf40ebf4fbdd383fe546098d.jpg', 'jhgghkjhkjhkijik', 4679779798, '2019-05-08', '10:00AM - 11:00AM', '', '2019-05-09 10:04:34', NULL),
(26, 2, 975730516, 'asfasf', 'fasfasf@gmail.com', 2342344444, 'Female', 20, 'DASDAS234234', 'd182092a0210bcf247467c6c9160b88c.png', 'cfsdfsdfsdfsdf', 2523523532, '2019-05-18', '11:00AM - 12:00PM', '', '2019-05-15 14:31:49', NULL),
(27, 1, 731907663, 'Test user', 'testuser@gmail.com', 1234567890, 'Male', 25, 'DDSFFFF3212321', 'ca7a2226a932c5daf97ad8e59eea5129.png', 'Test Address', 789456311, '2019-05-30', '08:00PM - 09:00PM', 'Partial Payment', '2019-05-16 17:16:24', '2019-05-16 17:17:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpackages`
--
ALTER TABLE `tblpackages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpaymenthistory`
--
ALTER TABLE `tblpaymenthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpackages`
--
ALTER TABLE `tblpackages`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpaymenthistory`
--
ALTER TABLE `tblpaymenthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
