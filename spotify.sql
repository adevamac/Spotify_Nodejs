-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 05:13 PM
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
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `Id` int(11) NOT NULL,
  `title` text NOT NULL,
  `artist` text NOT NULL,
  `lyrics` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`Id`, `title`, `artist`, `lyrics`, `image`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Pusong basag', 'spring worship', 'Sa bawat patak ng luha\r\nSa aking kahinaan\r\nSa bawat luhod at panalangin\r\n\'Di mo ako iniwan\r\nHesus, Ika\'y nariyan\r\nItataas ang aking mga kamay\r\nSa Diyos na mahabagin sa atin na tunay\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nMaghari Ka\r\nSa bawat tanong ng buhay\r\nSuliraning \'di maintindihan\r\nSalita Mo\'y panghahawakan\r\nNa hindi Mo ako iiwan\r\nHesus, Ika\'y nariyan\r\nItataas ang aking mga kamay\r\nSa Diyos na mahabagin sa atin na tunay\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nItataas ang aking mga kamay\r\nSa Diyos na mahabagin sa atin na tunay\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nSuriin Mo ang puso ko\r\nSuriin Mo ang buhay ko\r\nNinanais ko ang Iyong kalooban\r\nSuriin Mo ang puso ko\r\nSuriin Mo ang buhay ko\r\nNinanais ko\'y Ikaw\r\nSuriin Mo ang puso ko\r\nSuriin Mo ang buhay ko\r\nNinanais ko ang Iyong kalooban\r\nSuriin Mo ang puso ko\r\nSuriin Mo ang buhay ko\r\nNinanais ko\'y Ikaw\r\nItataas ang aking mga kamay\r\nSa Diyos na mahabagin sa atin na tunay\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nItataas ang aking mga kamay\r\nSa Diyos na mahabagin sa atin na tunay\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nOh, ang alay ko ay pusong basag\r\nNagpapakumbaba sa \'Yong presensiya\r\nMaghari Ka', '/uploads/1727248669476.webp', '/uploads/1727248669479.mp3', '2024-09-25 15:17:49', '2024-09-25 15:17:49'),
(4, 'Always', 'Rex Orange Country', 'acasdasd', '/uploads/1727262061449.jpg', '/uploads/1727262061451.mp3', '2024-09-25 19:01:01', '2024-09-25 19:08:52'),
(5, 'Worthy_Is_The_Lamb', 'Hill song', 'Thank You for the cross, Lord\r\nThank You for the price You paid\r\nBearing all my sin and shame\r\nIn love You came\r\nAnd gave amazing grace\r\nThank you for this love, Lord\r\nThank you for the nail pierced hands\r\nWashed me in Your cleansing flow\r\nNow all I know\r\nYour forgiveness and embrace\r\nWorthy is the Lamb\r\nSeated on the throne\r\nI crown You now with many crowns\r\nYou reign victorious\r\nHigh and lifted up\r\nJesus, Son of God\r\nThe Darling of Heaven crucified\r\nWorthy is the Lamb\r\nWorthy is the Lamb\r\nThank You for the cross, Lord\r\nThank You for the price You paid\r\nBearing all my sin and shame\r\nIn love You came\r\nAnd gave amazing grace\r\nThank you for this love, Lord\r\nThank you for the nail pierced hands\r\nWashed me in Your cleansing flow\r\nNow all I know\r\nYour forgiveness and embrace\r\nWorthy is the Lamb\r\nSeated on the throne\r\nI crown You now with many crowns\r\nYou reign victorious\r\nHigh and lifted up\r\nJesus, Son of God\r\nThe Darling of Heaven crucified\r\nWorthy is the Lamb\r\nWorthy is the Lamb\r\nWorthy is the Lamb\r\nWorthy is the Lamb\r\nThou art worthy, Jesus\r\nThou art worthy, Thou art worthy\r\nThou art worthy, Jesus\r\nThou art worthy, Thou art worthy\r\nThou art worthy, Jesus\r\nThou art worthy, Thou art worthy\r\nThou art worthy, Jesus\r\nThou art worthy, Thou art worthy\r\nThou art worthy, Jesus', '/uploads/1727264329656.webp', '/uploads/1727264329659.mp3', '2024-09-25 19:38:49', '2024-09-25 19:38:49'),
(6, 'When I Look Into Your Holiness', 'Kent Henry', 'When I look into Your holiness\r\nWhen I gaze into Your loveliness (Your loveliness)\r\nWhen all things that surround become shadows\r\nIn the light of You (in the light of You)\r\nWhen I\'ve found the joy of reaching Your heart\r\n(Reaching Your heart)\r\nWhen my will becomes enthroned in Your love\r\n(Enthroned in Your love)\r\nWhen all things that surround become shadows\r\nIn the light of You\r\nI worship You\r\nI worship You (I worship You)\r\nThe reason I live (the reason I live is to worship You)\r\n(Worship You)\r\nI worship You (You are my God)\r\nI worship You (You)\r\nThe reason I live is to worship You\r\nWhen I look into Your holiness (Your holiness)\r\nWhen I gaze into Your loveliness (Your loveliness)\r\nWhen all things that surround become shadows\r\n(Become shadows)\r\nIn the light of You (in the light of You)\r\n(In the light of You)\r\nWhen I\'ve found the joy of reaching Your heart\r\n(Of reaching Your heart)\r\nWhen my will becomes enthroned in Your love\r\n(Enthroned in Your love)\r\nWhen all things that surround become shadows\r\nIn the light of You (it\'s the reason I live)\r\nI worship You\r\nI worship You, I worship You (I worship You)\r\nThe reason I live is to worship You (I worship You)\r\nI worship You (with all of my heart, I\'m going to worship You)\r\nI worship You (I worship You)\r\nThe reason I live is to worship You', '/uploads/1727264383400.webp', '/uploads/1727264383403.mp3', '2024-09-25 19:39:43', '2024-09-25 19:39:43'),
(7, 'Welcome Holy Spirit', 'Living Word Worship', 'Welcome holy spirit\r\nWe are in your presence\r\nFill us with your power\r\nLive inside of me\r\nWelcome holy spirit\r\nWe are in your presence\r\nFill us with your power\r\nLive inside of me\r\nYoure the living water\r\nNever drying fountain\r\nComforter and counselor\r\nTake complete control\r\nWelcome holy spirit\r\nWe are in your presence\r\nFill us with your power\r\nLive inside of me\r\nWelcome holy spirit\r\nWe are in your presence\r\nFill us with your power\r\nLive inside of me\r\nYoure the living water\r\nNever drying fountain\r\nComforter and counselor\r\nTake complete control\r\nYoure the living water\r\nNever drying fountain\r\nComforter and counselor\r\nTake complete control', '/uploads/1727264435434.webp', '/uploads/1727264435436.mp3', '2024-09-25 19:40:35', '2024-09-25 19:40:35'),
(8, 'We Wait For You ', 'Cory Asbury', 'We wait for You, we wait for You\r\nWe wait for You; walk in the room\r\nHere we are, standing in Your presence\r\nShekinah glory come down,\r\n\r\nWe Wait For You (Shekinah Glory) Lyrics\r\nWe wait for You, we wait for You\r\nWe wait for You; walk in the room\r\n \r\nHere we are, standing in Your presence\r\nHere we are, standing in Your presence\r\nShekinah glory come down, Shekinah glory come down\r\n \r\nRelease the fullness of Your Spirit\r\nShekinah glory come, Shekinah glory come\r\n \r\nYou move and we want more, You speak and we want more\r\nYou move and we want more; we want the fullness\r\n \r\nWe want more, we want more, we want more, we want more\r\nWe want more, we want more, more of Your Spirit\r\n\r\nThe Lord has given us freedom\r\nGiven us freedom\r\nGiven us joy', '/uploads/1727264491293.webp', '/uploads/1727264491298.mp3', '2024-09-25 19:41:31', '2024-09-25 19:41:31'),
(9, 'I Give You My Heart', 'Hillsong Worship', 'This is my desire, to honor You\r\nLord, with all my heart I worship You\r\nAll I have within me, I give You praise\r\nAll that I adore is in You\r\nLord, I give You my heart\r\nI give You my soul\r\nI live for You alone\r\nEvery breath that I take\r\nEvery moment I\'m awake\r\nLord, have Your way in me\r\nThis is my desire, to honor You\r\nLord, with all my heart I worship You (I do)\r\nAll I have within me, I give You praise\r\nAll that I adore is in You\r\nLord, I give You my heart\r\nI give You my soul\r\nI live for You alone\r\nEvery breath that I take\r\nEvery moment I\'m awake\r\nLord, have Your way in me\r\nAnd I\'ll live\r\nAnd I\'ll live for You\r\nAnd I\'ll live\r\nAnd I\'ll live for You\r\nOh, and I\'ll live (yeah)\r\nAnd I\'ll live\r\nAnd I\'ll live for You\r\nLord, I give You my heart\r\nI give You my soul\r\nI live for You alone\r\nEvery breath that I take\r\nEvery moment I\'m awake\r\nLord, have Your way in me', '/uploads/1727264548823.webp', '/uploads/1727264548826.wma', '2024-09-25 19:42:28', '2024-09-25 19:42:28'),
(10, 'Move Spirit Move', 'Ron Kenoly ', 'Lord rend the heavens\r\nRain down on us now\r\nThat the mountains might shake\r\nAs Your glory comes down\r\nWe\'ve heard of Your wonders\r\nYour works and Your ways\r\nWe\'re desperate for You Lord\r\nTo move in our day\r\nMove Spirit move\r\nMove Spirit move\r\nMove in us among us\r\nTouch the world through us\r\nWithout You we can\'t find our way\r\nMove Spirit move today\r\nJesus we need You\r\nMuch more than we know\r\nIf we don\'t have You\r\nThere where can we go\r\nWe\'re anticipating all that You\'ll do\r\nTurn to our cry Lord\r\nWe\'re turning to You\r\nMove Holy Spirit we\'re waiting on You\r\nMove Holy Spirit we\'re waiting on You\r\nMove Holy Spirit we\'re waiting on You\r\nFill our hearts fill our minds Spirit move\r\nMove Spirit move\r\nMove Spirit move\r\nMove in us among us\r\nTouch the world through us\r\nWithout You we can\'t find our way\r\nMove Spirit move\r\nMove Spirit move today\r\nMove Spirit move\r\nMove Spirit move', '/uploads/1727264591257.webp', '/uploads/1727264591259.mp3', '2024-09-25 19:43:11', '2024-09-25 19:43:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
