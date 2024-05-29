-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 27 fév. 2024 à 13:36
-- Version du serveur : 5.7.40
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lotr_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `race` varchar(25) NOT NULL,
  `url_picture` varchar(250) NOT NULL,
  `character_description` varchar(1200) NOT NULL,
  `character_title` varchar(50) NOT NULL,
  `weapon` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `last_name`, `first_name`, `surname`, `race`, `url_picture`, `character_description`, `character_title`, `weapon`) VALUES
(1, 'Sacquet', 'Frodon', 'Soucolline', 'Hobbit', 'https://i.pinimg.com/564x/eb/d4/e9/ebd4e9af6e99612304a8d4a9fcad747f.jpg', 'Sa mission est de transporter un anneau maléfique, appelé Anneau Unique, jusqu\'à Orodruin, la Montagne du Destin située en Mordor, pour le détruire, car son créateur, le Maia Sauron, veut l\'utiliser pour soumettre tous les peuples libres de la Terre du Milieu à sa volonté. Il fait donc partie de la Communauté de l\'Anneau. ', 'Amis des Elfes', 'Dard'),
(3, '', 'Aragorn', 'Grands-pas', 'Homme', 'https://i.pinimg.com/564x/07/9c/df/079cdf2053073fab81d9259a2cf30258.jpg', 'Aragorn est fils d&#39;Arathorn et de Gilraen, petit-fils d&#39;Arador. Avant la Guerre de l&#39;Anneau, il est le chef des Rôdeurs du Nord, surnommé Grand-Pas. En tant que descendant d&#39;Isildur ainsi que d&#39;Anárion, il est l&#39;héritier des trônes d&#39;Arnor et de Gondor. En tant que descendant des Rois de Númenor, une vie plus longue lui est accordée : il ne mourra qu&#39;à l&#39;âge de 210 ans. Il est appelé Dúnadan par les Elfes, ce qui signifie &#34;Homme de l&#39;Ouest&#34; ou &#34;Numénoréen&#34; en elfique (Dun-Adan). ', 'Roi d&#39;Arnor et de Gondor', 'Narsil - Andúril '),
(4, '', 'Legolas', ' Legolas des Neuf Marcheurs', 'Elfe', 'https://i.pinimg.com/564x/07/a3/d6/07a3d6cd10a8344a4627afc17382ee0f.jpg', 'Legolas Vertefeuille est un Elfe Sinda, qui faisait partie de la Communauté de l\'Anneau, au Troisième Âge. Fils du roi elfe Thranduil, du Royaume Sylvestre, dont il est le prince, un messager et un valeureux guerrier. Avec sa vue perçante, son ouïe sensible et son excellente maîtrise de l\'arc, Legolas a été précieux pour la Communauté durant la Quête de l\'Anneau à travers la Terre du Milieu. Il était bien connu pour être devenu ami avec le nain Gimli, malgré leurs différences de longue date. ', 'Prince des Elfes Sylvains', 'Arc des Galadhrim'),
(5, '', 'Gimli', 'Ami des Elfes', 'Nain', 'https://i.pinimg.com/564x/e7/f8/57/e7f8575299dd54a8ebd3eed0db2699eb.jpg', 'Gimli est un Nain, un des protagonistes du Seigneur des anneaux de J. R. R. Tolkien. Nain, fils de Glóin, il fait partie de la Communauté de l\'Anneau. ', ' Seigneur des Cavernes Étincelantes', 'Hache'),
(6, '', 'Boromir', 'Le Brave', 'Homme', 'https://i.pinimg.com/564x/97/f6/fa/97f6fa1e0e271a57f5339a1fa3a7bce6.jpg', 'Boromir est un Homme vivant au Troisième Âge de la Terre du Milieu. Il est le fils de l\'intendant Denethor II ainsi qu\'un membre de la Communauté de l\'Anneau. ', 'Capitaine du Gondor ', 'Épée'),
(7, 'Gamegie', 'Samsagace', 'Sam Jardinier', 'Hobbit', 'https://www.g33kmania.com/wp-content/uploads/LOTR-Sam.jpg', 'Samsagace Gamegie, dit Sam,  né en l\'an 2980 du Troisième Âge, est le fils de Hamfast « l\'Ancien », un respectable Hobbit, et le jardinier de Frodon Sacquet. ', ' Maire de Grand\'Cave', 'Dague de l’Occidentale '),
(8, 'Brandebouc', 'Meriadoc', 'Merry', 'Hobbit', 'https://i.pinimg.com/564x/ad/dd/aa/adddaa67a97c9ad84c257fcd4e94b53e.jpg', 'Meriadioc Brandebouc dit le Magnifique, ou Merry pour les intimes, est un Hobbit de la Comté. Il est l\'un des neuf Marcheurs de la Communauté de l\'Anneau et, avec Éowyn, accomplit l\'acte héroïque de terrasser le Seigneur des Nazgûls lors de la Bataille des Champs du Pelennor. ', 'Grand Maitre du Pays-de-Bouc', 'Dague de l’Occidentale'),
(9, 'Touque', 'Peregrin', 'Pippin', 'Hobbit', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0a/Pippinprintscreen.jpg/170px-Pippinprintscreen.jpg', 'Peregrin Touque, dit Pippin ou Pip, est un hobbit de la Comté et l\'un des neuf marcheurs de la Communauté de l\'Anneau. Il est d\'un naturel gaffeur, mais sait se montrer étonnamment sérieux lorsque les circonstances l\'exigent. ', ' Garde de la Citadelle de Minas Tirith', 'Dague de l’Occidentale'),
(10, '', 'Gollum', '', 'Hobbit', 'https://i.pinimg.com/564x/8a/44/3d/8a443df47641adee7391a590a3a9e698.jpg', 'Né vers 2440 TA, Gollum est à l\'origine un Hobbit. Il était autrefois dénommé Sméagol, issu de la branche des Forts, qui vivait sur les berges de l\'Anduin, près des Champs aux Iris. ', 'Tapis', 'Ses sales dents'),
(11, '', 'Saroumane', 'Le Sage', 'Maiar', 'https://i.pinimg.com/564x/54/23/f8/5423f8c84e8326c6becfb39ff44a01a0.jpg', 'Saroumane (\"Homme habile\" en langage commun) le Blanc, Curumo (en quenya) ou Curunír (en sindarin) pour les Eldar, plus tard appelé Sharcoux (\"Vieil Homme\" en langage vulgaire) par ses vauriens dans la Comté, vit en Isengard. Il est le chef des Istari, les magiciens envoyés en Terre du Milieu par les Valar, sous une forme humaine pour lutter contre Sauron. C\'est à l\'origine un Maiar d\'Aulë, tout comme Sauron. Il est même considéré comme plus puissant que Gandalf avant qu\'il ne soit déchu. Il a en effet battu ce dernier lors d\'un duel mais après la résurrection de Gandalf le Gris en Gandalf le Blanc, ce dernier détruira le bâton de Saroumane et le renverra de l’Ordre des Istari ainsi que du Conseil Blanc. ', ' Chef des Istari ', 'Bâton magique en métal'),
(12, '', 'Éomer', 'Éadig', 'Homme', 'https://i.pinimg.com/564x/cc/57/6b/cc576b8cd3c142261279ddfdc4c863fd.jpg', 'Éomer, fils d\'Éomund, était un Rohirrim. À l\'époque de la Guerre de l\'Anneau, il était troisième maréchal de la Marche, puis, après la mort de Théoden, il devint le dix-huitième Roi du Rohan, le premier de la troisième lignée. ', 'Roi du Rohan', 'Gúthwinë'),
(13, '', 'Théoden', ' Turac', 'Homme', 'https://i.pinimg.com/564x/7c/98/7b/7c987bf0c7d163e4c7c7926fda7a703e.jpg', 'Théoden était le dix-septième Roi du Rohan, à l\'époque de la Guerre de l\'Anneau à la fin du Troisième Âge, le dernier de la deuxième lignée, descendant d\'Eorl. Il joua un rôle majeur lors de la victoire de la Bataille des Champs du Pelennor. ', ' Roi du Rohan', ' Herugrim'),
(14, '', 'Faramir', '', 'Homme', 'https://i0.wp.com/grapevine.is/wp-content/uploads/2019/10/d7708510cac90ab02c5830f27562ec9e.jpg?fit=2048%2C1360&quality=99&ssl=1', 'Faramir est le second fils de Denethor et le frère de Boromir. Il est né en 2983 du Troisième Âge. Il occupe le poste de capitaine de la Tour Blanche (au Gondor) comme son frère, décédé. ', ' Capitaine des Rôdeurs d\'Ithilien', 'Epée'),
(15, '', 'Éowyn', 'Dernhelm', 'Homme', 'https://i.pinimg.com/564x/5b/9c/85/5b9c8577ed121ea89f18686f702ea7b7.jpg', 'Éowyn était la demoiselle protectrice du Rohan, et la soeur d\'Éomer.  Elle est connue pour son acte héroïque, lors de la Bataille des Champs du Pelennor, au cours duquel elle fit tomber le Roi-Sorcier, avec l’aide de Meriadoc Brandebouc. ', 'Damoiselle protectrice du Rohan', 'Epée'),
(16, '', 'Sylvebarbe', ' Fangorn ', 'Ent', 'https://i.pinimg.com/564x/6e/b3/46/6eb346bda37573b60a289d1f62c9183b.jpg', 'Sylvebarbe, parfois appelé Fangorn, est un Ent gardien de la Forêt de Fangorn. Gandalf indique qu\'il est l\'un des êtres les plus âgés de la Terre du Milieu encore en vie. Il se souvient encore de lorsque toutes les forêts n\'en formaient qu\'une et que les écureuils pouvaient aller d\'arbre en arbre et traverser toute la Terre du Milieu. C\'est de l\'âge avant la Grande Colère dont Sylvebarbe parlait. ', 'Gardien des arbres', ''),
(17, '', 'Grima', ' Langue de Serpent', 'Homme', 'https://i.pinimg.com/564x/7a/16/6c/7a166cb11c998c6a569a7ea6749692c0.jpg', 'Gríma, surnommé \"Langue de Serpent\" (Wormtongue), est un homme du peuple des Rohirrim et proche conseiller du roi Théoden de Rohan, qu\'il trahit au profit du mage Saroumane. Grima est flatteur, menteur, et manipulateur. ', 'Conseiller de Théoden, espion de Saroumane', ''),
(18, '', 'Haldir', '', 'Elfe', 'https://i.pinimg.com/564x/49/9b/db/499bdbb94c473e4fc3858a3312c6b95c.jpg', 'Haldir est un Elfe du peuple des Galadhrim, les habitants de la Lothlórien, qui guida les membres de la Communauté de l\'Anneau jusqu\'au Royaume de Galadriel. Au premier contact de la Communauté de l\'Anneau, Haldir s\'est montré très circonspect vis-à-vis de Gimli, montrant l\'animosité séparant les deux races. Malgré tout, il a consenti à le faire entrer en Lorién sous la pression d\'Aragorn. Il meurt dans la bataille du Gouffre de Helm. ', '', ' Arc/Epée'),
(19, '', 'Elrond', ' Le Semi-Elfe', 'Elfe', 'https://i.pinimg.com/564x/34/40/ca/3440ca1342a4f298e7cde9b1e3b8b9f3.jpg', 'Elrond Peredhel est un Demi-elfe et Seigneur de Fondcombe. Il est un puissant seigneur elfe de la Terre du Milieu des Deuxième et Troisième Âges. Il est le père d\'Elladan, Elrohir et Arwen Undómiel, qui épouse Aragorn II Elessar. ', 'Seigneur de Fondcombe', 'Vilya (Anneau de l\'air)'),
(20, '', 'Galadriel', 'Dame des bois', 'Elfe', 'https://i.pinimg.com/736x/c4/fc/17/c4fc174a06bac30cf29e31f1ada539f7.jpg', 'Galadriel est la dame des bois de Lothlórien, qu\'elle gouverne avec Celeborn. J. R. R. Tolkien la considère comme l\'une des plus grandes elfes de la Terre du Milieu, car elle les surpasse tous en beauté, en sagesse et en puissance, à part peut-être Fëanor. Elle a en sa possession Nenya, l\'un des trois anneaux de pouvoir elfiques. ', 'Dame de Lórien', 'Fiole de Galadriel'),
(21, '', 'Arwen', ' Étoile du Soir', 'Elfe', 'https://i.pinimg.com/564x/47/56/86/475686a455bb85d8bded78ea6fa99046.jpg', 'Arwen Undómiel est une Elfe Peredhel (&#34;Peredhel&#34; signifiant &#34;Semi-Elfe&#34;), fille d&#39;Elrond et de Celebrían, et petite-fille de Galadriel. Son ascendance, à travers celle de son père, regroupe une partie des grandes maisons Elfes Noldorines et Sindarines du Premier Âge, ainsi que les plus grandes maisons des Edains (les Hommes qui se sont alliés aux Elfes dans leur guerre contre Morgoth au Premier Âge). Ses ancêtres comptent notamment : Turgon, Elu Thingol, Melian, Galadriel, Beren Erchamion et Tuor. De ce fait, Arwen est descendante de Lúthien Tinuviel et est appelée Evenstar, l&#39;Étoile du Soir de son peuple. ', 'Dame de Fondcombe', ' Hadhafang'),
(22, '', 'Denethor II', '', 'Homme', 'https://i.pinimg.com/564x/ad/ee/7b/adee7babf5dffbf5b937d6f8b4e6ef2d.jpg', 'Denethor est le vingt-sixième et avant-dernier Intendant souverain du royaume du Gondor, le père de Boromir et de Faramir. Il organise la résistance du Gondor contre les armées du Mordor, mais à cause de son utilisation du palantír de Minas Tirith, en lien avec celui de Minas Ithil, il se désespère de remporter la victoire. ', ' Intendant du Gondor', ''),
(23, 'Sacquet', 'Bilbon', ' M. Sacquet', 'Hobbit', 'https://i.pinimg.com/564x/bb/a2/9b/bba29b63a35c9af148d13ddd5bb6c18a.jpg', 'Bilbon Sacquet est un Hobbit de la Comté, et personnage principal du roman Bilbo le Hobbit et de son adaptation en film. Il est l\'un des membres de la Compagnie de Thorin, ainsi que l\'un des porteurs de l\'Anneau Unique. Il est l’oncle de Frodon, plus exactement, son père est le cousin germain du grand-père de Frodon. ', 'Porteur d\'Anneau', 'Dard'),
(24, 'Écu de chêne', 'Thorin', ' Écu-de-Chêne', 'Nain', 'https://i.pinimg.com/564x/fa/01/16/fa0116e06d3c11f4a4f6ebe308621ca9.jpg', 'Thorin II Écu-de-Chêne est un nain, roi du Peuple de Durin en exil, fils de Thrain II et petit-fils de Thrór. C\'est un compagnon et ami de Bilbon Sacquet, avec qui il participe à la reconquête d’Erebor. ', 'Roi du Peuple de Durin', 'Orcrist '),
(25, '', 'Balin', '', 'Nain', 'https://i.pinimg.com/564x/66/35/39/663539ea7c106b324ecfa658f37d30be.jpg', 'Balin est l\'un des nains qui accompagne Thorin II Écu-de-Chêne dans sa quête pour reconquérir Erebor. ', 'Seigneur de la Moria', 'Masse'),
(26, '', 'Dwalin', '', 'Nain', 'https://64.media.tumblr.com/49a24fbf3bb048cfae667058745d4049/ffa2cfd0490ddb95-36/s540x810/c0393b4ea9fda0513699fa410226ff9796b4ed52.jpg', 'Dwalin est l\'un des nains qui compose la Compagnie de Thorin Écu-de-Chêne, et qui l\'accompagne ainsi dans sa quête pour reconquérir Erebor. ', '', ''),
(27, '', 'Kili', '', 'Nain', 'https://i.pinimg.com/564x/40/06/9f/40069fdcfa9afc589a5db964c88b144f.jpg', 'Kíli ou Kili est le petit frère de Fíli et le neveu de Thorin II Écu-de-Chêne. ', '', 'Épée '),
(28, '', 'Fili', '', 'Nain', 'https://i.pinimg.com/564x/3a/74/66/3a7466b2f68a97e913f502eae2004ebc.jpg', 'Fíli est le frère aîné de Kíli et le neveu de Thorin II Écu-de-Chêne. Il est l\'un des nains qui compose la Compagnie de Thorin. ', '', 'Épée de nain'),
(29, '', 'Oin', '', 'Nain', 'https://i.pinimg.com/564x/6e/71/76/6e7176df819e5a0f9e5e31cd172ef7ee.jpg', 'Óin est un Nain, et un des douze compagnons de Thorin II lors de l\'expédition d\'Erebor. ', '', ''),
(30, '', 'Gloin', '', 'Nain', 'https://i.pinimg.com/564x/4d/c2/dd/4dc2dd85b2acab3577b5332f2d6a51a9.jpg', 'Glóin est un Nain, et un des douze compagnons de Thorin II lors de l\'expédition d\'Erebor. Il est le père du fameux Gimli, membre de la Communauté de l\'Anneau. Il est un descendant de Durin. ', '', ' Hache'),
(31, '', 'Bifur', '', 'Nain', 'https://i.pinimg.com/originals/54/d3/18/54d3187d8914b8828354db310aec321b.jpg', 'Bifur est un Nain de la Compagnie de Thorin, ami de Bilbon, qui participe a le reconquête d’Erebor. ', '', ''),
(32, '', 'Bofur', '', 'Nain', 'https://i.pinimg.com/736x/ed/7b/c3/ed7bc31fcf1f11daaddf88a7ba23a7f9.jpg', 'Bofur est un Nain de la Compagnie de Thorin, ami de Bilbon, qui participe a le reconquête d’Erebor. ', '', ''),
(33, '', 'Bombur', '', 'Nain', 'https://i.pinimg.com/564x/0c/6b/79/0c6b79f20f3ddff2bb0ac1c16003e33d.jpg', 'Bombur est l\'un des douze Nains qui accompagne Thorin II Écu-de-Chêne (la Compagnie de Thorin) dans sa quête pour reconquérir Erebor et chasser Smaug. ', '', ''),
(34, '', 'Dori', '', 'Nain', 'https://i.pinimg.com/564x/1f/f5/5f/1ff55f866dabc4d804b0e355d4b2abd9.jpg', 'Dori est un Nain de la Compagnie de Thorin, ami de Bilbon, qui participe a le reconquête d’Erebor. ', '', ''),
(35, '', 'Nori', '', 'Nain', 'https://i.pinimg.com/564x/01/4a/bc/014abc34a33ab0e1dff69d68a722d16e.jpg', 'Nori est un Nain de la Compagnie de Thorin, ami de Bilbon, qui participe a le reconquête d’Erebor. ', '', ''),
(36, '', 'Ori', '', 'Nain', 'https://i.pinimg.com/564x/4e/6c/74/4e6c74a6efef12925432760399fce119.jpg', 'Ori est un membre de la Compagnie des Nains de Thorin et participe à la Quête d\'Erebor, ', '', ''),
(37, '', 'Smaug', '', 'Dragon', 'https://i.pinimg.com/564x/08/a8/95/08a89540d6ad94c03e7e28e810212d70.jpg', 'Smaug dit \"le Doré\" est un dragon de la progéniture des dragons de Morgoth. Après la chute de ce dernier, il quitta la Brande Desséchée, pays des dragons, pour parcourir la Terre du Milieu à la recherche d\'un trésor et d\'une cachette. ', 'Le Doré', 'Flammes'),
(38, '', 'Thranduil', '', 'Elfe', 'https://i.pinimg.com/564x/ae/0c/8b/ae0c8b2a04a9f47f15ff4c08f9d55c11.jpg', 'Thranduil Vertefeuille est un Elfe Sinda, roi du Royaume Sylvestre, et père de Legolas.  Il est le fils d\'Oropher, premier roi des elfes de la Forêt Noire au Second Âge. Il participe à ses côtés en 3434 du Deuxième Âge à la bataille de Dagorlad . Oropher y perd la vie, faisant de Thranduil le nouveau roi des elfes de Vert-Bois le Grand. ', 'Roi des Elfes Sylvains', 'Épée'),
(39, '', 'Tauriel', '', 'Elfe', 'https://i.pinimg.com/564x/31/e8/91/31e89178986388efe4569e21e8d7c89c.jpg', 'Tauriel était une Elfe des bois de la Forêt Noire et capitaine de la garde elfique du Royaume Sylvestre dont le roi était Thranduil.  Tauriel est un personnage non canonique, c’est-à-dire qui n\'a pas été inventé par J.R.R. Tolkien, mais pour la trilogie de films Le Hobbit de Peter Jackson. ', 'Capitaine de la Garde', 'Arc, dagues elfiques'),
(40, '', 'Bard', ' L\'Archer', 'Homme', 'https://i.pinimg.com/564x/ff/c4/12/ffc412a2a9f0116f8b0673063574e59b.jpg', 'Bard, aussi appelé Bard l\'Archer est un homme d\'Esgaroth et un descendant de Girion.  Il est celui qui a tué le dragon Smaug et qui a rebâti Dale, dont il devint le roi après la Bataille des Cinq Armées sous le nom de Bard Ier. ', ' Roi de Dale', 'Arc'),
(2, '', 'Gandalf', 'Mithrandir', 'Maiar', 'https://i.pinimg.com/564x/b0/ee/97/b0ee971241e3e5464466b737ba5769ca.jpg', 'Il rejoint la Compagnie de Thorin pour récupérer la Montagne Solitaire des griffes du dragon Smaug, convoque la Communauté de l\'Anneau pour détruire l\'Anneau Unique et dirige les peuples libres durant la Guerre de l\'Anneau. L’âge de Gandalf est estimé à 9 000 ans à l’époque de La Guerre de l’Anneau. ', '', 'Bâton magique en bois'),
(41, '', 'Gothmog', '', 'Orque', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/03/165855-1539812576-v1-1.jpg', 'Gothmog est le lieutenant du Roi-sorcier d\'Angmar lors de la Bataille des Champs du Pelennor. Après que ce dernier a été tué il prend le commandement des armées du Mordor. Il ne faut pas le confondre avec Gothmog, un Balrog de Morgoth. ', '\r\nLieutenant de Morgul', 'cimeterre '),
(50, '', 'Rosette', '', 'Nain', 'https://media.carrefour.fr/medias/7371a668531d3d0aa21955dac03a86f6/p_540x540/3560071009410-0.jpg', 'Ceci est de la rosette', 'Rosette', 'Gras'),
(48, 'Bon', 'Jean', 'Salami', 'Nain', 'https://im.qccdn.fr/node/guide-d-achat-jambon-blanc-3979/thumbnail_1000x600px-119710.jpg', 'Ceci est du jambon bien bon', 'Roi de la couenne', 'Cochon'),
(49, 'Mii', 'Salah', 'Salami', 'Nain', 'https://img-3.journaldesfemmes.fr/_mJH-UPh3staCqnSFdOM9ZIfXEE=/1500x/smart/91ef3d271c0b425abbc73f2e68a4ad55/ccmcms-jdf/36588167.jpg', 'Ceci est du salami bien gras', 'Le prince du salami', 'Gras'),
(42, '', 'Smeagol', '', 'Homme', 'https://usmfreepress.org/wp-content/uploads/2019/05/Screen-Shot-2019-05-03-at-5.14.56-PM.png', 'prout', '', 'ses mains');

-- --------------------------------------------------------

--
-- Structure de la table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trilogy_title` varchar(250) NOT NULL,
  `movie_title` varchar(250) NOT NULL,
  `release_date` int(11) NOT NULL,
  `realisator` varchar(50) NOT NULL,
  `movie_description` varchar(500) NOT NULL,
  `url_picture` varchar(250) NOT NULL,
  `running_time` int(11) NOT NULL,
  `cameo_picture` varchar(250) NOT NULL,
  `cameo_description` varchar(700) NOT NULL,
  `rt_score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movie`
--

INSERT INTO `movie` (`id`, `trilogy_title`, `movie_title`, `release_date`, `realisator`, `movie_description`, `url_picture`, `running_time`, `cameo_picture`, `cameo_description`, `rt_score`) VALUES
(1, 'Le Seigneur des Anneaux', 'La Communauté de l\'Anneau', 2001, 'Peter Jackson', 'Un jeune hobbit nommé Frodo Baggins est chargé de détruire un anneau maléfique. Accompagné d\'une communauté, il entreprend un voyage périlleux pour lancer l\'anneau dans les flammes de la Montagne du Destin, afin d\'empêcher le seigneur des ténèbres Sauron de plonger la Terre du Milieu dans l\'obscurité.', 'https://i.pinimg.com/564x/32/05/80/320580160144d359e33f529165b776b5.jpg', 219, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/01/jackson-fellowship.jpg?q=50&fit=crop&w=750&dpr=1.5', 'Peter Jackson fait une apparition sous le nom d\'Albert Dreary. On peut le voir lorsque les Hobbits arrivent à bree. Albert devait initialement fumer une pipe, mais Jackson est tombé malade après plusieurs prises, ce qui l\'a amené à passer à la carotte. ', 91),
(2, 'Le Seigneur des Anneaux', 'Les Deux Tours', 2002, 'Peter Jackson', 'Alors que la Communauté de l\'Anneau se sépare, Frodo et son fidèle compagnon Sam poursuivent leur quête solitaire vers le Mordor. Pendant ce temps, les autres membres de la communauté se retrouvent impliqués dans des batailles épiques contre les forces du mal, menées par le mystérieux Gollum.', 'https://i.pinimg.com/564x/a4/63/59/a463590ee388a9b7a9246d65ec4363ba.jpg', 235, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/12/lord-of-the-rings-peter-jackson-cameo-as-rohirrim-warrior-no-black-bars.jpg?q=50&fit=crop&w=750&dpr=1.5', 'Peter Jackson fait une apparition en tant qu\'un des soldats Rohirrim combattant au Gouffre de Helm. Revêtu d\'une cotte de mailles, il lance avec ferveur une lance sur les Uruk-hai attaquant depuis le haut du mur. Il réussit même à toucher sa cible et à la faire tomber.', 95),
(3, 'Le Seigneur des Anneaux', 'Le Retour du Roi', 2003, 'Peter Jackson', 'La bataille finale pour le contrôle de la Terre du Milieu approche. Frodo et Sam se rapprochent du Mont Destin, tandis que leurs amis se préparent à affronter larmée de Sauron. Des alliances inattendues se forgent et des sacrifices sont faits dans cette conclusion épique de la trilogie.', 'https://i.pinimg.com/564x/f3/27/11/f32711aedf9afb22a39218930368822e.jpg', 252, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/12/lord-of-the-rings-peter-jackson-cameo-as-corsair-no-black-bars.jpg?q=50&fit=crop&w=750&dpr=1.5', 'Le réalisateur a un rôle fugace en tant qu\'un des pirates à bord des Navires Noirs. Il apparaît dans quelques plans, agitant son arme et se tenant directement derrière le bosco de son navire. Aragorn donne à Legolas l\'ordre de tirer un coup de semonce près de l\'oreille du bosco.', 94),
(4, 'Le Hobbit', 'Un voyage innatendu', 2012, 'Peter Jackson', 'Le jeune hobbit Bilbo Baggins se lance dans une aventure extraordinaire lorsque le magicien Gandalf et treize nains le recrutent pour les aider à reconquérir leur royaume nain, Erebor, des griffes du dragon Smaug.', 'https://i.pinimg.com/564x/32/4e/91/324e9147a631f0b9a0c93f57eaa2eb26.jpg', 186, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/01/jackson-unexpected-journey.jpg?q=50&fit=crop&w=750&dpr=1.5', 'Le premier film Le Hobbit commence par un prologue qui montre l\'attaque de Smaug sur Erebor. Ainsi, l\'un des Nains fuyant l\'attaque n\'est autre qu\'un caméo de Peter Jackson. Il est difficile à reconnaitre car son nez a été agrandi avec une prothèse, accompagnée de la barbe et des sourcils nains touffus.', 64),
(5, 'Le Hobbit', 'La Désolation de Smaug', 2013, 'Peter Jackson', 'Bilbo et les nains continuent leur voyage périlleux vers Erebor, affrontant des dangers tels que les araignées géantes de la Forêt Noire et les elfes des bois menés par Legolas et Tauriel. Leur quête les conduit finalement à la confrontation avec le redoutable dragon Smaug.', 'https://i.pinimg.com/564x/2b/cc/35/2bcc35abd8d2478264d9f25cc615a927.jpg', 161, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/12/the-hobbit-peter-jackson-with-carrot-cameo-no-black-bars.jpg?q=50&fit=crop&w=750&dpr=1.5', 'De retour en Albert Dreary, il est une fois de plus surpris en train de croquer dans une carotte. Cependant, étant donné l\'écart de 77 ans entre les événements des deux trilogies, il serait un frère aîné ou un oncle du Albert Dreary original.', 75),
(6, 'Le Hobbit', 'La Bataille des Cinq Armées', 2014, 'Peter Jackson', 'La bataille finale pour Erebor éclate alors que les elfes, les nains, les humains et les orques se disputent la richesse du royaume nain. Bilbo doit faire face à des choix difficiles alors que la guerre menace de détruire tout ce pour quoi ils ont combattu.', 'https://i.pinimg.com/564x/da/7c/36/da7c365ef2856291ec92ae825df3095e.jpg', 134, 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/12/the-hobbit-peter-jackson-as-bungo-baggins-cameo-no-black-bars.jpg?q=50&fit=crop&w=750&dpr=1.5', 'Pour ce dernier caméos, il n\'apparaît pas exactement en personne. Après le retour de Bilbo à la Comté chez lui à Cul-de-Sac, l\'une des premières choses qu\'il remet en ordre est un ensemble de portraits ovales de ses parents. La ressemblance de Jackson est utilisée pour la peinture de Bungo Baggins, le père de Bilbo. ', 59);

-- --------------------------------------------------------

--
-- Structure de la table `movie_characters`
--

DROP TABLE IF EXISTS `movie_characters`;
CREATE TABLE IF NOT EXISTS `movie_characters` (
  `id_movie_characters` int(11) NOT NULL AUTO_INCREMENT,
  `id_movie` int(11) NOT NULL,
  `id_character` int(11) NOT NULL,
  PRIMARY KEY (`id_movie_characters`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movie_characters`
--

INSERT INTO `movie_characters` (`id_movie_characters`, `id_movie`, `id_character`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 15),
(15, 1, 17),
(16, 1, 18),
(17, 1, 19),
(18, 1, 20),
(19, 1, 21),
(20, 1, 23),
(21, 2, 1),
(22, 2, 2),
(23, 2, 3),
(24, 2, 4),
(25, 2, 5),
(26, 2, 7),
(27, 2, 8),
(28, 2, 9),
(29, 2, 10),
(30, 2, 11),
(31, 2, 12),
(32, 2, 13),
(33, 2, 15),
(34, 2, 16),
(35, 2, 18),
(36, 2, 19),
(37, 2, 20),
(38, 2, 21),
(39, 2, 23),
(40, 3, 1),
(41, 3, 2),
(42, 3, 3),
(43, 3, 4),
(44, 3, 5),
(45, 3, 7),
(46, 3, 8),
(47, 3, 9),
(48, 3, 10),
(49, 3, 12),
(50, 3, 13),
(51, 3, 14),
(52, 3, 15),
(53, 3, 19),
(54, 3, 20),
(55, 3, 21),
(56, 3, 22),
(57, 3, 23),
(58, 4, 23),
(59, 4, 2),
(60, 4, 4),
(61, 4, 38),
(62, 4, 39),
(63, 4, 19),
(64, 4, 20),
(65, 4, 24),
(66, 4, 25),
(67, 4, 26),
(68, 4, 27),
(69, 4, 28),
(70, 4, 29),
(71, 4, 30),
(72, 4, 31),
(73, 4, 32),
(74, 4, 33),
(75, 4, 34),
(76, 4, 35),
(77, 4, 36),
(78, 4, 37),
(79, 5, 23),
(80, 5, 2),
(81, 5, 4),
(82, 5, 38),
(83, 5, 39),
(84, 5, 19),
(85, 5, 20),
(86, 5, 24),
(87, 5, 25),
(88, 5, 26),
(89, 5, 27),
(90, 5, 28),
(91, 5, 29),
(92, 5, 30),
(93, 5, 31),
(94, 5, 32),
(95, 5, 33),
(96, 5, 34),
(97, 5, 35),
(98, 5, 36),
(99, 5, 37),
(100, 5, 40),
(101, 6, 23),
(102, 6, 2),
(103, 6, 4),
(104, 6, 38),
(105, 6, 39),
(106, 6, 19),
(107, 6, 20),
(108, 6, 24),
(109, 6, 25),
(110, 6, 26),
(111, 6, 27),
(112, 6, 28),
(113, 6, 29),
(114, 6, 30),
(115, 6, 31),
(116, 6, 32),
(117, 6, 33),
(118, 6, 34),
(119, 6, 35),
(120, 6, 36),
(121, 6, 37),
(122, 6, 40);

-- --------------------------------------------------------

--
-- Structure de la table `movie_pictures`
--

DROP TABLE IF EXISTS `movie_pictures`;
CREATE TABLE IF NOT EXISTS `movie_pictures` (
  `id_movie_pictures` int(11) NOT NULL AUTO_INCREMENT,
  `url_picture_movies` varchar(250) NOT NULL,
  `id_movie` int(11) NOT NULL,
  PRIMARY KEY (`id_movie_pictures`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `movie_pictures`
--

INSERT INTO `movie_pictures` (`id_movie_pictures`, `url_picture_movies`, `id_movie`) VALUES
(1, 'https://film-grab.com/wp-content/uploads/photo-gallery/39%20(641).jpg?bwg=1547229580', 1),
(2, 'https://film-grab.com/wp-content/uploads/photo-gallery/41%20(637).jpg?bwg=1547229580', 1),
(3, 'https://film-grab.com/wp-content/uploads/photo-gallery/51%20(614).jpg?bwg=1547229580', 1),
(4, 'https://film-grab.com/wp-content/uploads/photo-gallery/59%20(574).jpg?bwg=1547229580', 1),
(5, 'https://film-grab.com/wp-content/uploads/photo-gallery/65%20(866).jpg?bwg=1547478124', 2),
(6, 'https://film-grab.com/wp-content/uploads/photo-gallery/32%20(1274).jpg?bwg=1547478124', 2),
(7, 'https://film-grab.com/wp-content/uploads/photo-gallery/62%20(1054).jpg?bwg=1547478124', 2),
(8, 'https://film-grab.com/wp-content/uploads/photo-gallery/20%20(1277).jpg?bwg=1547478124', 2),
(9, 'https://film-grab.com/wp-content/uploads/photo-gallery/14%20(872).jpg?bwg=1547381813', 3),
(10, 'https://film-grab.com/wp-content/uploads/photo-gallery/16%20(872).jpg?bwg=1547381813', 3),
(11, 'https://film-grab.com/wp-content/uploads/photo-gallery/33%20(869).jpg?bwg=1547381813', 3),
(12, 'https://film-grab.com/wp-content/uploads/photo-gallery/55%20(807).jpg?bwg=1547381812', 3),
(13, 'https://m.media-amazon.com/images/M/MV5BMTc3NzczNDA3NF5BMl5BanBnXkFtZTcwOTU0Mzg3OA@@._V1_.jpg', 4),
(14, 'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/09/The-Hobbit-An-Unexpected-Journey.jpg', 4),
(15, 'https://www.slantmagazine.com/wp-content/uploads/2012/12/film_hobbitanunexpectedjourney.jpg', 4),
(16, 'https://images.squarespace-cdn.com/content/v1/4ff36a2b84aecc34311d0e6c/1379602445055-GYIQ37AGXH3MPMZY8XOA/The+Hobbit.jpg', 4),
(17, 'https://photos.tf1.fr/1920/1080/cover-showpage-le-hobbit-la-desolation-de-smaug-1d9723-53f4f3-0@1x.jpg', 5),
(18, 'https://img.over-blog-kiwi.com/0/38/67/73/ob_d8645b_the-hobbit-the-desolation-of-smaug-offi.jpg', 5),
(19, 'https://i.ytimg.com/vi/Os1G8RtqY2c/maxresdefault.jpg', 5),
(20, 'https://images.moviesanywhere.com/movie-hero/25807fb39e3a21c6cf5d7a67e4e3291b.jpeg?r=16x9&w=2560', 5),
(21, 'https://images.moviesanywhere.com/movie-hero/a4752fbce9f1c81a6584c1dc4cade0b3.jpeg?r=16x9&w=2560', 6),
(22, 'https://edtimes.in/wp-content/uploads/2014/12/Battle-of-the-five-armies.jpg', 6),
(23, 'https://directconversations.com/wp-content/uploads/2014/12/Lee-Pace-in-The-Hobbit-The-Battle-of-the-Five-Armies-photo-Warner-Bros.jpg', 6),
(24, 'https://m.media-amazon.com/images/M/MV5BMTc1NjYwODIxNV5BMl5BanBnXkFtZTgwMjkzNDM2MzE@._V1_.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE IF NOT EXISTS `quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` varchar(250) NOT NULL,
  `url_picture` varchar(500) NOT NULL,
  `id_character` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quote`
--

INSERT INTO `quote` (`id`, `quote`, `url_picture`, `id_character`, `id_movie`) VALUES
(1, 'Un magicien n\'est jamais en retard Frodon Sacquet. Pas plus qu\'il est en avance. Il arrive précisément à l\'heure prévue.', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2023/09/lord-of-the-rings-frodo-gandalf.jpeg', 2, 1),
(2, 'Je ne connais pas la moitié d\'entre vous autant que je le voudrais, mais j\'aime moins la moitié d\'entre vous à moitié moins que vous ne le méritez ! ', 'https://miro.medium.com/v2/resize:fit:950/1*SyTr_i65aVuMyq-V4C3L1A.jpeg', 23, 1),
(3, 'Je préfère partager une vie de mortelle avec vous que de devoir affronter tous les âges de ce monde toute seule.', 'https://i.ytimg.com/vi/p7tDQWGzEtc/maxresdefault.jpg', 21, 1),
(4, 'Je suis un serviteur du Feu Secret, détenteur de la flamme d\'Anor. Le feu sombre ne vous servira à rien, flamme d’Udûn. Repartez dans l\'ombre ! Vous ne passerez pas !', 'https://www.numerama.com/wp-content/uploads/2022/07/gandalf-balrog.jpg', 2, 1),
(5, 'C\'est une étrange fatalité que nous devions éprouver tant de peur et de doute pour une si petite chose… une si petite chose…', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2020/06/Sean-Bean-Lord-of-the-Rings-Boromir-Mordor-meme.jpg', 6, 1),
(6, 'Attendez ma venue aux premières lueurs du cinquième jour. À l\'aube, regardez à l\'est.', 'https://i.redd.it/bwrx7s40woq51.jpg', 2, 2),
(7, 'Je vous couperais volontiers la tête, nain, si elle sortait un peu plus du sol…', 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/05/karl-urban-eomer-rohan-lotr-two-towers-lord-of-the-rings.jpg', 12, 2),
(8, 'Dois-je tout vous décrire ? Ou vous trouver un marche pied ?', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRByfg7631s0X-itVcwfJ9JjohjZ0B18pVgLw&usqp=CAU', 4, 2),
(9, 'Où était le Gondor lorsque le Westfold est tombé ?', 'https://i.kym-cdn.com/entries/icons/original/000/037/030/Untitled-1.jpg', 13, 2),
(15, 'L’âge des hommes est achevé, le temps des orques est arrivé !', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2023/03/165855-1539812576-v1-1.jpg', 41, 3),
(16, 'Pour Frodon.', 'https://static.hitek.fr/img/up_m/940117626/aragorn4.jpg', 3, 3),
(17, 'Qu’entendez vous par là ? Me souhaitez vous le bonjour ou constatez vous que c’est une bonne journée, que je le veuille ou non, ou encore que c’est une journée où il faut être bon ?', 'https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/09/The-Hobbit-An-Unexpected-Journey.jpg', 23, 4),
(14, '- La lame a été brisée.\r\n- Elle a été reforgée.', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2017/01/aragorn-army-of-the-dead.jpg', 3, 3),
(13, 'Je ne suis pas un homme !', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/01/eowyn-witch-king.jpg', 15, 3),
(12, 'Je ne peux le porter pour vous, mais je peux vous porter vous !', 'https://pbs.twimg.com/media/EbOoMqZWsAAhzqV.jpg', 7, 3),
(10, 'Ça ne compte quand même que pour un ! ', 'https://pbs.twimg.com/tweet_video_thumb/EbOkKevX0AEE2Ur.jpg', 5, 3),
(11, 'Le premier, c\'est vrai ! Mais qu\'en est-il du second petit déjeuner', 'https://i.kym-cdn.com/entries/icons/facebook/000/037/231/Untitled.jpg', 9, 1),
(18, 'Rappelez vous Bilbon, le vrai courage n’est pas de savoir quand supprimer une vie, mais quand en épargner une.', 'https://s.yimg.com/ny/api/res/1.2/r9GAZpMaBu31nKZYIoYgDQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTM4MQ--/https://s.yimg.com/uu/api/res/1.2/Wtax217B43WV57gic4BSZQ--~B/aD02MTA7dz0xMDI0O2FwcGlkPXl0YWNoeW9u/http://l.yimg.com/os/251/2012/11/27/HBT-TRL-075c-jpg_234526.jpg', 2, 4),
(19, 'C’est peut-être parce que j’ai peur, et qu’il me donne du courage.', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/04/The-Hobbit-Gandalf-and-Galadriel-Unexpected-Journey.jpg', 2, 4),
(20, 'Qu’est ce que j’ai… dans ma poche ?', 'https://fictionhorizon.com/wp-content/uploads/2023/03/Snimka-zaslona-2023-03-29-090805.png', 23, 4),
(21, 'Une centaine d’années est un battement de cil dans la vie d’un elfe, je suis patient, j’attendrai.', 'https://i.pinimg.com/originals/ed/4c/11/ed4c1178e1cc65fadfd4c3cb57caa573.jpg', 38, 5),
(22, 'Je serais tenté de te laisser la prendre juste pour voir écu-de chêne souffrir.', 'https://i.ytimg.com/vi/CLMpwhvjN_I/maxresdefault.jpg', 37, 5),
(23, 'Si c\'est cela, l\'amour, je veux m\'en défaire. Pourquoi cela fait-il souffrir autant? ', 'https://i0.wp.com/jchoskins.com/wp-content/uploads/2014/12/thehobbit-tbotfa004.png?resize=627%2C260&ssl=1', 39, 6),
(24, 'Alfrid... Ton jupon dépasse.', 'https://i.imgur.com/w7z0jhg.jpeg', 40, 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','utilisateur') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', 'adminmdp', 'admin'),
(2, 'user', 'user@gmail.com', 'usermdp', 'utilisateur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
