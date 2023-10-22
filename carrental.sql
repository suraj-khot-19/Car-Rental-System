-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 02:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'ram', 'd461dd0e6a84ff9987740223b508d486', '2023-06-28 12:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 853418674, 'surajkhot19082001@gmail.com', 11, '2023-06-24', '2023-06-26', 'goa trip', 1, '2023-06-23 06:12:48', '2023-06-23 06:13:37'),
(4, 243902431, 'surajkhot19082001@gmail.com', 1, '2023-07-05', '2023-07-06', 'borgav', 0, '2023-07-04 05:22:43', NULL),
(5, 575922271, 'surajkhot19082001@gmail.com', 2, '2023-07-06', '2023-07-08', 'goa', 1, '2023-07-05 08:28:14', '2023-07-05 08:28:56'),
(6, 119814667, 'surajkhot19082001@gmail.com', 12, '2023-07-06', '2023-07-07', 'hiiii', 0, '2023-07-05 16:07:43', NULL),
(7, 319134906, 'surajkhot19082001@gmail.com', 5, '2023-07-06', '2023-07-07', 'hii', 0, '2023-07-05 16:10:44', NULL),
(8, 929557770, 'surajkhot19082001@gmail.com', 3, '2023-07-07', '2023-07-14', 'Please we Want Driver', 0, '2023-07-05 16:55:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(6, 'Volkswagon', '2017-06-19 06:22:13', '2023-06-22 11:52:53'),
(7, 'Force', '2023-06-22 11:51:18', NULL),
(9, 'Mahindra', '2023-06-28 12:12:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Khot gali,Jangamwadi', 'khotsuraj019@gmail.com', '9359658536');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<style>\r\nb{\r\ncolor:red;\r\ntext-align:left;\r\ncursor: pointer;\r\n}\r\nbody{\r\n  list-style: outside none none;\r\ntext-align:left;\r\n margin: 0 17px 0 0;\r\n  min-height: 113px;\r\n  min-width: 123px;\r\n  padding: 10px;\r\n}\r\n</style>	\r\n																																																	  <font size=\"2\"> <b>Acceptance of Terms:</b>  \r\nBy accessing and using the online car rental platform, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, you should not use the platform.\r\n</font>\r\n<br>  \r\n										 \r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> \r\n<footer>\r\n  <p>© 2023<b>Online Car Rental System</b>. All rights reserved.</p>\r\n  <p><a href=\"https://www.example.com/privacy-policy\">Privacy Policy</a></p>\r\n</footer>\r\n</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17.3333px;\"> \r\n Welcome to our Online car rental project! We are a leading car rental service provider dedicated to offering convenient and reliable transportation solutions to our valued customers. Whether you need a car for a quick business trip, a family vacation, or any other purpose, we are here to fulfill your mobility needs.\r\n</span>\r\n\r\n<p style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">\r\n<br> Project Partners-<br>\r\n             &emsp; &emsp;     &emsp; &emsp;<b>Adarsh U Pujari.<br>\r\n            &emsp; &emsp;      &emsp; &emsp;   Suraj S Khot.</b>\r\n</p>'),
(11, 'FAQs', 'faqs', '<style>\r\nbody{\r\n \r\n};\r\n</style>\r\n<div class=\"jayshreeram\">										<h5 style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: medium;\"><span style=\"color: rgb(51, 51, 51);\">\r\n<li style=\"text-align: justify;\"><b style=\"\"> How old do I need to be to rent a car?</b></li></span> - Generally, the minimum age requirement is 21 years old.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b>What documents do I need to provide when renting a car?</b></li></span>\r\n - Typically, you will need a valid driver\'s license, a credit card in your name for the reservation and security deposit, and sometimes an additional form of identification, such as a passport or ID card.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b> What are the accepted payment methods for car rentals?</b></li></span>  - Credit cards,Cash.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b> Is there a minimum or maximum rental period?</b></li></span>  - Typically 24 hours or Maximum.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b>Can I rent a car without a driver\'s license?</b></li></span>  - No, a valid driver\'s license is required to rent a car. It ensures that the renter is legally allowed to operate the vehicle.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b>Is there a mileage limit for rented cars?</b></li></span>  - Many car rental companies include a certain mileage allowance per day or per rental period. If you exceed the limit, additional charges per mile/kilometer may apply.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b>What happens if I return the car late?</b></li></span>  - Late returns may incur additional fees. It\'s best to inform our company in advance if you anticipate returning the car after the agreed-upon time to avoid any penalties.\r\n\r\n<span style=\"color: rgb(51, 51, 51);\"><li style=\"text-align: justify;\"><b> What happens in case of an accident or damage to the rented car?</b></li></span> \r\n - It\'s important to report any accidents or damages to our company immediately. The specific procedure and liability may vary, but company often provide insurance coverage or offer optional coverage plans for such situations. </span></h5>\r\n<span style=\"color: rgb(51, 51, 51); font-size: 17.3333px; font-family: &quot;times new roman&quot;;\">\r\n \r\n\r\n\r\n\r\n\r\n\r\n \r\n</span>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'pujariadarsh4@gmail.com', '2023-06-23 01:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 0),
(2, 'surajkhot19082001@gmail.com', 'Hi! Best car service I have ever seen!', '2023-06-23 06:15:48', 1),
(3, 'surajkhot19082001@gmail.com', 'hi ....', '2023-06-28 13:34:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2020-07-07 14:00:49', '2020-07-12 05:44:29'),
(2, 'suraj khot', 'surajkhot19082001@gmail.com', 'ba2972719e85b61d90e0b07ca6f78b2b', '9359658536', NULL, NULL, NULL, NULL, '2023-06-22 11:21:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 5000, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2023-06-23 05:47:37'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 10000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2023-06-23 05:48:01'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 8000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2023-06-23 05:48:27'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 8000, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-07-07 07:25:28', '2023-06-23 05:48:49'),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 20000, 'Diesel', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', '2023-06-23 05:49:21'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 7000, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-07-07 09:23:11', '2023-06-23 05:50:06'),
(9, 'Force Cruiser', 7, 'The Force Trax Cruiser PS was powered by a 2.6L Mercedes-derived diesel engine. This diesel engine with a 5-speed transmission system produced a max power of 60 HP and 158 Nm of peak torque. The Trax Cruiser PS had a fuel economy of 17 km/l. It could seat up to 12 passengers, had a ground clearance of 160 mm and a towing capacity of 2,500 kg.', 5000, 'Diesel', 2018, 11, 'mycar1.jpg', 'mycar2.jpg', 'mycar3.jpg', 'mycar4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-22 12:23:06', NULL),
(10, 'Swift Dezire', 1, 'Maruti Swift Dzire [2010-2011] is a 5 seater Sedan with the last recorded price of Rs. 5.01 - 7.64 Lakh. It is available in 6 variants, 1197 to 1248 cc engine options and 1 transmission option : Manual. The Swift Dzire [2010-2011] is available in 11 colours. Maruti Swift Dzire [2010-2011] mileage is 14 kmpl.', 7000, 'Diesel', 2013, 4, 'car114.jpg', 'car112.jpg', 'car113.jpg', 'car111.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-23 05:36:23', NULL),
(11, 'Innova Crysta', 5, 'The Toyota Innova Crysta has 1 Diesel Engine on offer. The Diesel engine is 2393 cc . It is available with Manual transmission.Depending upon the variant and fuel type the Innova Crysta has a mileage of . The Innova Crysta is a 7 seater 4 cylinder car and has length of 4735, width of 1830 and a wheelbase of 2750', 10000, 'Diesel', 2022, 7, 'car10.jpg', 'car13.jpg', 'car14.jpg', 'car12.jpg', 'car15.jpg', 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, NULL, 1, '2023-06-23 06:11:03', NULL),
(12, 'Thar', 9, 'Mahindra Thar is most famous vehical for Offroad and It is 4*4 .', 15000, 'Petrol', 2023, 4, 'thar3.webp', 'thar1.jpg', 'thar2.jpg', 'thar4.jpg', 'thar3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-28 12:38:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
