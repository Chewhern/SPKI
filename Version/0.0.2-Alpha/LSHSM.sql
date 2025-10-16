-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2025 at 04:46 AM
-- Server version: 8.0.43-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LSHSM`
--

-- --------------------------------------------------------

--
-- Table structure for table `Current_EU_Perm_Access`
--

CREATE TABLE `Current_EU_Perm_Access` (
  `Root_End_User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Normal_End_User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Request_Access_DT` datetime DEFAULT NULL,
  `CEUPA_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `EU_Perm_Access_Log`
--

CREATE TABLE `EU_Perm_Access_Log` (
  `Root_End_User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Normal_End_User_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Request_Access_DT` datetime DEFAULT NULL,
  `EUPAL_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EU_Perm_Access_Log`
--

INSERT INTO `EU_Perm_Access_Log` (`Root_End_User_ID`, `Normal_End_User_ID`, `Request_Access_DT`, `EUPAL_ID`) VALUES
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', '2025-08-13 20:53:26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `System_Challenge`
--

CREATE TABLE `System_Challenge` (
  `EU_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Challenge` text COLLATE utf8mb4_general_ci NOT NULL,
  `Request_Time` datetime DEFAULT NULL,
  `Type` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Remarks` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `System_Challenge_Log`
--

CREATE TABLE `System_Challenge_Log` (
  `EU_ID` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Challenge` text COLLATE utf8mb4_general_ci NOT NULL,
  `Request_Time` datetime DEFAULT NULL,
  `Removal_Time` datetime DEFAULT NULL,
  `Type` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `Remarks` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `CL_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `System_Challenge_Log`
--

INSERT INTO `System_Challenge_Log` (`EU_ID`, `Challenge`, `Request_Time`, `Removal_Time`, `Type`, `Remarks`, `CL_ID`) VALUES
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'YXSNl9OZFGt/3mPhnx0+gxMpshsn1fex6jlH+RnyaY+0HJh2jau9iY1yqMoPNzlVgvzvhxHf8MT3R+eKlGGo3RwL5L3IvASste/U+zcbXZeBATsPwhGYv+MZwjxi+hi7DpTT77pafwvFB670RgBdhk61Oqo7b/QaJvCBv+y1rrc=', '2025-08-12 21:46:19', '2025-08-12 21:46:19', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 14),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '6Ox4G+P2564KUuTTqtZYmMfkzZGibnVF8teeokcfjUeHPWRNYTNfmPgVrkVAtdYfep3OQU3+6ro5BCja+5Rt0on/zILMFbf1vu0UcRQS68vq25yu420JOfKPkqI6AlMMW/SPpuFwovSURVbpfznflhlFQNz7lcad9j8dv+wXTUQ=', '2025-08-12 21:46:29', '2025-08-12 21:47:01', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 15),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '8Ctqmj8Wpw9rbLbP0skM0knouE4au7PaQlZn+yCMA6pWnCVrHn6jG3+8o3SUvdJ/ZVDB1K9i4vs3k7nEhAo6QcjNQ6/NL79c8AuFl3Ww9JWAQnsaWqYaKIoy0FleS4pBUHrSPJkoQeq39cmT6s1kL4obqxJ4qA5Qiun2eYRmwkk=', '2025-08-12 21:47:09', '2025-08-12 21:53:48', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 16),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'pBO8dgtQwjj97PdzkIQaSzUruHaQuiS2+G8EW6NixDI8CRHQ3w5t0zCc2vyvq1xiBECJLoR7r1fFek3OzktdhJ9SYDREGxm6XzvDDLd+7Hs2Fhgxh8D8+4nU5YoZMgunOhCM3qf3pP1CioRakWOZtSnBKvRyn5qXQ9i5UvBTWbI=', '2025-08-12 21:53:58', '2025-08-12 21:58:52', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 17),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'YjDQ1o+3y70cFLrVuggv4wmRd0PO5WnK4w0AE3emywusnBSlF+M5b3AsxXmCfxDlwtlcXROAuyuH5Hdh8ls47nLiR/MyavXSA7t4lNpCmem8UzS7zxesb/QlnPnQygNiPTHWK7UuRxnLKYR/Qp5Y3/eie+eE8R6hORCvu2EwdFw=', '2025-08-12 22:10:00', '2025-08-12 22:10:00', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 18),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Vn8jqazO/Km7TvfBWmf/KmkY9YqhrzapZCpA3blilqcD7/QMn/xhhmsvAmhqRImyXcWuOiBzp7y3zdCZy1yQXMtGL92qX/xL9ZZL+d8W+OJvtasvrxFB/2NuNU/o2GKSV3bW/XhnlpKXH3w9zgvDpKKSARG4Wtb7G6VW1Wz1K0M=', '2025-08-12 22:10:50', '2025-08-12 22:10:50', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 19),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '5Z48DpZW90KV9wTuKX049ONIFTAEDw0m+mpKNU4sVFxmgwdH8ebWrf6YmB6LbBMIcnLyJJmBGbArt77cotwFzPqfv/F/howTeCmrPy76GCyc+0V8avQc2bpUbMFH0VTza3nKi2kQwlHol3YNplurBbknBIaYWiEiLJ6ppd0eCCo=', '2025-08-12 22:20:39', '2025-08-12 22:20:40', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 20),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'B/uVEmCWOTh1+3qgWN+5GS7merdzw1CMW9q4vk9FYMf9Lf7C/KjhinbYh81h8Kk60BmfKlqdu965Q5qRnnia8Z1EdM/828rQHU7pYi85DBFu0oXI+unWgtmZCTdS+U9z39+KjeADKCBnhZjSdPmaEZtRRfugZEF4TZBfP+0nOXg=', '2025-08-12 22:31:39', '2025-08-12 22:31:39', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 21),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Hmd8TqITTBLMj12+spdSHAs9rRXEkmb7jPiwRYuNj7nkbb8SlGVdmHaeDWBqKlEfEMTyVrw9LeK56CsI63nc0QXbeyr4yP85GQy/peY9Ldl6fv1/fUO9r5lICEzl+dtxUXbn+lIVu0f3cUMXbreJ2QY3qPaz06fXHdGixubfPDM=', '2025-08-12 22:42:55', '2025-08-12 22:42:55', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 22),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'PuEpSTm7lUpefjGkfn+jCDhNDnYuSbo5wAXz0+XXRa3MKRYZuYaVWUHzwhNB3XrQDKnGfID2oMYU/HkdAXx7iwigEEwZAtQJfdY8kY5lWWBfhImC2K4a6LPitG37DPJM4L6utCLT3Kgh+yZwDsEAo9eAsLcBZsB30dPMr5gZK00=', '2025-08-12 22:52:24', '2025-08-12 22:52:24', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 23),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Zi9a4ZqHXrdjW/vI96MHZzTbWb9OQdpxhwWGtQ7HdUacgtm+9Ok8RqOAM7y4xAu+bbea5hvaqFsBfk0hojaCS18/bAWncxE+RokHuRWkh4ddP3/PqQsgJ4IcbFEoEmFkFR+Cj9ur/nl08Jw9raz/fTaMcgYUMxIXtjelXyU7LeQ=', '2025-08-12 22:56:55', '2025-08-12 22:56:56', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 24),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'v2z32vWZnQcvg8eNH1UYfPDhivCEG9VXxtn3mkTCmmNjfq1ynnS06Aj/JME7FKaBvKVo8lOIR/R20HKRYxXbTCg09SjutnhAcDBjACuGEu3tUmmip+ANAL8fxcAWQlXPHcyg3YIRtvObHPssHGoUx9zJwHrooOuG2S8lIoDbrEI=', '2025-08-12 23:04:25', '2025-08-12 23:04:25', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 25),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'vjNWm5h4TkNjE7h2ap/CPi/oSGYwHPVHsylBQihUHgvD9oTVYXVVFQXS662MdsvCOQMiqJZjVJ8q4AU9QpI1qwsnZuW09a2wmFmd7pzgPqp6Ft3tfGHqwpTiTZ8gn6pAF9IC0RTDyu28LhUJ7h4byPkruqJDpxSwFgqoeI5GXTQ=', '2025-08-12 23:09:45', '2025-08-12 23:09:46', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 26),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '6WbxMNDfeHyDRe0dSDiOdzch5Bf6I0IqwIbdNuPq0bfYTBohLiO6kqrGvFFAqvWca2I+WSDVdC/G3NShXSrqAbSDWWuPPChW1n1sbGXZIT7HHkhXIyluFHZOWcXTZNlNC5KrGvFCcjhZ+IMRMmDecINngkYZY8hqcfQ+L5U7lbc=', '2025-08-12 23:18:30', '2025-08-12 23:18:30', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 27),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'drG9OyokklfAi7e/T6q2Og3xcLt2g1ROiFaa4YkY8qB9go0iNPGroB8KOWTIPXBytHTnLRRXOIxmPGYmeSQixd/j2YKweDKEkVgh7mhvX2oF/jnY/xYT9yX3dQfLbUQsHzGBJH65V6nFJbbnFO0kJht+sLFg1t3RGcVXKtWGbps=', '2025-08-12 23:30:42', '2025-08-12 23:30:42', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 28),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Ls0Oc2NMYMtk/aic2C3IguZGdcAW3d1fo21nv/1VdpGagH1woxA1OlshEy3BjV7tUMCd+ZUO/wBCTE9lTSBpHsvaAJAi6kTdWFQB5ks6qJMEeoHwSENyaLCLSNgIISWhoGQkSp+pE3Y4WrjkJ5ObPFVpvoPVL4c/L7NF0jRxchI=', '2025-08-12 23:41:23', '2025-08-12 23:41:24', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 29),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'w03i7KcxPc8jR0Yf3bicZSjUBkTjHxkd736VPbaM2DJkXSWvgBlBDI1Q1p0x8MRpTRUU2JWd8bOKolVCBFGmZ34Zbaoi3OyZoxrZcU9DDwm2G0kWpvXOMATU//GYtQGfsa5rrUxLuHEAg80CwjDs3V6p6HBwpKpPm/YnbOSMFa0=', '2025-08-12 23:44:31', '2025-08-12 23:44:31', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 30),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '/nkcyx8K2RTExD/W0glCVVKO9XPdFnxcU8cPAbIhzBz4v6/9gt9tWE8lx7SVJruLA109fLBRgS1UhrDWVsou7s7IZ555NH0CKTjqWoHFR2bB//u6KzELeCto7S0vRKXT7fL4RznVEiUnI5lJ/8HZvOA2SZmadlCXJbnTHT3uqbM=', '2025-08-12 23:50:39', '2025-08-12 23:50:39', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 31),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'VzC16sahH7N4A1T3zeEalYY3g7xJmPk20yqlLXw1S3vO1Zd0MD+GZAktYgjI0dPZelqm8au7QHL7YnOjb7Y+hbAzO/JhWbXBt4TnH4JpV4r1PLdGe9E0vm8YuKfdgPp1yeRxTWHAr9oShBlujhodufEEfl63oYdxoJKVxxU1JeM=', '2025-08-12 23:53:33', '2025-08-12 23:53:33', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 32),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'k9BeBFwpoR/mxDkvCURm7+H9yB732YX0ey1MxKYX+dhYZdM39TB2Z/kbgj8fsQRshPHDWDZjLL/elH4RIm7KdUNTnjNO9Yb1hdPaJBOZduh5JS/3awzzCkmIj3E5ibHxrmWcnxiOW3BJM34doDmoUt4vhH2S9UD4n2dLnMukn50=', '2025-08-13 12:30:03', '2025-08-13 12:30:04', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 33),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Ud9S/uTfG3QN53I/n4Acbr+BGw7OmP2X3/jEutGr69AVl1C+1DQ9d9G/36pHlYWlvyoo8dXA0HlXRQnyeHXAUGsvAFOGYPFQR72ujVdauFkpoKBao7sZjiZaKHdkPq2DDFxwGcJKXrUK3clhjPJf5wv4t1J0rGKHUhiI/G65Sxw=', '2025-08-13 12:30:59', '2025-08-13 12:30:59', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 34),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '2YTcPUDANfnvlbe+nhN3AYYz/zfX8lChf0TR07j3fRtExu7w1wfYrhkNGYS3mtyLhykHV4EWf6II0dAxTjJoQJLbU+oDTCwhAPrgZq9x+OclCAhRhq2kpPSnZm5WNa4wPFfI6GjL+7ySIaRqDFFKA5XM5YNGnaWIvaw9HZ//Ld4=', '2025-08-13 12:31:25', '2025-08-13 12:31:25', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp deleted his/her LSHSM', 35),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'PkAO9aVEjiXGLqn0KpYoM9qDzk4qz6pLk0v9H8LouIE2s/AT9qCdhktRTZdvjgFQ0+2gdvV0amHUeQ4q6r8KfwX3T9FVC9eT+YhzW5k3x6y0GyFEF3irxEKS9jX72YvqIzOfBLaEcPDfvNZhSLB3Q/esyc18RbaNPAp/IbA3Enk=', '2025-08-13 12:52:33', '2025-08-13 12:52:33', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 36),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'O5HvEQlSa/trpGEp5OpWs/DLMgZ6Pr9A7mGK/Qjj+8TULiEIEbTpOclO3ayZ4C6kAQv5Fvb3p+QqzCPTSbFm/VW0Bba9UU56CfK7UPVVVSw2FdSdyUq1oynoKIy8sHWQvc+jWiXp7wWWhAxTWPF8QzIKQQM3xVPk1AqCp6JtwRI=', '2025-08-13 12:52:40', '2025-08-13 12:52:40', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 37),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'iv5Rrw1cQW5z00AwBsb/0SrUdjcV2Sz7u9/fXLaA7r5X93O6ZQhBLwNTv57HGPUW/BAHVbvgw6Z0Z1hCg/7CaG/bEUvBBjJAn1eEfl2Dfp8ky4sfmLxSa3hhRfVDLqrClGsmav8iAZstmD2QKfyGnRsPU/ZT5qlpCp1OiWQSYk8=', '2025-08-13 12:52:56', '2025-08-13 12:52:56', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp deleted his/her LSHSM', 38),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'sB9Y6n8NZgpTDcdsVYCS/ynmdy8JL949KKa/GgNYkweyHHzTJIee+4vdPi92BVnN3y4AkPW/cKGnI4dHhAOLdcOLef5QycaB/0R1iQTU0NKLtQ37leP+vMos7C3+p1kI1t/5mnZ1Mrp3Fsx9zs0lPZotiLjej1Oz3MWduNwGswE=', '2025-08-13 13:07:12', '2025-08-13 13:07:13', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 39),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'BSyCjy5nZJbsolHfMQGr3F/IgGOYuG6fwqQddwzWRLQJmSRln4NaE8B9Km84MZiBcPIyCBa6fkmqQl0Y5WekZ3tp+TibtlCYLGy6ajkquSiIre9I5CnkAMX9DAyoGg5f5RVvZ6WCLJVJe7Xm8rMuO4dLfjj0kV/cU7t9d2l8ex4=', '2025-08-13 13:11:33', '2025-08-13 13:11:33', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 40),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'V06VsPnVEPPnc7+aYxoN/9LuDzW+sIzJh8jUGWGIi3nNY2uCTZLa2O1FL7qGyHG4x+TkGYZvkszT4JasG+BnWi4noHbH+Lt4MM/X45Ex/2udWjDKFkpW5YBLgD2uOIvDhZJZ30x8XEtq308vHY+ej42uEfHKB4mOkm4Jm8fOHKQ=', '2025-08-13 13:11:40', '2025-08-13 13:11:40', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 41),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'AfxEjuTgO/MoEHQRCX7+wzuh8mZk82+Wp3ov9D/XsosPBYGPeul+3vwTAxuB9NAeFldPyvAu4C6gtieIgaruOKPWF/fgUS9cn7amN8nt2ESbsxFGdTFpCqvsgenINCzZW4tJAFlbMyhKDOKeJb/d53PioYV7mKW2/iqz0Bfiz1Y=', '2025-08-13 13:18:09', '2025-08-13 13:18:09', 'Upload Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp uploading data', 42),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'UI5mxP8gO19/0c5AnI9jRzlCdigf4LTWjEDEqZ4mmEaNAZe9JJXi8iZYyevpvadkpzm28oi/IE8a3hGYXTVK0OgBZgf8r4chNCwZDWdejYFA5/ocDCP8gPT2HAcWdRuhnPQIjdd1w9eBsXhdQg3vOYWvz5oAOKOoWBYM1eUoUio=', '2025-08-13 13:18:09', '2025-08-13 13:18:09', 'Upload Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp uploading data', 43),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '1MMoqYq6S7iaVp1UeGma0t1PLyIv39CGF2Ol+aq1X1YL0/TF3Jh5f7a3AIZxkL9nh2qfpnNHqqyKD/NSoygH64xpY8RdF8eRYlfimQzdHwK+2fNYkkHsHBUeHYX7WczT/ds43CpIjPVX1FkKM97aVwKMilcUkwo3hsUs7AM7450=', '2025-08-13 13:18:29', '2025-08-13 13:18:29', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 44),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '5kE91f/o4qlUiH6fGcuBruNL/Yvar/oK7PjAsxPLYKyrOJ0H+gBKstGlPQzo3J21Ijh6wbHO/0raxp4ihj/xJk5AcbCWDtfvDJ4322z3zGhhkryGeOtWPKKGRquF2CQCRNBSQVYCnhS5HYq6vwCuYLQhhbF78kNBoxFjF/s+Fzo=', '2025-08-13 13:25:00', '2025-08-13 13:25:00', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 45),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '8zlqWq2gG5bze0jXw1Embu/pY7whtVjdqfHcfFJs/uK6kr/u2dT4ZDFlkR/C6DJxZcN1zZ/4WQ+zduYKUI+xxQsMD/79fYBK5rLayztN0HO4cbI2hp4liLoabLhyzZNeFNVPVN/tFbERFkk/CiIovrzxg8U6sKLIslLm0jrPvNg=', '2025-08-13 13:25:06', '2025-08-13 13:26:57', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 46),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'xspTrNdY3wZFLi2ZeZ26+htpSMbG09faWEmVnJ9YL9JoWBM2rureI97bpW+/wEqelS5qmEI+dtYlE4DGP6Hvi4Yeey+aWGmc5l3XL1qv7LwJkfD8wyPOM7RtcFJu/3cg/XZ8b0+qUBPxSurK09Ghhfwj4lL1GJ0GisPQtatY5Qg=', '2025-08-13 13:27:00', '2025-08-13 13:27:00', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 47),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'UBgIGPqN2tbrgNWV+jRVVslvTTaYsig26lBxVIBIuulRUXfNAd9+b+lBuyLMjkUkXvvmLZJlEtSGLKYPoAIgEp4S48+JfpTRXngq2gc02XX+I3fkyyEOJSumuDRLT51DIkY41a/QKMmB42zogT88pCv0WsGjYpt6crWTrbuzV/I=', '2025-08-13 13:27:18', '2025-08-13 13:27:18', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 48),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'jxNeUCjXTEjkqMkWYB4k9L+TBfJV7wCN8vtdeq3HABjX9mLZo4Xry+tnPPFoxYPxq5HlDtx9oXI0iuuhG3lV7y0GyMV8giktoNiq2YUmy7Xw/kgz6XH6aOelXazu+3yiwwmBRaCRxPSqeWXJ4jILQI5Gt47/jHpZEN6OOcUyQV4=', '2025-08-13 13:32:56', '2025-08-13 13:32:56', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 49),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'LVVENr1KFgEMq81BnCiGyBqwm85IvbutU/s8YYtkh/6CzIkwNg/TOGyQH2e7S2Ej0CfERToW4P29WlMhpBUMCnRJd+hqsItnJHHNz6cwQ5kGmbKeewQM60i/Ez5TAiXVqPeGLLWyFlq84hrd12Jp85+JQw0U2RWWgORw+PylgLI=', '2025-08-13 13:32:59', '2025-08-13 13:32:59', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 50),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '5LP/YBI8C6gU/wsi9VcmP/5/BZBoig8cr26LdTwlRTG2PqF2L/Ry7EEDkTNaeYHAnxAhzBi6ds1RwhcyunXCodunV5v/BHw3NoNV7SsHpMyJUUl+nuNYZzxkUggmu8vAIsBz9EU/sWPEOd8gqrWHlimUm45A8SckDEadVaRw6Y4=', '2025-08-13 13:36:54', '2025-08-13 13:36:54', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 51),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'KLUykVz25JNufqWhCuBLU2x2bTiwC3ikIrFGzwgZypOaoKsqZgWgWqdgbvPYRg0pGsd/N+nZd+DU5t0Y0GqkIKVy1YnEDtPHW9EfQacZX1TTDRXk14ZwcAhngnf3PZRF8vWhonL0E3WtxFoqdlRSUdImEB7TehmEm8mtjYm8vGM=', '2025-08-13 13:36:56', '2025-08-13 13:36:56', 'LSHSM Encrypt Data', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp encrypt some files', 52),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Bo48HhN/VtsHw14ZT96Rgb1orjg7MCMPEGOgoMvPO3NajJh1lt6P6kJ60XmCRYlHqyX5iTtUn5x+TD3YaN6A8Cb3qnuNDazJsFtO+kcQF25VV7IwMJXuO0gZppq067XviwGHS/RX8tSjlvQsmP7ZsZ9jg2wWzXrjUSqxgkLPurM=', '2025-08-13 13:40:11', '2025-08-13 13:40:11', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 53),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'GUlSjCOQCRNP2kubuyo0rr0x5+JFyytmtm77FoPaCBR5SaPgxufSACiqQT2Uo72t0SoRBqHGf4Napem+gYraj4lklgyCLLE7ifvi9KTytd2Rq073mWe5SHK4vPoEy9/Ny2TVN0hTxSquCihsDlFEeLSuC6STHaJt137IJIHsaqY=', '2025-08-13 13:40:18', '2025-08-13 13:40:18', 'Self Access', 'Download files', 54),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'BorOlfjDqdmtbu5U3OMgNenfZLaD0pPno2/B1NcuoMMxjwIUJm87isNvhni2cOI0e56sVsTk9hWOxnx9ABs0wq8ZYJm3KGIjM3XkAzb18XpT1gezLApWgDd+EFIXOqmgPU28ZcPXX77x184RrJIUL20gMITv0lYxXKxx/1agwmg=', '2025-08-13 20:52:00', '2025-08-13 20:52:00', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 55),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'iXfzKbDw8dGVspvzOo0XQivDka+WCXdwURFjPmmQ5Zbj49uSRYEoE/xRYU6lQhrvWCVZDzVSu8vLb55mBQOSVBmlDiAPKvCAIE7j1csctCN8w3gGrx/kCzQHv32Mhbqi/RQMzUCDvO9vtbr01kXXOGTBWPj3DbJ8Q6JiEiramvs=', '2025-08-13 20:47:40', '2025-08-13 20:52:58', 'Request Access', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB request access permission from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 56),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'oiLxhEcWd7S/Ujgs/tVOwykasCSSu/7oBRALvlzD+fri5VOC7vVcjPtKfDV+SwUZ9y+oZ4Cqabb0SeXqQG2GiDI0fFSmaZkNugevIJkkmKD+fJoUU/EeedEytMDjhY4sJ2pEZqnrc9DCZsDt2Cr04FOSHcyxce7YVzc6u9KXUqg=', '2025-08-13 20:53:26', '2025-08-13 20:53:26', 'Request Access', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB request access permission from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 57),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', '3jAn4AUk4bFj/TbKoZVOGuR858GbHZPGWTJZcSBXjqnkKYufNnLlGwiBBAqzeDo5hHYQCJ7pxA7NQyurYFZzrf1lXrjOl2rNwqXqkxapMQJC1DhTCCjIzY0f7pOFQwRXIVLkb0SxTr0xSBFy9uFPPMfjuhDVWzi+n6rDHWeoWto=', '2025-08-13 20:58:23', '2025-08-13 20:58:24', 'Start LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB started LSHSM', 58),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '19Ik6X9qf8t/YgFOaYvmIaQsn3xhffe0t78MsGa0z3u8P8zUFWCEO26ZoRGb7ddRB/8dQDdRMumbrCM1VGYEFQa8sn1unIwTJQjDXLtQTaW4iuUlGZ184bh+ypHRWuLWMJc95xxcZKF9tSf9J4YpV9Ana5Tdk25wH1rIA5cRA5k=', '2025-08-13 20:53:53', '2025-08-13 20:58:36', 'Grant Access', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB request access permission from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 59),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'PV891fNsM8drzgBr02uXrFiDHjka+ITEAtT400pnUu2g29lWRY7ZRSJJ3UQw1gb7KypNhX5d8djEyBXOfhXlkDmKcvaQYe4bWzw4XuXPJ1yXp4MG2hWzO0pALmWI9ateOZlHNmiTZzERhMYWihstWaqlU1qapZV9mR1ZqkVEUpE=', '2025-08-13 20:58:53', '2025-08-13 21:04:49', 'Grant Access', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB request access permission from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 60),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'J7H8NZzMApvCrzNT7ByPd2glkzcOxD/mzsD8lZ7zYLEvndeY+oDzTK5Qf1fGTznP3IWPOWgkQLPTl9HjHX/WXUj/rbkZKYIj2O+udkZVxZUHSA8or6wBSYNsA6GaR1C7IMRNCPXiqMYJ7WZf1Wko1JrywcY4bDNIj+ES6SyxRIc=', '2025-08-13 21:04:58', '2025-08-13 21:04:59', 'Start LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB started LSHSM', 61),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'cVc8sDd3ZpEWyBok8zdJY5T80TmLcDfc4FMtY4NgZk+tMSoOFl1zazpmlMh9ySkHEHC+IRpYhIFAWDFosEIrEikquZsBeq3NaS/0XQ9ormBEZFRaP1ZZ7PGRTPrN3UHFUTVyQbjggPXlav4jEJwhesC6lYKoZ4cYfZe3tuxc6CM=', '2025-08-13 21:05:10', '2025-08-13 21:05:10', 'Grant Access', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB request access permission from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 62),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', '8978qtMlSRI3FHWvBQB9WP1RTiBt5FSki3mhPn+8B43AxOiX1yUECTwy9BhDHEC4fr8Mx7JMlXRQsVo+Dk8SfISa8zIUgueuSWvMVeG6AsXHRWGoQUbRPLHwGp7LlHzXZB4nRFYXVseNQxLr12YuO2vsvnVgjCJtnd1/id/c3Jc=', '2025-08-13 21:28:27', '2025-08-13 21:28:27', 'Start LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB started LSHSM', 63),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'jms58E8IuHU+rCKTuQcVMiv7X5LXDwlqXLNR2ZARdlAL45+UR0HkIMDFQIZzZdRoD3+jW5ihoA1xhXN3GgmDRc39Mq3/JJftUbie2QM7Bln2FsVdOlpb5Jl4Mu1FYobtpfUSGbIC+tBmdP0b1wmhH23RIsxHdCBqUSemP/0xMHg=', '2025-08-13 21:29:12', '2025-08-13 21:29:13', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 64),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'CuSRCDWG0Hyhe70Gq0y+NeDR2ZHWdwSN5YRETr5wR6bEtmvdcSgg+HOyNBMi/ApiwZae+WvT+CZHOxtrWjko38HNMmBOcma2fgrHH9aOCwoyZl7lqSSeDGZ7naf1orOmhnxYHks6GVKWv6PTHCI6Kw+oYktM1zgmLr+H01JoR3g=', '2025-08-13 21:29:26', '2025-08-13 21:29:26', 'Start LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB started LSHSM', 65),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'hWiyBo6OILFJzu7V1JPH2xenwlswzU5c12kvLJnYHlZ+5ZGvCS35kCmwD5EpfT6M3ZKDq0iftjxq8Fi38mhk3yOUEhnt1UHNYMrI7gpmhxD/tkqjWQxlaFoKc9NcE1UVGITWyu/IxwUUymkDmkXoz2YEjqtteeD6svXo17dGN0M=', '2025-08-13 21:33:27', '2025-08-13 21:33:27', 'Access other decrypted files', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB retrieves decrypted files from v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 66),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', '7xZf0BE9a0c4HZmcsJTfXjHcsfDcTq0vZ5oEQ+MNT1kOrYAnG2O6pJKGU8+cz21NDYOvUSAi4A+xeY6BjOJgiXC/X7sPEghM27IJ5iMreJGSwGLneuupJs/E/5LpAwWqfAYkCnuswF+rzp36eZK98rFZNr6k4dQYMDtt/XejpOE=', '2025-08-13 21:33:55', '2025-08-13 21:33:55', 'Edit LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB deleted his/her LSHSM', 67),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'g3JMheMhekN1AZkDvAtiGhnUVFgNgU/X4cD1yIBS8eLVvhFfeq5Z8ee0D0dViBKdljMOrFRAkeY3DhJwl70jRpr7KyiNPJb8btUYql8UsvVHG6si/gPoXxJTO7cQFk33F9rKIimKY+33FuKWIlCfoww5qclg8CXApNJecXrrxrA=', '2025-08-13 21:34:08', '2025-08-13 21:34:08', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp deleted his/her LSHSM', 68),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'e3/GEeJUDys4G+U15rhC4zzvSoQs3OjdFvfy77LoeEL5X//ogdEKZMWvTNzHh6LT3iMxnHFskDggfd/UmeHwciV+PCPTRLC6JyWdvSXUcwmTnflL4vwRoAnisiqWkfE5GtB83fuiipdwCDoCFSsosWKtKK5sGga9Yhm5hffyPVI=', '2025-08-13 21:49:06', '2025-08-13 21:49:06', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 69),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'AicmEJEybQAqDtqOT148bwGNE5xblC4rgR0tYHDOS4lIZ70Q7uoewd84RqcN8d2/Jv9g10LOnzClAPPEYp/MmDR4hFRPUOY3zWrR0IZ+OXjtXN1DB2AcCuTBGV6oYn3AXX2WSf5qVOB95tH9VG1pKJ/OalTBcTjPpjx9wtjfmI0=', '2025-08-13 21:49:21', '2025-08-13 21:49:21', 'Start LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB started LSHSM', 70),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'sp7YaVGwTcQeM50O7mWHUbyCBmI+R5yieDDqJPI1jkls/IMCw3Ux58XobobeOurVyJgGoZPz2ZhMqe2sSj1MIXEMjZMiLgR9alN0HnH4Hvq5YKKT6tUtDK03Ts3mqzy6DO9ntb4SROd/BcFqz+eskDH4ToyfDXJtF+GygsGC5gg=', '2025-08-13 21:49:33', '2025-08-13 21:49:33', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp deleted his/her LSHSM', 71),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'BmUsGpJHfVtpuuly7KBzSx0OUheayX2F/ZviZz61p9uLZ7hjAsUQrGmV1K0MllAv91Nm3d0C0U2ivvT/3WNVwElUvT/utVvqazaOAiL61fCct7yhzCTBvdCgC6mrUB5xybFntfjZ2RPvGrt7WyYXHtlJ0XC6cf/Maw+zlojFlVY=', '2025-08-13 21:49:38', '2025-08-13 21:49:38', 'Edit LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB deleted his/her LSHSM', 72),
('wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB', 'MHB5ldZTQDSyAFlcQY/0eZcUSDOdZMKLPDTySZGT1I9gFR3NZ8yxNmqNlAntzNTkO22wK4BahR1UqOKSKONeDBz3yPlAOgIgHu1YtOM53TNgMVA684plEXOHbVzaLKnJ3k9VUOei/h48OEpaXd5gN4w17htRlCV4IHbwmABVp64=', '2025-08-13 22:00:12', '2025-08-13 22:00:12', 'Edit LSHSM', 'wNtSxwdDS1bFkhIj6DYxQInIME0vK2AB deleted his/her LSHSM', 73),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'noHeaweI2rVJtTjZrYz21EysmFoULtjaPmqJalenMh6zAihSDaqhob7unyXvBTWnPzZR8lUwdG452VaA+nNkZlgwrRlITCozi+GaEjAqlDVPh3WKpv/CAWriyWo82cPQaHZ2h9oK0jxzOvBqTTdEvv+8EiETGjbYU8dS4pHUjYs=', '2025-08-13 22:02:42', '2025-08-13 22:02:43', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 74),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'gmCiHucQU1UqfCAUQmA1cnhb4zsc7mxMsFV+TbTXaVs8x7cpBYV723P+FUfVgaI6ZLKz/Rc5f/Ai7f8X7Da4HP/uDMgg18gOuJmsnMp3fFhSxMOb/keqfIx8RLOs28VCw2gLsO6AMkhL7NZwlj1pjm540YMPog4GNDAUMP7lcr0=', '2025-08-13 22:02:51', '2025-08-13 22:02:51', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 75),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '7zKArCMAIuYFspQet/VI9q1TqI03xFUAieG9rkjUxdnvvVYrN6IGkkp9oEHGO0KoP6msGatcI2wPlGKZe2r8O+uCaz0Ghe5s4quX5rdb8JBd4lA6dy/dwTrJ9hFLU//SN80sT2NDbvj6YAU3mr1pG/MkSqhztwavdJMmo5GACr8=', '2025-08-13 22:14:35', '2025-08-13 22:14:35', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 76),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'AY+CYDE2DZTye40GGFGxJbULf5TCnFwQjivjAOWPgSpO/H7XBwzJpgEGL1kcLCUpK8LPRsXgfZMXBdPpiO+CCEXejKqTEj/b6xo6onfMPEpDMbYhr+YujFNGGo+jpWaLdhTgNVjq7Wj5wuY/rlfVk/hJT7lpqVGVt+Hf2pdLrQ4=', '2025-08-13 22:14:57', '2025-08-13 22:14:57', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 77),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'y4CGYAUC8te/7cWyq/7puUl8FYgA92cJY7I3mW1PkczTf8o8h/X8hvacsxjlgdOJtywo2SK9ZMdQVKJ/oTPPAqItP/vckFmXTxx4pXisMPdZFENJgBtvhzYR8mI17LLqZ2vhLslhSL6ZcibNQaRcod6cFxoFAefx7pH3Q6NWrzQ=', '2025-08-13 22:31:13', '2025-08-13 22:31:13', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 78),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'iYnTR0LBSdWZaI22U1zlqQtK808QDk8XA94pzHXcC8RVUs97gLvO9kt0n4z0SaKBtedIqIZeJ5UhMoPW8dT9sBI6/0APXpF1k5oCldL0Oois3rY0waQyTLsObWgBoqU7Da+HddhhCZK211bLxx58InlvLUqpcefpueareYGHstw=', '2025-08-13 22:31:29', '2025-08-13 22:31:29', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp deleted his/her LSHSM', 79),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'I6nB5tzxDJo8bkDGUoafvOp90fUf5F/rwaEtn6zYcpfztHY84sRFOp92vdFiO3W1H6UWgaVPnndvYahjbgO+tW/r19XLeHyn7v/73r7W4/RpaCPPNps4UQ2Dlh8aQH6MrNF66bBwn2+J6N+OQpO2R9I/qZQw4PL5ZGJHIogRc98=', '2025-08-14 14:44:49', '2025-08-14 14:44:49', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 80),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '7P6ainiC4FXBKdcQs4yfuPCEJSTI788JtYlH/9ssEV4MDh/6Oci3ckBlZJbJbOOyZFe3FZ5TpYHGJCOu/ci4v38aJCItFQ8f3m9VDUqsVItSLpECjyA4Ka9DKs5fbzNdnvWtmtuAo35JG4VNIsJZwqDFlQSLd4y3Dyg3mnzvcrM=', '2025-08-14 14:45:05', '2025-08-14 14:45:05', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 81),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'YdIL5+oOL7XEyaD6xXbvcuaEFGYLq3zTaccmtw0yFV7FxioaPN3SlVBS8uh1QuOYlDMl7wSxe19HVpn59TctSwl+hyFy3TWB3PFstY3w32nm3gyRX4R18MAwcZH/hppo3ylZN2KU0P5G/Pai6H5rnRKkeyRTsOmSNutF3QWAQzc=', '2025-08-14 14:55:09', '2025-08-14 14:55:09', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 82),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'xwoL1kswcCIfA6eSoh5tQOcxCH/aHdpNJwZj7ppvQ/RQw8aMDx90UWkKayiHmOi+rUQ03lvwgOAjLdQilqtarHJWgB1+uWiM38bafYo0TPmA82+CTBqRyKYdsPxoQauIVHyuY8lFId2ub27Kl3HbGhbI8ii5IfFOw73+NNs7Yn0=', '2025-08-14 14:55:16', '2025-08-14 14:55:16', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 83),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'DY3sCfRLATq74CjBrcBZs62PRSY+NWesTaDjKGKFMibDgVUE7A4+HOoa6oHqlIgkWiBizR2o3LjK59fYLahelZncPvHq/dgIcOkQzU3CSoWtOMx/8YGY54TIoibKOCzgDsmblKeWwsPMHjQ//Py2H0WGTtTC7al+qTYaKBZ1AJA=', '2025-08-14 15:06:29', '2025-08-14 15:06:29', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 84),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '0OMC+Wvs9mJeurbC4g+yfKgksL2Ti1mMN2jLValqOA22Yf5aUe0iOQSysBaf+MeKYd+hzsMzxlzHz9W2SEcl4LwrsR/QwNIz6wQxaqJjlDGT+4obp4fzwr6THD+l+1YqamqxdkqlJitiI2WTG0QwNHVsVM3RB1v06zAhedxfX88=', '2025-08-14 15:06:35', '2025-08-14 15:06:35', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 85),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'NztVepNi6lBc3B9Pe4OoGa8kp2QMoxfxilBWcdzhOmgugR/6uw1dPMXWuMe/LleGwFbFUVh3lIfW5Bk17H5qeamqWQqwuqs8vv61MWdaUhncnlWceIyI6CGmbehkbMxGJIhQBhhJ4cNJAvarBeveV5qQTp28A8xc29finwf4Gu0=', '2025-08-14 15:17:16', '2025-08-14 15:17:16', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 86),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '2QNUUBBR7WUjd47+g1da1ikIJw/kzTmqbXWXOdiPEUApwF/SZGb8ZNAeRJqG/NzkznFhr67yqLXZwEOTU62OfwHr6XYBr+5sA/wnIwDYjDC8ZUrcImNeCMsTPgrJERxmFrJXJAryKnsCcAAPDSNhif2+VzoCYkXW30ko+W08afc=', '2025-08-14 15:17:23', '2025-08-14 15:17:23', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 87),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '9uc3ZrdfC+pmTZN/fArUtI6UESuQ/gPQrw4ZEy6L0CVaYrd64tFQWG+Vyvug4Epo7q1LgKRZ7RNDX+Fhg8TGw4+k/nrELpx4SNPnyjloyX0chTgr+hKKjDTXnlLefADFQUMOZoDMJAcO/oqjhSeqa46ugeKCBWKcnpRgrWqe9Rg=', '2025-08-14 15:21:22', '2025-08-14 15:21:22', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 88),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '70wwGtzkwYoK5M0fKmWVpncXlh/PITw9tAVNYXc7VHGsewYEHV7hlwWBYVnn0diVYHvv8OlBaHBRD8a8THD2wO+zH8KiAuDAw35dwoTcYPKkccwIM1UvmTHLFXNzkmHeTg2acG5cXXAY+Rq4hqSllUWtkLaPWeX4MzqEuJf5YMI=', '2025-08-14 15:21:31', '2025-08-14 15:21:31', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 89),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'vBS/FH//I4Gq4dvWLYj42KLjfOyt9t2+pjzS8NuQbWEkXe3OfuNbqVls3RcE/N7sUWSkbPR3iAxkNprZDxuygB+KyZDoYEObI5jLbDC8s6iHjzTJjpYuHc3MoTbZfwr1Hhq/3FvWGz/Co62hqDyuG6Vw+GagtkMQPXeNzMtwnJ0=', '2025-08-14 15:41:17', '2025-08-14 15:41:17', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 90),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'SoqVbqFxKU8nFrvCwBCbGL5CrlBNol62+d/UuUqHqX/ul7V1wdVXIKkb7nbxa96baUxaY/Qq1Z6X+YXx7thUeAlvN2aF37MTXgLxZAzJAsrCrYpxbVmpsY7mYGa6SADCTSlQ1qsEISFG1QCXj3pitbWON+AHdYYRrxOtEvTMn6M=', '2025-08-14 15:41:22', '2025-08-14 15:41:22', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 91),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'caYMsZidwnFzkawKpvo/UGcDjmzEcWgQHt/wNkyjz33z0BiaDMYc7Xryvly2XrSj/qkpLXvUINZRWtI30+Gcr4aQXX1y7gPpIBAsoyM0Jp1dtt/jouE5KCF5pqcuqLCOK6wbN4cMkNXUbqLw0BeyVqUYa4q9NrfG5awc+BlW8xI=', '2025-08-14 15:58:31', '2025-08-14 15:58:31', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 92),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'Ebw3jsoKqhCHwUATpRhc9r2pAklCgs6OwEGIGJLW9chOKAbEcEshXjBuDoXk12i4TzgZ8n3bxBmkyY4JOe+Thqt8CKZNtwTLfF9bYuaGyT5TLL1djeSSPhImMciMeSuPGsL5/DEfN+NS9q+5k8LXNwkL7r8yWGeOP9l7PUbStEg=', '2025-08-14 15:58:36', '2025-08-14 15:58:36', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 93),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'i1nATTWqr9bapiKwgVZb3g9o8QBBbR6g733ZOFiS96wIhWt+/X57uYcAQyOMo5T1NUR/uYZxn6wcMdwf2l9NHRr3W1rkf9wqkCbWQz0qwnM4uai4JmQmLXt6+B2djpEZsIzfTis7mYNKnqyTRDEZFuaBf6INS6Db2Ru1G7w+OZg=', '2025-08-14 16:04:41', '2025-08-14 16:04:41', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 94),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'yog7hfb3WAVZS9Eh/W1ldhE65V36Ra1m879YsevsIPCHcUMZeI76KYjHLRu+Cr+KX7BYXdqfy3wft0K/+P8cOOTBVCOM53J+j+XmiIse+EcZVEC4b0HsY/smRCNE7zcjsAEu+zuSIWPP2CBDL1yIE+Ypok/M3HiJfvIXz1pJBaw=', '2025-08-14 16:04:49', '2025-08-14 16:04:49', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 95),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'hbUeStQGvXCmepwezhsS5DtHS0AONCjDg8b3eZ1WWaHrrvOHBvf2v64qCXNu/RtRPs28jLLnA6In0jsfav2XJcM4egBte/7Lof4pzoK2A2wySDmO7Juq9EPZaO61ChLt9Utc69OZUuZBtBn+sqsmSCYv/twBXkkLDvLHrV3upMI=', '2025-08-14 16:20:21', '2025-08-14 16:20:22', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 96),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', '+XmrObwH9qxILrnkIGAv9YxcPmIG0ONu30Sj9NMTyVXTS04/g3P3a6P/zpGSAV6yk36htuT1GO6NFhg3O22lGrhHcN0B6JPhzaoX1V6IbUazjoZ3hKABoqNuf0GrppuOo+i+hQlBHqviEqGHbg2fx/6+ug4NGnBLazxavimp4GY=', '2025-08-14 16:20:26', '2025-08-14 16:20:27', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 97),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'rcS9Can+ExInug2Q8fGhVpzyAJqYh1WYnDgZ41/SyRUDgy1S8MSsTp9HCDfrCEGi9M/XPYJTLvkIKnY9DouGbgULvJJLfmh7pRmuBOXSVzs6pwvRdi47D3h8U9QZnMY+3Fhn4uPqCOpsk+gOHRxv66lgFrexK0ncSUdBPhH/v8w=', '2025-08-14 16:31:05', '2025-08-14 16:31:05', 'Start LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp started LSHSM', 98),
('v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp', 'TKDtzXGi/bFqdE765l6vRcDIppmOZtmhhjctcuEqQXkDoNXe/VWkqkU0hLUcgJgge/dazZckOggryPEZqc7noUGiTzp4ZjMIO6b9JPj58eVnSV7jZAgv/vBHLDksBhjJFTTD+2spnuiiW1J8O2dOrX1yUnyxawpVIkwp2cNpO/M=', '2025-08-14 16:31:11', '2025-08-14 16:31:11', 'Edit LSHSM', 'v6xosAdwSH3PyuMtWyKX4leQAFaWXVzp changed his/her LSHSM duration', 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Current_EU_Perm_Access`
--
ALTER TABLE `Current_EU_Perm_Access`
  ADD PRIMARY KEY (`CEUPA_ID`);

--
-- Indexes for table `EU_Perm_Access_Log`
--
ALTER TABLE `EU_Perm_Access_Log`
  ADD PRIMARY KEY (`EUPAL_ID`);

--
-- Indexes for table `System_Challenge`
--
ALTER TABLE `System_Challenge`
  ADD PRIMARY KEY (`EU_ID`);

--
-- Indexes for table `System_Challenge_Log`
--
ALTER TABLE `System_Challenge_Log`
  ADD PRIMARY KEY (`CL_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Current_EU_Perm_Access`
--
ALTER TABLE `Current_EU_Perm_Access`
  MODIFY `CEUPA_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EU_Perm_Access_Log`
--
ALTER TABLE `EU_Perm_Access_Log`
  MODIFY `EUPAL_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `System_Challenge_Log`
--
ALTER TABLE `System_Challenge_Log`
  MODIFY `CL_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
