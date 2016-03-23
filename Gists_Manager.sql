-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2016 at 07:48 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Gists_Manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'work', '2016-03-23 16:43:00', '2016-03-23 16:43:00'),
(2, 'games', '2016-03-23 17:05:08', '2016-03-23 17:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `gists`
--

CREATE TABLE IF NOT EXISTS `gists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=102 ;

--
-- Dumping data for table `gists`
--

INSERT INTO `gists` (`id`, `description`, `user_id`, `category_id`, `created_at`, `updated_at`, `username`, `url`) VALUES
(11, 'Coding Academy Countdown', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/d25951063a15b4ef93e3/raw/917b270601eaf4539014ebf5d1e13aca50fb5906/index.html'),
(12, 'ping with multiple formats and statistics', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/b4f5d83e4856e79c6590/raw/4e4e6351684fbbeab44445fe3c49e5538dcfb6d8/pingtracer'),
(13, 'Taxis parisien', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/cb523642ccd5474e2b48/raw/addb56a9de758a8453f2d6f5fe93505a79794c2f/taxisparisien.json'),
(14, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/302fb13e9c83d8998b16/raw/2eac32b48d8aa2c06fd4d62b804c1dfb21bb0b28/gistfile1.txt'),
(15, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/03d03378eab01a10df42/raw/53ca87d302c85823a1aca92cc21fe1f7d49fd058/gistfile1.txt'),
(16, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/50583d1bdf9a654e6367/raw/9be262b0a9952ad4cd13047209860d981666a0ae/gistfile1.yml'),
(17, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/91f207f2b8716349bac0/raw/c9ced544a6e3384b89493af0b1099ed5ef002a94/gistfile1.rb'),
(18, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/4b1457ea169c962c54dc/raw/31f15adc69f36f9792158a458c30b3ebd6283c6d/gistfile1.rb'),
(19, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/7e603a9e9d71d82baed3/raw/34712fff1fd4e9844dd98ac4bd023484e36bef43/gistfile1.php'),
(20, '', NULL, NULL, '2016-03-23 17:30:11', '2016-03-23 17:30:11', NULL, 'https://gist.githubusercontent.com/Nephos/8675237/raw/3a6ecc48084c0aff2028e9f9cb18ff2ffba31322/gistfile1.asm'),
(21, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/36ca5215d68e2a5c9277/raw/b76c2b8f17707fd782731c3032378701c4d76deb/Virtus.md'),
(22, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/97b85b80c829a4b65975/raw/c46ee27528e80c6f7edbd0f64417b8bfb3fc3d08/group.count.md'),
(23, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/400bbf2e75e9bf43439e/raw/f6174ca7b0bdfda6fe2606a2bcfbc676bb3980d7/preprend.md'),
(24, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/1bdfeb88062b6f5a23d3/raw/8c4ae0f0d586181af10501c0743138b95d32755e/includes.md'),
(25, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/6b99b9cceba1082f8b18/raw/333e5f47287ec1a28cf560a4f120ab8558492098/meta_methods.md'),
(26, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/bd77517b0669a69f878f/raw/b327a1a52c69c6b8730dc6d1e60d43eeb661b37b/random.rb'),
(27, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/3020fd2b1c398b1f7212/raw/034cd72968fc80c545615cd167c8bb327150fb0a/gist_of_gist.md'),
(28, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/e517c6bb517c68f1b70b/raw/56a7ac7ea9a545aedd65535af151af72cba54030/remove_kernel.md'),
(29, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/186c67515b74a29b3974/raw/3826bc8496a8b1bedd3659965e091f0ad3ff3924/clean_code.md'),
(30, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/4b2ce01db5369648cef4/raw/e6038bf68b77853806b033d2b0468b82c4f5314c/Fatable'),
(31, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/ba27feb1d31463d3b383/raw/59b9781d6aec09394cd663332d5e3bddd6114245/conf_sublime.css'),
(32, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/14059c5aa1849dcc5ae0/raw/69ad873bd0813c014c8a71676e8546a5eae8a790/new_domain_for_mails.md'),
(33, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/365cab89898a29dfeebe/raw/fd3855577b8c8781d847810b3da6fca036ee7919/new_website.md'),
(34, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/fb01516df0393315f149/raw/78818391c18f09c6dd86e744d1a70dc83df20584/websocket.md'),
(35, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/245d482747f03e15c0e9/raw/7510bfb7b3d74c50ce35a33ac72cdccb6747f88e/unix_cmd.md'),
(36, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/3982c06c9541ee3c0f69/raw/2dd021d4b582610c518789a6d6bb51c35d64b806/cap_cmd.md'),
(37, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/4c47e4fd3083b3cefe80/raw/9c901795c9dd86a676a5594d277147843a85d7de/Code''stuce.md'),
(38, '', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/36d5c187ff25dcf89063/raw/71f5a0c7d2da51f12dfe7903717a36b3d3e2ca89/errors_process.md'),
(39, 'Une prière afin que la mise en prod'' se passe bien.', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/7894189/raw/0cb2b39ef08e5408f479b3663465f728a454dc79/Notre%20Code.md'),
(40, 'Resume of git command', NULL, NULL, '2016-03-23 17:54:43', '2016-03-23 17:54:43', NULL, 'https://gist.githubusercontent.com/VictorTpo/7564531/raw/ae6ff32b0a4374847540caa5859cff27545d1ce9/Git%20cmd.md'),
(41, 'centos7 armv7l boot on scaleway C1', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/f04c1737c1b1206efbb5/raw/fc3fc0fbd566d2f1f07b02347cb504d69b7b2e26/1.%20boot.txt'),
(42, 'C2*/VC* cpuinfo diff', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/1c12a0d77c3641f192c6/raw/304b385d880c2d2ee6c1f581edbeab4ee1784c28/C2M-VC1.diff'),
(43, 'diff C2*/VC* scaleway', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/3b90b07b9d75fcd773b9/raw/0fe66fd3370b98b301d89eac6ddf13222af6a165/boot.C2L.txt'),
(44, 'scaleway-cli-multiarch-beta.console', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/e7428d8d6b760fd2fdc9/raw/19c51759516f6db738549180d5f6299f59464b03/scaleway-cli-multiarch-beta.console'),
(45, 'swap linux', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/18823e80f62a5278720e/raw/f2c44501c2193c37a49b84dda4a34e4aea36b4e3/swap.sh'),
(46, 'c2l-infos.txt', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/891b7c2166ac6caf9245/raw/5a95155d5c51b422c5e3254adba48d3d4edb30e2/c2l-infos.txt'),
(47, 'diff yum x86_64 vs armhfp', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/be885ac79c3abecbc411/raw/e7946f5ad94d0f38c42bfbbe25bba837a3aba302/armhfp.txt'),
(48, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/cf67f5cab6ffe6cad0a7/raw/e3e2353f0562b42ed9ba4317076fbd6640ffc833/kernel%20deb.md'),
(49, NULL, NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/0a0b73f973d7c71158bd/raw/fc54e707a1bc64b61dfb4a0c77bb521e3b582d5e/a.rb'),
(50, 'docker cleanup on pathwar levels', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/e51553a57e239866afd4/raw/8922f1afd9aaa6bc03bdab6c8fea134a09abccb3/cleanup.sh'),
(51, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/d69601762187d2d5b958/raw/4e3e1d22e3fd43bcb6f2b8fade42e2d88b05a243/docker-diff%20alpine:3.2%20alpine:3.3.diff'),
(52, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/1e4107fe1c5d1ad870a4/raw/0b13853720ffdb3436a316b1c4eee71852dc1738/0.%20docker-diff.sh'),
(53, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/9ce715eb4a611af5eb00/raw/6f5735c88b2136c699a1c8c2d2d43b77e6ce079e/gilbert.php'),
(54, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/fffc5b68f387def60007/raw/705f6b8f0e02e879e8756c4046039fa29b41fb65/RAG%C3%99%20ALLA%20BOLOGNESE.md'),
(55, 'multiarch Dockerfile demo', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/af364cfe757a53e05efc/raw/b08bd2b2cb9d8a656c85b3bb069161922b94d6d6/Dockerfile'),
(56, 'gpg-brute-all.txt', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/2da6c643acc4e0e9401d/raw/2828da37db49460d8a018c1d3c0d68068d3183f7/a.rb'),
(57, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/65ac2b90ae2c7edae14e/raw/85fe6febf33768436d2c943f849e2320186aae3a/std-vs-docker.md'),
(58, 'linux distrib builds', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/8d5ce6c0bad6e202e47a/raw/fe518e228369659ddb48fe85f872f5188c6f6f3c/linux%20distrib%20builds.md'),
(59, 'centos-novirt', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/c2b70b33d93fec69905c/raw/35427f5cf16a74437e975256a9d9519b9e222e79/centos-novirt.txt'),
(60, '', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/416e4e18103960e0adce/raw/947d514f6ee7bea6bb6680469006c58dfbdd9dc3/gistfile1.txt'),
(61, 'yum armhf in docker via qemu', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/22cbf6f4e305d60baa77/raw/f9b10f6513de6d2dd00d23b57616466fc59ba492/gistfile1.txt'),
(62, 'kernel-coreos', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/719777bb53d7bbc34e2a/raw/2bbc5e871dfc7bc5fde2c0dbfdd9753f4bdb41ab/a.rb'),
(63, 'kernel-mxs', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/f3c22058fb98602713ef/raw/037c0ee733730396183e93c36d0cbbc1635992f7/a.rb'),
(64, 'triples-table.md', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/860bee2ed451a55fc652/raw/fd6b9dfca8927fc47976cb19c873baf7c1ac3f87/triples-table.md'),
(65, NULL, NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/602eb6188511441536d4/raw/3b18e512dba79e4c8300dd08aeb37f8e728b8dad/-'),
(66, 'sg.md', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/8f332b8e04e194a16740/raw/337561b8d1144f007275a4071cf502a646ab097a/sg.md'),
(67, 'Liquidsoap vs Taglib', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/912ae573e812a046d057/raw/dd548f6cf4a98cd8b479ddf854e255c96363bfd3/1.%20liquidsoap%20logs.txt'),
(68, 'millipede.svg', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/9b211744fff71cdc6d18/raw/c7b99777fd403f426744579a85296d499174801b/millipede-animate.svg'),
(69, 'fractal svg', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/3725db48bb31f7ce3fb8/raw/f2319c04cc91e7691d4b271c80fb2295bfa83d46/fractal.html'),
(70, 'shikaku', NULL, NULL, '2016-03-23 17:56:38', '2016-03-23 17:56:38', NULL, 'https://gist.githubusercontent.com/moul/3d496ac718a6afa1a412/raw/c3f866c2dc89252d5ceb407c99a8cb74f390096f/shikaku.md'),
(71, '', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/b19b60e6dff4479a8b93/raw/39c8cfd0141f86942139e9b59e19447f1a86d9f5/keybase.md'),
(72, 'vm env', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/e9f6b5ba34aea88ce2b7/raw/5f817d1df1cc89189e394f848fc883aa0ee03eaa/gistfile1.md'),
(73, 'gentoo failed build.txt', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/7ec675e3cac39723c88e/raw/ea2a23b34f17d2762925202ba2710a28019a1163/gentoo%20failed%20build.txt'),
(74, 'c99.php', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/d72ca4aed5a542d1f219/raw/12b6ea66336101463c02817c91b8fe6388499bbe/c99.php'),
(75, 'public kernels', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/7c98eedeecec07e05dbd/raw/aec3a65f061657ac1fadb4355008180f6d20b45e/.md'),
(76, 'boot 4.1.6-243', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/1e9c59162ecf88abaa4d/raw/2dcb3fd3390208b5dd08f868b797ca80fd8633cc/1%20-%20first%20boot.py'),
(77, '', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/f665af7ee8544d0bd6ce/raw/d5d7c57de3b9423cc27a50bd8221fa4e4b584c76/gistfile1.txt'),
(78, 'ssh2docker tmp', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/a6cb3fc8685ca3aa2f87/raw/ff8582a4bf2580f43fb254def1859e24cf05a40e/main.go'),
(79, 'initrd buffering issue ?', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/827af3d1ef28bb007f4f/raw/10fddeede6d499977e2f71a61f511768def47144/alpine.md'),
(80, 'systemd debian jessie', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/5f05470d3295c9e1c832/raw/c3fbc98ebb213cc81d3e5b1d242bde0ad85e603c/gistfile1.txt'),
(81, 'create scaleway server with docker image on 150GB volume', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/79e233410f1c92628c4b/raw/09a7bbaa0589c429bc10d3926d3377bbbf9b63d9/0-run.md'),
(82, 'Sekexe .config', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/6a6e49e52cf9440d5a50/raw/79b292361f2b9c341316baee97cedfe8e8d4f8bc/.config'),
(83, 'Scaleway - XEN support', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/0be9da45af38974ac89a/raw/44aa13a3e062b16ff1774fa361c6dc3ff1d4b0e1/0_README.md'),
(84, 'c1-bitrig.txt', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/c57530ecf2dd9806295d/raw/397202358a2401a140a04a783f174ad751b90171/boot-1.txt'),
(85, 'node-spawn-stdio.js', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/f6095744b8c566798c39/raw/1f969b80d953a4daf7429093a720fb23e1827720/node-spawn-stdio.js'),
(86, 'docker-compose.yml example for moul/travis-docker', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/0f53ae391ae7d7116e24/raw/23307093546b6ae2f94208c188f5ce4fca2be996/docker-compose.yml'),
(87, 'pathwar.json', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/0dc1b8b82e1c2da52f83/raw/172833b07f7030aeffbe1bd925a23b43d05213b1/pathwar.json'),
(88, 'fig pathwar dev', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/fd478020ba24313359b3/raw/b7e6d185c572d25dfe840a94149c4ca53eb507bb/fig.yml'),
(89, 'Cryptodev !', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/730285ce13bb7982e726/raw/4a413b65dc21e2dcde1042a1a929734ae4addf70/00%20-%20NOTES.md'),
(90, 'this is a test', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/c90724702e4e876b99ed/raw/28f7cbfaf370de0e06289661aca1098beee6ba89/gistfile1.md'),
(91, 'Failed fedora bootstrap for armhf using appliance-creator', NULL, NULL, '2016-03-23 17:56:43', '2016-03-23 17:56:43', NULL, 'https://gist.githubusercontent.com/moul/77f7dcce22e6e0765ec4/raw/3b3e7bcad2ad542e053ff26d5c499c88d3c5d87b/container-20-medium.ks'),
(92, 'own cloud with and without recommends', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/5b41b6ae6afcd35ab064/raw/9de71750bb8cf711c3b256cf82c4daa093b6b31d/recommends-only.txt'),
(93, '', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/9dcc8a8043acea3751c1/raw/96e2f6b7115e19dcfa9ac59af69a448ace54291b/Distribs.md'),
(94, 'test table markdown.md', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/588efbc8d2bc3dc37881/raw/9ee018e8bb572e5cfd3eb07f811247bec60ba3ba/test%20table%20markdown.md'),
(95, 'Tributary inlet', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/5100537/raw/f83dd210ee952f0aac269fc94f8544dcf4224c86/_.md'),
(96, 'https://github.com/savonet/liquidsoap/issues/13', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/4644770/raw/d2590a5b22efa1246687f5c52401610a4aade083/ezstream.conf'),
(97, 'osx - ssh to linux - locale', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/4559569/raw/82bbda387d83d72a6040a70149a125620a0175ad/gistfile1.txt'),
(98, 'anon ssh', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/3142888/raw/19b8748f0c1389c116dd2be760263f6d4b972e93/gistfile1.sh'),
(99, 'OSX Fresh Install', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/2491365/raw/34e181abd7a5a0b2c8a008f95c6cd22028096a20/100%20-%20OSX%20Desktop.markdown'),
(100, 'Personalized Web Options', NULL, NULL, '2016-03-23 17:56:44', '2016-03-23 17:56:44', NULL, 'https://gist.githubusercontent.com/moul/2216629/raw/4dc57fc1a901665971ea797eb203e223f86e0765/cdiscount.com'),
(101, 'Gists_manager Import', NULL, NULL, '2016-03-23 18:24:46', '2016-03-23 18:24:46', NULL, 'https://gist.githubusercontent.com/Rx10110/ae29b90f09dc480f4813/raw/fba7da5ac9da87bdb8248751e160b58fb67996e9/import.rb');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160322153522'),
('20160322154454'),
('20160322161253'),
('20160322162438'),
('20160322172512'),
('20160322173427'),
('20160322194527');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
