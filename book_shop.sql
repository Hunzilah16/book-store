-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 10:41 PM
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
-- Database: `book_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `book_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`book_id`, `genre_id`) VALUES
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL),
(NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authors_duplicate`
--

CREATE TABLE `authors_duplicate` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors_duplicate`
--

INSERT INTO `authors_duplicate` (`author_id`, `author_name`, `book_id`, `genre_id`) VALUES
(1, 'J.K. Rowling', NULL, NULL),
(2, 'Stephen King', NULL, NULL),
(3, 'Hank Green', NULL, NULL),
(4, 'Ilama Iqbal', NULL, NULL),
(5, 'Agatha Christie', NULL, NULL),
(6, 'Ernest Hemingway', NULL, NULL),
(7, 'Haruki Murakami', NULL, NULL),
(8, 'Toni Morrison', NULL, NULL),
(9, 'Leo Tolstoy', NULL, NULL),
(10, 'Gabriel García Márquez', NULL, NULL),
(11, 'Virginia Woolf', NULL, NULL),
(12, 'F. Scott Fitzgerald', NULL, NULL),
(13, 'Jane Austen', NULL, NULL),
(14, 'Mark Twain', NULL, NULL),
(15, 'George Orwell', NULL, NULL),
(16, 'J.R.R. Tolkien', NULL, NULL),
(17, 'J.D. Salinger', NULL, NULL),
(18, 'Margaret Atwood', NULL, NULL),
(19, 'Neil Gaiman', NULL, NULL),
(20, 'Albert Camus', NULL, NULL),
(21, 'Hermann Hesse', NULL, NULL),
(22, 'Jorge Luis Borges', NULL, NULL),
(23, 'Emily Dickinson', NULL, NULL),
(24, 'Gabriel García Lorca', NULL, NULL),
(25, 'Arthur Conan Doyle', NULL, NULL),
(26, 'Rabindranath Tagore', NULL, NULL),
(27, 'Franz Kafka', NULL, NULL),
(28, 'Leo Tolstoy', NULL, NULL),
(29, 'Haruki Murakami', NULL, NULL),
(30, 'Herman Melville', NULL, NULL),
(31, 'William Faulkner', NULL, NULL),
(32, 'Anton Chekhov', NULL, NULL),
(33, 'John Steinbeck', NULL, NULL),
(34, 'James Joyce', NULL, NULL),
(35, 'Charles Dickens', NULL, NULL),
(36, 'Vladimir Nabokov', NULL, NULL),
(37, 'Edgar Allan Poe', NULL, NULL),
(38, 'Albert Camus', NULL, NULL),
(39, 'Dante Alighieri', NULL, NULL),
(40, 'George Orwell', NULL, NULL),
(41, 'Franz Kafka', NULL, NULL),
(42, 'Rainer Maria Rilke', NULL, NULL),
(43, 'Kazuo Ishiguro', NULL, NULL),
(44, 'Italo Calvino', NULL, NULL),
(45, 'Borges, Jorge Luis', NULL, NULL),
(46, 'Fyodor Dostoevsky', NULL, NULL),
(47, 'Miguel de Cervantes', NULL, NULL),
(48, 'Murasaki Shikibu', NULL, NULL),
(49, 'Gabriel Garcia Marquez', NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `author_genre_book_view`
-- (See below for the actual view)
--
CREATE TABLE `author_genre_book_view` (
);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_tittle` varchar(300) DEFAULT NULL,
  `author_fname` varchar(100) DEFAULT NULL,
  `author_lname` varchar(200) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_tittle`, `author_fname`, `author_lname`, `release_year`, `stock_quantity`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K.', 'Rowling', 1997, 50),
(2, 'Harry Potter and the Chamber of Secrets', 'J.K.', 'Rowling', 1998, 45),
(3, 'Harry Potter and the Prisoner of Azkaban', 'J.K.', 'Rowling', 1999, 55),
(4, 'Harry Potter and the Goblet of Fire', 'J.K.', 'Rowling', 2000, 60),
(5, 'Harry Potter and the Order of the Phoenix', 'J.K.', 'Rowling', 2003, 65),
(6, 'Harry Potter and the Half-Blood Prince', 'J.K.', 'Rowling', 2005, 70),
(7, 'Harry Potter and the Deathly Hallows', 'J.K.', 'Rowling', 2007, 75),
(8, 'The Casual Vacancy', 'J.K.', 'Rowling', 2012, 80),
(9, 'The Cuckoo\'s Calling', 'Robert', 'Galbraith', 2013, 40),
(10, 'The Silkworm', 'Robert', 'Galbraith', 2014, 35),
(11, 'Career of Evil', 'Robert', 'Galbraith', 2015, 30),
(12, 'Lethal White', 'Robert', 'Galbraith', 2018, 45),
(13, 'Troubled Blood', 'Robert', 'Galbraith', 2020, 50),
(14, 'Fantastic Beasts and Where to Find Them', 'J.K.', 'Rowling', 2001, 55),
(15, 'Fantastic Beasts: The Crimes of Grindelwald', 'J.K.', 'Rowling', 2018, 60),
(55, 'Carrie', 'Stephen', 'King', 1974, 70),
(56, 'Salem\'s Lot', 'Stephen', 'King', 1975, 65),
(57, 'The Shining', 'Stephen', 'King', 1977, 80),
(58, 'The Stand', 'Stephen', 'King', 1978, 75),
(59, 'The Dead Zone', 'Stephen', 'King', 1979, 65),
(60, 'Firestarter', 'Stephen', 'King', 1980, 60),
(61, 'Cujo', 'Stephen', 'King', 1981, 55),
(62, 'Christine', 'Stephen', 'King', 1983, 65),
(63, 'Pet Sematary', 'Stephen', 'King', 1983, 70),
(64, 'Cycle of the Werewolf', 'Stephen', 'King', 1983, 40),
(152, 'An Absolutely Remarkable Thing', 'Hank', 'Green', 2018, 60),
(153, 'A Beautifully Foolish Endeavor', 'Hank', 'Green', 2020, 75),
(154, 'The Talisman', 'Stephen', 'King', 1984, 60),
(155, 'It', 'Stephen', 'King', 1986, 85),
(156, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(157, 'Misery', 'Stephen', 'King', 1987, 75),
(158, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(159, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(160, 'Needful Things', 'Stephen', 'King', 1991, 70),
(161, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(162, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(163, 'Insomnia', 'Stephen', 'King', 1994, 65),
(164, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(165, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(166, 'Desperation', 'Stephen', 'King', 1996, 70),
(167, 'The Regulators', 'Stephen', 'King', 1996, 65),
(168, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(169, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(170, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(171, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(172, 'Black House', 'Stephen', 'King', 2001, 70),
(173, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(174, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(175, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(176, 'Revival', 'Stephen', 'King', 2014, 75),
(177, 'End of Watch', 'Stephen', 'King', 2016, 65),
(178, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(179, 'The Outsider', 'Stephen', 'King', 2018, 75),
(180, 'Elevation', 'Stephen', 'King', 2018, 60),
(181, 'The Institute', 'Stephen', 'King', 2019, 80),
(182, 'If It Bleeds', 'Stephen', 'King', 2020, 75);

-- --------------------------------------------------------

--
-- Table structure for table `books_duplicate`
--

CREATE TABLE `books_duplicate` (
  `book_id` int(11) NOT NULL,
  `book_tittle` varchar(300) DEFAULT NULL,
  `author_fname` varchar(100) DEFAULT NULL,
  `author_lname` varchar(200) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books_duplicate`
--

INSERT INTO `books_duplicate` (`book_id`, `book_tittle`, `author_fname`, `author_lname`, `release_year`, `stock_quantity`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K.', 'Rowling', 1997, 50),
(2, 'Harry Potter and the Chamber of Secrets', 'J.K.', 'Rowling', 1998, 45),
(3, 'Harry Potter and the Prisoner of Azkaban', 'J.K.', 'Rowling', 1999, 55),
(4, 'Harry Potter and the Goblet of Fire', 'J.K.', 'Rowling', 2000, 60),
(5, 'Harry Potter and the Order of the Phoenix', 'J.K.', 'Rowling', 2003, 65),
(6, 'Harry Potter and the Half-Blood Prince', 'J.K.', 'Rowling', 2005, 70),
(7, 'Harry Potter and the Deathly Hallows', 'J.K.', 'Rowling', 2007, 75),
(8, 'The Casual Vacancy', 'J.K.', 'Rowling', 2012, 80),
(9, 'The Cuckoo\'s Calling', 'Robert', 'Galbraith', 2013, 40),
(10, 'The Silkworm', 'Robert', 'Galbraith', 2014, 35),
(11, 'Career of Evil', 'Robert', 'Galbraith', 2015, 30),
(12, 'Lethal White', 'Robert', 'Galbraith', 2018, 45),
(13, 'Troubled Blood', 'Robert', 'Galbraith', 2020, 50),
(14, 'Fantastic Beasts and Where to Find Them', 'J.K.', 'Rowling', 2001, 55),
(15, 'Fantastic Beasts: The Crimes of Grindelwald', 'J.K.', 'Rowling', 2018, 60),
(16, 'Carrie', 'Stephen', 'King', 1974, 70),
(17, 'Salem\'s Lot', 'Stephen', 'King', 1975, 65),
(18, 'The Shining', 'Stephen', 'King', 1977, 80),
(19, 'The Stand', 'Stephen', 'King', 1978, 75),
(20, 'The Dead Zone', 'Stephen', 'King', 1979, 65),
(21, 'Firestarter', 'Stephen', 'King', 1980, 60),
(22, 'Cujo', 'Stephen', 'King', 1981, 55),
(23, 'Christine', 'Stephen', 'King', 1983, 65),
(24, 'Pet Sematary', 'Stephen', 'King', 1983, 70),
(25, 'Cycle of the Werewolf', 'Stephen', 'King', 1983, 40),
(26, 'The Talisman', 'Stephen', 'King', 1984, 60),
(27, 'It', 'Stephen', 'King', 1986, 85),
(28, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(29, 'Misery', 'Stephen', 'King', 1987, 75),
(30, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(31, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(32, 'Needful Things', 'Stephen', 'King', 1991, 70),
(33, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(34, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(35, 'Insomnia', 'Stephen', 'King', 1994, 65),
(36, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(37, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(38, 'Desperation', 'Stephen', 'King', 1996, 70),
(39, 'The Regulators', 'Stephen', 'King', 1996, 65),
(40, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(41, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(42, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(43, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(44, 'Black House', 'Stephen', 'King', 2001, 70),
(45, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(46, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(47, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(48, 'Revival', 'Stephen', 'King', 2014, 75),
(49, 'End of Watch', 'Stephen', 'King', 2016, 65),
(50, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(51, 'The Outsider', 'Stephen', 'King', 2018, 75),
(52, 'Elevation', 'Stephen', 'King', 2018, 60),
(53, 'The Institute', 'Stephen', 'King', 2019, 80),
(54, 'If It Bleeds', 'Stephen', 'King', 2020, 75),
(55, 'Carrie', 'Stephen', 'King', 1974, 70),
(56, 'Salem\'s Lot', 'Stephen', 'King', 1975, 65),
(57, 'The Shining', 'Stephen', 'King', 1977, 80),
(58, 'The Stand', 'Stephen', 'King', 1978, 75),
(59, 'The Dead Zone', 'Stephen', 'King', 1979, 65),
(60, 'Firestarter', 'Stephen', 'King', 1980, 60),
(61, 'Cujo', 'Stephen', 'King', 1981, 55),
(62, 'Christine', 'Stephen', 'King', 1983, 65),
(63, 'Pet Sematary', 'Stephen', 'King', 1983, 70),
(64, 'Cycle of the Werewolf', 'Stephen', 'King', 1983, 40),
(65, 'The Talisman', 'Stephen', 'King', 1984, 60),
(66, 'It', 'Stephen', 'King', 1986, 85),
(67, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(68, 'Misery', 'Stephen', 'King', 1987, 75),
(69, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(70, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(71, 'Needful Things', 'Stephen', 'King', 1991, 70),
(72, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(73, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(74, 'Insomnia', 'Stephen', 'King', 1994, 65),
(75, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(76, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(77, 'Desperation', 'Stephen', 'King', 1996, 70),
(78, 'The Regulators', 'Stephen', 'King', 1996, 65),
(79, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(80, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(81, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(82, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(83, 'Black House', 'Stephen', 'King', 2001, 70),
(84, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(85, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(86, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(87, 'Revival', 'Stephen', 'King', 2014, 75),
(88, 'End of Watch', 'Stephen', 'King', 2016, 65),
(89, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(90, 'The Outsider', 'Stephen', 'King', 2018, 75),
(91, 'Elevation', 'Stephen', 'King', 2018, 60),
(92, 'The Institute', 'Stephen', 'King', 2019, 80),
(93, 'If It Bleeds', 'Stephen', 'King', 2020, 75),
(94, 'The Talisman', 'Stephen', 'King', 1984, 60),
(95, 'It', 'Stephen', 'King', 1986, 85),
(96, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(97, 'Misery', 'Stephen', 'King', 1987, 75),
(98, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(99, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(100, 'Needful Things', 'Stephen', 'King', 1991, 70),
(101, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(102, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(103, 'Insomnia', 'Stephen', 'King', 1994, 65),
(104, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(105, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(106, 'Desperation', 'Stephen', 'King', 1996, 70),
(107, 'The Regulators', 'Stephen', 'King', 1996, 65),
(108, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(109, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(110, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(111, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(112, 'Black House', 'Stephen', 'King', 2001, 70),
(113, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(114, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(115, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(116, 'Revival', 'Stephen', 'King', 2014, 75),
(117, 'End of Watch', 'Stephen', 'King', 2016, 65),
(118, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(119, 'The Outsider', 'Stephen', 'King', 2018, 75),
(120, 'Elevation', 'Stephen', 'King', 2018, 60),
(121, 'The Institute', 'Stephen', 'King', 2019, 80),
(122, 'If It Bleeds', 'Stephen', 'King', 2020, 75),
(123, 'The Talisman', 'Stephen', 'King', 1984, 60),
(124, 'It', 'Stephen', 'King', 1986, 85),
(125, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(126, 'Misery', 'Stephen', 'King', 1987, 75),
(127, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(128, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(129, 'Needful Things', 'Stephen', 'King', 1991, 70),
(130, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(131, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(132, 'Insomnia', 'Stephen', 'King', 1994, 65),
(133, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(134, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(135, 'Desperation', 'Stephen', 'King', 1996, 70),
(136, 'The Regulators', 'Stephen', 'King', 1996, 65),
(137, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(138, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(139, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(140, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(141, 'Black House', 'Stephen', 'King', 2001, 70),
(142, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(143, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(144, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(145, 'Revival', 'Stephen', 'King', 2014, 75),
(146, 'End of Watch', 'Stephen', 'King', 2016, 65),
(147, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(148, 'The Outsider', 'Stephen', 'King', 2018, 75),
(149, 'Elevation', 'Stephen', 'King', 2018, 60),
(150, 'The Institute', 'Stephen', 'King', 2019, 80),
(151, 'If It Bleeds', 'Stephen', 'King', 2020, 75),
(152, 'An Absolutely Remarkable Thing', 'Hank', 'Green', 2018, 60),
(153, 'A Beautifully Foolish Endeavor', 'Hank', 'Green', 2020, 75),
(154, 'The Talisman', 'Stephen', 'King', 1984, 60),
(155, 'It', 'Stephen', 'King', 1986, 85),
(156, 'The Eyes of the Dragon', 'Stephen', 'King', 1987, 50),
(157, 'Misery', 'Stephen', 'King', 1987, 75),
(158, 'The Tommyknockers', 'Stephen', 'King', 1987, 60),
(159, 'The Dark Half', 'Stephen', 'King', 1989, 65),
(160, 'Needful Things', 'Stephen', 'King', 1991, 70),
(161, 'Gerald\'s Game', 'Stephen', 'King', 1992, 55),
(162, 'Dolores Claiborne', 'Stephen', 'King', 1992, 60),
(163, 'Insomnia', 'Stephen', 'King', 1994, 65),
(164, 'Rose Madder', 'Stephen', 'King', 1995, 60),
(165, 'The Green Mile', 'Stephen', 'King', 1996, 75),
(166, 'Desperation', 'Stephen', 'King', 1996, 70),
(167, 'The Regulators', 'Stephen', 'King', 1996, 65),
(168, 'Bag of Bones', 'Stephen', 'King', 1998, 70),
(169, 'The Girl Who Loved Tom Gordon', 'Stephen', 'King', 1999, 55),
(170, 'Hearts in Atlantis', 'Stephen', 'King', 1999, 65),
(171, 'Dreamcatcher', 'Stephen', 'King', 2001, 75),
(172, 'Black House', 'Stephen', 'King', 2001, 70),
(173, 'From a Buick 8', 'Stephen', 'King', 2002, 60),
(174, 'The Dark Tower: The Wind Through the Keyhole', 'Stephen', 'King', 2012, 50),
(175, 'Doctor Sleep', 'Stephen', 'King', 2013, 70),
(176, 'Revival', 'Stephen', 'King', 2014, 75),
(177, 'End of Watch', 'Stephen', 'King', 2016, 65),
(178, 'Gwendy\'s Button Box', 'Stephen', 'King', 2017, 55),
(179, 'The Outsider', 'Stephen', 'King', 2018, 75),
(180, 'Elevation', 'Stephen', 'King', 2018, 60),
(181, 'The Institute', 'Stephen', 'King', 2019, 80),
(182, 'If It Bleeds', 'Stephen', 'King', 2020, 75);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_name`) VALUES
(1, 'Client A'),
(2, 'Client B'),
(3, 'Client C'),
(4, 'Client D'),
(5, 'Client E'),
(6, 'Client F'),
(7, 'Client G'),
(8, 'Client H'),
(9, 'Client I'),
(10, 'Client J');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(100) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`, `author_id`) VALUES
(1, 'Fantasy', NULL),
(2, 'Horror', NULL),
(3, 'Sci-Fi', NULL),
(4, 'Poetry', NULL),
(7, 'Mystery', NULL),
(8, 'Literary Fiction', NULL),
(9, 'Romance', NULL),
(10, 'Thriller', NULL),
(11, 'Science Fiction', NULL),
(12, 'Historical Fiction', NULL),
(13, 'Dystopian', NULL),
(14, 'Humor', NULL),
(15, 'Young Adult', NULL),
(16, 'Crime', NULL),
(17, 'Adventure', NULL),
(18, 'Biography', NULL),
(19, 'Historical', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres_duplicate`
--

CREATE TABLE `genres_duplicate` (
  `genre_id` int(11) NOT NULL DEFAULT 0,
  `genre_name` varchar(100) DEFAULT NULL,
  `dominating_authors_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres_duplicate`
--

INSERT INTO `genres_duplicate` (`genre_id`, `genre_name`, `dominating_authors_name`) VALUES
(1, 'Fantasy', 'J.K. Rowling'),
(2, 'Horror', 'Stephen King'),
(3, 'Sci-Fi', 'Hank Green'),
(4, 'Poetry', 'Iqbal'),
(5, 'Sci-Fi', 'Isaac Asimov'),
(6, 'Fantasy', 'J.R.R. Tolkien'),
(7, 'Mystery', 'Agatha Christie'),
(8, 'Literary Fiction', 'Haruki Murakami'),
(9, 'Romance', 'Nicholas Sparks'),
(10, 'Thriller', 'Dan Brown'),
(11, 'Science Fiction', 'Arthur C. Clarke'),
(12, 'Historical Fiction', 'Ken Follett'),
(13, 'Dystopian', 'Margaret Atwood'),
(14, 'Humor', 'Terry Pratchett'),
(15, 'Young Adult', 'John Green'),
(16, 'Crime', 'Michael Connelly'),
(17, 'Adventure', 'Jules Verne'),
(18, 'Biography', 'Walter Isaacson'),
(19, 'Historical', 'Hilary Mantel');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hyyy`
-- (See below for the actual view)
--
CREATE TABLE `hyyy` (
`author_name` varchar(200)
,`genre_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `invoice_total` decimal(8,2) DEFAULT NULL,
  `payment_total` decimal(8,2) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `client_id`, `invoice_total`, `payment_total`, `book_id`) VALUES
(1, 1, 0.00, 0.00, NULL),
(2, 2, 0.00, 0.00, NULL),
(3, 3, 0.00, 0.00, NULL),
(4, 4, 0.00, 0.00, NULL),
(5, 5, 0.00, 0.00, NULL),
(6, 6, 0.00, 0.00, NULL),
(7, 7, 0.00, 0.00, NULL),
(8, 8, 0.00, 0.00, NULL),
(9, 9, 0.00, 0.00, NULL),
(10, 10, 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `shipment_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`shipment_id`, `client_id`, `state`, `invoice_id`) VALUES
(1, 1, 'Shipped', 1),
(2, 2, 'Shipped', 2),
(3, 3, 'Shipped', 3),
(4, 4, 'Shipped', 4),
(5, 5, 'Shipped', 5),
(6, 6, 'Shipped', 6),
(7, 7, 'Shipped', 7),
(8, 8, 'Shipped', 8),
(9, 9, 'Shipped', 9),
(10, 10, 'Shipped', 10);

-- --------------------------------------------------------

--
-- Structure for view `author_genre_book_view`
--
DROP TABLE IF EXISTS `author_genre_book_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `author_genre_book_view`  AS SELECT `a`.`author_name` AS `author_name`, `g`.`genre_name` AS `genre_name`, `b`.`book_tittle` AS `book_title` FROM ((`authors` `a` join `books` `b` on(`a`.`book_id` = `b`.`book_id`)) join `genres` `g` on(`a`.`genre_id` = `g`.`genre_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `hyyy`
--
DROP TABLE IF EXISTS `hyyy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hyyy`  AS SELECT `a`.`author_name` AS `author_name`, `g`.`genre_name` AS `genre_name` FROM ((`authors_duplicate` `a` join `genres` `ag` on(`a`.`author_id` = `ag`.`author_id`)) join `genres` `g` on(`ag`.`genre_id` = `g`.`genre_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `authors_duplicate`
--
ALTER TABLE `authors_duplicate`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `books_duplicate`
--
ALTER TABLE `books_duplicate`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `books_duplicate`
--
ALTER TABLE `books_duplicate`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `authors_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors_duplicate` (`author_id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`),
  ADD CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
