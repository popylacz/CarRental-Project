-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Kwi 2024, 22:33
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `carrental`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `flota`
--

CREATE TABLE `flota` (
  `id` int(11) NOT NULL,
  `marka` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `nadwozie` varchar(30) NOT NULL,
  `skrzynia` varchar(30) NOT NULL,
  `pojemnosc_silnika` int(11) NOT NULL,
  `paliwo` varchar(30) NOT NULL,
  `rocznik` varchar(30) NOT NULL,
  `kolor` varchar(30) NOT NULL,
  `naped` varchar(30) NOT NULL,
  `moc` int(11) NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `flota`
--

INSERT INTO `flota` (`id`, `marka`, `model`, `nadwozie`, `skrzynia`, `pojemnosc_silnika`, `paliwo`, `rocznik`, `kolor`, `naped`, `moc`, `cena`) VALUES
(1, 'BMW', 'Seria 3', 'Sedan', 'Automat', 3000, 'Diesel', '2018', 'Bialy', 'Tyl', 204, 350),
(2, 'Audi', 'RS6', 'Avant', 'Automat', 4000, 'Benzyna', '2019', 'Szary', 'AWD', 600, 500),
(3, 'Mercedes Benz', 'E63', 'Sedan', 'Automat', 4000, 'Diesel', '2017', 'Czarny', 'Tyl', 612, 550),
(4, 'Range Rover', 'Velar', 'SUV', 'Automat', 3000, 'Benzyna', '2019', 'Srebrny', 'AWD', 400, 480),
(5, 'Porsche', 'Panamera', 'Sedan', 'Automat', 3600, 'Diesel', '2018', 'Czerwony', 'AWD', 300, 420),
(6, 'BMW', 'M5', 'Sedan', 'Manual', 5000, 'Diesel', '2008', 'Czarny', 'Tyl', 507, 890);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `flota`
--
ALTER TABLE `flota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `flota`
--
ALTER TABLE `flota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
