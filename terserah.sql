-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2021 pada 16.43
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terserah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Boy', 'Boy123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-10-06 00:39:46'),
(2, 'Group 8', 'Group8@yahoo.co.id', '25d55ad283aa400af464c76d713c07ad', '2021-10-08 09:07:27'),
(3, 'Siapa', 'bbblt3tym5ccggc6roqm@gmail.com', '865019801c0130a9c77a9f9cf1cc0642', '2021-10-21 20:03:08'),
(4, '', 'rj5scvzx3xkqigtykbyo@gmail.com', '4192202c60e0327ac86f8593f04dd1de', '2021-10-21 20:03:08'),
(5, 'Siapa', '8ib5svtoe7cgnilhom6q@gmail.com', 'a4a5c98ed7b4acf314e5a3c70f9f76b9', '2021-10-21 20:03:08'),
(6, 'Siapa', 'gq66tii5t5dstal8dqwm@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-21 20:03:09'),
(7, 'Siapa', '1z7sqntznce438hmcigb@gmail.com', '775132ed14f0fabf8000509ff97612d7', '2021-10-21 20:13:46'),
(8, 'Siapa', 'q62tvxmhvrzpgrgtpxgy@gmail.com', 'a634658ba9858177d5d15d40edb28274', '2021-10-21 20:13:47'),
(9, 'Siapa', 'jh1qse7fnxbbdwa3f84m@gmail.com', 'fd6364c7cb65e916e5ea5aeaf4a371a6', '2021-10-21 22:55:59'),
(10, 'Siapa', 'aporprdxjt1vufmz2zdb@gmail.com', '54e6dd9b1b145af699fda833b9d7c407', '2021-10-21 22:56:00'),
(11, 'Siapa', 'sufw5rowlw9lef8698gd@gmail.com', '9538c182092eed0f1e50dfe41780c066', '2021-10-21 22:57:08'),
(12, 'Siapa', 'uyxvqj3yx0ptvibtc1nj@gmail.com', '7061e5f2d971a004581e86d51933973b', '2021-10-21 22:57:09'),
(13, 'Siapa', '7bkpwf2dby8e6gmw2zxw@gmail.com', '4537815fb281c6d097d479bafe90ef05', '2021-10-21 22:58:24'),
(14, 'Siapa', 'zqebbrolhvg8nuzqxizz@gmail.com', '0098a71640c4e75ede55e7c79775f36d', '2021-10-21 22:58:25'),
(15, 'Siapa', 'xbzylcz8thair2cw47sk@gmail.com', '882141efc7b2c8956597a06f40377a8a', '2021-10-21 22:59:12'),
(16, 'Siapa', 'wy0ytiyymlzofaovfpin@gmail.com', 'f4617a4af3da5e7f296af048ff739be0', '2021-10-21 22:59:13'),
(17, 'Siapa', 'nbxwpc5dad7eeplzkh2r@gmail.com', '6d7ea1d69cbf5f5ba0fd05c0271c0f8d', '2021-10-21 23:03:06'),
(18, 'Siapa', 'ewctktnl7uljh1dveiyw@gmail.com', 'f77944e6df68dcb3694f3afc5bd5b536', '2021-10-21 23:03:06'),
(19, 'Siapa', 'lmf9znpbkg8qww8dssps@gmail.com', '088cc500f21a224f682fdb47c8358910', '2021-10-23 15:10:52'),
(20, 'Siapa', 'syih7hiufc5agf4wfvxy@gmail.com', 'c7520f89828338a3310f17dd46fbfe9c', '2021-10-23 15:10:53'),
(21, 'Siapa', 'tdw2qtkbnroydert7dp0@gmail.com', 'a1784856d02772aaa2c20433f5ba60ff', '2021-10-23 16:33:18'),
(22, 'Siapa', 'fjdjj81dbfnkctj5tcpg@gmail.com', 'e0e6e5ef9ddd982c3266d5eae8a3a346', '2021-10-23 16:33:19'),
(23, 'Sofia', 'nyobaaja@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-10-23 16:35:45'),
(24, 'Siapa', 'kz7d61errqmw9kd9ky2d@gmail.com', '028a99f409c21b3066e8d42c4230f76f', '2021-10-23 17:28:35'),
(25, 'Siapa', 'viurejbm75gezrhjsmbf@gmail.com', '4c729505cf1d4083ea8e8c9231f9cff5', '2021-10-23 17:28:36'),
(26, 'Siapa', 'tizk00o6ntvveeis1gan@gmail.com', 'dd6c0584b94cc1fd0a7c06da20c6acc9', '2021-10-23 20:40:34'),
(27, 'Siapa', 'csminnaa8thqt8jntutm@gmail.com', '2b1d477d36d816173a45010cfc7fb0b4', '2021-10-23 20:40:34'),
(28, 'Siapa', '4i5ofn1vmglgzvxl7lke@gmail.com', '0909c090fe258600639e7ed89d4254dc', '2021-10-25 14:28:03'),
(29, 'Siapa', 't3b5b99zaxgmckrjfgar@gmail.com', '9edcb48d12f8fa16a8ff1a657f7b8f61', '2021-10-25 14:28:04'),
(30, 'Saya', 'd2x2pblxoam5b65zmskb@gmail.com', '12b2064ecdfc307b324925288e25ac4c', '2021-10-25 15:23:02'),
(31, 'Saya', 'ttnktvyjnf2jdpoopkfv@gmail.com', 'af14aa0c0513e3db9b28238b251916bc', '2021-10-25 15:23:03'),
(32, 'Saya', 'pzrrmmox1eilqcgmcpsi@gmail.com', '9028d8220136f5a36a8cb3574f642a5b', '2021-10-25 15:26:58'),
(33, 'Saya', 'pfbt0bz0a02t3azalhbo@gmail.com', 'adb7842a5a0ab958048cc1ff6bc76ecc', '2021-10-25 15:26:59'),
(34, 'Saya', 'dbwg15srjmge06z9iikc@gmail.com', '121bd5c9364869635574af7ae89b2d63', '2021-10-25 15:32:48'),
(35, 'Saya', 'xak60qlnkgz6jivrbpys@gmail.com', '9bfd8069f9fc29febc60ca1d780d49c8', '2021-10-25 15:32:49'),
(36, 'Saya', 'w6oquh1vq3yrio9sd4za@gmail.com', '451cf96f9c91425b4d58fe82b70c8514', '2021-10-25 15:33:26'),
(37, 'Saya', 'absbrxjbizdoadq0qkvn@gmail.com', '2f04dd9843e2a5c1054e21856ecaf769', '2021-10-25 15:33:28'),
(38, 'Saya', '8cqh5ekw4fboglvp9vcp@gmail.com', '4c8beec3350ceddbf42afc032f7d5b0e', '2021-10-25 15:35:09'),
(39, 'Saya', 'k0iv9tugv33todrkk667@gmail.com', 'f6cfcec862439813761dfb6e003d2f80', '2021-10-25 15:35:10'),
(40, 'Saya', 'uivxb7axeyxasrbsvbfh@gmail.com', 'c99790f435a57dc21c561532a47e25e7', '2021-10-25 15:38:43'),
(41, 'Saya', '6mf967zphetf5psefbmy@gmail.com', '57f41bd5d55e7694fdb8fe5eed635d67', '2021-10-25 15:38:45'),
(42, 'Saya', 'cpswibejyisazblzhq0n@gmail.com', '3f754499a1b1cda390c4f023352d0d74', '2021-10-25 15:39:45'),
(43, 'Saya', 'o2fnpfqqv4lrqezqr7yq@gmail.com', '6f2556cc9324cb3290e410b42ec9ced7', '2021-10-25 15:39:47'),
(44, 'Saya', 'hwhvq3l8hlvsdggt1kmu@gmail.com', '24d9a4b83df296c05b8f729dfdc3b4ce', '2021-10-25 15:55:59'),
(45, 'Saya', 'm7xxhccukrwrbuf0jkfb@gmail.com', '56641739d6e6b93afe47c45361c65905', '2021-10-25 15:56:01'),
(46, 'Saya', 'spn62icv7df1gvaigons@gmail.com', '91ab646e2ea7ddd9522641c58fe73c95', '2021-10-25 15:57:22'),
(47, 'Saya', 'k5tmcxvjkfaxurkdnkgs@gmail.com', 'cdd3653418acfeac7b8fe00bed5d15f0', '2021-10-25 15:57:24'),
(48, 'Saya', '6dsburoff8k8yjblku8v@gmail.com', '58686bf48759cfefef94751788797333', '2021-10-25 16:03:07'),
(49, 'Saya', 'wabwq07id01ms5egolzq@gmail.com', 'ce27f0a6f7a703fd657acc24ca528a09', '2021-10-25 16:05:09'),
(50, 'Saya', 'qyc4l8c36uxzi3e5plww@gmail.com', 'fa854fa726f248ae050e0dceab958899', '2021-10-25 16:08:26'),
(51, 'Saya', 'r617xxooq68xn4vjfbzn@gmail.com', 'cf1b9232a0016560c71212e26541f42e', '2021-10-25 16:08:28'),
(52, 'Saya', 'ltahs4icg9twk8ck0aom@gmail.com', '5fca11932599b68639c87b6149616ac9', '2021-10-25 16:12:46'),
(53, 'Saya', 'p8nbiritsr0dmv2dboep@gmail.com', 'e04e8ad6256fc752b74155e8c1992467', '2021-10-25 16:12:47'),
(54, 'Saya', '3jlgha7s0ncvnvh84eoh@gmail.com', '71520c1367b2249f60e0bdba6f0b3b90', '2021-10-25 16:16:06'),
(55, 'Saya', 'yxt2wrej4g1vwuy7si8p@gmail.com', '276170c08eeeb65b4ae7150300096ae5', '2021-10-25 16:16:07'),
(56, 'Coba', 'o7tkody9e45nd9j2gb4p@gmail.com', '88517acf19b8b16d4299bfa6763e4123', '2021-10-25 16:34:41'),
(57, 'Coba', 'ajzoy1s0wpg5d51rhzem@gmail.com', 'a72c9c928d3518e9e32615fc084ef6c1', '2021-10-25 16:34:42'),
(58, 'Coba', 'c2prinzyvk8dt3dxj0gz@gmail.com', 'b048a5e32398549a2704d44c80439367', '2021-10-25 16:35:38'),
(59, 'Coba', 'twb3allnhfwordae4xls@gmail.com', 'b9f9385b71d92a5ad7277d1ee7b49bdb', '2021-10-25 16:35:40'),
(60, 'Siapa', 'mxhw1te9g2r9jrqh7tum@gmail.com', '6342f5b67338ce7375ce9bd0a1e44db4', '2021-10-25 16:36:40'),
(61, 'Siapa', 'z3iipsxljwxtkvcwswdf@gmail.com', 'a9808fcfe66b4087f519fd38ee880bc0', '2021-10-25 16:36:40'),
(62, 'Coba', 'qyrym9taqsvoz9iaw2mb@gmail.com', '8eafca088b1db1c51197ca6f6f92e440', '2021-10-25 16:36:41'),
(63, 'Coba', 'k9lchn3hdcpjk72vznka@gmail.com', 'fa1bba1eb98fc15c223f5d9812d62001', '2021-10-25 16:36:41'),
(64, 'Siapa', 'dqwybci4czpkbw1qe6dv@gmail.com', '7a8da8194b13223e05766eee660503b9', '2021-10-25 16:37:54'),
(65, 'Siapa', 'mrywmd6bhj3su2sck0uo@gmail.com', '0bc21e7deed527cbf15aa11684fcc75d', '2021-10-25 16:37:54'),
(66, 'Coba', 'vzxpiq2nrlyvhb9jem4l@gmail.com', '1750745eec83b67af830694e991134fb', '2021-10-25 16:37:54'),
(67, 'Coba', 'dgkj8eram3oorao0h9zz@gmail.com', 'd32ce4206d3ef55a5088f5f2f1e57a78', '2021-10-25 16:37:54'),
(68, 'Coba', 'tb9torfgw5hwmzuebyzy@gmail.com', 'ed160eb01c19d0815248f09b22292cfe', '2021-10-25 16:47:41'),
(69, 'Coba', 'rylflvocqualuppjojws@gmail.com', '6d61ec1e88b14431a1d54b34fbd6fdc2', '2021-10-25 16:47:42'),
(70, 'Siapa', 'gcjfmigmnlo6nvboj4ml@gmail.com', '52b2b5aa7f37b317bd0fb0b925c5cb06', '2021-10-25 16:50:19'),
(71, 'Siapa', 'lfqg9bkxzstza80urnqs@gmail.com', '521a78ba60d6a38f820a697bb99ce1ac', '2021-10-25 16:50:19'),
(72, 'Coba', '96d0qwoebyv4bizmp8qb@gmail.com', 'a98eadaaab4acb0eecd2229b082ed065', '2021-10-25 16:50:19'),
(73, 'Coba', 'yf8yn2hjyvkbukifs4gz@gmail.com', 'cb5ff901531b462c5a91ea4f96094411', '2021-10-25 16:50:20'),
(74, 'Coba', 'nqvqszub8ttyxlif21wo@gmail.com', '04e5ad5419319bf6d1447a96aded9853', '2021-10-25 17:00:38'),
(75, 'Coba', 'xf1o8yf7xv5pcoy8i3ni@gmail.com', '4029713353fc1a4e4240eae144134a94', '2021-10-25 17:00:40'),
(76, 'Coba', 'qej7vlaazmu0pyvehi6m@gmail.com', 'f5dfded26bec84be58ea788063e5e3ac', '2021-10-25 17:00:40'),
(77, 'Coba', '4qqt51ids415i5byu1zd@gmail.com', '13ff0da6767a479edf4e620dead95cd7', '2021-10-25 17:05:05'),
(78, 'Coba', 'x9cf6ax75fda25rnlik3@gmail.com', 'e0bf08096f69bd0ad3f248f8e3435fd2', '2021-10-25 17:05:06'),
(79, 'Coba', 'xlqsvxbv2lqpkjlqz8qb@gmail.com', 'df4a867df4b07f84a02f6af89b9155ec', '2021-10-25 17:07:51'),
(80, 'Coba', 'jqdvo1tsmktqqeqnnxmv@gmail.com', 'e2e374feea37933e581e1d931cb15c29', '2021-10-25 17:07:53'),
(81, 'Coba', 'lapcn25hx2gdsdfdea5j@gmail.com', '9efb689c40301dda7c3b0e49afccb70c', '2021-10-25 17:09:45'),
(82, 'Coba', '4h1tnerxaql3h1lyvwhb@gmail.com', '97874dbd8c95f96eb63f5428559f87a4', '2021-10-25 17:09:46'),
(83, 'Coba', 'ya8injsyb1pat9ssbp8k@gmail.com', '88a0d8a7ec31d6591cbac180e03aedb0', '2021-10-25 17:09:46'),
(84, 'Coba', 'howcz6orn3qjknqati1g@gmail.com', 'fac6ae726bbdffa44ff3218ef3c35a1f', '2021-10-25 17:14:44'),
(85, 'Coba', '4ieqteotjd1y5gffi6di@gmail.com', '1a9465addcfd5d458d75c9253241683a', '2021-10-25 17:14:45'),
(86, 'Coba', 'vhucsaiic4dld9lft6vn@gmail.com', 'd913ec21efb7f88cef4a64232081fd0f', '2021-10-25 17:17:02'),
(87, 'Coba', 'ski4yiyd3armgpgqkw12@gmail.com', '4543c26e10aa703b1dfccb6be16f9991', '2021-10-25 17:17:03'),
(88, 'Coba', 'htn6m6hwoxho7gvcd1tc@gmail.com', 'bd3a558d19c05518841b3bab90e96bfe', '2021-10-25 17:21:31'),
(89, 'Coba', 'tduazav9rzgu3i8qukxb@gmail.com', '686a536537d767e0edf6147135e75b1f', '2021-10-25 17:21:33'),
(90, 'Coba', 'wvoco1a4kyiw8m6rpkk4@gmail.com', '48ab02cf3e78e3e11f2169cf668c34e9', '2021-10-25 17:23:22'),
(91, 'Coba', 'knhc5jtrxkbb98bi079p@gmail.com', '15aab1c8fa2b616d951628ed24610c33', '2021-10-25 17:23:23'),
(92, 'Coba', 'be2gwlm8hibeetlnfbex@gmail.com', 'cc9592d716a48afdf8cdaf81bff2d43c', '2021-10-25 17:23:23'),
(93, 'Coba', '3ib7qyglmytddhdqcilt@gmail.com', '8ed380922baa6a9a4a832c4d3e5cd7e9', '2021-10-25 17:24:51'),
(94, 'Coba', 'xf3squtcdiolimfkswpi@gmail.com', '863d33010517b9c88e24446391589cc0', '2021-10-25 17:24:52'),
(95, 'Coba', 'rg7gryujjpfoa8ulwfhk@gmail.com', 'e623d724625b1bbbe6cef3151a9c1bc8', '2021-10-25 17:24:52'),
(96, 'Coba', 'fdj5kdko4hbc9wczgjqs@gmail.com', 'c8cef0bf3563228caf5f020244029206', '2021-10-25 17:26:09'),
(97, 'Coba', '1lc6kv6yfa9ayya0u9v0@gmail.com', 'e9c3a3872a498bd3965a60ebc4fba811', '2021-10-25 17:26:10'),
(98, 'Coba', '6ktndfrvygyhdon0k20n@gmail.com', '223ac12eb637f04ab6e2b6d0c4097667', '2021-10-25 17:26:10'),
(99, 'Coba', 'uiww5ufbnul385pli00i@gmail.com', 'd2107d22d74e16ce0c20d7e06d7c2df9', '2021-10-25 17:28:15'),
(100, 'Coba', 'fpv33u3cnlfoyt44iwpp@gmail.com', '139176b0c7bd5e5347a9211415084a11', '2021-10-25 17:28:16'),
(101, 'Coba', 'omusqpib1p58qpozz1po@gmail.com', 'd190ce3b9df9ee027a84e2e845379d31', '2021-10-25 17:28:16'),
(102, 'Coba', 'rtpkdqrq4ybi6xr3pagp@gmail.com', '40496b9c75e3cf38af0dd9cc094eed54', '2021-10-25 17:28:58'),
(103, 'Coba', 'bzvciegk8vpsi2oxsvd2@gmail.com', '8e5b4eb54459417ab58e6a20e84ae5c8', '2021-10-25 17:28:59'),
(104, 'Coba', 'mct0kpfdfk3zhir6m4mm@gmail.com', 'e80881d01f1c6e5c8354de1fbba55b7d', '2021-10-25 17:28:59'),
(105, 'Coba', 'vypa06ktwmjzotjmvdhl@gmail.com', '3eecc1fc254e4c76350ac4bbfb5fb7b8', '2021-10-25 17:29:50'),
(106, 'Coba', 'mvemwbyk8ei6ur3tojph@gmail.com', 'f6108b84dc7b15419bd253e6c52fc02f', '2021-10-25 17:29:51'),
(107, 'Coba', 'kuonx2j5ndbz64w03bla@gmail.com', '89c3294301fdcd9bae6b74cf003502e0', '2021-10-25 17:29:51'),
(108, 'Coba', 'mc5i4gl7d1ejwko592zf@gmail.com', '580f540b58c882aa41d533a8fd9b4ad9', '2021-10-25 17:31:21'),
(109, 'Coba', 'x5whaldqyupogssic7w7@gmail.com', 'd5d6c85e10fe6ebfce93b6bdf02e5cf0', '2021-10-25 17:31:22'),
(110, 'Coba', 'v7wujblgghyucxjonbd9@gmail.com', '17896e444ea36c2c2c21aac4adab4cb4', '2021-10-25 17:31:22'),
(111, 'Coba', 'cujrddauamzzx5uwndki@gmail.com', '92d1a59756d928acec786d75e916b87d', '2021-10-25 17:32:03'),
(112, 'Coba', '2taeb9bqxais7ht9flxr@gmail.com', '30c3dba8cfa37c1b3aee316c83fb06fb', '2021-10-25 17:32:04'),
(113, 'Coba', 'nwwcfn83aeps7rlzfpqz@gmail.com', 'fdb2ca0992dc739bed7ef25150edfff1', '2021-10-25 17:32:04'),
(114, 'Coba', 'npzrntbenfztwh8hujnj@gmail.com', '1a7adb76b830558f2bc67252786800a5', '2021-10-25 17:33:24'),
(115, 'Coba', 'irberzoaagqb2nlttu9e@gmail.com', '0dbde051ced99bc7f1ae620c0aaac2a5', '2021-10-25 17:33:25'),
(116, 'Coba', 'q7ezuuohecur8eic4lfw@gmail.com', 'de304d62be90d545213d77ff8b5cc133', '2021-10-25 17:33:25'),
(117, 'Coba', 'rfywh5fbee9ysxj6nmuh@gmail.com', 'c0415f8df776b5e86a986695d0f8fa64', '2021-10-25 20:08:34'),
(118, 'Coba', '0xqte3rmoydp8taobkgy@gmail.com', '2a3cb4d1aa355244eb9949a4ce6f40a0', '2021-10-25 20:08:36'),
(119, 'Coba', '4jn6yyrs4e9jo2xfda3p@gmail.com', '28db278a599537e9a1bb59fc6e577d55', '2021-10-25 20:08:36'),
(120, 'Coba', '5dxnly4nlvm0csdpcstc@gmail.com', 'b297e580ad2b8a511f041bcd6eafb3af', '2021-10-25 20:13:48'),
(121, 'Coba', 'erg1lvg47ywhbtk9k5nt@gmail.com', 'fe2a3c571ccdd72bfcc5175e6ea42599', '2021-10-25 20:13:50'),
(122, 'Coba', 'hmjynzbeeaewngsudizw@gmail.com', '45272e62e3cdce6690c3d36b35474f49', '2021-10-25 20:17:39'),
(123, 'Coba', 'xst7vugd1onp9g8ut3wd@gmail.com', 'c1809dbdffbb7020e8a33b2cf147db31', '2021-10-25 20:17:42'),
(124, 'Coba', 'xtd9ospjylotkanirsyl@gmail.com', 'f7cc10a3b664d0a63840fe1a972c866f', '2021-10-25 20:20:35'),
(125, 'Coba', 'a2c7l1z3n5t9a1xmymhg@gmail.com', '7f2f15aec4cd669c952bdc5c2dbe517b', '2021-10-25 20:20:37'),
(126, 'Coba', '7dbafl1nqticai2tq1bh@gmail.com', 'd0885c6ab07081a3e71e829923529641', '2021-10-25 20:20:37'),
(127, 'Coba', 'ckqc7tsq9qgca6cwzgla@gmail.com', '96779515970bf508f437e0cd880d8bb4', '2021-10-25 20:21:26'),
(128, 'Coba', 'ijcjxa5gt0dv2kmptnpv@gmail.com', '52593847fe775a355dadc7b31925e4d0', '2021-10-25 20:21:28'),
(129, 'Coba', 'vzlwircubxl1t7lt4wq3@gmail.com', '4f1e5af4150e88527308ae673c914cbe', '2021-10-25 20:21:28'),
(130, 'Coba', '8qeofylng0ewzwuae0f4@gmail.com', 'e49f1a43041bf2646258526963ebfdf1', '2021-10-25 20:25:04'),
(131, 'Coba', 'ezhsgpz1euhuxtqbx1gx@gmail.com', '2835c2cfb0116ae2c82e2df921f8f120', '2021-10-25 20:25:08'),
(132, 'Coba', 'v3mfz6gpsf6jychdqv3n@gmail.com', '4e697cf9885e76e2ee938c20b43e5415', '2021-10-25 20:25:08'),
(133, 'Coba', 'leytq1up7i7zlcjn1td3@gmail.com', 'fda6a455f918bd5931f5ad3074d00c1c', '2021-10-25 20:34:30'),
(134, 'Coba', 'noum13c465ekv07vdzfd@gmail.com', 'a17f8b193f9fdd7aef10d4db2d6e6914', '2021-10-25 20:34:32'),
(135, 'Coba', 'dx7xtdewdtl0eldxigwi@gmail.com', '58b3211ab9422bce85ff3055ef18ebc1', '2021-10-25 20:34:32'),
(136, 'Coba', 'h92qqaefdngl4qu6gner@gmail.com', '03347ca29cc0792c78953e598ede3b48', '2021-10-25 20:38:39'),
(137, 'Coba', 'sp636mpurff62x6ny6kr@gmail.com', '8efd5507a071354854370abc34b7b1e9', '2021-10-25 20:38:41'),
(138, 'Coba', 'ut1ixopvfdeo0dgfyxmu@gmail.com', 'ca995d5172cb2eacfea6dcbca2d49ede', '2021-10-25 20:38:41'),
(139, 'Coba', 'lnaknqfrtk1pucovhhxn@gmail.com', '123028b93321f5a423f0158ba6612fd6', '2021-10-25 20:49:36'),
(140, 'Coba', 'futwkcmsbajidycvjqot@gmail.com', '7da7b6863aa174bcc7b01862d9a45c78', '2021-10-25 20:49:38'),
(141, 'Coba', 'gco4maymmlva7oghqa48@gmail.com', '9b5aeeb5a4d704f63ed726cb8d8a4d3c', '2021-10-25 20:49:39'),
(142, 'Coba', 'xbiefpjwpdgo6gelzxiy@gmail.com', '5f958fecafcb363c040b0f3bc4494278', '2021-10-25 20:49:39'),
(143, 'Coba', 'oqbpdbsgzzh3cesdqqyv@gmail.com', '7f14e9c4453d33f2910550305ca706b1', '2021-10-25 20:50:43'),
(144, 'Coba', 'silzh0x2szomuq509rbh@gmail.com', 'a867d76a94b7e5123a791c92d2511f25', '2021-10-25 20:50:44'),
(145, 'Coba', 'dsjmavc4cdaqdymtrjo1@gmail.com', '77eb68a8aba37fbda2d0e91ab3bfefdc', '2021-10-25 20:50:44'),
(146, 'Coba', 'igtprj5kledxn8mfdo57@gmail.com', 'd8035d52768531324c9b23dec5c319d8', '2021-10-25 20:50:45'),
(147, 'Coba', 'xmy1iqivh25pltx8xmis@gmail.com', '190081a212d535c3ba52486c925faadf', '2021-10-25 20:53:20'),
(148, 'Coba', 'zvtfllrrqcl5kvhyg77s@gmail.com', '2aa946633e6310a3f46a71571d5f3524', '2021-10-25 20:53:21'),
(149, 'Coba', 'kaa0ngzouycqhkhsatg5@gmail.com', '2d6645f9f48174faabba01e3c2e83cbd', '2021-10-25 20:53:21'),
(150, 'Coba', 't4jqtlozja3uxxd9zqkm@gmail.com', '4af6e04441617109257dca47bbea2fc3', '2021-10-25 20:53:21'),
(151, 'Coba', 'qcwq4vbxqcodnzaczftn@gmail.com', '88eeea04c402aeeecf984299b7ea7de4', '2021-10-25 20:55:39'),
(152, 'Coba', 'zcc8njwd7lidzgs8ij8z@gmail.com', 'aae9fc777181130be9d2138b50c2928f', '2021-10-25 20:55:40'),
(153, 'Coba', 'a55bpzw5fdaee9dviz0u@gmail.com', '30fb38b8035944e6ba5fc57bb036c50f', '2021-10-25 20:55:40'),
(154, 'Coba', 'af9a4qq6lqursbzdvclf@gmail.com', 'f716d29afa90f49d05bed511fedbe3d8', '2021-10-25 20:55:41'),
(155, 'Coba', 'xushuspzn22ol5ehvkbu@gmail.com', 'e7258519140172915e858e092ed9b68a', '2021-10-25 20:58:48'),
(156, 'Coba', '7f3ogrpilglzmgrfngqk@gmail.com', '677b8a998dd5e6764e33c96b71fd1fde', '2021-10-25 20:58:51'),
(157, 'Coba', 'fukblfd1ibjpejlv9fhs@gmail.com', 'd5e5a60745a4d400f0ea54b47c2145c2', '2021-10-25 20:58:51'),
(158, 'Coba', 'sscixgztscvamdvctvmd@gmail.com', '540871b7ef017493c6984695190620db', '2021-10-25 20:58:51'),
(159, 'Coba', 'ro51h8fo4nr5aaasaufj@gmail.com', '949c3c7a69373e5bf54f9ed70f74dc3b', '2021-10-25 21:00:11'),
(160, 'Coba', 'qdmk16eq5wlcgzzmwzoq@gmail.com', '8cfc52b37eda05232471cad5aadebe73', '2021-10-25 21:00:12'),
(161, 'Coba', 'zxjpcd5fi4u4yu5tgau7@gmail.com', '9ea0a9e83850fb1fd69c76811500b6f7', '2021-10-25 21:00:12'),
(162, 'Coba', 'csleukc8gx05quhhqvvw@gmail.com', 'e3a7c73cb75f7e251cc4711a1098f74a', '2021-10-25 21:00:13'),
(163, 'Coba', 'fk7ngvkixmo2km6sxqtn@gmail.com', 'dcc2e683acbea70b7f2fa654298d0c17', '2021-10-25 21:05:37'),
(164, 'Coba', 'rpfmsn5efqsdtrweinqo@gmail.com', 'e2fa5e56f6e9085cb5d81d105183c075', '2021-10-25 21:05:39'),
(165, 'Coba', 'mljnosjl7md23gr5pwoh@gmail.com', '5b446e20020b91623c610f1c7366c73a', '2021-10-25 21:05:39'),
(166, 'Coba', 'qgy5wybu8c75fdqhqhtr@gmail.com', '938af21ba200ef1f1a2cb7ccffe0bf87', '2021-10-25 21:05:39'),
(167, 'Coba', 'jc0prwgkreyhxhgmbert@gmail.com', '376ba304685f8e1688a49c09780421dc', '2021-10-25 21:07:00'),
(168, 'Coba', 'bvje5zeaml7l3tamowcw@gmail.com', 'ba63e02672a668c2084f28d2e53a3c74', '2021-10-25 21:07:02'),
(169, 'Coba', '8t0dr7townzudu4gnjgi@gmail.com', '7bd05ce001d639e3b0b9c3a1475fd7cb', '2021-10-25 21:07:02'),
(170, 'Coba', 'cd1anok5ne5ks9wirrqj@gmail.com', '7837682dd6d72ff9e6e79eb0fda6941f', '2021-10-25 21:07:02'),
(171, 'Coba', 'mnbe7juumoscssumsvpg@gmail.com', 'b544715b5f31ca5f71a637d6203a4b5b', '2021-10-25 21:11:29'),
(172, 'Coba', '7k8qstlzoilnbtmsxbg4@gmail.com', '3539a03b3f3100f362c4d7f44147cf7a', '2021-10-25 21:11:31'),
(173, 'Coba', 'rueybsr942f0ti9er554@gmail.com', 'e75be46f772ebf6804da76fb70edd81a', '2021-10-25 21:11:31'),
(174, 'Coba', 'liqorebfvqhxkfs2ymhx@gmail.com', 'a20b2ca6c6cca69e323ffa2515138046', '2021-10-25 21:11:31'),
(175, 'Coba', 'x588gs8lmltctqwq0hcu@gmail.com', 'e4d0e3bf5466ee5f0fb4f9fcce337f09', '2021-10-25 21:12:07'),
(176, 'Coba', 'g7anvawfpyyj8shnm2sz@gmail.com', 'bf94c6971d7afa3a8784d35f975303a7', '2021-10-25 21:12:08'),
(177, 'Coba', '6mdrfwmkr7qf9fnxixmt@gmail.com', 'bff05a787bfddff764e81f2cf2348933', '2021-10-25 21:12:08'),
(178, 'Coba', '7bf6dxtq8qvbznvps7lw@gmail.com', '10def1d058115fd9c7773ad5b672a1bc', '2021-10-25 21:12:08'),
(179, 'Coba', 'v2fvdttae8dbx4lj3u9b@gmail.com', '1f390f09cd852f176abce0e3115f7ac4', '2021-10-25 21:13:56'),
(180, 'Coba', 'mgueugsztnhvyralet9y@gmail.com', '8c52baf2421ecda0ad93ef6948bc0474', '2021-10-25 21:13:57'),
(181, 'Coba', 'jmpcabjwsr2lsyxvb0r0@gmail.com', '111c6d61d5f7408e9ad07f3ac2c4c64f', '2021-10-25 21:13:57'),
(182, 'Coba', 'a2mlczxxbhnhmaxlknnk@gmail.com', 'fdeba904012e0679df47e5e423098638', '2021-10-25 21:13:57'),
(183, 'Coba', 'ibtygzzjjbcamah0k1e3@gmail.com', '121399c74579c3a11acba0b7cbc7e836', '2021-10-25 21:14:57'),
(184, 'Coba', 'n3iybsksrbycnwstaqef@gmail.com', '87fb4b8e5baa9c4ce2ec3f87b5bc327e', '2021-10-25 21:14:58'),
(185, 'Coba', 'mkhvadypznpnwylphfep@gmail.com', '181456d7c30f15d5202caf6e97deac8d', '2021-10-25 21:14:58'),
(186, 'Coba', 'wsnycbcpxc1kgo2eshpk@gmail.com', '8f84773f556f482f8d7c00b0d0ea3224', '2021-10-25 21:14:58'),
(187, 'Coba', 'gyxkzo7nmydtzctqabcb@gmail.com', 'ffbc1e4a478a8d5349e630113d60bb89', '2021-10-25 21:16:23'),
(188, 'Coba', '1enn1vpvts0gnw4r6adi@gmail.com', '59c494432eb9783a66ee53190fbaf187', '2021-10-25 21:16:25'),
(189, 'Coba', 'nll90f9qefkamvg5eaoy@gmail.com', '31d1d4a4663460f7b724f9d08158c87a', '2021-10-25 21:16:25'),
(190, 'Coba', 'rd0bupniw90dwyz1eaok@gmail.com', '8c220f65b6f2712a4af070b24c7ed920', '2021-10-25 21:16:25'),
(191, 'Coba', '9zmbkvqbkmvpvt6gzbqe@gmail.com', '2ea679e933ecdd52e03d45187af57d0c', '2021-10-25 21:17:46'),
(192, 'Coba', 'fgmkyaf60vowc5vilhhj@gmail.com', '6369b8e7f71ee500d923c2c91c3fa1b3', '2021-10-25 21:17:48'),
(193, 'Coba', '85q0zqwtbvfc10d9l24w@gmail.com', '3f592da7e491334a35606e598dee1a74', '2021-10-25 21:17:48'),
(194, 'Coba', '6lsrmlbjl9udg7o7pjcw@gmail.com', '43a21156d5b741b6b9caedb665874054', '2021-10-25 21:17:48'),
(195, 'Coba', 'bgaomf99khabrwwrh8mw@gmail.com', '5981904a57b4a15b45bcd7bfd50c04a8', '2021-10-25 21:18:36'),
(196, 'Coba', 'tw147swklegedazn61qt@gmail.com', 'f06356406da9193444b59659f7f848e9', '2021-10-25 21:18:38'),
(197, 'Coba', 'v6bvs4wxgoh7zxfkgu5f@gmail.com', '521bf82ff4eab44a6d31521516a9300e', '2021-10-25 21:18:38'),
(198, 'Coba', 'gm7klsjr7m742wyom0ut@gmail.com', '5649dfff88e98285a5f39acd7ad45067', '2021-10-25 21:18:38'),
(199, 'Coba', 'ykvdnwepopepajqg4lxw@gmail.com', '67ca1efb9e8ee18ff13b963b57033be5', '2021-10-25 21:20:13'),
(200, 'Coba', 'eewphqs1vga4pwvrtx4t@gmail.com', '689462286d7eaf88488e4a6f77807b32', '2021-10-25 21:20:15'),
(201, 'Coba', 'x45x6t5yrvxlonwtjg1l@gmail.com', '1b33c2aa9fdd25a3197b214382f36ba8', '2021-10-25 21:20:15'),
(202, 'Coba', 'a5fhj9nzxligvgezzoms@gmail.com', '13b780b2c76e0c17c9d3862e5583d617', '2021-10-25 21:20:15'),
(203, 'Coba', 'behsb0z2oqymaombmnmn@gmail.com', '8a7ac4753efb71b3ab9734adf8c15b3b', '2021-10-25 21:21:54'),
(204, 'Coba', 'rwwjpoujdpmkrnrffify@gmail.com', '39e8f91d75fe7b00e7c4ae38865540c6', '2021-10-25 21:21:55'),
(205, 'Coba', 'ywtvlyj4inogqu4vgsy5@gmail.com', '2f7e57ae2750ae73ded3e1999e376830', '2021-10-25 21:21:55'),
(206, 'Coba', 'jlpumh8hbdnfi5ph6p8c@gmail.com', '9dde623d5c217995c26bd1cc1c116bdb', '2021-10-25 21:21:55'),
(207, 'Coba', 'vxkpo9kvv7sb7rfdkj0o@gmail.com', '2f26eb4aedb7da61fc30d951bd67fefb', '2021-10-25 21:23:27'),
(208, 'Coba', 'tnmoc9onkq5iys6rytme@gmail.com', '265d45016a6d17160141362bbe671927', '2021-10-25 21:23:28'),
(209, 'Coba', 'wq1hxg3pcnyek036zald@gmail.com', '53124a848300f91ed13f6b1e7268bb50', '2021-10-25 21:23:29'),
(210, 'Coba', 'nybyxqss1sdinwn4zooz@gmail.com', 'f43cfa4afb68f0155cd6b69a7f9cb2a5', '2021-10-25 21:23:29'),
(211, 'Coba', 'dd1rv6x5ogxomcz57eiv@gmail.com', 'a40ebf20ab29cd6bb8595e9ed2a2bb81', '2021-10-25 21:25:21'),
(212, 'Coba', '46ro6vlnhsrxt70nfb75@gmail.com', '855fe87fcb621e397dc8fd4381cb3377', '2021-10-25 21:25:23'),
(213, 'Coba', 'stvw6sqrq6gxkhqr8ank@gmail.com', '67aad9af458f4df94f0aefffa3dfc0bb', '2021-10-25 21:25:23'),
(214, 'Coba', 'vsmafpgectydagamkqcm@gmail.com', '058ea344b11e2ca548d6149e7a4bb08d', '2021-10-25 21:25:23'),
(215, 'Coba', 'wzjt6pojcxd3obr2oahk@gmail.com', '6fa770eed8f0d72b756165325dc26409', '2021-10-25 21:27:04'),
(216, 'Coba', 'ohxlbvt1b2qogh3mjwoe@gmail.com', 'f3ff65dfcc37a3e157734fa6ed5bd0df', '2021-10-25 21:27:05'),
(217, 'Coba', 'quliwbjptbwfsmzesha5@gmail.com', '76d8608e031becc336218d508ca2986e', '2021-10-25 21:27:05'),
(218, 'Coba', 's7gicz275t9ce1nidomn@gmail.com', '0013a9dd6d5b34863b141e707b0e32d9', '2021-10-25 21:27:05'),
(219, 'Coba', 'gxhhfupqsctmkav1oaaj@gmail.com', 'fe01be24bc481a5dd09251219616a45e', '2021-10-25 21:33:42'),
(220, 'Coba', '6rgwcsw0tbjjr6kelrto@gmail.com', '0f7f73ccdbf681b96a0fa982c7dedd3a', '2021-10-25 21:33:44'),
(221, 'Coba', 'ynbi6ups8efjrwjylwe1@gmail.com', '8eafb80b72bd5511e2c8ef919219cb01', '2021-10-25 21:33:44'),
(222, 'Coba', 'axycizacbkwcu0k2wimt@gmail.com', '759073cef567eb70e71bfab92f0f0cab', '2021-10-25 21:33:44'),
(223, 'Coba', 'tzhp26tzc1vqxua2juvu@gmail.com', '8b141a016e3ba53c35c8ced5dac93399', '2021-10-25 21:33:44'),
(224, 'Coba', 'smorchkgtuuaz1gcgzlx@gmail.com', '0c1d9001aeb11c43e26426aacf5f445e', '2021-10-25 21:37:02'),
(225, 'Coba', 'iigx8g9wqi6k6yrba0up@gmail.com', 'b41ea59e9bde4841a7406b5e70be9160', '2021-10-25 21:37:04'),
(226, 'Coba', 'hk5er7wu8fnabzwvyonx@gmail.com', 'd8988278b37fe1d0cdd3bf3296dc9175', '2021-10-25 21:37:04'),
(227, 'Coba', 'pkgqmpbbactwivygiqdr@gmail.com', '3ccb87d61f81a1b1c60375e552c3ae31', '2021-10-25 21:37:04'),
(228, 'Coba', '3ax5mwhrmwcues8kdxte@gmail.com', 'ae4c5b7f611231a29c9b8a2a52497bc0', '2021-10-25 21:37:04'),
(229, 'Siapa', 'lshmwhxmfmspnnxnktcc@gmail.com', 'f5fcdc6d7a2f8a0cdd3891979ed79301', '2021-10-25 21:40:12'),
(230, 'Siapa', 'xh7owiq3wii6a2camoxf@gmail.com', 'd5b662be01d9a9aaf7aa4c741d269a66', '2021-10-25 21:40:12'),
(231, 'Coba', 'bdfbrdssojelpgxkz4jt@gmail.com', 'f14c6fe8fbf239e22903542fcee55c13', '2021-10-25 21:40:16'),
(232, 'Coba', '6c9cjdr59teheq36wt5a@gmail.com', '2e07fed89f7729bc11d222ee8b116ad6', '2021-10-25 21:40:17'),
(233, 'Coba', 'fgkwkyny8fuowebdahhf@gmail.com', '3c6b8e5f60ee227c77b300b5309514e0', '2021-10-25 21:40:17'),
(234, 'Coba', 'a3h5kirrv6ghqokgugft@gmail.com', '8d6f4c38f2756815648a2cc1ee9cbe77', '2021-10-25 21:40:17'),
(235, 'Coba', 'pcvt0cvj0qicwenfuioc@gmail.com', 'c9437b7984f852accdd243bd89e2dd89', '2021-10-25 21:40:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `name`, `description`, `created_at`) VALUES
(3, 'Cashier', NULL, '2021-10-07 21:47:38'),
(4, 'Salesperson', NULL, '2021-10-07 21:47:38'),
(5, 'Vet', NULL, '2021-10-07 21:47:38'),
(6, 'Officeboy', NULL, '2021-10-07 21:47:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'None', NULL, '2021-10-23 17:59:52'),
(2, 'Male', NULL, '2021-10-23 17:59:52'),
(3, 'Female', NULL, '2021-10-23 17:59:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcustomer`
--

CREATE TABLE `tbcustomer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `telephone1` varchar(14) DEFAULT NULL,
  `telephone2` varchar(14) DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbcustomer`
--

INSERT INTO `tbcustomer` (`id`, `name`, `telephone1`, `telephone2`, `address`, `created_at`) VALUES
(7, 'nih ya', '09876543210', '23456789012', 'JL.Gatau No 34', '2021-10-06 20:41:16'),
(8, 'BesariMaliik', '0819277365', '08124356367', 'Jl.Tidak No.1', '2021-10-09 15:07:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbemployee`
--

CREATE TABLE `tbemployee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `gender_id` int(11) NOT NULL,
  `telephone` varchar(14) DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbemployee`
--

INSERT INTO `tbemployee` (`id`, `name`, `divisi_id`, `gender_id`, `telephone`, `address`, `admin_id`, `created_at`) VALUES
(8, 'Boy', 4, 2, '0898231457', 'Jl.amana', 23, '2021-10-23 18:03:05'),
(9, 'sopiah', 6, 3, '081913132320', 'jl.tambun raya No32', 1, '2021-10-23 20:44:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbproduct`
--

CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `price` int(20) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `expired` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbproduct`
--

INSERT INTO `tbproduct` (`id`, `name`, `stock`, `price`, `description`, `expired`, `supplier_id`, `admin_id`, `created_at`) VALUES
(1, 'Whiskas', 8, 8000, 'Makanan Kucing', '2022-10-01', 3, 1, '2021-10-08 12:08:24'),
(2, 'Pedigree', 6, 30000, 'Makanan anjing', '2022-10-08', 5, 1, '2021-10-08 14:58:44'),
(3, 'Me-O', 10, 20000, 'Makanan Kucing', '2022-10-08', 5, 1, '2021-10-09 17:20:16'),
(4, 'Alpo', 11, 50000, 'Makanan Anjing', '2023-12-01', 6, 1, '2021-10-09 22:54:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsupplier`
--

CREATE TABLE `tbsupplier` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `telephone` varchar(14) DEFAULT NULL,
  `address` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbsupplier`
--

INSERT INTO `tbsupplier` (`id`, `name`, `telephone`, `address`, `created_at`) VALUES
(3, 'PT Unilever', '0213456789', 'Jl.Gudang No.100-110, Bekasi', '2021-10-08 11:44:47'),
(4, 'PT Kino', '0215678930', 'Jl.Saluran No.100, Jakarta Selatan', '2021-10-08 11:46:21'),
(5, 'Mars,Inc', '021345678', 'Jl.Melayu No.11, Bandung', '2021-10-08 14:56:44'),
(6, 'Purina,Inc', '0213456802', 'Jl.Jakarta', '2021-10-09 22:53:21'),
(20, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:17:03'),
(24, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:26:10'),
(25, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:28:16'),
(26, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:28:59'),
(27, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:29:51'),
(28, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:31:22'),
(29, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:32:04'),
(30, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 17:33:25'),
(31, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:08:36'),
(32, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:13:50'),
(33, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:17:42'),
(34, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:20:37'),
(35, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:21:28'),
(36, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:25:08'),
(39, 'PT.Princess', '0987654321', 'Jl. Uji Coba', '2021-10-25 20:41:44'),
(40, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:49:38'),
(41, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:50:44'),
(42, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:53:21'),
(43, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:55:40'),
(44, 'PT Coba', '0813567', 'Jl. Coba No.0', '2021-10-25 20:58:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtransaction`
--

CREATE TABLE `tbtransaction` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `total` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbtransaction`
--

INSERT INTO `tbtransaction` (`id`, `product_id`, `quantity`, `total`, `customer_id`, `admin_id`, `created_at`) VALUES
(4, 2, 2, 0, 7, 1, '2021-10-10 13:23:38'),
(5, 4, 1, 0, 8, 1, '2021-10-10 13:30:44'),
(6, 2, 1, 0, 8, 1, '2021-10-12 11:20:42'),
(7, 2, 1, 0, 7, 1, '2021-10-15 21:05:38'),
(8, 4, 1, 0, 8, 1, '2021-10-15 21:10:05'),
(9, 4, 2, 100000, 8, 1, '2021-10-15 21:24:37'),
(10, 2, 1, 30000, 7, 23, '2021-10-23 17:00:23');

--
-- Trigger `tbtransaction`
--
DELIMITER $$
CREATE TRIGGER `TG_TRANSACTIONUPDATE_STOCK` AFTER INSERT ON `tbtransaction` FOR EACH ROW BEGIN
 UPDATE tbproduct SET stock=stock-NEW.quantity
 WHERE id=NEW.product_id;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbcustomer`
--
ALTER TABLE `tbcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisi_id` (`divisi_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Indeks untuk tabel `tbproduct`
--
ALTER TABLE `tbproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `tbsupplier`
--
ALTER TABLE `tbsupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbtransaction`
--
ALTER TABLE `tbtransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbcustomer`
--
ALTER TABLE `tbcustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbemployee`
--
ALTER TABLE `tbemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbproduct`
--
ALTER TABLE `tbproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbsupplier`
--
ALTER TABLE `tbsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `tbtransaction`
--
ALTER TABLE `tbtransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD CONSTRAINT `tbemployee_ibfk_1` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`),
  ADD CONSTRAINT `tbemployee_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `tbemployee_ibfk_3` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbproduct`
--
ALTER TABLE `tbproduct`
  ADD CONSTRAINT `tbproduct_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `tbsupplier` (`id`),
  ADD CONSTRAINT `tbproduct_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `tbtransaction`
--
ALTER TABLE `tbtransaction`
  ADD CONSTRAINT `tbtransaction_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbproduct` (`id`),
  ADD CONSTRAINT `tbtransaction_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbcustomer` (`id`),
  ADD CONSTRAINT `tbtransaction_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
