-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 03:53 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hustlecars`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wynajem`
--

CREATE TABLE `wynajem` (
  `id` int(255) NOT NULL,
  `data_rozpoczecia` date NOT NULL,
  `data_oddania` date NOT NULL,
  `id_auta` int(255) NOT NULL,
  `rodzaj_ubezpieczenia` enum('Ubezpieczenie od kolizji','Ubezpieczenie od kolizji Plus','Ubezpieczenie własne','Rezygnuję z ubezpieczenia') NOT NULL,
  `czy_dostawa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wynajem`
--

INSERT INTO `wynajem` (`id`, `data_rozpoczecia`, `data_oddania`, `id_auta`, `rodzaj_ubezpieczenia`, `czy_dostawa`) VALUES
(1, '2024-04-25', '2024-04-27', 5, 'Ubezpieczenie od kolizji Plus', 0),
(2, '2024-04-17', '2024-04-24', 3, 'Rezygnuję z ubezpieczenia', 1),
(3, '2024-04-25', '2024-04-30', 4, 'Ubezpieczenie od kolizji Plus', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wynajem`
--
ALTER TABLE `wynajem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wynajem_relacja` (`id_auta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wynajem`
--
ALTER TABLE `wynajem`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wynajem`
--
ALTER TABLE `wynajem`
  ADD CONSTRAINT `wynajem_relacja` FOREIGN KEY (`id_auta`) REFERENCES `flota` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
