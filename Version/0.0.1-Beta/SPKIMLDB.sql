-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2026 at 04:02 PM
-- Server version: 8.0.45-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SPKIMLDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Compromised_EU_Info`
--

CREATE TABLE `Compromised_EU_Info` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Compromised_NUS_Info`
--

CREATE TABLE `Compromised_NUS_Info` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `End_Users`
--

CREATE TABLE `End_Users` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Pub_Contact` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Priv_Contact` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Auth_PK` text COLLATE utf8mb4_general_ci NOT NULL,
  `Sign_PK` text COLLATE utf8mb4_general_ci NOT NULL,
  `OOB_PK` text COLLATE utf8mb4_general_ci,
  `SigPKs_ValidDay` int NOT NULL,
  `SigPKs_ValidMonth` int NOT NULL,
  `SigPKs_ValidYear` int NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `End_Users`
--

INSERT INTO `End_Users` (`User_ID`, `Pub_Contact`, `Priv_Contact`, `Auth_PK`, `Sign_PK`, `OOB_PK`, `SigPKs_ValidDay`, `SigPKs_ValidMonth`, `SigPKs_ValidYear`, `Arweave_ID`) VALUES
('LHem5xTlyDNIXcRwlQ76y82celYSRsNE', 'example1@example.com', NULL, 'laeNJQlB/HwSWXBQJ7lqOdAZ1nz0kT39YkRRS0bDH3k=', 'kh4Gc3VyXrQ5QwT1QfxFICfsbHPCRmPDbVjehw8Nh6I=', 'SY8L4V6JRY9zMnIkSYZsiQEFlKi0ErnRNU+9YCYsVyQ=', 17, 3, 2026, 'c4fw5gMcbCAWrOb4aTKHWXJuubAJ3CFnrU5B7_RT_NY'),
('TxgZEz2iviGWoQQxpVDZLgzDhGNNwN5x', 'example2@example.com', NULL, 'Kd0MFR0kjAjhYgM9SiOvHLfbxhSgsuCN+F1bJAkXdj4=', 'DfSabJ7SHr92h4p2PMcZq5ANJ4HXQU/qn5L5Dmzx53w=', 'A5nHl4aw4ve/hwPyKbjBW3yBVT7J0uWO1m0zN+TUNMA=', 17, 3, 2026, 'DWjeRfYOLoevegxhHQHmMsVpCooPdthPswyiwD91EG8');

-- --------------------------------------------------------

--
-- Table structure for table `EU_Cert_Info`
--

CREATE TABLE `EU_Cert_Info` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Signer_Arweave_IDs` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EU_Cert_Info`
--

INSERT INTO `EU_Cert_Info` (`User_ID`, `Arweave_ID`, `Signer_Arweave_IDs`) VALUES
('LHem5xTlyDNIXcRwlQ76y82celYSRsNE', 'b8oXQdCg2GS6nhP_TlxuAtqZEYuAOPGei2thsxbldm0', 't9a6eNyJ3KM3qaMRGjswCwXhVbuao4XBnvR2L5cbJLI;S_wmuZu596wWnUuWIaD5a39ns4aAfq4ZgN5QubSpvBE'),
('TxgZEz2iviGWoQQxpVDZLgzDhGNNwN5x', 'nWu5ohwgKh4HdzcuXNiZYJmTQNyoKMsco99-eeMVQ94', 't9a6eNyJ3KM3qaMRGjswCwXhVbuao4XBnvR2L5cbJLI;S_wmuZu596wWnUuWIaD5a39ns4aAfq4ZgN5QubSpvBE');

-- --------------------------------------------------------

--
-- Table structure for table `EU_Challenge`
--

CREATE TABLE `EU_Challenge` (
  `End_User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Challenge` text COLLATE utf8mb4_general_ci NOT NULL,
  `Valid_Duration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Node_Information`
--

CREATE TABLE `Node_Information` (
  `IP_Address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `API_IP_Address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Node_Information`
--

INSERT INTO `Node_Information` (`IP_Address`, `API_IP_Address`) VALUES
('192.168.1.4', 'http://192.168.1.4:1001/api/');

-- --------------------------------------------------------

--
-- Table structure for table `Node_Users`
--

CREATE TABLE `Node_Users` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Pub_Contact` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Priv_Contact` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Auth_PK` text COLLATE utf8mb4_general_ci NOT NULL,
  `Sign_PK` text COLLATE utf8mb4_general_ci NOT NULL,
  `OOB_PK` text COLLATE utf8mb4_general_ci,
  `SigPKs_ValidDay` int NOT NULL,
  `SigPKs_ValidMonth` int NOT NULL,
  `SigPKs_ValidYear` int NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Node_Users`
--

INSERT INTO `Node_Users` (`User_ID`, `Pub_Contact`, `Priv_Contact`, `Auth_PK`, `Sign_PK`, `OOB_PK`, `SigPKs_ValidDay`, `SigPKs_ValidMonth`, `SigPKs_ValidYear`, `Arweave_ID`) VALUES
('f21greLFm6YXbtnq2hXa79jBosOoOjVA', 'example2@example.com', NULL, 'Y4d9mhJloBxFRpYhq50Yqzk/DVZuU7YPDnqxyWV0hKw=', 'PWwnnlSmaOdlUSFn7Q2r68U2ZeBIfexkX5eqRKBWBJw=', '0B2wQgEkzi0aen+4z6hgr1h0DI9GvoFatCUaiN5bJPk=', 14, 9, 2026, 't9a6eNyJ3KM3qaMRGjswCwXhVbuao4XBnvR2L5cbJLI'),
('n62I81pHgGLV8Kfib2Gj7qIiUkOse6a5', 'example1@example.com', NULL, 't3kHH04UQ6PuuXghwjnpzq9wmugD7lBblkgeAuDsZmY=', 'd5QfArfDqVHlgq3r578PzcjcUIzh7NmNQoO8I97bHBw=', 'bBQdFYFq5XlxUCQWDndZ8qri2i1OKq4uxYSvmk5Vcz0=', 14, 9, 2026, 'S_wmuZu596wWnUuWIaD5a39ns4aAfq4ZgN5QubSpvBE');

-- --------------------------------------------------------

--
-- Table structure for table `Node_Users_Cert_Info`
--

CREATE TABLE `Node_Users_Cert_Info` (
  `User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Arweave_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Signers_Arweave_IDs` text COLLATE utf8mb4_general_ci NOT NULL,
  `Signers_Certs_Arweave_IDs` text COLLATE utf8mb4_general_ci NOT NULL,
  `Signers_Signers_Arweave_IDs` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Node_Users_Cert_Info`
--

INSERT INTO `Node_Users_Cert_Info` (`User_ID`, `Arweave_ID`, `Signers_Arweave_IDs`, `Signers_Certs_Arweave_IDs`, `Signers_Signers_Arweave_IDs`) VALUES
('f21greLFm6YXbtnq2hXa79jBosOoOjVA', 'spTtuXrVwR14ys3QWBJk0cUQbFiAsYl4xq8gcqrTqZE', 'sPvSjTHSQD2O8VHFZBrjnQ0ZbgbzeuRm3mGPVOenIvM;d3EOL_DyIdHNm7jcWDbBjrt70RvSipcjghhmUpWNk30', 'DE_hBG6MhMBHa2icrWKXSQv2PNOHWkLwM3wWlBrp2wI;BVj6sMTsSGZJwkhowKPzZNKHoOHWYVOgtFNYtcq4Zk0', 'D6YyBg6g8JovP9NcdwPKuqrjtttst3rT081nOyF6Anc;FlC0wWwi6jVxZZWs1LEN3eGJ7BZ0YrJD95d5Aygae20'),
('n62I81pHgGLV8Kfib2Gj7qIiUkOse6a5', 'i5Gc4TeapD6bv0VicYWV6pDRD2ScvyDiQ2vr01eNReg', 'sPvSjTHSQD2O8VHFZBrjnQ0ZbgbzeuRm3mGPVOenIvM;d3EOL_DyIdHNm7jcWDbBjrt70RvSipcjghhmUpWNk30', 'DE_hBG6MhMBHa2icrWKXSQv2PNOHWkLwM3wWlBrp2wI;BVj6sMTsSGZJwkhowKPzZNKHoOHWYVOgtFNYtcq4Zk0', 'D6YyBg6g8JovP9NcdwPKuqrjtttst3rT081nOyF6Anc;FlC0wWwi6jVxZZWs1LEN3eGJ7BZ0YrJD95d5Aygae20');

-- --------------------------------------------------------

--
-- Table structure for table `PNode_Information`
--

CREATE TABLE `PNode_Information` (
  `IP_Address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `API_IP_Address` varchar(500) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PNode_Information`
--

INSERT INTO `PNode_Information` (`IP_Address`, `API_IP_Address`) VALUES
('192.168.1.1', 'http://192.168.1.1:1001/api/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Compromised_EU_Info`
--
ALTER TABLE `Compromised_EU_Info`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Arweave_ID` (`Arweave_ID`);

--
-- Indexes for table `Compromised_NUS_Info`
--
ALTER TABLE `Compromised_NUS_Info`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Arweave_ID` (`Arweave_ID`);

--
-- Indexes for table `End_Users`
--
ALTER TABLE `End_Users`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `EU_Cert_Info`
--
ALTER TABLE `EU_Cert_Info`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Arweave_ID` (`Arweave_ID`);

--
-- Indexes for table `EU_Challenge`
--
ALTER TABLE `EU_Challenge`
  ADD PRIMARY KEY (`End_User_ID`);

--
-- Indexes for table `Node_Information`
--
ALTER TABLE `Node_Information`
  ADD PRIMARY KEY (`IP_Address`),
  ADD UNIQUE KEY `API_IP_Address` (`API_IP_Address`);

--
-- Indexes for table `Node_Users`
--
ALTER TABLE `Node_Users`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `Node_Users_Cert_Info`
--
ALTER TABLE `Node_Users_Cert_Info`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Arweave_ID` (`Arweave_ID`);

--
-- Indexes for table `PNode_Information`
--
ALTER TABLE `PNode_Information`
  ADD PRIMARY KEY (`IP_Address`),
  ADD UNIQUE KEY `API_IP_Address` (`API_IP_Address`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
