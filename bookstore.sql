-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2020 at 10:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `blurb` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `bahasa_id` int(11) DEFAULT NULL,
  `gambar_nama` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `nama`, `genre_id`, `blurb`, `stok`, `penulis`, `rating`, `bahasa_id`, `gambar_nama`, `harga_beli`, `harga_jual`, `diskon`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing', 2, 'Despite constant efforts to declutter your home, do papers still accumulate like snowdrifts and clothes pile up like a tangled mess of noodles?', 20, 'Marie Kondo', 2, 1, '1.jpg', 44000, 53998, 0, 1, '2020-10-24 18:16:38', '2020-10-24 18:16:38', NULL),
(2, 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing 4', 1, 'coba update', 20, NULL, 2, NULL, '2.jpg', 44000, 53998, 5, 1, '2020-10-24 18:40:01', '2020-10-24 18:46:50', NULL),
(3, 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing 4', 1, NULL, 20, NULL, 2, NULL, NULL, 44000, 53998, 5, 0, '2020-10-24 18:43:17', '2020-10-24 18:47:28', NULL),
(4, 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing 4', 1, NULL, 20, NULL, 2, NULL, NULL, 44000, 53998, 5, 0, '2020-10-24 18:46:02', '2020-10-24 18:47:21', NULL),
(5, 'Think and Grow Rich', NULL, 'Think and Grow Rich is a motivational personal development and self-help book written by Napoleon Hill and inspired by a suggestion from Scottish-American businessman Andrew Carnegie. While the title implies that this book deals only with how to get rich', 3, 'Simon and Schuster', 4, NULL, NULL, 15979, 25000, NULL, 1, '2020-10-27 23:55:27', NULL, NULL),
(6, 'Filosofi Kopi: Sebuah Kolaborasi', NULL, 'Buku ini bercerita tentang pencarian jiwa dan perjalanan berdamai dengan masa lalu melalui kopi. Ben dan Jody adalah sahabat yang membangun kedai \"Filosofi Kopi\", sebuah kedai kopi terkemuka di Jakarta yang hanya menyediakan kopi terbaik Indonesia.', 30, 'Dee Lestari', 4, NULL, NULL, 29050, 35000, NULL, 1, '2020-10-28 00:03:35', '2020-10-28 00:06:04', NULL),
(7, 'The Architecture of Love', NULL, 'New York mungkin berada di urutan teratas daftar kota yang paling banyak dijadikan setting cerita atau film. Di beberapa film Hollywood, mulai dari Nora EphronÕs YouÕve Got Mail hingga Martin ScorseseÕs Taxi Driver.', 15, 'Ika Natassa', 3, NULL, NULL, 61875, 75000, 5, 1, '2020-10-28 00:08:07', '2020-10-28 00:09:26', NULL),
(8, 'Ascendance of a Bookworm (Manga) Volume 1', NULL, 'A certain college girl who\'s loved books ever since she was a little girl dies in an accident and is reborn in another world she knows nothing about. ', 5, 'Miya Kazuki', 4, NULL, NULL, 99025, 135000, 5, 1, '2020-10-28 00:10:21', NULL, NULL),
(9, 'Ascendance of a Bookworm (Manga) Volume 2', NULL, 'Myne has finally started to adjust to her new life... but once a bookworm, always a bookworm. As winter sets in, there are historical methodologies to try: papyrus, clay tablets... anything that can hold letters and words.', 5, 'Miya Kazuki', 4, NULL, NULL, 99025, 135000, 5, 1, '2020-10-28 00:12:25', '2020-10-28 00:13:20', NULL),
(10, 'The $100 Startup: Reinvent the Way You Make a Living, Do What You Love, and Create a New Future', NULL, 'Lead a life of adventure, meaning and purpose—and earn a good living.', 20, 'Chris Guillebeau', 3, NULL, NULL, 93199, 125000, 0, 1, '2020-10-28 00:13:33', NULL, NULL),
(11, 'Shocking Japan', NULL, 'Semua fakta mengejutkan tadi dibahas seru di buku ini. Penulis yang sudah lama tinggal di Jepang menuliskan keterkejutan apapun yang ia temui selama tinggal di negeri sakura itu.', 10, 'Junanto Herdiawan', 3, NULL, NULL, 20000, 35000, 5, 1, '2020-10-28 00:18:12', NULL, NULL),
(12, 'Campfire Cooking in Another World with My Absurd Skill: Volume 8', NULL, 'After conquering dungeons and finally getting some leverage over the gods ganging up on him, Mukohda sets his sights on the domestic life. ', 15, 'Ren Eguchi', 4, NULL, NULL, 76997, 95000, 5, 1, '2020-10-28 00:19:22', NULL, NULL),
(13, 'The Things You Can See Only When You Slow Down: How to Be Calm in a Busy World', NULL, 'The multimillion-copy bestselling book of spiritual wisdom about the importance of slowing down in our fast-paced world, by the Buddhist author of Love for Imperfect Things\r\n\r\n“Wise advice on how to reflect and slow down.” —Elle', 30, 'Haemin Sunim', 4, NULL, NULL, 133505, 150000, 0, 1, '2020-10-28 00:21:34', NULL, NULL),
(14, 'The Tower of Nero (The Trials of Apollo Book 5)', NULL, 'The battle for Camp Jupiter is over. New Rome is safe. Tarquin and his army of the undead have been defeated. Somehow Apollo has made it out alive, with a little bit of help from the Hunters of Artemis.', 10, 'Rick Riordan', 4, NULL, NULL, 169185, 190000, 5, 1, '2020-10-28 00:23:11', NULL, NULL),
(15, 'Secrets of Divine Love: A Spiritual Journey into the Heart of Islam', NULL, '“So often we are asked where and how one accesses the inner heart of the Islamic tradition — here it is!\" —Professor Omid Safi, Duke University', 10, 'A. Helwa', 4, NULL, NULL, 99123, 145000, 5, 1, '2020-10-28 00:25:04', NULL, NULL),
(16, 'Hooked: How to Build Habit-Forming Products', NULL, 'Hooked is written for product managers, designers, marketers, start-up founders, and anyone who seeks to understand how products influence our behavior.', 40, 'Nir Eyal', 4, NULL, NULL, 192466, 245000, 0, 1, '2020-10-28 00:26:05', NULL, NULL),
(17, 'China Rich Girlfriend', NULL, 'From the bestselling author of Crazy Rich Asians (Now a MAJOR MOTION PICTURE) comes a deliciously fun story of family, fortune, and fame in Mainland China. ', 100, 'Kevin Kwan', 3, NULL, NULL, 109781, 145000, 5, 1, '2020-10-28 00:29:44', NULL, NULL),
(18, 'How to Avoid a Climate Disaster: The Solutions We Have and the Breakthroughs We Need', NULL, 'In this urgent, authoritative book, Bill Gates sets out a wide-ranging, practical--and accessible--plan for how the world can get to zero greenhouse gas emissions in time to avoid a climate catastrophe.', 25, 'Bill Gates', 4, NULL, NULL, 192086, 250000, 5, 1, '2020-10-28 00:31:20', NULL, NULL),
(19, 'The New Map: Energy, Climate, and the Clash of Nations', NULL, 'Pulitzer Prize-winning author and global energy expert, Daniel Yergin offers a revelatory new account of how energy revolutions, climate battles, and geopolitics are mapping our future', 30, 'Daniel Yergin', 4, NULL, NULL, 261162, 300000, 0, 1, '2020-10-28 00:32:51', NULL, NULL),
(20, 'Llewellyn\'s Complete Book of Astrology: The Easy Way to Learn Astrology', NULL, 'The easiest way to learn astrology is to start with yourself. Your astrological birth chart is a powerful tool for gaining a deeper understanding of your unique gifts, talents, challenges, and life\'s purpose.', 15, 'Kris Brandt Riske', 4, NULL, NULL, 283209, 400000, 10, 1, '2020-10-28 00:34:05', NULL, NULL),
(21, 'The Time We Walk Together', NULL, 'Semua orang di dunia mencintai dengan caranya masing-masing. Mari saling mencintai dengan cara kita sendiri yang saling percaya, saling menjaga, dan tidak goyah. ', 20, 'Lee Kyu Young', 3, NULL, NULL, 74250, 100000, 5, 1, '2020-10-28 00:36:35', NULL, NULL),
(22, 'Save the Cat! Writes a Novel: The Last Book On Novel Writing You\'ll Ever Need', NULL, 'The first novel-writing guide from the best-selling Save the Cat! story-structure series, which reveals the 15 essential plot points needed to make any novel a success.', 15, 'Jessica Brody', 4, NULL, NULL, 133256, 162000, 5, 1, '2020-10-28 00:39:06', NULL, NULL),
(23, 'Copywriting Canvas: Langkah Mudah Menulis Copywriting Tanpa Pusing', NULL, 'Tahu Business Model Canvas? Jika BMC digunakan untuk menciptakan sebuah model bisnis, maka Copywriting Canvas digunakan untuk mereka yang ingin menulis Copywriting dengan cepat dan mudah. ', NULL, 'Darmawan Aji', 5, NULL, NULL, 40025, 75000, 0, 1, '2020-10-28 00:39:53', NULL, NULL),
(24, 'All Marketers are Liars: The Underground Classic That Explains How Marketing Really Works--and Why Authenticity Is the Best Marketing of All', NULL, 'The indispensable classic on marketing by the bestselling author of Tribes and Purple Cow.\r\n\r\nLegendary business writer Seth Godin has three essential questions for every marketer.', 10, 'Seth Godin', 3, NULL, NULL, 192446, 250000, 5, 1, '2020-10-28 00:40:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `nama`, `status`) VALUES
(1, 'Fantasy2', 0),
(2, 'Non-fiction', 1),
(3, 'Fiction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email_user` varchar(150) NOT NULL,
  `password_user` varchar(150) NOT NULL,
  `alamat_user` varchar(150) DEFAULT NULL,
  `telepon_user` varchar(13) DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `role_user` varchar(1) NOT NULL COMMENT '0=Admin\r\n1=User',
  `status_member` varchar(1) NOT NULL COMMENT '0=NonMember\r\n1=Member',
  `status_user` varchar(1) NOT NULL COMMENT '0=TidakAktif\r\n1=Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email_user`, `password_user`, `alamat_user`, `telepon_user`, `poin`, `role_user`, `status_member`, `status_user`) VALUES
(1, 'stefanie', 'stefanieangelina.sa@gmail.com', '$2y$10$2r93dqyg6oe0b4gZmT.QPetRYbnnPjRtabvl3fVoGL5eFBsQjek6i', 'Kapasari 51', '089529134567', NULL, '0', '0', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
