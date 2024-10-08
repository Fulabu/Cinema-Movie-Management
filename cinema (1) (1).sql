-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 05:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_10_002821_create_movies_table', 2),
(6, '2024_08_13_080304_update_movies_table', 3),
(7, '2024_08_13_082544_create_showtimes_table', 4),
(8, '2024_08_13_084457_remove_showtime_from_cinema_table', 5),
(9, '2024_08_13_114754_add_description_to_movies_table', 6),
(10, '2024_09_10_144543_create_seats_table', 7),
(11, '2024_09_10_150840_add_seats_to_showtimes_table', 8),
(12, '2024_09_10_152113_add_status_to_seats_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `img` varchar(191) DEFAULT NULL,
  `genre` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `price`, `description`, `img`, `genre`, `created_at`, `updated_at`) VALUES
(10, 'Deadpool & Wolverine', 11.00, 'Deadpool & Wolverine is a 2024 American superhero film based on Marvel Comics featuring the characters Deadpool and Wolverine. Produced by Marvel Studios, Maximum Effort, and 21 Laps Entertainment, and distributed by Walt Disney Studios Motion Pictures, it is the 34th film in the Marvel Cinematic Universe (MCU) and the sequel to Deadpool (2016) and Deadpool 2 (2018). In the film, Deadpool learns that the Time Variance Authority is set to destroy his universe and works with a reluctant Wolverine from another universe to stop them.', 'images/1723537165.png', 'Action', '2024-08-13 00:19:25', '2024-09-16 04:15:13'),
(11, 'Inside out 2', 15.00, 'Inside Out 2 is a 2024 American animated coming-of-age film produced by Pixar Animation Studios for Walt Disney Pictures. The sequel to Inside Out (2015), it was directed by Kelsey Mann (in his feature directorial debut) and produced by Mark Nielsen, from a screenplay written by Meg LeFauve and Dave Holstein, and a story conceived by Mann and LeFauve. The film tells the story of Riley\'s emotions as they find themselves joined by new emotions that want to take over Riley\'s head.', 'images/1723539036.png', 'Animation', '2024-08-13 00:50:36', '2024-09-06 04:29:13'),
(12, 'Borderlands', 10.00, 'Borderlands is a 2024 American science fiction action comedy film co-written and directed by Eli Roth, based on the video game series developed by Gearbox Software. It stars Cate Blanchett as Lillith, an outlaw who forms an alliance with a team of misfits to find the missing daughter of the most powerful man in the universe. The ensemble cast also features Kevin Hart, Jack Black, Édgar Ramírez, Ariana Greenblatt, Florian Munteanu, Gina Gershon, and Jamie Lee Curtis.', 'images/1723550129.png', 'Action', '2024-08-13 03:55:29', '2024-09-06 04:46:12'),
(13, 'Hijack 1971', 5.00, 'Hijack 1971 (Korean: 하이재킹; lit. Hijacking) is a 2024 South Korean disaster film written by Kim Kyeong-chan and directed by Kim Seong-han, starring Ha Jung-woo, Yeo Jin-goo, Sung Dong-il and Chae Soo-bin. The film is based on the hijack attempt of a Korean Air F27 airliner in 1971. It was released theatrically on June 21, 2024.', 'images/1723810313.png', 'Action', '2024-08-16 04:11:53', '2024-08-16 04:52:49'),
(14, 'Bocchi The Rock Recap Part 1', 1.00, 'Hitori Gotoh, “Bocchi-chan,” is a girl who’s so introverted and shy around people that she’d always start her conversations with “Ah…”\r\n\r\nDuring her middle school years, she started playing the guitar, wanting to join a band because she thought it could be an opportunity for even someone shy like her to also shine. But because she had no friends, she ended up practicing guitar for six hours every day all by herself.\r\n\r\nAfter becoming a skilled guitar player, she uploaded videos of herself playing the guitar to the internet under the name “Guitar Hero” and fantasized about performing at her school’s cultural festival concert. But not only could she not find any bandmates, before she knew it, she was in high school and still wasn’t able to make a single friend!\r\n\r\nShe was really close to becoming a shut-in, but one day, Nijika Ijichi, the drummer in Kessoku Band, reached out to her. And because of that, her everyday life started to change little by little… test', 'images/1723815542.png', 'Animation', '2024-08-16 05:39:02', '2024-09-21 07:23:45'),
(19, 'test2', 3.00, 'aaaaaaaaasdsdsd yippie helkooooooooooooo testing edut', 'images/1725797408.png', 'Horror', '2024-09-08 04:10:08', '2024-09-19 21:22:57'),
(30, 'aaaaaaaadadadada', 5.00, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'images/1726028762.png', 'Action', '2024-09-10 20:26:02', '2024-09-10 20:26:02'),
(31, 'testssssssssssssssssss', 10.00, '1111', 'images/1726497676.png', 'Action', '2024-09-16 06:41:16', '2024-09-16 06:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('chongw-wm21@student.tarc.edu.my', '$2y$10$H9xxMkHNMIPbBKiPmsXxOu.TEjL3mQA1THS6.fwEXgrh0m9ndnlWu', '2024-09-19 21:39:06'),
('wyxin29@gmail.com', '$2y$12$oburvEYcgocaUu0GppxTCefamp85dOtZJVjFUFVJth9WodS0Ayvsi', '2024-09-16 07:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `showtime_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('available','reserved','sold') NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `showtime_id`, `status`, `created_at`, `updated_at`) VALUES
(441, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(442, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(443, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(444, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(445, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(446, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(447, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(448, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(449, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(450, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(451, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(452, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(453, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(454, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(455, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(456, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(457, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(458, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(459, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(460, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(461, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(462, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(463, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(464, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(465, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(466, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(467, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(468, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(469, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(470, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(471, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(472, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(473, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(474, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(475, 90, 'available', '2024-09-10 20:26:06', '2024-09-10 20:26:06'),
(574, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(575, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(576, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(577, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(578, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(579, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(580, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(581, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(582, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(583, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(584, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(585, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(586, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(587, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(588, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(589, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(590, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(591, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(592, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(593, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(594, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(595, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(596, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(597, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(598, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(599, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(600, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(601, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(602, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(603, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(604, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(605, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(606, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(607, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(608, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(609, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(610, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(611, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(612, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(613, 94, 'available', '2024-09-10 20:34:26', '2024-09-10 20:34:26'),
(614, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(615, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(616, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(617, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(618, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(619, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(620, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(621, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(622, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(623, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(624, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(625, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(626, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(627, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(628, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(629, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(630, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(631, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(632, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(633, 95, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(634, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(635, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(636, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(637, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(638, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(639, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(640, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(641, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(642, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(643, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(644, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(645, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(646, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(647, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(648, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(649, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(650, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(651, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(652, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(653, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(654, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(655, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(656, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(657, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(658, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(659, 96, 'available', '2024-09-10 20:34:37', '2024-09-10 20:34:37'),
(660, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(661, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(662, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(663, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(664, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(665, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(666, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(667, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(668, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(669, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(670, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(671, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(672, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(673, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(674, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(675, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(676, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(677, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(678, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(679, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(680, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(681, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(682, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(683, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(684, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(685, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(686, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(687, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(688, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(689, 97, 'available', '2024-09-10 20:34:46', '2024-09-10 20:34:46'),
(845, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(846, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(847, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(848, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(849, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(850, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(851, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(852, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(853, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(854, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(855, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(856, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(857, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(858, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(859, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(860, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(861, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(862, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(863, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(864, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(865, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(866, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(867, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(868, 105, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(869, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(870, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(871, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(872, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(873, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(874, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(875, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(876, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(877, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(878, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(879, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(880, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(881, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(882, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(883, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(884, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(885, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(886, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(887, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(888, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(889, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(890, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(891, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(892, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(893, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(894, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(895, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(896, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(897, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(898, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(899, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(900, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(901, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(902, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(903, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(904, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(905, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(906, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(907, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(908, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(909, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(910, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(911, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(912, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(913, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(914, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(915, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(916, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(917, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(918, 106, 'available', '2024-09-16 04:15:16', '2024-09-16 04:15:16'),
(919, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(920, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(921, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(922, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(923, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(924, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(925, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(926, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(927, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(928, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(929, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(930, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(931, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(932, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(933, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(934, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(935, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(936, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(937, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(938, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(939, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(940, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(941, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(942, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(943, 107, 'available', '2024-09-16 06:41:20', '2024-09-16 06:41:20'),
(944, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(945, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(946, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(947, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(948, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(949, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(950, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(951, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(952, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(953, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(954, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(955, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(956, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(957, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(958, 108, 'available', '2024-09-19 21:23:01', '2024-09-19 21:23:01'),
(1121, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1122, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1123, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1124, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1125, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1126, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1127, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1128, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1129, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1130, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1131, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1132, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1133, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1134, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1135, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1136, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1137, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1138, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1139, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1140, 115, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1141, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1142, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1143, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1144, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1145, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1146, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1147, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1148, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1149, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1150, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1151, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1152, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1153, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1154, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1155, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1156, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1157, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1158, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1159, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49'),
(1160, 116, 'available', '2024-09-21 07:23:49', '2024-09-21 07:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('adklzKTmZxwSBec5Cl4HZUMyFjvYvhMvO8j2BNoN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWVXcEFRdHh4WFRqUFQ2VlJMaWVRSjJnbWh4SGlidktBTVhTeVFMaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mb3Jnb3QtcGFzc3dvcmQiO319', 1726499287),
('QoSp4ZFBU1Nttcm5WW740AQvsILbOKL8Nw6RXZYe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVpMUTRKVjdGNXZpZlZOekJ1WkJYSHd4a0xYbXlPOEx5dUM3OTVYNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcmVzZXQtcGFzc3dvcmQvYzZjNTEyOThhZjA4OTdjM2IyMTMyZmNhZGU4MzY3Y2E5NmExM2VjZDQxYjBlMzU0OWVmMmNiMTY3MWE5NTU2Nz9lbWFpbD13eXhpbjI5JTQwZ21haWwuY29tIjt9fQ==', 1726499345);

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`id`, `movie_id`, `start_time`, `end_time`, `created_at`, `updated_at`, `seats`) VALUES
(90, 30, '13:25:00', '14:25:00', '2024-09-10 20:26:06', '2024-09-10 20:26:06', 35),
(94, 11, '12:39:00', '16:39:00', '2024-09-10 20:34:26', '2024-09-10 20:34:26', 40),
(95, 12, '22:00:00', '23:30:00', '2024-09-10 20:34:37', '2024-09-10 20:34:37', 20),
(96, 12, '12:00:00', '13:30:00', '2024-09-10 20:34:37', '2024-09-10 20:34:37', 26),
(97, 13, '21:11:00', '22:11:00', '2024-09-10 20:34:46', '2024-09-10 20:34:46', 30),
(105, 10, '13:07:00', '14:07:00', '2024-09-16 04:15:16', '2024-09-16 04:15:16', 24),
(106, 10, '14:30:00', '15:30:00', '2024-09-16 04:15:16', '2024-09-16 04:15:16', 50),
(107, 31, '23:41:00', '23:43:00', '2024-09-16 06:41:20', '2024-09-16 06:41:20', 25),
(108, 19, '21:09:00', '22:10:00', '2024-09-19 21:23:01', '2024-09-19 21:23:01', 15),
(115, 14, '21:40:00', '21:42:00', '2024-09-21 07:23:49', '2024-09-21 07:23:49', 20),
(116, 14, '20:40:00', '21:40:00', '2024-09-21 07:23:49', '2024-09-21 07:23:49', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$12$rpQBZFbhwJ4RgM15siwqt.BnxC7oJaqDskIGNqQXBTIdR6gS7V1se', NULL, '2024-09-07 23:01:27', '2024-09-07 23:01:27'),
(2, 'wyxin_update', 'wyxin29@gmail.com', 'user', NULL, '$2y$12$zEk1NWg5JFq5gkROc/UdtuR77ayYTGnnjnhwBgp1nhtMJWrRgpuIW', NULL, '2024-09-08 04:41:40', '2024-09-10 20:16:57'),
(4, 'test1', '1@gmail.com', 'user', NULL, '$2y$10$ELjh9/vIgGbk18sbdbj7sOJ8XBfU0feNLb0P7lSp/VzTl93Rj7J5O', NULL, '2024-09-11 04:30:56', '2024-09-19 21:12:30'),
(24, 'CW', 'chongw-wm21@student.tarc.edu.my', 'user', NULL, '$2y$12$VYQe5m3ovF5OanlFUcQN1.bmGrBYUsYsL9Sbe0m9UyLwEDNc4vU2a', 'jlIYhQWfR1fDXe1L8VzSFmHozTL0CoVDTtV58gw6QPnKp7j6NcrafTRXRc2s', '2024-09-16 06:43:59', '2024-09-16 06:44:51'),
(25, 'test', 'qiqilee1232@gmail.com', 'user', NULL, '$2y$10$sIfbhXaPoPR0T.9muHExruftWp072Xb67eS2zGZMZFrkmJ72PNzmq', NULL, '2024-09-19 21:13:01', '2024-09-19 21:36:01'),
(26, 'testing', '1234@gmail.com', 'user', NULL, '$2y$10$bsAbyfmT0YJCNVm6xqe37e9wLiSGZW8tp5H9KxszbcGghOsHzrXXe', NULL, '2024-09-19 21:29:33', '2024-09-19 21:40:45'),
(28, 'lee', 'leejq-wm21@student.tarc.edu.my', 'user', NULL, '$2y$10$wrDDGRpl7AXAUFynVjvNvu.s8b5GiYoQXmwlZt3HSN1n/yLBjstlm', 'Osd9myH4CoyA6gkNQv4zi39hm3mhF9LQ8R8h3KF0BTrvRwDgcs8UJlJONPb7', '2024-09-19 21:41:19', '2024-09-19 21:42:23'),
(29, 'test lbaaa', '12345@gmail.com', 'user', NULL, '$2y$10$uh6whYI1IHer41r6cUoxYOlAgJYdLY.mF6qCl8gBYSW4HWSfQ6.sG', NULL, '2024-09-20 16:10:37', '2024-09-20 16:10:37'),
(30, 'testinging123', '123222@gmail.com', 'user', NULL, '$2y$10$DPGGAFCppFSxyoQtVegzpeiQLHrzo/Ga0PWHGLyAF3VAZlbMvNdEm', NULL, '2024-09-21 07:22:21', '2024-09-21 07:22:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seats_showtime_id_foreign` (`showtime_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showtimes_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_showtime_id_foreign` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD CONSTRAINT `showtimes_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
