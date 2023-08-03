-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Jul-2023 às 01:39
-- Versão do servidor: 5.7.36-cll-lve
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `j65crs1a_valeyesports`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadopartida`
--

CREATE TABLE `estadopartida` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadopartida`
--

INSERT INTO `estadopartida` (`id`, `estado`) VALUES
(0, 'NÃ£o Iniciada'),
(1, 'Iniciada'),
(2, 'Terminada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadotorneio`
--

CREATE TABLE `estadotorneio` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadotorneio`
--

INSERT INTO `estadotorneio` (`id`, `estado`) VALUES
(0, 'NÃ£o Iniciado'),
(1, 'Iniciado'),
(2, 'Terminado'),
(3, 'Eliminado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadouser`
--

CREATE TABLE `estadouser` (
  `id` int(11) NOT NULL,
  `estado` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadouser`
--

INSERT INTO `estadouser` (`id`, `estado`) VALUES
(0, 'NÃ£o Aprovado'),
(1, 'Registado'),
(3, 'Eliminado'),
(4, 'Banido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faqinfo`
--

CREATE TABLE `faqinfo` (
  `id` int(11) NOT NULL,
  `pergFaq` varchar(512) NOT NULL,
  `resFaq` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faqinfo`
--

INSERT INTO `faqinfo` (`id`, `pergFaq`, `resFaq`) VALUES
(1, '#P1. Posso participar de torneios de Esports como jogador?', 'Sim, voÃ§Ãª pode participar como jogador nos torneios de Esports disponÃ­veis no projeto. ApÃ³s fazer login, encontre um torneio que seja do seu interesse na lista de torneios ativos. Verifique os requisitos e as datas de inscriÃ§Ã£o. Se estiver disponÃ­vel e dentro do prazo, pode fazer a sua inscriÃ§Ã£o. Boa sorte!'),
(2, '#P2. Consigo criar um torneio de Esports facilmente pela ValeyEsports?', 'Sim, criar um torneio de Esports na ValeyEsports Ã© bastante fÃ¡cil e intuitivo. ApÃ³s criar uma conta e fazer login, vocÃª vai encontrar a opÃ§Ã£o \"Criar Torneio\" no menu principal. Basta preencher as informaÃ§Ãµes necessÃ¡rias.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `jogo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `jogo`) VALUES
(0, 'CS:GO'),
(1, 'Minecraft'),
(2, 'Counter Strike 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `iduser` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idtipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`iduser`, `data`, `idtipo`) VALUES
(2, '2023-05-08 16:23:13', 0),
(2, '2023-05-08 17:04:19', 0),
(2, '2023-05-09 07:41:54', 0),
(2, '2023-05-09 16:39:59', 0),
(2, '2023-05-09 16:46:54', 0),
(2, '2023-05-09 16:47:32', 0),
(2, '2023-05-09 16:49:20', 0),
(2, '2023-05-09 17:13:12', 0),
(2, '2023-05-09 17:17:44', 0),
(2, '2023-05-10 07:46:57', 0),
(2, '2023-05-10 14:33:49', 0),
(2, '2023-05-10 15:32:33', 0),
(2, '2023-05-11 07:50:14', 0),
(2, '2023-05-11 08:03:10', 0),
(2, '2023-05-11 08:05:01', 0),
(2, '2023-05-11 08:07:41', 0),
(2, '2023-05-16 16:46:07', 0),
(2, '2023-05-16 16:49:33', 0),
(2, '2023-05-19 16:38:23', 0),
(2, '2023-05-23 09:12:47', 0),
(2, '2023-05-23 09:13:43', 0),
(2, '2023-05-24 15:56:46', 0),
(2, '2023-05-24 16:00:59', 0),
(2, '2023-05-29 08:57:58', 0),
(2, '2023-05-29 08:59:00', 0),
(2, '2023-05-29 09:42:24', 0),
(2, '2023-06-01 08:08:20', 0),
(2, '2023-06-01 08:26:23', 0),
(2, '2023-06-01 08:45:35', 0),
(2, '2023-06-01 09:07:14', 0),
(2, '2023-06-01 15:10:31', 0),
(2, '2023-06-02 07:41:17', 0),
(2, '2023-06-02 15:04:43', 0),
(2, '2023-06-07 08:53:24', 0),
(2, '2023-06-07 09:21:01', 0),
(2, '2023-06-07 10:50:30', 0),
(2, '2023-06-07 13:15:39', 0),
(2, '2023-06-13 09:59:18', 0),
(2, '2023-06-14 14:27:43', 0),
(2, '2023-06-14 14:40:14', 0),
(2, '2023-06-14 14:46:01', 0),
(2, '2023-06-14 14:46:23', 0),
(2, '2023-06-14 14:52:10', 0),
(2, '2023-06-14 15:56:15', 0),
(2, '2023-06-14 16:29:52', 0),
(2, '2023-06-15 08:09:59', 0),
(2, '2023-06-15 10:31:01', 0),
(2, '2023-06-15 11:11:26', 0),
(2, '2023-06-16 10:10:44', 0),
(2, '2023-06-16 14:02:44', 0),
(2, '2023-06-16 14:17:21', 0),
(2, '2023-06-16 16:03:27', 0),
(2, '2023-06-16 16:15:51', 0),
(2, '2023-06-19 17:07:08', 0),
(2, '2023-06-20 12:47:42', 0),
(2, '2023-06-21 13:51:16', 0),
(2, '2023-06-21 14:39:06', 0),
(2, '2023-06-21 14:39:10', 0),
(2, '2023-06-22 09:10:59', 0),
(2, '2023-06-22 09:12:28', 0),
(2, '2023-06-22 09:30:10', 0),
(2, '2023-06-22 11:18:03', 0),
(2, '2023-06-23 08:57:11', 0),
(2, '2023-06-23 09:40:19', 0),
(2, '2023-06-23 11:26:48', 0),
(2, '2023-06-23 13:19:11', 0),
(2, '2023-06-23 15:54:03', 0),
(2, '2023-06-23 17:03:34', 0),
(2, '2023-06-25 14:41:19', 0),
(2, '2023-06-25 17:29:12', 0),
(2, '2023-06-25 18:26:11', 0),
(2, '2023-06-26 11:53:21', 0),
(2, '2023-06-27 08:15:02', 0),
(2, '2023-06-27 09:26:55', 0),
(2, '2023-06-28 14:27:10', 0),
(2, '2023-06-28 17:05:13', 0),
(2, '2023-06-30 15:37:52', 0),
(4, '2023-05-09 16:47:26', 0),
(4, '2023-05-09 16:48:53', 0),
(4, '2023-05-23 09:13:12', 0),
(10, '2023-05-08 17:00:48', 0),
(12, '2023-05-09 16:24:55', 0),
(12, '2023-05-09 17:19:36', 0),
(12, '2023-05-09 17:22:23', 0),
(12, '2023-05-09 17:24:16', 0),
(12, '2023-05-10 15:30:54', 0),
(12, '2023-05-10 16:31:01', 0),
(12, '2023-05-10 16:51:46', 0),
(12, '2023-05-11 07:50:14', 0),
(12, '2023-05-16 11:29:12', 0),
(12, '2023-05-16 11:30:04', 0),
(12, '2023-05-16 11:30:32', 0),
(12, '2023-05-16 11:31:02', 0),
(12, '2023-05-16 11:31:47', 0),
(12, '2023-05-16 11:32:04', 0),
(12, '2023-05-18 19:31:19', 0),
(12, '2023-05-26 15:21:25', 0),
(12, '2023-05-31 15:46:42', 0),
(12, '2023-06-01 08:08:14', 0),
(1, '2023-05-09 16:39:53', 1),
(2, '2023-05-08 16:22:59', 1),
(2, '2023-05-08 17:00:06', 1),
(2, '2023-05-09 16:03:17', 1),
(2, '2023-05-09 16:46:43', 1),
(2, '2023-05-09 16:47:06', 1),
(2, '2023-05-09 16:47:38', 1),
(2, '2023-05-09 17:12:54', 1),
(2, '2023-05-11 08:02:54', 1),
(2, '2023-05-11 08:03:29', 1),
(2, '2023-05-11 08:07:18', 1),
(2, '2023-05-16 16:49:19', 1),
(2, '2023-05-23 09:13:08', 1),
(2, '2023-05-24 15:59:36', 1),
(2, '2023-05-29 08:58:44', 1),
(2, '2023-05-29 08:59:10', 1),
(2, '2023-06-01 08:26:17', 1),
(2, '2023-06-01 08:36:44', 1),
(2, '2023-06-01 08:46:32', 1),
(2, '2023-06-01 09:07:16', 1),
(2, '2023-06-07 09:04:04', 1),
(2, '2023-06-07 09:21:34', 1),
(2, '2023-06-14 14:45:47', 1),
(2, '2023-06-14 14:46:10', 1),
(2, '2023-06-14 14:51:18', 1),
(2, '2023-06-14 16:20:48', 1),
(2, '2023-06-16 16:08:20', 1),
(2, '2023-06-22 09:11:07', 1),
(2, '2023-06-22 09:15:32', 1),
(2, '2023-06-23 09:14:18', 1),
(2, '2023-06-23 10:13:33', 1),
(2, '2023-06-23 14:24:46', 1),
(2, '2023-06-23 17:27:50', 1),
(4, '2023-05-09 16:47:28', 1),
(4, '2023-05-09 16:49:12', 1),
(4, '2023-05-23 09:13:37', 1),
(12, '2023-05-11 08:03:33', 1),
(12, '2023-05-16 11:29:48', 1),
(12, '2023-05-16 11:30:16', 1),
(12, '2023-05-16 11:30:44', 1),
(12, '2023-05-16 11:31:36', 1),
(12, '2023-05-16 11:31:54', 1),
(12, '2023-05-26 15:29:33', 1),
(2, '2023-06-04 12:24:49', 2),
(2, '2023-06-04 12:25:22', 2),
(2, '2023-06-04 12:26:28', 2),
(2, '2023-06-04 12:56:07', 2),
(2, '2023-06-04 15:11:50', 2),
(2, '2023-06-04 15:49:33', 2),
(2, '2023-06-04 15:49:57', 2),
(2, '2023-06-04 15:51:01', 2),
(2, '2023-06-04 15:55:38', 2),
(2, '2023-06-04 15:56:03', 2),
(2, '2023-06-04 15:57:52', 2),
(2, '2023-06-04 16:08:28', 2),
(2, '2023-06-04 16:08:29', 2),
(2, '2023-06-04 16:08:39', 2),
(2, '2023-06-04 16:08:40', 2),
(2, '2023-06-04 16:13:01', 2),
(2, '2023-06-04 16:16:18', 2),
(2, '2023-06-04 16:30:18', 2),
(2, '2023-06-04 16:30:19', 2),
(2, '2023-06-04 16:30:20', 2),
(2, '2023-06-04 16:30:21', 2),
(2, '2023-06-04 16:30:22', 2),
(2, '2023-06-04 16:30:23', 2),
(2, '2023-06-04 16:30:24', 2),
(2, '2023-06-04 17:01:38', 2),
(2, '2023-06-04 17:01:39', 2),
(2, '2023-06-04 17:03:24', 2),
(2, '2023-06-04 17:03:41', 2),
(2, '2023-06-04 17:04:23', 2),
(2, '2023-06-04 17:04:37', 2),
(2, '2023-06-04 17:04:56', 2),
(2, '2023-06-04 17:05:31', 2),
(2, '2023-06-04 17:06:16', 2),
(2, '2023-06-04 17:06:36', 2),
(2, '2023-06-04 17:08:05', 2),
(2, '2023-06-04 17:08:12', 2),
(2, '2023-06-04 17:09:45', 2),
(2, '2023-06-04 17:09:48', 2),
(2, '2023-06-04 17:09:54', 2),
(2, '2023-06-04 17:09:58', 2),
(2, '2023-06-04 17:10:01', 2),
(2, '2023-06-04 17:10:22', 2),
(2, '2023-06-04 17:10:26', 2),
(2, '2023-06-04 17:10:44', 2),
(2, '2023-06-04 17:10:47', 2),
(2, '2023-06-04 17:11:25', 2),
(2, '2023-06-04 17:11:32', 2),
(2, '2023-06-04 17:11:35', 2),
(2, '2023-06-04 17:11:43', 2),
(2, '2023-06-04 17:11:46', 2),
(2, '2023-06-04 17:36:03', 2),
(2, '2023-06-04 17:36:07', 2),
(2, '2023-06-04 17:44:01', 2),
(2, '2023-06-04 17:44:04', 2),
(2, '2023-06-04 17:44:09', 2),
(2, '2023-06-04 17:44:12', 2),
(2, '2023-06-04 17:44:15', 2),
(2, '2023-06-04 17:44:18', 2),
(2, '2023-06-04 17:44:21', 2),
(2, '2023-06-04 17:46:30', 2),
(2, '2023-06-04 17:46:34', 2),
(2, '2023-06-04 17:48:58', 2),
(2, '2023-06-04 17:49:11', 2),
(2, '2023-06-04 17:49:14', 2),
(2, '2023-06-04 17:59:33', 2),
(2, '2023-06-04 17:59:57', 2),
(2, '2023-06-04 18:00:31', 2),
(2, '2023-06-04 18:00:37', 2),
(2, '2023-06-04 18:00:40', 2),
(2, '2023-06-04 18:01:10', 2),
(2, '2023-06-04 18:01:16', 2),
(2, '2023-06-04 18:01:21', 2),
(2, '2023-06-04 18:02:33', 2),
(2, '2023-06-04 18:02:40', 2),
(2, '2023-06-04 18:02:47', 2),
(2, '2023-06-10 15:11:37', 2),
(2, '2023-06-10 15:12:40', 2),
(2, '2023-06-10 15:12:44', 2),
(2, '2023-06-10 17:16:06', 2),
(2, '2023-06-10 17:21:43', 2),
(2, '2023-06-10 17:52:42', 2),
(2, '2023-06-10 17:57:22', 2),
(2, '2023-06-10 17:59:34', 2),
(2, '2023-06-10 18:01:23', 2),
(2, '2023-06-10 18:01:32', 2),
(2, '2023-06-10 18:01:50', 2),
(2, '2023-06-10 18:02:10', 2),
(2, '2023-06-10 18:02:28', 2),
(2, '2023-06-10 18:02:38', 2),
(2, '2023-06-10 18:06:29', 2),
(2, '2023-06-10 18:06:38', 2),
(2, '2023-06-10 18:06:52', 2),
(2, '2023-06-10 18:14:36', 2),
(2, '2023-06-10 18:14:50', 2),
(2, '2023-06-10 18:15:01', 2),
(2, '2023-06-10 18:15:16', 2),
(2, '2023-06-13 19:48:36', 2),
(2, '2023-06-13 19:48:45', 2),
(2, '2023-06-13 19:48:57', 2),
(2, '2023-06-13 19:54:59', 2),
(2, '2023-06-13 19:55:09', 2),
(2, '2023-06-13 19:58:16', 2),
(2, '2023-06-13 19:58:23', 2),
(2, '2023-06-13 20:03:02', 2),
(2, '2023-06-13 20:03:10', 2),
(2, '2023-06-13 20:03:18', 2),
(2, '2023-06-13 20:03:29', 2),
(2, '2023-06-13 20:03:43', 2),
(2, '2023-06-13 20:03:51', 2),
(2, '2023-06-13 20:03:57', 2),
(2, '2023-06-16 19:56:26', 2),
(2, '2023-06-16 19:56:43', 2),
(2, '2023-06-16 19:56:53', 2),
(2, '2023-06-16 19:57:20', 2),
(2, '2023-06-16 19:57:30', 2),
(2, '2023-06-16 19:57:54', 2),
(2, '2023-06-16 19:59:22', 2),
(2, '2023-06-16 19:59:36', 2),
(2, '2023-06-16 20:05:39', 2),
(2, '2023-06-16 20:06:13', 2),
(2, '2023-06-16 20:06:29', 2),
(2, '2023-06-16 20:10:22', 2),
(11, '2023-06-13 20:26:06', 2),
(11, '2023-06-13 20:26:13', 2),
(11, '2023-06-16 19:56:35', 2),
(11, '2023-06-16 19:57:07', 2),
(11, '2023-06-16 19:59:30', 2),
(11, '2023-06-16 20:06:04', 2),
(11, '2023-06-16 20:10:11', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `participantes_torneio`
--

CREATE TABLE `participantes_torneio` (
  `idtorneio` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `participantes_torneio`
--

INSERT INTO `participantes_torneio` (`idtorneio`, `iduser`) VALUES
(69, 1),
(68, 2),
(70, 3),
(68, 4),
(70, 4),
(70, 5),
(68, 6),
(68, 7),
(70, 10),
(70, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `partidas`
--

CREATE TABLE `partidas` (
  `idtorneio` int(11) NOT NULL,
  `idpartida` int(11) NOT NULL,
  `idestado` int(11) NOT NULL,
  `iduser1` int(11) NOT NULL,
  `iduser2` int(11) NOT NULL,
  `vencedor` int(11) DEFAULT NULL,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `partidas`
--

INSERT INTO `partidas` (`idtorneio`, `idpartida`, `idestado`, `iduser1`, `iduser2`, `vencedor`, `data`) VALUES
(68, 11, 2, 7, 1, 7, '2023-06-14 16:18:02'),
(68, 12, 2, 4, 1, 4, '2023-06-14 16:18:02'),
(68, 13, 2, 2, 1, 2, '2023-06-14 16:18:02'),
(68, 14, 2, 6, 1, 6, '2023-06-14 16:18:02'),
(68, 21, 2, 7, 4, 4, '2023-06-14 16:18:02'),
(68, 22, 2, 2, 6, 2, '2023-06-14 16:18:02'),
(68, 31, 2, 2, 4, 2, '2023-06-14 16:18:02'),
(69, 11, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 12, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 13, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 14, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 21, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 22, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(69, 31, 2, 1, 1, 1, '2023-06-16 10:36:02'),
(70, 11, 2, 3, 11, 3, '2023-06-16 11:03:01'),
(70, 12, 1, 5, 1, NULL, '2023-06-16 11:03:01'),
(70, 13, 1, 4, 1, NULL, '2023-06-16 11:03:01'),
(70, 14, 1, 10, 1, NULL, '2023-06-16 11:03:01'),
(70, 21, 0, 3, 0, NULL, '2023-06-16 11:03:01'),
(70, 22, 0, 0, 0, NULL, '2023-06-16 11:03:01'),
(70, 31, 0, 0, 0, NULL, '2023-06-16 11:03:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipologs`
--

CREATE TABLE `tipologs` (
  `id` int(11) NOT NULL,
  `tipo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipologs`
--

INSERT INTO `tipologs` (`id`, `tipo`) VALUES
(0, 'login'),
(1, 'logout'),
(2, 'rfid');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipouser`
--

CREATE TABLE `tipouser` (
  `id` int(11) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipouser`
--

INSERT INTO `tipouser` (`id`, `tipo`) VALUES
(0, 'Normal'),
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `torneios`
--

CREATE TABLE `torneios` (
  `id` int(11) NOT NULL,
  `idcriador` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `descricao` varchar(240) NOT NULL,
  `imagem` varchar(240) NOT NULL,
  `nMaxParticipantes` int(11) NOT NULL,
  `dataInicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idestado` int(11) NOT NULL DEFAULT '0',
  `idjogo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `torneios`
--

INSERT INTO `torneios` (`id`, `idcriador`, `nome`, `descricao`, `imagem`, `nMaxParticipantes`, `dataInicio`, `idestado`, `idjogo`) VALUES
(68, 2, 'Major Portugal - CounterStrike', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam semper mi est, vitae commodo orci posuere egestas. Nunc tincidunt interdum massa, eget sodales ligula placerat vel. Class aptent taciti sociosqu ad litora torquent per conubia ', '../../ImagensPAP/202999_st,small,507x507-pad,600x600,f8f8f8.jpg', 8, '2023-06-14 16:20:23', 2, 2),
(69, 2, 'Testar Torneio Vazio', 'asdadad', '../../ImagensPAP/687199_Screenshot_4.png', 8, '2023-06-16 10:36:35', 2, 0),
(70, 2, 'Torneio para Print de Exemplo', 'asda ads asd asdasda sadasd', '../../ImagensPAP/788804_code.png', 8, '2023-06-16 11:03:01', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `idDiscord` int(11) DEFAULT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(140) NOT NULL,
  `password` varchar(120) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idnfc` varchar(60) DEFAULT NULL,
  `idtipo` int(11) NOT NULL DEFAULT '0',
  `idestado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `idDiscord`, `nome`, `email`, `password`, `createdAt`, `idnfc`, `idtipo`, `idestado`) VALUES
(0, NULL, 'Pendente', 'pendente', 'a2989651a6e1c7a3db0a9cfbbe8436f1', '2023-04-11 14:06:22', NULL, 0, 1),
(1, NULL, 'Ghost', 'ghost', 'a2989651a6e1c7a3db0a9cfbbe8436f1', '2023-04-11 14:06:22', NULL, 0, 1),
(2, NULL, 'Roberto', 'r@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-01-21 23:45:57', '634459526275', 1, 1),
(3, NULL, 'roberto2', 'r2', '202cb962ac59075b964b07152d234b70', '2023-01-22 00:00:26', NULL, 0, 1),
(4, NULL, 'roberto1', 'r1', '202cb962ac59075b964b07152d234b70', '2023-01-21 23:58:54', NULL, 0, 1),
(5, NULL, 'roberto3', 'r3', '202cb962ac59075b964b07152d234b70', '2023-01-22 00:01:26', NULL, 0, 1),
(6, NULL, 'roberto4', 'r4', '202cb962ac59075b964b07152d234b70', '2023-01-22 02:30:24', NULL, 0, 1),
(7, NULL, 'roberto5', 'r5', '202cb962ac59075b964b07152d234b70', '2023-01-22 11:30:32', NULL, 0, 1),
(9, NULL, 'Irineu', '123', '202cb962ac59075b964b07152d234b70', '2023-05-08 17:00:17', NULL, 0, 1),
(10, NULL, 'Irineu', 'Irineu', '202cb962ac59075b964b07152d234b70', '2023-05-08 17:00:44', NULL, 0, 3),
(11, NULL, 'Richarlison', 'richarlison@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-05-09 07:46:13', '604736145693', 0, 1),
(12, NULL, 'vasco2', 'vascomagolo@gmail.com', '1b4543f0bacad537da30517cd15dbb22', '2023-05-09 16:24:46', NULL, 0, 1),
(13, NULL, 'Robertoo', 'qqq', '202cb962ac59075b964b07152d234b70', '2023-05-29 08:59:48', NULL, 0, 1),
(14, NULL, 'teste1', 'teste1@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-06-01 09:02:58', NULL, 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estadopartida`
--
ALTER TABLE `estadopartida`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estadotorneio`
--
ALTER TABLE `estadotorneio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estadouser`
--
ALTER TABLE `estadouser`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faqinfo`
--
ALTER TABLE `faqinfo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`iduser`,`data`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idtipo` (`idtipo`);

--
-- Índices para tabela `participantes_torneio`
--
ALTER TABLE `participantes_torneio`
  ADD PRIMARY KEY (`idtorneio`,`iduser`),
  ADD KEY `iduser` (`iduser`);

--
-- Índices para tabela `partidas`
--
ALTER TABLE `partidas`
  ADD PRIMARY KEY (`idtorneio`,`idpartida`),
  ADD KEY `iduser1` (`iduser1`),
  ADD KEY `iduser2` (`iduser2`),
  ADD KEY `idtorneio` (`idtorneio`),
  ADD KEY `idestado` (`idestado`),
  ADD KEY `vencedor` (`vencedor`);

--
-- Índices para tabela `tipologs`
--
ALTER TABLE `tipologs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipouser`
--
ALTER TABLE `tipouser`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `torneios`
--
ALTER TABLE `torneios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idestado` (`idestado`),
  ADD KEY `idjogo` (`idjogo`),
  ADD KEY `idcriador` (`idcriador`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idtipo` (`idtipo`),
  ADD KEY `idestado` (`idestado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estadopartida`
--
ALTER TABLE `estadopartida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `estadotorneio`
--
ALTER TABLE `estadotorneio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `faqinfo`
--
ALTER TABLE `faqinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `torneios`
--
ALTER TABLE `torneios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipologs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `participantes_torneio`
--
ALTER TABLE `participantes_torneio`
  ADD CONSTRAINT `participantes_torneio_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participantes_torneio_ibfk_2` FOREIGN KEY (`idtorneio`) REFERENCES `torneios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `partidas`
--
ALTER TABLE `partidas`
  ADD CONSTRAINT `partidas_ibfk_2` FOREIGN KEY (`idtorneio`) REFERENCES `torneios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partidas_ibfk_3` FOREIGN KEY (`iduser1`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partidas_ibfk_4` FOREIGN KEY (`iduser2`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partidas_ibfk_5` FOREIGN KEY (`vencedor`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `partidas_ibfk_6` FOREIGN KEY (`idestado`) REFERENCES `estadopartida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `torneios`
--
ALTER TABLE `torneios`
  ADD CONSTRAINT `torneios_ibfk_2` FOREIGN KEY (`idjogo`) REFERENCES `jogos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `torneios_ibfk_3` FOREIGN KEY (`idcriador`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `torneios_ibfk_4` FOREIGN KEY (`idestado`) REFERENCES `estadotorneio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idestado`) REFERENCES `estadouser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`idtipo`) REFERENCES `tipouser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
