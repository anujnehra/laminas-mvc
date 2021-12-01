
--
-- Database: `beer_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `beers`
--

CREATE TABLE `beers` (
  `id` int(11) NOT NULL,
  `brewery_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `style_id` int(11) NOT NULL,
  `abv` int(11) NOT NULL,
  `ibu` int(11) NOT NULL,
  `srm` int(11) NOT NULL,
  `upc` int(11) NOT NULL,
  `filepath` varchar(155) NOT NULL,
  `description` varchar(255) NOT NULL,
  `add_user` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beers`
--

INSERT INTO `beers` (`id`, `brewery_id`, `name`, `cat_id`, `style_id`, `abv`, `ibu`, `srm`, `upc`, `filepath`, `description`, `add_user`, `last_modified`) VALUES
(1, 812, 'Hocus Pocus', 12, 116, 6, 0, 0, 0, '', 'Our take on a classic summer ale.  A toast to weeds, rays, and summer haze.  A light, crisp ale for mowing lawns, hitting lazy fly balls, and communing with nature, Hocus Pocus is offered up as a summer sacrifice to clodless days.  Its malty sweetness fin', 0, '2010-07-22 14:30:20'),
(2, 878, 'Full Moon Winter Ale', 5, 72, 6, 0, 0, 0, '', 'This full-bodied ale is brewed with roasted malts and a hint of Dark Belgian sugar for a perfectly balanced taste.', 0, '2010-07-22 14:30:20'),
(3, 1271, 'Ornery Amber Lager', 8, 95, 0, 0, 0, 0, '', 'Ornery Amber is brewed with a blend of the finest European hops and gently roasted malts.', 0, '2010-07-22 14:30:20'),
(4, 1271, 'Maple Nut Brown Ale Ale', 3, 38, 0, 0, 0, 0, '', 'Maple syrup is added to each barrel of Maple Nut Brown Ale to impart roasted sweetness balancing the nut flavor produced by chocolate malts.', 0, '2010-07-22 14:30:20'),
(5, 1307, 'Quelque Chose', 5, 70, 8, 0, 0, 0, '', 'Quelque Chose was launched in January 1996. This versatile beer was specifically developed as a winter beer because, when warmed to 70ÂºC (160ÂºF), it can be taken as a hot drink. On the other hand, on the rocks, it is a wonderful aperitif. The cherries a', 0, '2010-07-22 14:30:20'),
(6, 723, 'Maracaibo Especial', 3, 38, 8, 0, 0, 0, '', 'A rich brown ale inspired by the enigmatic monastic brews of Belgium, and the mysterious mist shrouded jungles of the tropics. Brewed with real cacao, and spiced with cinnamon and sweet orange peel for a sensual delight. A brew to be sipped, savored, and ', 0, '2010-07-22 14:30:20'),
(7, 1221, 'Bender Beer', 3, 38, 5, 0, 0, 0, '', 'This beer is an amalgamation of styles; brown/porter/apa. Five distinct malts, including two from Belgium, give this beer added complexity and depth. We also add oatmeal to this beer to give it a smooth texture not usually associated with this type of bee', 0, '2010-07-22 14:30:20'),
(8, 923, 'God Jul - Winter Ale', 3, 42, 9, 0, 0, 0, '', 'A dark ale brewed specially for the Christmas season, with a rich, complex taste of caramel. This is a strong, dark and rather sweet Christmas Beer â just the way we think a Christmas beer should be.', 0, '2010-07-22 14:30:20'),
(9, 161, 'Nut Cracker Ale', 11, 141, 6, 0, 0, 0, '', 'Nutcracker Ale is Boulevardâs holiday gift for real beer lovers. This hearty, warming brew is a classic winter ale, deep amber in color, with hints of molasses balanced by the âspicinessâ of freshly harvested Chinook hops.', 0, '2010-07-22 14:30:20'),
(10, 1202, 'Weizengold Hefefein', 4, 50, 5, 0, 0, 0, '', 'Stiegl Weizengold. It has 12o original gravity; the choicest ingredients and a top fermentation process are responsible for the highest possible quality and an unmistakable flavor. It is brewed according to the classic wheat beer recipe: 60 % wheat malt a', 0, '2010-07-22 14:30:20'),
(11, 584, 'Geist Bock', 7, 90, 6, 0, 0, 0, '', 'This is one of our rare lagers brewed in the style of the German Heiliges Geist Bock, or Holy Ghost Bock. The name refers to the lighter nature of the beer as opposed to the darker and heavier Doppel Bock and Mai Bock also brewed during the spring in Germ', 0, '2010-07-22 14:30:20'),
(12, 723, 'Biere de Mars', 1, 13, 7, 0, 0, 0, '', 'A sustaining beer that is brewed to comfort in the gusty ides of March and welcome in a wealth of warmer weather.', 0, '2010-07-22 14:30:20'),
(13, 604, 'Samurai', -1, -1, 5, 0, 0, 0, '', 'Looking for something a little different? Brewed with rice and barley malts, Samurai is an easy drinking, unfiltered ale that changes the status quo for unfiltered beers. The addition of rice gives Samurai a slightly fruity, crisp, refreshing and clean ta', 0, '2010-07-22 14:30:20'),
(14, 723, 'LuciÃ©rnaga', 5, 64, 7, 0, 0, 0, '', 'An artisan pale ale brewed in the Grand Cru tradition. Enjoy its golden effervescence and gentle hop aroma. Coriander and Grains of Paradise round out the spicy palate, melting o so softly into a silken finish of hoppiness and bliss! Make any season a cel', 0, '2010-07-22 14:30:20'),
(15, 859, 'Beer Geek Breakfast', 3, 43, 8, 0, 0, 0, '', 'Breakfast is the most important meal of the day, many say, and if you are a beer geek there is no better way to start the day than with a powerful, complex morning stout. The unique mix of oats and coffee gives this beer large body and power, while the co', 0, '2010-07-22 14:30:20'),
(16, 397, 'Extra Strong Vintage Ale', -1, -1, 8, 0, 0, 0, '', 'If fine wine were beer it would no doubt be Coopers Extra Strong Vintage Ale. This strong ale imparts rich full flavours that are suitable for maturation. Brewed with choice malts and an extended top fermentation, Coopers Extra Strong Vintage Ale will imp', 0, '2010-07-22 14:30:20'),
(17, 923, 'NÃ¸gne Ã Brown Ale', 3, 38, 5, 0, 0, 0, '', 'A dark brown English ale, in which classic English malts meet the spicy hoppiness of the new world.  Recommended serving temperature 8Â°C/45Â°F. Goes very well with âpub grub.â', 0, '2010-07-22 14:30:20'),
(18, 905, 'Sunshine Wheat', 11, 116, 5, 0, 0, 0, '', 'SUNSHINE WHEAT is a great beer for trouncing thirst.  Yet, it has a depth of character that inspires a quiet momentâs reflection. Sunshine Wheat swirls in the mouth with ripples of coriander and orange peel tartness, settling nicely into a tranquil sea ', 0, '2010-07-22 14:30:20'),
(19, 161, 'Lunar Ale', 3, 38, 5, 0, 0, 0, '', 'Our first new year-round brand launch since 1996, Lunar Ale is in a category all its own. Brewed using a unique aromatic yeast, this refreshing variety is best described as a cloudy brown ale with a complex, malty aroma and flavor, and a crisp, dry finish', 0, '2010-07-22 14:30:20'),
(20, 604, 'Denver Pale Ale / DPA', 3, 26, 5, 0, 0, 0, '', 'Historically Great Divideâs flagship beer, DPAâs record speaks for itself. By continually garnering national and international recognition, DPA has risen to become one of the most award-winning English-style pale ales in the world.  Sporting a brillia', 0, '2010-07-22 14:30:20'),
(21, 296, 'Pater 6', 5, 60, 7, 0, 0, 0, '', 'This name became a reference. This beer is mostly pointed out with its product name: âa Paterkeâ.   This âPaterkeâ is a chestnut coloured dark beer with a high fermentation (6.7 alcohol content) and a full taste.', 0, '2010-07-22 14:30:20'),
(22, 905, 'Mothership Wit', -1, -1, 5, 0, 0, 0, '', 'Our first venture into organically-produced beer, Mothership Wit Organic Wheat Beer elevates the zesty Wit or White beers of Belgium. Our far-flung Beer Rangers affectionately refer to our Fort Collins brewery as the Mothership, a name that conjures image', 0, '2010-07-22 14:30:20'),
(23, 604, 'Hot Shot ESB', 1, 5, 5, 0, 0, 0, '', 'HotShot ESB is an easy-drinking and remarkably smooth Extra Special Bitter, brewed in the classic-English style. More assertively hopped than ordinary bitters, light copper-colored HotShot showcases clean hop flavors, balanced by its slightly fruity nose ', 0, '2010-07-22 14:30:20'),
(24, 923, 'NÃ¸gne Ã Imperial Stout', 3, 43, 9, 0, 0, 0, '', 'We think the russian tsar would have liked his stout this way. A dark, rich ale in which a generous sweetness with roasted malt bitterness.  Serving temp.10Â°C/50Â°F. Great with vanilla ice cream or dark chocolate.', 0, '2010-07-22 14:30:20'),
(25, 923, 'NÃ¸gne Ã Porter', 2, 25, 7, 0, 0, 0, '', 'In this quite dark ale, dark malts provide flavors of coffee and dried fruit. Recommended serving temperature 10Â°C/50Â°F.  Try with dark chocolate, cheese, or red meat dishes.', 0, '2010-07-22 14:30:20'),
(26, 923, 'NÃ¸gne Ã Pale Ale', 3, 26, 6, 0, 0, 0, '', 'A refreshing light and hoppy ale. Probably our best allrounder.  Recommended serving temperature 8Â°C/45Â°F.  Ideal with barbequed or smoked meat dishes.', 0, '2010-07-22 14:30:20'),
(27, 308, 'Warka Strong', 8, 95, 7, 0, 0, 0, '', 'European Strong Lager', 0, '2010-07-22 14:30:20'),
(28, 161, 'Boulevard Pale Ale', 3, 26, 5, 0, 0, 0, '', 'Boulevard Pale Ale is a smooth, fruity, well-balanced beer with year-round appeal. A variety of caramel malts impart a rich flavor and amber color, while liberal use of whole hops adds zest and aroma. Pale Ale is the first beer we brewed, and continues to', 0, '2010-07-22 14:30:20'),
(29, 0, 'henikan5', 45, 0, 98, 0, 0, 0, '', 'good beer5', 0, '2021-12-01 09:59:05'),
(30, 0, 'asdasd', 32, 0, 34, 0, 0, 0, '', 'sadasdasd', 0, '2021-12-01 10:00:25'),
(31, 0, 'asdasd', 32, 0, 34, 0, 0, 0, '', 'sadasdasd', 0, '2021-12-01 10:01:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beers`
--
ALTER TABLE `beers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beers`
--
ALTER TABLE `beers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
