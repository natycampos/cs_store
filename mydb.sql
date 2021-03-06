-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26-Jun-2018 às 19:55
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `skin`
--

CREATE TABLE `skin` (
  `idSkin` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nome_skin` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `skin`
--

INSERT INTO `skin` (`idSkin`, `nome`, `nome_skin`, `tipo`, `preco`, `quantidade`) VALUES
(1, 'M4A4', 'Dragon King', 'Rifle', 25, 10),
(2, 'M4A1-S', 'Hyper Beast', 'Rifle', 35, 10),
(3, 'AK-47', 'Imperatriz', 'Rifle', 180, 10),
(4, 'Galil AR', 'Cerberus', 'Rifle', 40, 10),
(5, 'FAMAS', 'Valence', 'Rifle', 3, 10),
(6, 'AWP', 'Hyper Beast', 'AWP', 90, 10),
(7, 'AWP', 'Sabedoria do Dragão', 'AWP', 3800, 10),
(8, 'AWP', 'Sonho Febril', 'AWP', 29, 10),
(9, 'AWP', 'Oni Taiji', 'AWP', 220, 10),
(10, 'AWP', 'Mortis', 'AWP', 45, 10),
(11, 'Glock', 'Water Elemental', 'Pistol', 22, 10),
(12, 'USP', 'Cyrex', 'Pistol', 8, 10),
(13, 'Desert Eagle', 'Midnight Storm', 'Pistol', 12, 10),
(14, 'CZ75-Auto', 'Tacticat', 'Pistol', 2, 10),
(15, 'P250', 'Asiimov', 'Pistol', 11, 10),
(16, 'Karambit', 'Night', 'Knife', 541, 10),
(17, 'Butterfly', 'Scorched', 'Knife', 350, 10),
(18, 'Bayonet', 'Rust Coat', 'Knife', 420, 10),
(19, 'Bowie', 'Ultraviolet', 'Knife', 230, 10),
(20, 'Falchion', 'Case Hardened', 'Knife', 260, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`idUser`, `login`, `senha`) VALUES
(1, 'nathalia', '1234'),
(2, 'luisa', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_has_skin`
--

CREATE TABLE `user_has_skin` (
  `User_idUser` int(11) NOT NULL,
  `Skin_idSkin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`idSkin`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `user_has_skin`
--
ALTER TABLE `user_has_skin`
  ADD PRIMARY KEY (`User_idUser`,`Skin_idSkin`),
  ADD KEY `fk_User_has_Skin_Skin1_idx` (`Skin_idSkin`),
  ADD KEY `fk_User_has_Skin_User_idx` (`User_idUser`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `user_has_skin`
--
ALTER TABLE `user_has_skin`
  ADD CONSTRAINT `fk_User_has_Skin_Skin1` FOREIGN KEY (`Skin_idSkin`) REFERENCES `skin` (`idSkin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_has_Skin_User` FOREIGN KEY (`User_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
