-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2025 às 23:45
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `depoimentos`
--

CREATE TABLE `depoimentos` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `depoimentos`
--

INSERT INTO `depoimentos` (`id`, `name`, `date`, `text`) VALUES
(5, 'Rafael', '2025-11-23', 'Ótima instituição de ensino'),
(6, 'Rafael', '2025-11-23', 'Ótima instituição de ensino'),
(7, 'Diego', '2025-11-23', 'Professores dedicados!!'),
(8, 'Roberto', '2025-11-23', 'Top');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `TIPO` int(11) NOT NULL,
  `DESCR` text NOT NULL,
  `DATA` date NOT NULL DEFAULT current_timestamp(),
  `VLR` float NOT NULL,
  `COD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lancamentos`
--

INSERT INTO `lancamentos` (`TIPO`, `DESCR`, `DATA`, `VLR`, `COD`) VALUES
(0, 'TESTE', '2025-11-18', 455, 62);

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamento`
--

CREATE TABLE `orcamento` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `orcamento`
--

INSERT INTO `orcamento` (`id`, `name`, `number`, `email`, `gender`) VALUES
(7, 'Eliel', '49989167742', 'leobombieri50@gmail.com', 'S'),
(8, 'Eliel', ' 55 (49) 989167742', 'leobombieri50@gmail.com', 'M'),
(9, 'Roberto', ' 55 (49) 989167742', 'leobombieri50@gmail.com', 'M');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`COD`);

--
-- Índices de tabela `orcamento`
--
ALTER TABLE `orcamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `depoimentos`
--
ALTER TABLE `depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `COD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `orcamento`
--
ALTER TABLE `orcamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
