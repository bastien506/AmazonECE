-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 29 avr. 2019 à 14:44
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `amazonece`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `Livres` int(11) NOT NULL,
  `Musiques` int(11) NOT NULL,
  `Vetements` int(11) NOT NULL,
  `Sport&Loisirs` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

DROP TABLE IF EXISTS `livres`;
CREATE TABLE IF NOT EXISTS `livres` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Auteur` varchar(255) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Collection` varchar(255) NOT NULL,
  `DateParution` date NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Support` varchar(255) NOT NULL,
  `Langue` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Prix` float NOT NULL,
  `Longueur` float NOT NULL,
  `Largeur` float NOT NULL,
  `Hauteur` float NOT NULL,
  `Poids` float NOT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`Id`, `Auteur`, `Titre`, `Collection`, `DateParution`, `Genre`, `Support`, `Langue`, `Description`, `Prix`, `Longueur`, `Largeur`, `Hauteur`, `Poids`, `Quantite`) VALUES
(1, 'Erin HUNTER', 'La Guerre des Clans - Tome 1: Retour à l\'état sauvage', 'Pocket Jeunesse', '2007-03-15', 'Livres anglais et étrangers', 'Papier', 'Anglais, Français', 'Présentation de l\'éditeur\r\n\r\nDepuis des générations, fidèles aux lois de leurs ancêtres, quatre clans de chats sauvages se partagent la forêt. Mais le Clan du Tonnerre court un grave danger, et les sinistres guerriers de l\'Ombre sont de plus en plus puissants. En s\'aventurant un jour dans les bois, Rusty, petit chat domestique, est loin de se douter qu\'il deviendra bientôt le plus valeureux des guerriers…\r\n\r\nUn mot de l\'auteur\r\n\r\nPour écrire La guerre des clans, Erin Hunter puise son inspiration dans son amour des chats et du monde sauvage. Erin est une fidèle protectrice de la nature. Elle aime par dessus tout expliquer le comportement animal grâce aux mythologies, à l\'astrologie, et aux pierres levées.', 7.5, 10.9, 17.5, 2.3, 250, 10),
(2, 'Future Press', 'Sekiro Shadows Die Twice, Official Game Guide', 'Future Press Verlag und Marketing GmbH', '2019-04-01', 'Livres anglais et étrangers', 'Papier', 'Anglais', 'Présentation de l\'éditeur\r\n\r\nGet Ready for the Fight of Your Life\r\n\r\nSEKIRO: SHADOWS DIE TWICE is a true shinobi experience if you re not devious, patient and above all masterful, you ll almost certainly be cut down. Fear not, as Future Press have crafted a guide that makes the path to mastery clear. Sekiro s opponents are so ferocious and unyielding that defeating them in any form will take practice and dedication; beating them flawlessly requires shinobi skills that this book is designed to teach you: consider it the ultimate Esoteric Text.\r\n\r\nThe official guide to SEKIRO: SHADOWS DIE TWICE is filled to bursting with combat tutorials, analysis, and overviews of the game s interconnecting mechanics. It s a veritable encyclopedia that is certain to enrich your shinobi experience. You ve never faced a challenge like this before. It would be unwise to face it alone.\r\n\r\nThe Path of the Shinobi\r\nWith our expertly-crafted walkthrough, nothing is left to chance following it will ensure that you never miss an opportunity for a Stealth Deathblow and learn all shortcuts, while grabbing everything of value along the way. Beautifully illustrated maps reveal the full majesty of the Ashina territories and all the secrets they hide.\r\n\r\nOpposing Forces\r\nThe Ashina clan and the many monstrous creatures that inhabit their lands are FromSoftware s most deadly creations yet. 140 pages of this book are dedicated to dissecting them we show you how to prepare, break down their attacks and explain exactly when and how to cut through their guard.\r\n\r\nNinjutsu Combat\r\nThis book will take you deep into the inner workings of Sekiro s combat. You ll learn how to acquire and manage a multitude of skill trees, combat arts, ninjutsu techniques and Prosthetic Tools, and not least your trusty katana, Kusabimaru every encounter depends on it, and after reading this guide, you ll have mastered every aspect of the shinobi s arsenal.\r\n\r\nNPCs\r\nA truly mysterious bunch of characters stalk these lands. Each of them has their own schemes and desires that motivate them to help or hinder you, and many outcomes are possible. Easily keep track of them all with complete event lists, connection charts and quest walkthroughs.\r\n\r\nThe Ultimate Reference\r\nThis guide is designed to be extremely reference-friendly. Every item you can acquire in the game is detailed and indexed. We ve also included step-by-step progression guides, with recommended orders for tackling bosses, upgrading tools, learning skills and spending your hard-earned Sen.', 39.21, 28, 3, 22, 500, 10),
(3, 'Antoine de Saint-Exupéry', 'Le petit prince Poche', 'Folio Junior', '2007-03-15', 'Scolaire et Parascolaire', 'CD', 'Français', 'Description du produit\r\nPrésentation de l\'éditeur\r\n«Le premier soir, je me suis donc endormi sur le sable à mille milles de toute terre habitée. J\'étais bien plus isolé qu\'un naufragé sur un radeau au milieu de l\'océan. Alors, vous imaginez ma surprise, au lever du jour, quand une drôle de petite voix m\'a réveillé. Elle disait : “S\'il vous plaît... dessine-moi un mouton !” J\'ai bien regardé. Et j\'ai vu ce petit bonhomme tout à fait extraordinaire qui me considérait gravement...»\r\nUn mot de l\'auteur\r\nWriter and aviator, Antoine Jean-Baptiste Marie Roger de Saint-Exupéry was born on 29 June, 1900 in Lyon, France. In 1921, he began his military service with the light cavalry, and trained as a pilot in Strasbourg. A year later he obtained his license and was offered transfer to the airforce. On December 30, 1945, Saint-Exupéry and his navigator, André Prévot, embarked on a record-breaking attempt to fly from Paris to Saigon. Nineteen and a half hours into the flight, their plane crashed in the Sahara desert. Both survived the crash but spent three days battling dehydration, limited food and hallucinations. On the fourth day, they were rescued by a camel-riding Bedouin. In part, this experience was the inspiration for The Little Prince, which begins with a pilot being marooned in the desert. The manuscript was completed by October 1942. On 31 July 1944, a year after his book The Little Prince was published, Saint-Exupéry disappeared over the Mediterranean while flying a reconnaissance mission for his French air squadron, the Armée de l\'Air.', 16, 12, 17, 0.6, 50, 5),
(4, 'Patricia Lentini,  Dirk Zeller', 'Bien gérer son temps pour les nuls', 'Lizzie', '2019-07-08', 'Scolaire et Parascolaire', 'Livre Audio', 'Français', 'Ne perdez plus votre temps !\r\n\r\nVous avez besoin d\'aide pour gérer votre temps ? Vous n\'arrivez pas à organiser votre emploi du temps entre travail et maison ? Vous avez l\'impression qu\'il n\'y a pas assez d\'heures dans une journée ? Relax ! Bien gérer son temps pour les nuls vous offre des solutions pratiques pour vous organiser, travailler mieux et plus vite, réduire le stress et vous débarrasser des distractions qui vous font perdre votre temps. Vous découvrirez comment ne plus avoir à rester tard au bureau et passer plus de temps avec votre famille, vos amis... et avec vous-même !\r\n\r\nAu travail comme pendant vos loisirs, ne vous laissez pas déborder. Avec Bien gérer son temps pour les nuls, vous verrez comment utiliser judicieusement chacune de vos précieuses minutes !', 0, 27, 0.4, 30, 40, 2);

-- --------------------------------------------------------

--
-- Structure de la table `musiques`
--

DROP TABLE IF EXISTS `musiques`;
CREATE TABLE IF NOT EXISTS `musiques` (
  `Id` int(11) NOT NULL,
  `Titre` varchar(255) NOT NULL,
  `Artiste` varchar(255) NOT NULL,
  `Compositeur` varchar(255) NOT NULL,
  `Style` varchar(255) NOT NULL,
  `Annee` date NOT NULL,
  `Support` varchar(255) NOT NULL,
  `Album` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Prix` float NOT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `musiques`
--

INSERT INTO `musiques` (`Id`, `Titre`, `Artiste`, `Compositeur`, `Style`, `Annee`, `Support`, `Album`, `Description`, `Prix`, `Quantite`) VALUES
(11, 'Stupeflip', 'Stupeflip', 'Stupeflip', 'Punk, Rock, Rap', '2003-05-24', 'CD', 'Stupeflip', 'Première ere du stup.', 8.7, 0),
(12, 'Black Sabbath', 'Black Sabbath', 'Black Sabbath', 'Metal', '1970-01-01', 'Vinyle', 'Black Sabbath', 'Fondateur du metal.\r\nI am Iron Man!!', 35, 0);

-- --------------------------------------------------------

--
-- Structure de la table `sport&loisirs`
--

DROP TABLE IF EXISTS `sport&loisirs`;
CREATE TABLE IF NOT EXISTS `sport&loisirs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL,
  `Age` float NOT NULL,
  `Saison` varchar(255) NOT NULL,
  `Poids` float NOT NULL,
  `Prix` float NOT NULL,
  `Quantité` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vetements`
--

DROP TABLE IF EXISTS `vetements`;
CREATE TABLE IF NOT EXISTS `vetements` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Sexe` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Couleur` varchar(255) NOT NULL,
  `Taille` int(11) NOT NULL,
  `Prix` float NOT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
