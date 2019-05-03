-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 03 mai 2019 à 17:01
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
-- Structure de la table `acheteurs`
--

DROP TABLE IF EXISTS `acheteurs`;
CREATE TABLE IF NOT EXISTS `acheteurs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mdp` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Adressebis` varchar(255) NOT NULL,
  `Ville` varchar(255) NOT NULL,
  `Pays` varchar(255) NOT NULL,
  `CP` int(5) NOT NULL,
  `Carte` varchar(255) NOT NULL,
  `NumCarte` int(20) NOT NULL,
  `NomCarte` varchar(255) NOT NULL,
  `DateExpiM` int(2) UNSIGNED ZEROFILL NOT NULL,
  `DateExpiA` int(4) NOT NULL,
  `CodeSecu` int(4) NOT NULL,
  `Telephone` int(10) UNSIGNED ZEROFILL NOT NULL,
  `EmailPaypal` varchar(255) NOT NULL,
  `MdpPaypal` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=122223 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `acheteurs`
--

INSERT INTO `acheteurs` (`ID`, `Nom`, `Prenom`, `Email`, `Mdp`, `Adresse`, `Adressebis`, `Ville`, `Pays`, `CP`, `Carte`, `NumCarte`, `NomCarte`, `DateExpiM`, `DateExpiA`, `CodeSecu`, `Telephone`, `EmailPaypal`, `MdpPaypal`) VALUES
(1001, 'OK', 'Manir', 'bisous@hmail.com', 'bip01', '1 rue du peuplier', '', 'Paris', 'Fiji', 78180, 'Visa', 26584151, 'LOLO', 07, 2024, 113, 0652585768, 'pp454153@gmail.com', 'monpaypal'),
(1002, 'Crustace', 'Coquillage', 'coqui@gmail.com', 'bip02', '20 boulevard Sable Caraibes', '', 'Marseille', 'France', 13006, 'Visa', 26878922, 'Crustace Coquillage', 03, 2026, 565, 0625459871, 'fofodl45@gmail.com', 'modzdz876'),
(1003, 'Hilton', 'Paris', 'parishilton@gmail.com', 'bip03', '', '', '', '', 0, 'Visa ', 323265563, 'Paris Hilton', 11, 2026, 456, 0652585768, 'efre@gmail.com', 'david78945'),
(1004, 'Gami', 'Shini', 'shinigami@gmail.com', 'bip04', '8 avenue des Cieux ', '', 'Saint-Michel', 'Paradis', 13001, 'American Express', 0, 'Gaetan Lajeune', 11, 2026, 111, 0145253656, 'kokko@@gmail.com', 'mlpozkods564'),
(1005, 'benji ', 'Benjamin', 'bonjour@hotmail.com', 'bip05', '87 rue des ascenseurs   mdifier', 'Hotel de ville', 'Tokyo', 'Japon', 28777, 'Visa', 236598, 'Romeo Benjamin ', 02, 2022, 666, 0678561214, 'momoeof@gmail.com', 'momo756664');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Pseudo` int(11) NOT NULL AUTO_INCREMENT,
  `Mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`Pseudo`)
) ENGINE=MyISAM AUTO_INCREMENT=7004 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`Nom`, `Prenom`, `Pseudo`, `Mdp`) VALUES
('Borie', 'Alice', 7001, 'bim01'),
('LeGuern', 'Bastien', 7002, 'bim02'),
('Lajeune', 'Gaetan', 7003, 'bim03');

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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `Image` varchar(255) NOT NULL,
  `ID_proprio` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3005 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`ID`, `Auteur`, `Titre`, `Collection`, `DateParution`, `Genre`, `Support`, `Langue`, `Description`, `Prix`, `Longueur`, `Largeur`, `Hauteur`, `Poids`, `Quantite`, `Image`, `ID_proprio`) VALUES
(3001, 'Erin HUNTER', 'La Guerre des Clans - Tome 1: Retour a l etat sauvage', 'Pocket Jeunesse', '2007-03-15', 'Livres anglais et etrangers', 'Papier', 'Anglais, Francais', 'Presentation de l editeur\r\n\r\nDepuis des generations, fideles aux lois de leurs ancetres, quatre clans de chats sauvages se partagent la foret. Mais le Clan du Tonnerre court un grave danger, et les sinistres guerriers de l Ombre sont de plus en plus puissants. En s aventurant un jour dans les bois, Rusty, petit chat domestique, est loin de se douter qu il deviendra bientot le plus valeureux des guerriers.\r\n\r\nUn mot de l\'auteur\r\n\r\nPour ecrire La guerre des clans, Erin Hunter puise son inspiration dans son amour des chats et du monde sauvage. Erin est une fidele protectrice de la nature. Elle aime par dessus tout expliquer le comportement animal grace aux mythologies, a l\'astrologie, et aux pierres levees.', 7.5, 10.9, 17.5, 2.3, 250, 10, 'imgarticle\\Livres\\laguerredesclans.jpg', 7001),
(3002, 'Future Press', 'Sekiro Shadows Die Twice, Official Game Guide', 'Future Press Verlag und Marketing GmbH', '2019-04-01', 'Livres anglais et etrangers', 'Papier', 'Anglais', 'Presentation de l editeur\r\n\r\nGet Ready for the Fight of Your Life\r\n\r\nSEKIRO: SHADOWS DIE TWICE is a true shinobi experience if you re not devious, patient and above all masterful, you ll almost certainly be cut down. Fear not, as Future Press have crafted a guide that makes the path to mastery clear. Sekiro s opponents are so ferocious and unyielding that defeating them in any form will take practice and dedication; beating them flawlessly requires shinobi skills that this book is designed to teach you: consider it the ultimate Esoteric Text.\r\n\r\nThe official guide to SEKIRO: SHADOWS DIE TWICE is filled to bursting with combat tutorials, analysis, and overviews of the game s interconnecting mechanics. It s a veritable encyclopedia that is certain to enrich your shinobi experience. You ve never faced a challenge like this before. It would be unwise to face it alone.\r\n\r\nThe Path of the Shinobi\r\nWith our expertly-crafted walkthrough, nothing is left to chance following it will ensure that you never miss an opportunity for a Stealth Deathblow and learn all shortcuts, while grabbing everything of value along the way. Beautifully illustrated maps reveal the full majesty of the Ashina territories and all the secrets they hide.\r\n\r\nOpposing Forces\r\nThe Ashina clan and the many monstrous creatures that inhabit their lands are FromSoftware s most deadly creations yet. 140 pages of this book are dedicated to dissecting them we show you how to prepare, break down their attacks and explain exactly when and how to cut through their guard.\r\n\r\nNinjutsu Combat\r\nThis book will take you deep into the inner workings of Sekiro s combat. You ll learn how to acquire and manage a multitude of skill trees, combat arts, ninjutsu techniques and Prosthetic Tools, and not least your trusty katana, Kusabimaru every encounter depends on it, and after reading this guide, you ll have mastered every aspect of the shinobi s arsenal.\r\n\r\nNPCs\r\nA truly mysterious bunch of characters stalk these lands. Each of them has their own schemes and desires that motivate them to help or hinder you, and many outcomes are possible. Easily keep track of them all with complete event lists, connection charts and quest walkthroughs.\r\n\r\nThe Ultimate Reference\r\nThis guide is designed to be extremely reference-friendly. Every item you can acquire in the game is detailed and indexed. We ve also included step-by-step progression guides, with recommended orders for tackling bosses, upgrading tools, learning skills and spending your hard-earned Sen.', 39.21, 28, 3, 22, 500, 10, 'imgarticle\\Livres\\seikiko.jpg', 7001),
(3003, 'Antoine de Saint-Exupéry', 'Le petit prince Poche', 'Folio Junior', '2007-03-15', 'Scolaire et Parascolaire', 'CD', 'Francais', 'Description du produit\r\nPresentation de l\'editeur\r\nLe premier soir, je me suis donc endormi sur le sable a mille milles de toute terre habitee. J etais bien plus isole qu\'un naufrage sur un radeau au milieu de l\'ocean. Alors, vous imaginez ma surprise, au lever du jour, quand une drole de petite voix m\'a reveille. Elle disait : S il vous plaît. dessine-moi un mouton ! J ai bien regardé. Et j\'ai vu ce petit bonhomme tout a fait extraordinaire qui me considérait gravement.\r\n', 16, 12, 17, 0.6, 50, 5, 'imgarticle\\Livres\\petitprince.jpg', 7002),
(3004, 'Patricia Lentini,  Dirk Zeller', 'Bien gerer son temps pour les nuls', 'Lizzie', '2019-07-08', 'Scolaire et Parascolaire', 'Livre Audio', 'Français', 'Ne perdez plus votre temps !\r\n\r\nVous avez besoin d\'aide pour gerer votre temps ? Vous n arrivez pas à organiser votre emploi du temps entre travail et maison ? Vous avez l\'impression qu il n y a pas assez d heures dans une journée ? Relax ! Bien gerer son temps pour les nuls vous offre des solutions pratiques pour vous organiser, travailler mieux et plus vite, reduire le stress et vous debarrasser des distractions qui vous font perdre votre temps. Vous decouvrirez comment ne plus avoir à rester tard au bureau et passer plus de temps avec votre famille, vos amis et avec vous-même !\r\n\r\nAu travail comme pendant vos loisirs, ne vous laissez pas deborder. Avec Bien gerer son temps pour les nuls, vous verrez comment utiliser judicieusement chacune de vos precieuses minutes !', 0, 27, 0.4, 30, 40, 2, 'imgarticle\\Livres\\nuls.jpg', 2001);

-- --------------------------------------------------------

--
-- Structure de la table `musiques`
--

DROP TABLE IF EXISTS `musiques`;
CREATE TABLE IF NOT EXISTS `musiques` (
  `ID` int(11) NOT NULL,
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
  `Image` varchar(255) NOT NULL,
  `ID_proprio` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `musiques`
--

INSERT INTO `musiques` (`ID`, `Titre`, `Artiste`, `Compositeur`, `Style`, `Annee`, `Support`, `Album`, `Description`, `Prix`, `Quantite`, `Image`, `ID_proprio`) VALUES
(4001, 'Stupeflip', 'Stupeflip', 'Stupeflip', 'Punk, Rock, Rap', '2003-05-24', 'CD', 'Stupeflip', 'Premiere ere du stup.', 8.7, 0, 'imgarticle\\Musiques\\stupeflip.jpeg.jpg', 7003),
(4002, 'Black Sabbath', 'Black Sabbath', 'Black Sabbath', 'Metal', '1970-01-01', 'Vinyle', 'Black Sabbath', 'Fondateur du metal.\r\nI am Iron Man!!', 35, 0, 'imgarticle\\Musiques\\black_sabbath.jpg', 2002),
(4003, 'Best Of Celine Dion (Coffret)', 'Celine Dion', 'Celine Dion', 'Musique française', '2009-11-23', 'CD', 'Best Of Celine Dion (Coffret)', 'L\'une des plus belle voix qui existe.', 14.99, 10, 'imgarticle\\Musiques\\bestofcelinedion.jpg', 2003),
(4004, 'Shanking Shoes', 'Naaman', 'Naaman', 'Reggae', '2013-06-21', 'Telechargement', 'Deep Rockers: Back a Yard', 'Skanking Shoes est le premier hit de Naaman et sans doute son plus gros à ce jour. En 2012, un jeune Normand débarque de nulle part et prend tout le monde de court avec une mixtape qui se propage comme une traînee de poudre dans l\'Hexagone. Deep Rockers regroupe dix titres produits par Fatbabs essentiellement à base de samples. Celui de Skanking Shoes, cest le titre Children of the Ghetto de la chanteuse Senya.', 5, 9, 'imgarticle\\Musiques\\naaman.jpg', 2004),
(4005, 'Hair of the dog ', 'Nazareth ', 'Nazareth ', 'Heavy Metal ', '1975-04-05', 'Telechargement', 'Hair of the dog ', 'Hair of the Dog est le sixieme album studio du groupe écossais Nazareth, sorti le 05 avril 1975.', 6.99, 3, 'imgarticle\\Musiques\\hairofthedog.jpg', 2005),
(16, ' Romeo et Juliette, de la haine a l amour ', 'Damien Sargue', 'Damien Sargue', 'Comedie musical ', '2010-01-05', 'CD', 'Romeo et Juliette, de la haine a l amour', 'Album regroupant les chansons de la comedie musicale \" Romeo et Juliette, de la haine a l amour \"', 40.02, 1, 'imgarticle\\Musiques\\romeo&juliette.jpg', 7001),
(4006, 'Le bal des Laze', 'Michel Polnareff', 'Michel Polnareff ', 'Pop Baroque', '1968-08-23', 'Vinyle', 'Le bal des Laze', 'D apres la legende, entretenue dans son livre Polnareff par Polnareff, Michel Polnareff aurait exige d\'enregistrer la chanson titre de cet album dans un studio ou brulaient cinq mille bougies, pour obtenir une ambiance d eglise. Selon le chanteur, il y en avait toutefois un peu moins que ce total.', 26, 1, 'imgarticle\\Musiques\\lebaldeslaze.jpg', 2005),
(4007, 'Through the Fire and Flames', 'Dragon Force ', 'Dragon Force ', 'Extreme power metal  ', '2003-06-08', 'Telechargement', 'Inhuman Rampage ', 'Cette chanson figure dans le jeu vidéo Guitar Hero III: Legends of Rock : elle est consideree comme l\'une des chansons les plus longues et les plus difficiles à jouer en raison du grand nombre de notes (3 722 notes) et de son importante rapidite. \r\nDuree: 7.23mn', 0.5, 10, 'imgarticle\\Musiques\\throughthefireandflames.jpg', 2002),
(4008, 'One Winged Angel ', 'Square Enix', 'Nobuo Uematsu ', 'OST', '1997-10-16', 'Telechargement', 'Final Fantasy 7 OST', 'Theme mythique du combat final contre Sephiroth ! ', 0.35, 1, 'imgarticle\\Musiques\\finalfantasy7.jpg', 7003),
(4009, 'Liberi Fatali ', 'Square Enix', 'Nobuo Uematsu', 'OST', '1999-05-22', 'Telechargement', 'Final Fantasy 8 OST', 'Musique d\'ouverture de final fantasy 8. Une scene mythique pour une romance magique.', 0.25, 2, 'imgarticle\\Musiques\\finalfantasy8.jpg', 2005);

-- --------------------------------------------------------

--
-- Structure de la table `sport&loisirs`
--

DROP TABLE IF EXISTS `sport&loisirs`;
CREATE TABLE IF NOT EXISTS `sport&loisirs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL,
  `Objet` varchar(255) NOT NULL,
  `Age` float NOT NULL,
  `Marque` varchar(255) NOT NULL,
  `Saison` varchar(255) NOT NULL,
  `Poids` float NOT NULL,
  `Prix` float NOT NULL,
  `Quantité` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ID_proprio` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6003 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sport&loisirs`
--

INSERT INTO `sport&loisirs` (`ID`, `Type`, `Objet`, `Age`, `Marque`, `Saison`, `Poids`, `Prix`, `Quantité`, `Image`, `ID_proprio`) VALUES
(6001, 'Fitness & Musculation', 'Roue abdominale', 16, 'Adidas', 'Year-round', 1, 14.5, 7, 'imgarticle\\Sport&Loisirs\\ROUEADBO.jpg', 2001),
(6002, 'Electronique', 'Podometre', 16, 'HETP', 'ALL', 20, 60, 2, 'imgarticle\\Sport&Loisirs\\podometre.jpg', 2002);

-- --------------------------------------------------------

--
-- Structure de la table `vendeurs`
--

DROP TABLE IF EXISTS `vendeurs`;
CREATE TABLE IF NOT EXISTS `vendeurs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ImageFond` varchar(255) NOT NULL,
  `Nbitems` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12348 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vendeurs`
--

INSERT INTO `vendeurs` (`ID`, `Nom`, `Prenom`, `Image`, `ImageFond`, `Nbitems`, `Email`) VALUES
(2001, 'Mama', 'Mia', 'http://ekladata.com/9LaHbob11yqA6Df-8ASu5G15nog@476x600.png', 'https://archzine.fr/wp-content/uploads/2015/08/1-les-plus-beaux-fonds-d-%C3%A9cran-paysage-au-bord-du-lac-et-une-maison-champetre.jpg', 0, 'mamamia@gmail.com'),
(2002, 'Depp', 'Jonnhy', 'http://ekladata.com/5liZfLTQW8uR-id9x7pZ_ylL3XM@350x522.png', 'https://archzine.fr/wp-content/uploads/2015/08/1-joli-paysage-fond-ecran-ete-avec-une-jolie-pelouse-verte-choisir-un-joli-paysage.jpg', 0, 'jonnhydepp@gmail.com'),
(2003, 'Baba', 'Ali', 'http://ekladata.com/uUE95nvQ4d-qhGDUd0CqCe4etRs@350x440.png', 'https://i.pinimg.com/originals/cc/5c/d6/cc5cd6785380b973c71474cb4b14fae9.jpg', 0, 'Alibaba@gmail.com'),
(2004, 'Bond', 'James', 'http://ekladata.com/94vF-zjJDH_qxt7ms-fwzXHtKEE@350x237.png', 'http://gb3e.fr/wp-content/uploads/2018/12/fond-ecran-060215-iphone-20.jpg', 0, 'jb@gmail.com'),
(2005, 'Michel', 'Eddie', 'http://ekladata.com/IJFMagS-pj1HYG25LvcvBEjc2lk@350x619.png', 'http://www.v3wall.com/wallpaper/1600_1200/1003/1600_1200_20100325122724481243.jpg', 0, 'eddiemichel@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `vetements`
--

DROP TABLE IF EXISTS `vetements`;
CREATE TABLE IF NOT EXISTS `vetements` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Sexe` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Couleur` varchar(255) NOT NULL,
  `Marque` varchar(255) NOT NULL,
  `Taille` int(11) NOT NULL,
  `Prix` float NOT NULL,
  `Quantite` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ID_proprio` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vetements`
--

INSERT INTO `vetements` (`ID`, `Sexe`, `Type`, `Couleur`, `Marque`, `Taille`, `Prix`, `Quantite`, `Image`, `ID_proprio`) VALUES
(2001, 'Femme', 'Robe', 'Rouge', 'Tara Jarmon', 38, 50, 2, 'imgarticle\\Vetements\\roberougefemme.jpg', 7001),
(2002, 'Femme', 'Pantalon', 'Kaki', 'ASOS', 36, 15, 4, 'imgarticle\\Vetements\\pantakifemme.jpg', 7002),
(2003, 'Homme', 'Pull, Gilet, Sweat', 'Noir', 'Tommy Hilfiger', 38, 30, 4, 'imgarticle\\Vetements\\pulltommyhilfigerhomme.jpg', 2002),
(2004, 'Homme', 'Chemise', 'Blanc a carreaux', 'Kuson', 42, 49, 5, 'imgarticle\\Vetements\\chemisecareauxhomme.jpg', 2005),
(2005, 'Bebe', 'Gigoteuse', 'Rayee bleu et blanc', 'Petit Bateau', 24, 55, 10, 'imgarticle\\Vetements\\gigoteuse.jpg', 2001),
(2006, 'Mixte', 'Chaussons mixte enfant', 'Rouge', 'Playshoes', 5, 14, 3, 'imgarticle\\Vetements\\chaussonsenfants.jpg', 2002);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
