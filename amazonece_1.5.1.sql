-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 05 mai 2019 à 17:54
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
  `NumCarte` bigint(8) NOT NULL,
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
(1001, 'Lamaire', 'Michel', 'lamaire.michel@gmail.com', 'bip01', '1 rue du peuplier', '', 'Paris', 'France', 78180, 'Visa', 26584151, 'Lamaire Michel', 07, 2024, 113, 0652585768, 'lamaire.michel@gmail.com', 'monpaypal'),
(1002, 'Benart', 'Theo', 'benart.theo@gmail.com', 'bonjour', '20 boulevard Sables', '', 'Marseille', 'France', 13006, 'Visa', 26878922, 'Crustace Ariel', 03, 2026, 565, 0625459871, 'benart.theo@gmail.com', '12345678'),
(1003, 'Hilton', 'Paris', 'parishilton@gmail.com', 'star03', '', '', '', '', 0, 'Visa ', 323265563, 'Paris Hilton', 11, 2026, 456, 0652585768, 'toast@gmail.com', 'david78945'),
(1004, 'Gami', 'Shini', 'shinigami@gmail.com', 'bip04', '8 avenue des Cieux ', '', 'Saint-Michel', 'Paradis', 13001, 'American Express', 0, 'Gaetan Lajeune', 11, 2026, 111, 0145253656, 'kokko@gmail.com', 'azertyuiop'),
(1005, 'Theo ', 'Fitz ', 'bonjour@hotmail.com', 'bol0102', '87 rue des ascenseurs', 'Batiment D', 'Tokyo', 'Japon', 28777, 'Visa', 236598, 'Romeo Benjamin ', 02, 2022, 666, 0678561214, 'smash@gmail.com', 'falconpunch'),
(1006, 'Loganesque', 'Max', 'maxi@gmail.com', 'maxime', '57boulevard baille', '', 'Marseille', 'France', 13006, '', 0, '', 00, 0, 0, 0658576954, '', '');

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
  `ID_Proprio` int(11) NOT NULL,
  `Vente` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3989 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`ID`, `Auteur`, `Titre`, `Collection`, `DateParution`, `Genre`, `Support`, `Langue`, `Description`, `Prix`, `Longueur`, `Largeur`, `Hauteur`, `Poids`, `Quantite`, `Image`, `ID_Proprio`, `Vente`) VALUES
(3001, 'Erin HUNTER', 'La Guerre des Clans - Tome 1: Retour a l etat sauvage', 'Pocket Jeunesse', '2007-03-15', 'Livres anglais et etrangers', 'Papier', 'Anglais, Francais', 'Depuis des generations, fideles aux lois de leurs ancetres, quatre clans de chats sauvages se partagent la foret. Mais le Clan du Tonnerre court un grave danger, et les sinistres guerriers de l Ombre sont de plus en plus puissants. En s aventurant un jour dans les bois, Rusty, petit chat domestique, est loin de se douter qu il deviendra bientot le plus valeureux des guerriers.\r\n\r\nUn mot de l\'auteur\r\n\r\nPour ecrire La guerre des clans, Erin Hunter puise son inspiration dans son amour des chats et du monde sauvage. Erin est une fidele protectrice de la nature. Elle aime par dessus tout expliquer le comportement animal grace aux mythologies, a l\'astrologie, et aux pierres levees.', 7.5, 10.9, 17.5, 2.3, 2, 10, 'imgarticle/Livres/laguerredesclans.jpg', 2001, 10),
(3002, 'Future Press', 'Sekiro Shadows Die Twice, Official Game Guide', 'Future Press Verlag und Marketing GmbH', '2019-04-01', 'Livres anglais et etrangers', 'Papier', 'Anglais', 'Get Ready for the Fight of Your Life\r\n\r\nSEKIRO: SHADOWS DIE TWICE is a true shinobi experience if you re not devious, patient and above all masterful, you ll almost certainly be cut down. Fear not, as Future Press have crafted a guide that makes the path to mastery clear. Sekiro s opponents are so ferocious and unyielding that defeating them in any form will take practice and dedication; beating them flawlessly requires shinobi skills that this book is designed to teach you: consider it the ultimate Esoteric Text.', 39.21, 28, 3, 22, 500, 10, 'imgarticle/Livres/seikiko.jpg', 2001, 25),
(3003, 'Antoine de Saint-Exupéry', 'Le petit prince Poche', 'Folio Junior', '2007-03-15', 'Scolaire et Parascolaire', 'CD', 'Francais', 'Description du produit\r\nPresentation de l\'editeur\r\nLe premier soir, je me suis donc endormi sur le sable a mille milles de toute terre habitee. J etais bien plus isole qu\'un naufrage sur un radeau au milieu de l\'ocean. Alors, vous imaginez ma surprise, au lever du jour, quand une drole de petite voix m\'a reveille. Elle disait : S il vous plaît. dessine-moi un mouton ! J ai bien regardé. Et j\'ai vu ce petit bonhomme tout a fait extraordinaire qui me considérait gravement.\r\n', 16.23, 12, 17, 0.6, 50, 5, 'imgarticle/Livres/petitprince.jpg', 2002, 55),
(3004, 'Patricia Lentini,  Dirk Zeller', 'Bien gerer son temps pour les nuls', 'Lizzie', '2019-07-08', 'Scolaire et Parascolaire', 'Livre Audio', 'Français', 'Ne perdez plus votre temps !\r\n\r\nVous avez besoin d\'aide pour gerer votre temps ? Vous n arrivez pas à organiser votre emploi du temps entre travail et maison ? Vous avez l\'impression qu il n y a pas assez d heures dans une journée ? Relax ! Bien gerer son temps pour les nuls vous offre des solutions pratiques pour vous organiser, travailler mieux et plus vite, reduire le stress et vous debarrasser des distractions qui vous font perdre votre temps. Vous decouvrirez comment ne plus avoir à rester tard au bureau et passer plus de temps avec votre famille, vos amis et avec vous-même !', 0, 27, 0.4, 30, 40, 2, 'imgarticle/Livres/nuls.jpg', 2003, 89),
(3510, 'Paul watzlawick ', 'Comment reussir a echouer ', 'Essais', '2005-05-05', 'Psychologie', '', 'Anglais', 'Vous en avez marre d echouer a echouer vos objectifs ? grace a ce petit guide la reussite de vos echecs devient possible ! ', 7.52, 1, 1, 1, 1, 5, 'imgarticle/Livres/reussiraechouer.jpg', 2001, 78),
(3745, 'William  shakespeare', 'Hamlet', 'Librio', '2000-10-13', 'Theatre', '', 'Anglais', 'L histoire tragique du prince du danemark hamlet, plus longue piece  de l ecrivain ', 2.1, 1, 1, 1, 1, 10, 'imgarticle/Livres/hamlet.jpg', 2002, 45),
(3783, 'Sadamoto yoshiyuki', 'Neon genesis evangelion tome 1', 'Glenat', '1995-10-17', 'Manga', 'Papier', 'Anglais', 'Adaptation de l anime culte evangelion de 1995 ', 11, 1, 1, 1, 1, 5, 'imgarticle/Livres/evangelion.jpg', 2003, 89),
(3938, 'Go nagai', 'Devilman integrale collector 500 exemplaires', 'Black edition', '2010-03-01', 'Manga', 'Papier', 'Francais', 'L integrale du manga devilman ! un classique que vous devez absolument lire. 500 exemplaires uniquement', 80.99, 1, 1, 1, 1, 1, 'imgarticle/Livres/devilman.jpg', 2004, 78),
(3851, 'Akira toriyama', 'Dragon ball z tome 42', 'Glenat', '2000-10-13', 'Manga', 'Papier', 'Francais', 'Dernier tome de dragon ball. l ultime combat contre buu', 9, 1, 1, 1, 1, 5, 'imgarticle/Livres/dragonball.jpg', 2004, 12),
(3425, 'Carl gustav jung ', 'Dialectique du moi et de l inconscient', 'Folio essai ', '1933-05-05', 'Psychologie analytique', 'Papier', 'Francais', 'Livre regroupant les principes de carl gustav jung : anima, animus, soi et mana', 8, 1, 1, 1, 2, 10, 'imgarticle/Livres/dialectique.jpg', 2001, 78),
(3252, 'Tolkien ', 'Le seigneur des anneaux', 'Pocket', '2010-03-01', 'Heroic fantasy ', 'Papier', 'Anglais', 'L integrale du seigneur des anneaux, plusieurs heures de lecture pour vous !  un classique ', 15, 2, 2, 2, 3, 5, 'imgarticle/Livres/seigneurdesanneaux.jpg', 2002, 99),
(3345, 'Nicolas machievel ', 'Le prince', 'Librio ', '1532-01-01', 'Fiction historique', 'Ebook', 'Francais', 'Traite de philosophie', 2, 1, 1, 2, 2, 1, 'imgarticle/Livres/leprince.jpg', 2003, 2),
(3738, 'Isaac asimov ', 'Fondation et empire ', 'Folio sf ', '1952-01-01', 'Science fiction', 'Papier', 'Anglais', 'Deuxieme tome du cycle de fondation ', 3, 1, 1, 1, 1, 2, 'imgarticle/Livres/fondationetempire.jpg', 2002, 0),
(3207, 'Maupassant', 'Bel ami', 'Livre de poche', '1995-10-13', 'Fiction', 'Papier', 'Francais', 'Bel ami ou la progression dans la hierarchie dun homme simple ', 3, 1, 1, 1, 1, 2, 'imgarticle/Livres/belami.jpg', 2004, 0),
(3515, 'Sun tzu', 'L art de la guerre', 'Champs classiques ', '2007-07-03', 'Philosophie', 'Papier', 'Anglais', 'Petit traite pratique de la philosophie guerriere de la chine ', 5, 1, 1, 1, 1, 7, 'imgarticle/Livres/artguerre.jpg', 2001, 0),
(3313, 'Orwell', '1984', 'Pocket jeunesse', '2001-01-01', 'Science fiction', 'Ebook', 'Anglais', 'Une dystopie qui devient realite ', 15.82, 1, 1, 1, 1, 2, 'imgarticle/Livres/1984.jpg', 2001, 0);

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
  `ID_Proprio` int(11) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Vente` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `musiques`
--

INSERT INTO `musiques` (`ID`, `Titre`, `Artiste`, `Compositeur`, `Style`, `Annee`, `Support`, `Album`, `Description`, `Prix`, `Quantite`, `Image`, `ID_Proprio`, `Video`, `Vente`) VALUES
(4001, 'Stupeflip', 'Stupeflip', 'Stupeflip', 'Punk, Rock, Rap', '2003-05-24', 'CD', 'Stupeflip', 'Premiere ere du stup.', 8.7, 0, 'imgarticle/Musiques/stupeflip.jpeg.jpg', 2002, '', 0),
(4002, 'Black Sabbath', 'Black Sabbath', 'Black Sabbath', 'Metal', '1970-01-01', 'Vinyle', 'Black Sabbath', 'Fondateur du metal.\r\nI am Iron Man!!', 35, 1, 'imgarticle/Musiques/black_sabbath.jpg', 2002, 'vidarticle/Musiques/blacksab.mp4', 1),
(4003, 'Best Of Celine Dion (Coffret)', 'Celine Dion', 'Celine Dion', 'Musique française', '2009-11-23', 'CD', 'Best Of Celine Dion (Coffret)', 'L\'une des plus belle voix qui existe.', 14.99, 0, 'imgarticle/Musiques/bestofcelinedion.jpg', 2003, '', 0),
(4004, 'Shanking Shoes', 'Naaman', 'Naaman', 'Reggae', '2013-06-21', 'Telechargement', 'Deep Rockers: Back a Yard', 'Skanking Shoes est le premier hit de Naaman et sans doute son plus gros à ce jour. En 2012, un jeune Normand débarque de nulle part et prend tout le monde de court avec une mixtape qui se propage comme une traînee de poudre dans l\'Hexagone. Deep Rockers regroupe dix titres produits par Fatbabs essentiellement à base de samples. ', 1, 9, 'imgarticle/Musiques/naaman.jpg', 2004, 'vidarticle/Musiques/shanking.mp4', 0),
(4005, 'Hair of the dog ', 'Nazareth ', 'Nazareth ', 'Heavy Metal ', '1975-04-05', 'Telechargement', 'Hair of the dog ', 'Hair of the Dog est le sixieme album studio du groupe écossais Nazareth, sorti le 05 avril 1975.', 6.99, 3, 'imgarticle/Musiques/hairofthedog.jpg', 2005, 'vidarticle/Musiques/hairofthedog.mp4', 0),
(4006, 'Romeo et Juliette, de la haine a l amour ', 'Damien Sargue', 'Damien Sargue', 'Comedie musical ', '2010-01-05', 'CD', 'Romeo et Juliette, de la haine a l amour', 'Album regroupant les chansons de la comedie musicale \" Romeo et Juliette, de la haine a l amour \"', 40.02, 1, 'imgarticle/Musiques/romeo&juliette.jpg', 2002, 'vidarticle/Musiques/romeo.mp4', 0),
(4007, 'Le bal des Laze', 'Michel Polnareff', 'Michel Polnareff ', 'Pop Baroque', '1968-08-23', 'Vinyle', 'Le bal des Laze', 'D apres la legende, entretenue dans son livre Polnareff par Polnareff, Michel Polnareff aurait exige d\'enregistrer la chanson titre de cet album dans un studio ou brulaient cinq mille bougies, pour obtenir une ambiance d eglise. Selon le chanteur, il y en avait toutefois un peu moins que ce total.', 26, 0, 'imgarticle/Musiques/lebaldeslaze.jpg', 2004, '', 0),
(4010, 'Through the Fire and Flames', 'Dragon Force ', 'Dragon Force ', 'Extreme power metal  ', '2003-06-08', 'Telechargement', 'Inhuman Rampage ', 'Cette chanson figure dans le jeu vidéo Guitar Hero III: Legends of Rock : elle est consideree comme l\'une des chansons les plus longues et les plus difficiles à jouer en raison du grand nombre de notes (3 722 notes) et de son importante rapidite. \r\nDuree: 7.23mn', 0.5, 4, 'imgarticle/Musiques/throughthefireandflames.jpg', 2005, '', 3),
(4008, 'One Winged Angel ', 'Square Enix', 'Nobuo Uematsu ', 'OST', '1997-10-16', 'Telechargement', 'Final Fantasy 7 OST', 'Theme mythique du combat final contre Sephiroth ! ', 0.35, 3, 'imgarticle/Musiques/finalfantasy7.jpg', 2005, '', 0),
(4009, 'Liberi Fatali ', 'Square Enix', 'Nobuo Uematsu', 'OST', '1999-05-22', 'Telechargement', 'Final Fantasy 8 OST', 'Musique d\'ouverture de final fantasy 8. Une scene mythique pour une romance magique.', 0.25, 2, 'imgarticle/Musiques/finalfantasy8.jpg', 2002, '', 89),
(4437, 'Smash bros brawl ', 'Nobuo uematsu', 'Nobuo uematsu', 'Ost', '2008-07-03', 'Telechargement', 'Smash bros brawl ost ', 'L opening mythique de super smash bros brawl wii ', 15, 13, 'imgarticle/Musiques/smash.jpg', 2002, 'vidarticle/Musiques/smash.mp4', 0),
(4739, 'Fatal bazooka ta vu ?', 'Fatal bazooka', 'FAtal bazooka', 'Rap ', '2003-05-01', 'Cd', 'Ta vu ?', 'Album avec le mythique fous ta cagoule du grand rappeur fatal ', 20, 1, 'imgarticle/Musiques/fatal.jpg', 2003, 'vidarticle/Musiques/fatal.mp4', 0),
(4877, 'Carmen vinyle', 'Georges bizet', 'Georges bizet', 'Classique ', '1875-03-01', 'Vinyle', 'Carmen', 'Le celebre opera de bizet sur un support vinyle ', 20, 10, 'imgarticle/Musiques/carmen.jpg', 2003, 'vidarticle/Musiques/carmen.mp4', 0),
(4430, 'Manau - la tribu', 'MANAU', 'MANAU', 'Rap', '1998-01-01', 'Telechargement', 'La tribu ', 'Rap breton. Vive la bretagne', 1.22, 1, 'imgarticle/Musiques/latribudedana.jpg', 2001, 'vidarticle/Musiques/manau.mp4', 0),
(4656, 'Iam le mia ', 'IAM', 'IAM', 'Rap', '1993-01-01', 'Cd', 'Ombre est lumiere', 'Je danse le mia ', 15, 10, 'imgarticle/Musiques/ombre.jpg', 2003, 'vidarticle/Musiques/mia.mp4', 0),
(4968, 'Reefer madness ', 'Ghostlight', 'Ghoslit records', 'Comedie musicale', '2005-01-01', 'Telechargement', 'Reefer madness ost', 'Comedie musicale sur les dangers du cannabis ', 1.05, 1, 'imgarticle/Musiques/reefermadnessjpg.jpg', 2001, 'vidarticle/Musiques/reefermadness.mp4', 0);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `IDAcheteur` int(10) NOT NULL,
  `IDArticle` int(4) NOT NULL,
  `QAchetee` int(11) NOT NULL,
  PRIMARY KEY (`IDArticle`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sports`
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL,
  `Objet` varchar(255) NOT NULL,
  `Age` float NOT NULL,
  `Marque` varchar(255) NOT NULL,
  `Saison` varchar(255) NOT NULL,
  `Poids` float NOT NULL,
  `Prix` float NOT NULL,
  `Quantite` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ID_Proprio` int(11) NOT NULL,
  `Video` varchar(255) NOT NULL,
  `Vente` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6916 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sports`
--

INSERT INTO `sports` (`ID`, `Type`, `Objet`, `Age`, `Marque`, `Saison`, `Poids`, `Prix`, `Quantite`, `Image`, `ID_Proprio`, `Video`, `Vente`) VALUES
(6001, 'Des abdos en beton avant l ete grace a notre produit ', 'Roue abdominale', 16, 'Adidas', 'All', 1, 14.5, 7, 'imgarticle/Sports/ROUEADBO.jpg', 2001, '', 1),
(6002, 'Parfait pour surveiller sa forme', 'Podometre', 16, 'HETP', 'All', 20, 60, 2, 'imgarticle/Sports/montreconnectee.jpg', 2002, '', 2),
(6484, 'Une balle officielle pour jouer au baseball', 'Balle baseball', 7, 'Casal sport', 'Ete', 1, 15, 30, 'imgarticle/Sports/balle.jpg', 2001, '', 13),
(6699, 'Set parfait pour un debutant', 'Haltere 10 kilos', 22, 'Domyos', 'All', 12, 18, 7, 'imgarticle/Sports/halterejpg.jpg', 2003, '', 0),
(6910, 'De quoi travailler bras le dos et les abdos ! parfait pour la plage', 'Training station 9000', 20, 'Domyos', 'Ete', 100, 175.97, 2, 'imgarticle/Sports/training.jpg', 2004, 'vidarticle/Sports/trainingstation.mp4', 0),
(6609, 'Cette batte en aluminium est parfaite pour jouer.', 'Superbe batte de baseball', 5, 'Casal sport', 'Printemps ', 2, 30.33, 9, 'imgarticle/Sports/batte.jpg', 2003, '', 18),
(6606, 'Superbe ballon de basket adidas ', 'Ballon de basket', 3, 'Adidas', 'All', 2, 8, 7, 'imgarticle/Sports/basket.jpg', 2005, '', 0),
(6319, 'De la magnesie pour avoir une meilleure prise et soulever plus lourd ', 'Magnesie', 1, 'Myprot', 'All', 1, 30, 2, 'imgarticle/Sports/magnesie.jpg', 2005, 'vidarticle/Sports/', 0),
(6519, 'Superbe roller pour vos pieds !!', 'Roller', 1, 'Skate pro ', 'All', 2, 30, 5, 'imgarticle/Sports/roller.jpg', 2005, 'vidarticle/Sports/', 0),
(6272, 'Barre olympique reglementaire de 20 kilos', 'Barre olympique', 20, 'GorillazBar ', 'Ete', 20, 100.98, 2, 'imgarticle/Sports/olympique.jpg', 2001, 'vidarticle/Sports/', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vendeurs`
--

DROP TABLE IF EXISTS `vendeurs`;
CREATE TABLE IF NOT EXISTS `vendeurs` (
  `ID_Proprio` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ImageFond` varchar(255) NOT NULL,
  `Nbitems` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Proprio`)
) ENGINE=MyISAM AUTO_INCREMENT=12348 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vendeurs`
--

INSERT INTO `vendeurs` (`ID_Proprio`, `Nom`, `Prenom`, `Image`, `ImageFond`, `Nbitems`, `Email`) VALUES
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
  `ID_Proprio` int(11) NOT NULL,
  `Vente` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5840 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vetements`
--

INSERT INTO `vetements` (`ID`, `Sexe`, `Type`, `Couleur`, `Marque`, `Taille`, `Prix`, `Quantite`, `Image`, `ID_Proprio`, `Vente`) VALUES
(5001, 'Femme', 'Robe', 'Rouge', 'Tara Jarmon', 38, 50, 2, 'imgarticle/Vetements/roberougefemme.jpg', 2001, 3),
(5002, 'Femme', 'Pantalon', 'Kaki', 'ASOS', 36, 15, 4, 'imgarticle/Vetements/pantakifemme.jpg', 2002, 55),
(5003, 'Homme', 'Pull, Gilet, Sweat', 'Noir', 'Tommy Hilfiger', 38, 30, 4, 'imgarticle/Vetements/pulltommyhilfigerhomme.jpg', 2001, 75),
(5004, 'Homme', 'Chemise', 'Blanc a carreaux', 'Kuson', 42, 49.23, 5, 'imgarticle/Vetements/chemisecareauxhomme.jpg', 2003, 89),
(5005, 'Bebe', 'Gigoteuse', 'Rayee bleu et blanc', 'Petit Bateau', 24, 55, 10, 'imgarticle/Vetements/gigoteuse.jpg', 2004, 101),
(5444, 'Homme', 'Basket nike terminator', 'gris', 'Nike', 43, 120.33, 5, 'imgarticle/Vetements/niketerminator.jpg', 2003, 0),
(5371, 'Femme', 'Culotte bleu', 'bleu', 'Etam', 36, 20, 1, 'imgarticle/Vetements/culottebleu.jpg', 2002, 0),
(5674, 'Femme', 'Jupe pimkie', 'Bordeaux', 'Pimkie', 38, 35.23, 3, 'imgarticle/Vetements/jupepimkie.JPG', 2002, 0),
(5740, 'Homme', 'Cravate sourire', 'Jaune noir', '', 170, 2, 15, 'imgarticle/Vetements/cravate.jpg', 2001, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
