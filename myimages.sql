-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 apr 2021 om 11:48
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plaatjes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `myimages`
--

CREATE TABLE `myimages` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `myimages`
--

INSERT INTO `myimages` (`id`, `path`, `imagename`, `updated`) VALUES
(6, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 10:48:26'),
(8, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 10:53:55'),
(10, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 10:55:45'),
(13, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 10:56:40'),
(14, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 11:00:06'),
(15, 'uploads/', 'animaatjes-bier-21813.gif', '2021-04-08 11:00:58'),
(16, 'uploads/', '5x-ei-02.jpg', '2021-04-08 11:01:17'),
(17, 'uploads/', '5x-ei-02.jpg', '2021-04-08 11:01:44'),
(18, 'uploads/', '5x-ei-02.jpg', '2021-04-08 11:03:50'),
(19, 'uploads/', 'raketrijden.gif', '2021-04-08 11:41:33'),
(20, 'uploads/', 'top.jpg', '2021-04-08 11:41:58');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `myimages`
--
ALTER TABLE `myimages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `myimages`
--
ALTER TABLE `myimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
