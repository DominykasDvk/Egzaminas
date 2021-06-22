-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 01:04 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u2_kursai_komentarai`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `Com_ID` int(11) NOT NULL,
  `Comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`Com_ID`, `Comment`) VALUES
(1, 'Išmokau ne tik prižiūrrėti bet ir pats kurti robotus'),
(2, 'Programa esu patenkintas nes visada turesiu sunku bet gerai apmokama darba'),
(3, 'Patiko kadangi, igijau paildoma specialybe ir zinau ka studijuosiu toliau'),
(4, 'Puiki mokymo specilybe, taciau galetu buti atnaujinta labiau.'),
(5, 'Esu labai patenkinta, tolimesnio darbo pagerijimo sieksiu universitete');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `Course_author` varchar(100) NOT NULL,
  `Insert_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Speciality` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Full_Discription` varchar(2000) NOT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `Popularity` int(11) DEFAULT NULL,
  `Com_ID` int(11) NOT NULL,
  `pric` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`Course_author`, `Insert_date`, `Speciality`, `Description`, `Full_Discription`, `Foto`, `Popularity`, `Com_ID`, `pric`, `Rating`) VALUES
('Dominykas', '2021-06-22 10:15:10', 'Robotu taisytojas', 'Robotu taisytojo modulinė profesinio mokymo programa', 'Programa skirta parengti kvalifikuotus darbuotojus, gebančiu savarankiškai taisyti robotus, prižiūreti robotus...', 'Robotu taisytojas.jpg', 0, 1, 2000, 5),
('Marius', '2021-06-22 10:21:06', 'Statybininkas', 'Statybininko modulinė profesinio mokymo programa', 'Programa skirta parengti kvalifikuotus darbuotojus, gebančius savarankiškai stayti, apipavidalinti ir apšildyti namus', 'Statybininkas.jpg', 0, 2, 1560, 4),
('Mindaugas', '2021-06-22 10:25:53', 'Karys', 'Kario modulinė profesinio mokymo programa', 'Programa skirta parengti kvalifikuotus karius, gebančius apginti tevine, valdyti ivairius ginklus bei karine technika', 'Karys.jpg', 5, 3, 680, 5),
('Jonas', '2021-06-22 10:29:37', 'Gaisrininkas', 'Gaisrininko modulinė profesinio mokymo programa', 'Programa skirta parengti kvalifikuotus darbuotojus, gebančius gesinti gaisrus bei gelbejancius zmones', 'gaisrininkas.jpg', 0, 4, 3800, 3),
('Aurelija', '2021-06-22 10:34:09', 'Policininkas', 'Policininko modulinė profesinio programa', 'Parengti kvalifikuotus pareigunus, gebančius patruliuoti gatvese rupintis viesaja tvarka ir kita teisesauga', 'policininkas.jpg', 0, 5, 2000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`Com_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `Com_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
