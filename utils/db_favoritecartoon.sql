-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2019 at 11:25 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_favoritecartoon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_3favoritecartoons`
--

CREATE TABLE `tbl_3favoritecartoons` (
  `ID` int(20) NOT NULL,
  `TITTLE` text NOT NULL,
  `IMAGE` varchar(70) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_3favoritecartoons`
--

INSERT INTO `tbl_3favoritecartoons` (`ID`, `TITTLE`, `IMAGE`, `DESCRIPTION`) VALUES
(1, 'TOM & JERRY', 'tom_jerry.svg', 'Tom and Jerry is an animated comedy series created in 1940 by William Hanna and Joseph Barbera.This is comedy and  very interesting as tom and jerry always tease each other which looks very cute and funny.I can watch for whole day.'),
(2, 'SHAUN THE SHEEP', 'shuan_the_sheep.svg', 'Shaun is dog name in this cartoons he lived in barnyard with group of sheep friends he take care of all the animals and feed them and always save them from troubles.Its very interesting cartoon when ever I am stressed I watch it and feel very relaxed and happy.'),
(3, 'BEN 10', 'ben_10.svg', 'Ben 10 adventures cartoon as he has an watch with which he changes his avatar. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_3favoritecartoons`
--
ALTER TABLE `tbl_3favoritecartoons`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_3favoritecartoons`
--
ALTER TABLE `tbl_3favoritecartoons`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
