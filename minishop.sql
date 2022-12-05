-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2019 at 06:22 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minishop248`
--
CREATE DATABASE IF NOT EXISTS `minishop248` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `minishop248`;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(128) NOT NULL,
  `ParentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryId`, `CategoryName`, `ParentId`) VALUES
(1, 'Web Development', NULL),
(2, 'Programming', NULL),
(3, 'Databases', NULL),
(4, 'ASP.NET2', 1),
(5, 'PHP', 1),
(6, 'HTML, CSS', 1),
(7, 'Javascript', 1),
(8, 'C#', 2),
(9, 'Java', 2),
(10, 'C & C++', 2),
(11, 'Python', 2),
(12, 'Mysql', 3),
(13, 'SQL Server', 3),
(14, 'MongoDB', 3),
(15, 'Oracle', 3),
(16, 'Postgree SQL', 3),
(17, 'Stationery', NULL),
(18, 'Student tools', 17);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) NOT NULL,
  `PublisherId` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL,
  `ISBN` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Pages` smallint(6) NOT NULL,
  `Year` smallint(6) NOT NULL,
  `Weight` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `Content` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` int(11) NOT NULL DEFAULT '100000',
  PRIMARY KEY (`ProductId`),
  KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `CategoryId`, `PublisherId`, `AuthorId`, `ISBN`, `Title`, `Pages`, `Year`, `Weight`, `Size`, `Description`, `Content`, `ImageUrl`, `Price`) VALUES
(1, 8, 1, 1, '1484236394', 'Design Patterns in C#', 455, 2018, 'PDF', '14.5 MB', 'In the first part of Design Patterns in C#, you will cover the 23 Gang of Four (GoF) design patterns, before moving onto some alternative design patterns, including the Simple Factory Pattern, the Null Object Pattern, and the MVC Pattern. The final part winds up with a conclusion and criticisms of design patterns with chapters on anti-patterns and memory leaks. By working through easy-to-follow examples, you will understand the concepts in depth and have a collection of programs to port over to your own projects.', '', 'Design-Patterns-in-C.jpg', 100000),
(2, 8, 1, 2, '1484230175', 'Pro C# 7-8th Edition', 1372, 2017, 'PDF', '29.5 MB', 'Ky la', '', 'Pro-C-7-8th-Edition.jpg', 100000),
(3, 9, 1, 3, '0672337940', 'Java in 24 Hours, Sams Teach Yourself (Covering Java 9), 8th Edition', 448, 2017, 'PDF', '5.6 MB', 'Computer programming with Java is easier than it looks. In just 24 lessons of one hour or less, you can learn to write computer programs in Java. Using a straightforward, step-by-step approach, popular author Rogers Cadenhead helps you master the skills and technology you need to create desktop', '', 'Java-in-24-Hours-Sams-Teach-Yourself-Covering-Java-9-8th-Edition-400x490.jpg', 100000),
(4, 9, 1, 4, '1484230418', 'Pro JavaFX 9, 4th Edition', 348, 2018, 'PDF', '6.2 MB', 'Use the JavaFX platform to create rich-client Java applications and discover how you can use this powerful Java-based UI platform, which is capable of handling large-scale data-driven business applications for PC as well as mobile and embedded devices. The expert authors cover the new more modular JavaFX 9 APIs', '', 'Pro-JavaFX-9-4th-Edition.jpg', 100000),
(5, 9, 2, 5, '1491934115', 'Data Science with Java', 236, 2017, 'PDF', '7.1 MB', 'Ky la', '', 'Data-Science-with-Java.jpg', 100000),
(6, 11, 1, 6, '1484234499', 'Advanced Data Analytics Using Python', 186, 2018, 'PDF', '2.1 MB', 'Ok', '', 'Advanced-Data-Analytics-Using-Python.jpg', 100000),
(7, 9, 1, 7, '1119235553', 'Java For Dummies, 7th Edition', 504, 2014, 'PDF', '12.6 MB', 'A new edition of the bestselling guide to Java\r\nIf you want to learn to speak the world’s most popular programming language like a native, Java For Dummies is your ideal companion. With a focus on reusing existing code, it quickly and easily shows you how to create basic Java objects, work with Java classes and methods, understand the value of variables, learn to control program flow with loops or decision-making statements, and so much more!\r\nJava is everywhere, runs on almost any computer, and is the engine that drives the coolest applications. Written for anyone who’s ever wanted to tackle programming with Java but never knew quite where to begin, this bestselling guide is your ticket to success! Featuring updates on everything you’ll encounter in Java 9—and brimming with tons of step-by-step instruction—it’s the perfect resource to get you up and running with Java in a jiffy!', '', 'Java-For-Dummies-7th-Edition.jpg', 100000),
(8, 13, 1, 8, '1484219546', 'Beginning SQL Queries, Second Edition', 250, 2016, 'PDF', '20.9 MB', 'Anyone who does any work at all with databases needs to know something of SQL. This is a friendly and easy-to-read guide to writing queries with the all-important – in the database world – SQL language. The author writes with exceptional clarity', '', 'Beginning-SQL-Queries.jpg', 100000),
(9, 13, 1, 9, '1430224649', 'Expert SQL Server 2008 Encryption', 320, 2009, 'PDF', '3.18 MB', 'Every day, organizations large and small fall victim to attacks on their data. Encryption provides a shield to help defend against intruders. Because of increasing pressure from government regulators, consumers, and the business community at large, the job descriptions of SQL DBAs and developers are expanding to include encryption. Expert SQL Server 2008 Encryption will show you how to efficiently implement SQL Server 2008 encryption functionality and features to secure your organizational data', '', '4056a343e83f1df.jpeg', 100000),
(10, 13, 1, 10, '9781118106884', 'Professional Microsoft SQL Server 2012 Administration', 936, 2012, 'PDF', '93.1 MB', 'Microsoft SQL Server 2012 will have major changes throughout the SQL Server and will impact how DBAs administer the database. With this book, a team of well-known SQL Server experts introduces the many new features of the most recent version of SQL Server and deciphers how these changes will affect the methods that administrators have been using for years. Loaded with unique tips, tricks, and workarounds for handling the most difficult SQL Server admin issues, this how-to guide deciphers topics such as performance tuning, backup and recovery, scaling and replication, clustering, and security.', '', '295557fd027de7f.jpg', 100000),
(11, 13, 1, 1, '9781430245964', 'Pro T-SQL 2012 Programmer’s Guide, 3rd Edition', 696, 2012, 'PDF', '18.9 MB', 'Pro T-SQL 2012 Programmer’s Guide is every developer’s key to making full use of SQL Server 2012’s powerful, built-in Transact-SQL language. Discussing new and existing features, the book takes you on an expert guided tour of Transact-SQL functionality. Fully functioning examples and downloadable source code bring technically accurate and engaging treatment of Transact-SQL into your own hands. Step-by-step explanations ensure clarity, and an advocacy of best-practices will steer you down the road to success.\r\n\r\nTransact-SQL is the language developers and DBAs use to interact with SQL Server. It’s used for everything from querying data, to writing stored procedures, to managing the database. New features in T-SQL 2012 include full support for window functions, stored sequences, the ability to throw errors, data paging, and more. All these important new features are covered in this book', '', '295557fd07764c9.jpg', 100000),
(12, 11, 2, 12, '0471778648', 'Python For Dummies', 432, 2006, 'PDF', '1.7 MB', 'Python is one of the most powerful, easy-to-read programminglanguages around, but it does have its limitations. This generalpurpose, high-level language that can be extended and embedded is asmart option for many programming problems, but a poor solution toothers.\r\nPython For Dummies is the quick-and-easy guide to gettingthe most out of this robust program. This hands-on book will showyou everything you need to know about building programs, debuggingcode, and simplifying development, as well as defining what actionsit can perform. You’ll wrap yourself around all of itsadvanced features and become an expert Python user in no time. Thisguide gives you the tools you need to', '', 'Python-For-Dummies.jpg', 100000),
(13, 18, 3, 13, '8935001810087', 'Bút Lông Bảng Thiên Long TL WB.03', 10, 2018, 'Fly', '10', 'Bút được sản xuất theo công nghệ hiện đại , đạt tiêu chuẩn an toàn quốc tế\n\nViết tốt , trơn , êm trơn bảng trắng , thủy tinh và những bề mặt nhẵn bóng\n\nBề rộng nét viết 2.5mm', '', 'cea9ce2d56b921055f39dbfbfdfc1894.jpg', 100000),
(14, 10, 4, 14, '8935095624539', 'GIÁO TRÌNH C++ VÀ LẬP TRÌNH HƯỚNG ĐỐI TƯỢNG', 300, 2017, 'Book', '3 x 4', 'Lập trình cấu trúc là phương pháp tổ chức, phân chia chương trình thành các hàm, thủ tục, chúng được dùng để xử lý dữ liệu nhưng lại tách rời các cấu trúc dữ liệu. Thông qua các ngôn ngữ Foxpro, Pascal, C đa số những người làm Tin học đã khá quen biết với phương pháp lập trình này.\n\n \n\nLập trình hướng đối tượng dựa trên việc tổ chức chương trình thành các lớp. Khác với hàm và thủ tục, lớp là một đơn vị bao gồm cả dữ liệu và các phương thức xử lý. Vì vậy lớp có thể mô tả các thực thể một cách chân thực, đầy đủ cả phần dữ liệu và yêu cầu quản lý. Tư tưởng lập trình hướng đối tượng được áp dụng cho hầu hết các ngôn ngữ mới chạy trên môi trường Windows như Microsoft Access, Visual Basic, Visual C. Vì vậy việc nghiên cứu phương pháp lập trình mới này là rất cần thiết đối với tất cả những người quan tâm, yêu thích Tin học', '', '8935095624539.jpg', 100000),
(15, 13, 5, 15, '9786047355020', 'Big Data và ứng dụng trong kinh doanh', 350, 2018, 'Book', '20 x 30', 'Trong những năm gần đây, một thuật ngữ trong công nghệ thông tin được nhiều người quan tâm phải kể đến là Big Data (Dữ liệu lớn). Big Data là dữ liệu vượt quá khả năng xử lý của các hệ thống cơ sở dữ liệu thông thường, dữ liệu quá lớn, di chuyển quá nhanh hoặc không phù hợp với kiến trúc cơ sở dữ liệu hiện tại. Để thu được giá trị từ dữ liệu này, người ta phải chọn một cách khác để xử lý nó.', '', '2017-09-14-04-56-03_image002.jpg', 100000),
(16, 16, 6, 16, '9786045265840', 'Dijkstra - Ấn Phẩm Chuyên Đề Cho Kỹ Sư Phần Mềm Người Việt ', 30, 2018, 'Magezine', '70 x 80', 'Bạn đang cầm trên tay tập đầu tiên của ấn phẩm Dijkstra - Ấn Phẩm Chuyên Đề Cho Kỹ Sư Phần Mềm Người Việt - kết quả của một thời gian dài thai nghén ý tưởng của đội ngũ Grokking Vietnam.\n\nTrong ấn phẩm này, nhóm biên soạn sẽ cố gắng cung cấp những bài viết chuyên sâu về lĩnh vực công nghệ phần mềm, những bài phân tích kiến trúc, những bài viết về văn hóa, cộng đồng và các bài viết về kiến thức nền tảng khoa học máy tính. Để đảm bảo tính chính xác cũng như tính cập nhật, những bài viết này sẽ được viết bởi chính những kỹ sư phần mềm đang làm việc trong những công ty phần mềm tại Việt Nam hoặc nước ngoài', '', '75a3c5e390d6942c8042f36637947a5e.jpg', 100000),
(17, 18, 7, 17, '8934588843051', 'Nước ngọt Revive chai 390ml', 1, 2018, 'Chai', '390 ml', 'Nước ngọt được sản xuất trên dây chuyền hiện đại chiết xuất từ nước bão hòa CO2, đường sucrose và destrose, chất điều chỉnh độ axit, chất điện giải... không chứa chất bảo quản và hóa chất độc hại, an toàn cho người sử dụng.\nVới chất điện giải Natri, Kali... và vitamin B3, B6, B12 giúp bù nước, muối khoáng bị mất đi nhanh chóng do vận động, chơi thể thao.', '', '7up-revive-pet-390ml-2-700x467-1.jpg', 100000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`CategoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
