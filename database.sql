-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2020 at 01:32 PM
-- Server version: 8.0.18
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `actors`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_25_122619_create_stars_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stars`
--

INSERT INTO `stars` (`id`, `first_name`, `last_name`, `photo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Selena', 'Gomez', 'photo/iDCptl9cCv5HmwZRGmbyWjW5UEGBAO13ZJGyjvQG.jpeg', 'Selena Marie Gomez (born July 22, 1992) is an American singer, songwriter, actress, and television producer.[1] Born and raised in Texas, Gomez began her career by appearing on the children\'s television series Barney & Friends (2002–2004). In her teens, she gained wider recognition for her role as Alex Russo on the Emmy Award-winning Disney Channel television series Wizards of Waverly Place (2007–2012).\r\n\r\nAlongside her television career, Gomez has starred in the films Another Cinderella Story (2008), Princess Protection Program (2009), Wizards of Waverly Place: The Movie (2009), Ramona and Beezus (2010), Monte Carlo (2011), Spring Breakers (2012), Getaway (2013), The Fundamentals of Caring (2016), The Dead Don\'t Die (2019), and A Rainy Day in New York (2019). She also voices the character of Mavis in the Hotel Transylvania film franchise (2012–present), and executive produced the Netflix television series 13 Reasons Why (2017–2020) and Living Undocumented (2019).\r\n\r\nGomez released three albums with her former band, Selena Gomez & the Scene: Kiss & Tell (2009), A Year Without Rain (2010), and When the Sun Goes Down (2011), all of which peaked within the top ten on the US Billboard 200 and attained gold certifications. Additionally, Gomez has released three albums as a solo artist: Stars Dance (2013), Revival (2015), and Rare (2020), all of which debuted atop the Billboard 200.[2] She has earned eight top-ten singles on the Billboard Hot 100: \"Come & Get It\", \"The Heart Wants What It Wants\", \"Good for You\", \"Same Old Love\", \"Hands to Myself\", \"We Don\'t Talk Anymore\" with Charlie Puth, \"It Ain\'t Me\" with Kygo, and \"Lose You to Love Me\", the latter being her first number-one single on the chart.\r\n\r\nIn 2017, Billboard reported that Gomez has sold over 7 million albums and 22 million singles worldwide. Gomez has received various accolades and was honored as the Billboard Woman of the Year in 2017. She has a large following on social media, and was at one point the most-followed individual on Instagram. Gomez\'s other ventures include a makeup line, a clothing line, a handbag line, a fragrance line, and a production company named July Moonhead Productions. She has worked with various charitable organizations and, at age 17, she was appointed as a UNICEF ambassador.[3]', '2020-07-24 22:00:00', '2020-07-31 07:59:27'),
(5, 'Robert', 'Pattinson', 'photo/HZx5hBLDVmYa4XxzsFE7MBuQJ2jnRCtrbLz0dBZW.jpeg', 'Robert Douglas Thomas Pattinson (born 13 May 1986) is an English actor. After starting to act in a London theatre club at the age of 15, he began his film career by playing Cedric Diggory in the fantasy film Harry Potter and the Goblet of Fire (2005). He went on to star as Edward Cullen in the film adaptations of the Twilight novels, consisting of five films between 2008 and 2012, which earned a combined total of over $3.3 billion worldwide. It brought Pattinson worldwide fame and established him among the highest-paid actors in the world. In 2010, Time magazine named him one of the 100 most influential people in the world, and he was featured in the Forbes Celebrity 100 list.\r\n\r\nAfter starring in the romantic dramas Remember Me (2010) and Water for Elephants (2011), Pattinson eschewed roles in big-budget films in favour of independent productions helmed by auteurs, which have earned him critical acclaim. He played a manipulative billionaire in David Cronenberg\'s thriller Cosmopolis (2012), an aspiring actor in Cronenberg\'s satire Maps to the Stars (2014), an explorer in James Gray\'s adventure drama The Lost City of Z (2016), a bank robber in the Safdie Brothers\' crime drama Good Time (2017), a criminal in a spaceship in Claire Denis\' science-fiction drama High Life (2018), and a troubled lighthouse keeper in Robert Eggers\' horror film The Lighthouse (2019).\r\n\r\nPattinson composes and plays his own music. He sang songs for the Twilight film series and the 2008 independent comedy-drama film How to Be. Since 2015, Pattinson is the ambassador of the GO Campaign, a nonprofit organization that raises awareness and funds to help orphans and vulnerable children around the world. He is also a supporter of the End Child Prostitution and Trafficking (ECPAT) campaign, Parents and Abducted Children Together (PACT), is a member of International Medical Corps, and has shared details about cancer through PSAs to raise awareness about the disease.\r\nIl est révélé durant les années 2000 par des productions destinées aux adolescents comme la franchise Twilight (2008-2012), où il incarne Edward Cullen aux côtés de Kristen Stewart, mais aussi son rôle de Cedric Diggory dans le 4e opus de la saga Harry Potter, Harry Potter et la Coupe de feu (2005).\r\n\r\nPar la suite, il s\'investit dans des films indépendants réalisés par des cinéastes reconnus : Cosmopolis (2012) et Maps to the Stars (2014), réalisés par David Cronenberg ; The Rover (2014) et The King (2019), de David Michôd ; Queen of the Desert (2014), de Werner Herzog ; Life (2015), d\'Anton Corbijn ; L\'Enfance d\'un chef (2016), de Brady Corbet ; The Lost City of Z (2016), de James Gray ; Good Time (2017), de Ben et Josh Safdie ou encore High Life (2018), de Claire Denis.\r\n\r\nIl est choisi pour incarner Bruce Wayne/Batman dans le prochain film de Matt Reeves prévu pour 2021 sur le super-héros de DC Comics.\r\nIl est révélé durant les années 2000 par des productions destinées aux adolescents comme la franchise Twilight (2008-2012), où il incarne Edward Cullen aux côtés de Kristen Stewart, mais aussi son rôle de Cedric Diggory dans le 4e opus de la saga Harry Potter, Harry Potter et la Coupe de feu (2005).\r\n\r\nPar la suite, il s\'investit dans des films indépendants réalisés par des cinéastes reconnus : Cosmopolis (2012) et Maps to the Stars (2014), réalisés par David Cronenberg ; The Rover (2014) et The King (2019), de David Michôd ; Queen of the Desert (2014), de Werner Herzog ; Life (2015), d\'Anton Corbijn ; L\'Enfance d\'un chef (2016), de Brady Corbet ; The Lost City of Z (2016), de James Gray ; Good Time (2017), de Ben et Josh Safdie ou encore High Life (2018), de Claire Denis.\r\n\r\nIl est choisi pour incarner Bruce Wayne/Batman dans le prochain film de Matt Reeves prévu pour 2021 sur le super-héros de DC Comics.', '2020-07-25 17:43:08', '2020-07-31 08:00:17'),
(6, 'Jennifer', 'Aniston', 'photo/wmYhyc6N1z6GcvThpBqiejSqXVQ2riMCGIgy3NOx.jpeg', 'Jennifer Joanna Aniston (born February 11, 1969) is an American actress, film producer, and businesswoman. The daughter of actors John Aniston and Nancy Dow, she began working as an actress at an early age with an uncredited role in the 1987 film Mac and Me. Her first major film role came in the 1993 horror comedy Leprechaun. Since her career grew in the early 1990s, Aniston has been one of the highest-paid actresses in Hollywood.\r\n\r\nAniston rose to international fame portraying Rachel Green on the television sitcom Friends (1994–2004), for which she earned Primetime Emmy, Golden Globe, and Screen Actors Guild awards. The character became widely popular and was described as one of the greatest female characters in American television history. Aniston has since played starring roles in numerous dramas, comedies and romantic comedies. Her biggest box office successes include the films Bruce Almighty (2003), The Break-Up (2006), Marley & Me (2008), Just Go with It (2011), Horrible Bosses (2011), and We\'re the Millers (2013), each of which grossed over $200 million in worldwide box office receipts. Some of her most critically acclaimed film roles include Office Space (1999), The Good Girl (2002), Friends with Money (2006), Cake (2014), and Dumplin\' (2018). She returned to television in 2019, producing and starring in the Apple TV+ drama series The Morning Show, for which she won another Screen Actors Guild Award.\r\n\r\nAniston has been included in numerous magazines\' lists of the world\'s most beautiful women. Her net worth is estimated to be US$200 million. She is the recipient of a star on the Hollywood Walk of Fame. Aniston is also the co-founder of the production company Echo Films, established in 2008. Divorced from actor Brad Pitt, to whom she was married for five years, Aniston is separated from actor Justin Theroux, whom she married in 2015.Elle est scolarisée dans une école Waldorf à ses 6 ans et y découvre l\'acting. Plus tard, elle suit des études au Fiorello H. LaGuardia High School of Music & Art and Performing Arts auprès d\'Anthony Abeson, son professeur d\'art dramatique. Elle y joue des pièces comme The Sign in Sidney Brustein\'s Window de Lorraine Hansberry ou bien des classiques comme Les Trois Sœurs d\'Anton Tchekhov5.\r\nElle accède à la notoriété internationale en interprétant, de 1994 à 2004, le personnage de Rachel Green dans la sitcom à succès mondial Friends. Grâce à ce rôle, elle obtient un Emmy Award, un Golden Globe Award et un Screen Actors Guild Award.\r\n\r\nElle poursuit ensuite sa carrière au cinéma, alternant cinéma populaire (Bruce tout-puissant, Polly et moi, La Rupture, Marley et Moi, Le Mytho, Comment tuer son boss ?, Les Miller, une famille en herbe, etc.) et films indépendants (35 heures, c\'est déjà trop, The Good Girl, Friends with Money, Life of Crime, Cake, etc.).\r\n\r\nJennifer Aniston est la fille de l\'acteur grec, John Aniston (de son vrai nom Anastassakis) et de Nancy Dow (en), actrice d\'origine écossaise et italienne1,2. Elle a deux demi-frères, John Melick et Alex Aniston. Son parrain est l\'acteur Telly Savalas, un ami proche de son père3. Elle a vécu un an en Grèce. Quelque temps après, elle s\'installe à New York2. Ses parents divorcent lorsqu\'elle a 9 ans4.\r\n\r\nElle est scolarisée dans une école Waldorf à ses 6 ans et y découvre l\'acting. Plus tard, elle suit des études au Fiorello H. LaGuardia High School of Music & Art and Performing Arts auprès d\'Anthony Abeson, son professeur d\'art dramatique. Elle y joue des pièces comme The Sign in Sidney Brustein\'s Window de Lorraine Hansberry ou bien des classiques comme Les Trois Sœurs d\'Anton Tchekhov5.', '2020-07-26 07:04:45', '2020-07-31 08:00:59'),
(8, 'Angelina', 'Jolie', 'photo/F1y3TxpZdx9DZD2zKy9ik67ux1rc9ElyUDnlZpVr.jpeg', 'Angelina Jolie, formerly Jolie Pitt,[3] born June 4, 1975)[4] is an American actress, filmmaker, and humanitarian. The recipient of numerous accolades, including an Academy Award and three Golden Globe Awards, she has been named Hollywood\'s highest-paid actress multiple times.\r\n\r\nJolie made her screen debut as a child alongside her father, Jon Voight, in Lookin\' to Get Out (1982), and her film career began in earnest a decade later with the low-budget production Cyborg 2 (1993), followed by her first leading role in a major film, Hackers (1995). She starred in the critically acclaimed biographical cable films George Wallace (1997) and Gia (1998), and won an Academy Award for Best Supporting Actress for her performance in the drama Girl, Interrupted (1999). Her starring role as the video game heroine Lara Croft in Lara Croft: Tomb Raider (2001) established her as a leading Hollywood actress. She continued her action-star career with Mr. & Mrs. Smith (2005), Wanted (2008), and Salt (2010), and received critical acclaim for her performances in the dramas A Mighty Heart (2007) and Changeling (2008), which earned her a nomination for an Academy Award for Best Actress. Her biggest commercial success came with the fantasy picture Maleficent (2014). In the 2010s, Jolie expanded her career into directing, screenwriting, and producing, with the war dramas In the Land of Blood and Honey (2011), Unbroken (2014), and First They Killed My Father (2017).\r\n\r\nIn addition to her film career, Jolie is noted for her humanitarian efforts, for which she has received a Jean Hersholt Humanitarian Award and made an honorary Dame Commander of the Order of St Michael and St George (DCMG), among other honors. She promotes various causes, including conservation, education, and women\'s rights, and is most noted for her advocacy on behalf of refugees as a Special Envoy for the United Nations High Commissioner for Refugees (UNHCR).\r\n\r\nAs a public figure, Jolie has been cited as one of the most influential and powerful people in the American entertainment industry. For a number of years, she was cited as the world\'s most beautiful woman by various media outlets, and her personal life, including her relationships, marriages, and health battles, has been the subject of wide publicity. She is divorced from actors Jonny Lee Miller, Billy Bob Thornton, and Brad Pitt; she and Pitt have six children together, three of whom were adopted internationally.', '2020-07-26 08:37:17', '2020-07-31 07:44:21'),
(9, 'Beyonce', 'Knowles', 'photo/lYEnRudXGaK9CohcGE1beEyjIz4c0TBzBEqJpxJf.jpeg', 'Beyoncé Giselle Knowles-Carter born September 4, 1981)[5] is an American singer, songwriter, record producer, dancer, and actress. Born and raised in Houston, Texas, Beyoncé performed in various singing and dancing competitions as a child. She rose to fame in the late 1990s as the lead singer of Destiny\'s Child, one of the best-selling girl groups of all time.\r\n\r\nDuring Destiny\'s Child\'s hiatus, Beyoncé made her theatrical film debut with a role in the US box-office number-one Austin Powers in Goldmember (2002) and began her solo music career. She became the first music act in Billboard 200 chart history to debut at number one with their first six solo studio albums on the Billboard 200 chart.[6] Her debut album Dangerously in Love (2003) featured four Billboard Hot 100 top five songs, including the number-one singles \"Crazy in Love\" featuring rapper Jay-Z and \"Baby Boy\" featuring singer-rapper Sean Paul. Following the disbandment of Destiny\'s Child in 2006, she released her second solo album, B\'Day, which contained her first US number-one solo single \"Irreplaceable\" and \"Beautiful Liar\", which topped the charts in most countries. Beyoncé continued her acting career with starring roles in The Pink Panther (2006), Dreamgirls (2006), and Obsessed (2009). Her marriage to Jay-Z and her portrayal of Etta James in Cadillac Records (2008) influenced her third album, I Am... Sasha Fierce (2008), which earned a record-setting six Grammy Awards in 2010. It spawned the UK number-one single \"If I Were a Boy\", the US number-one single \"Single Ladies (Put a Ring on It)\" and the top five single \"Halo\", her most streamed song on Spotify and Youtube as well as the most streamed 2000s song by a female artist.\r\n\r\nAfter splitting from her manager and father Mathew Knowles in 2010, Beyoncé released the album 4 (2011), which became her first US album to chart at the top spot for more than one week. It was influenced by 1970s funk, 1980s pop, and 1990s soul. She achieved back-to-back widespread critical acclaim for her sonically experimental visual albums, Beyoncé (2013) and Lemonade (2016); the former\'s surprise release with no prior promotion is credited with reviving albums in the singles-focused digital era of music. It is also credited with influencing the change of music releases from Tuesday to Friday and features a sonically experimental sound; the latter was the world\'s best-selling album of 2016 and the most acclaimed album of her career, exploring themes of infidelity and womanism. In 2018, she released Everything Is Love, a collaborative album with her husband, Jay-Z, as the Carters. As a featured artist, Beyoncé topped the Billboard Hot 100 with the remixes of \"Perfect\" by Ed Sheeran in 2017 and \"Savage\" by Megan Thee Stallion in 2020.', '2020-07-26 08:39:10', '2020-07-31 08:06:50'),
(10, 'Jude', 'Law', 'photo/p69VeJa36f8nOVlTwJcvD4lQIAdOHijA9mJr9Rmv.jpeg', 'David Jude Heyworth Law (born 29 December 1972) is an English actor. He has received multiple awards including a BAFTA Film Award as well as nominations for two Academy Awards, four Golden Globe Awards, three Laurence Olivier Awards, and two Tony Awards. In 2007, he received an Honorary César and was named a knight of the Order of Arts and Letters by the French government, in recognition of his contribution to World Cinema Arts.[2][3]\r\n\r\nBorn and raised in London, Law started acting in theatre. After finding small roles in feature films, Law gained recognition for his role in Anthony Minghella\'s The Talented Mr. Ripley (1999), for which he won the BAFTA Award for Best Actor in a Supporting Role and was nominated for a Golden Globe Award and an Academy Award. He found further critical and commercial success in Enemy at the Gates (2001), Steven Spielberg\'s A.I. Artificial Intelligence (2001) and Sam Mendes\' Road to Perdition (2002). He gave an acclaimed performance in the war film Cold Mountain (2003), earning him Academy Award, Golden Globe and BAFTA nominations.\r\n\r\nLaw went on to star in several commercially unsuccessful films, including Sky Captain and the World of Tomorrow (2004) and Alfie (2004). He then starred as the romantic lead in films Closer (2004) and The Holiday (2006), which were well-received. He also portrayed Dr. Watson in Sherlock Holmes (2009) and Sherlock Holmes: A Game of Shadows (2011). In the 2010s, Law appeared in Repo Men (2010) and had supporting roles in Contagion (2011) and the 3D film Hugo (2011). The latter two received positive reviews from critics. In 2012, he starred in Anna Karenina (2012), Steven Soderbergh\'s Side Effects (2013), Wes Anderson\'s The Grand Budapest Hotel (2014) and Paul Feig\'s Spy (2015).\r\n\r\nIn 2017, he starred in The Young Pope and in 2018 portrayed Albus Dumbledore in Fantastic Beasts: The Crimes of Grindelwald. His highest-grossing release was the superhero film Captain Marvel (2019), in which he played Yon-Rogg. Law has also had an accomplished career on stage, performing in several West End and Broadway productions such as Les Parents terribles, Hamlet and Anna Christie.[4]', '2020-07-26 08:40:06', '2020-07-31 08:08:11'),
(11, 'Leonardo', 'DiCaprio', 'photo/0Gt25v7yypazlbyNJX25Y0fgqoWvrRmGkj3U0uCs.jpeg', 'Leonardo Wilhelm DiCaprio (/dɪˈkæprioʊ/, Italian: [diˈkaːprjo]; born November 11, 1974) is an American actor, producer, philanthropist, and environmentalist. He has often played unconventional parts, particularly in biopics, drama, crime, romance, and period films. As of 2019, his films have grossed US$7.2 billion worldwide, and he has placed eight times in annual rankings of the highest-paid actors in the world.\r\n\r\nBorn in Los Angeles, DiCaprio began his career by appearing in television commercials in the late 1980s. In the early 1990s, he played recurring roles in various television series, such as the sitcom Parenthood. He had his first major film role in This Boy\'s Life (1993), and received acclaim for his supporting role as a developmentally disabled boy in What\'s Eating Gilbert Grape (1993). He achieved international stardom in the epic romance Titanic (1997), which became the highest-grossing film to that point. After a few commercially unsuccessful films, DiCaprio starred in two successful features in 2002: the biographical crime drama Catch Me If You Can and the historical drama Gangs of New York, which marked his first of many collaborations with director Martin Scorsese.\r\n\r\nDiCaprio later portrayed Howard Hughes in The Aviator (2004) and a mercenary in the political thriller Blood Diamond (2006), and he also received acclaim for his performances in the crime drama The Departed (2006) and the romantic drama Revolutionary Road (2008). In the 2010s, he starred in the science fiction thriller Inception (2010), the western Django Unchained (2012), the biopic The Wolf of Wall Street (2013), the survival drama The Revenant (2015), and the comedy-drama Once Upon a Time in Hollywood (2019), all of which were critical and commercial successes. His accolades include an Academy Award, a BAFTA, and a Golden Globe Award for The Revenant as well as two other Golden Globes for The Aviator and The Wolf of Wall Street.\r\nGrandissant dans les quartiers populaires de Los Angeles tels que Los Feliz puis Hollywood, le jeune Leonardo DiCaprio prend comme modèle le fils de sa belle-mère Peggy Ann Saunders, Adam Farrar, qui commence dès l\'enfance une carrière d\'acteur.', '2020-07-26 08:42:28', '2020-07-31 08:09:15'),
(12, 'Nicole', 'Kidman', 'photo/Rt5rfzjMBIYmKJflJkZfkhXhv2O1xpatqwHbsDaz.jpeg', 'Nicole Mary Kidman AC (born 20 June 1967) is an Australian-American actress, philanthropist and producer.Her awards include an Academy Award, two Primetime Emmy Awards, and four Golden Globe Awards. She was listed among the highest-paid actresses in the world in 2006, 2018, and 2019. Time magazine twice named her one of the 100 most influential people in the world, in 2004 and 2018.\r\n\r\nKidman began her acting career in Australia with the 1983 films Bush Christmas and BMX Bandits. Her breakthrough came in 1989 with the thriller film Dead Calm and the miniseries Bangkok Hilton. In 1990, she made her Hollywood debut in the racing film Days of Thunder, opposite Tom Cruise. She went on to achieve wider recognition with lead roles in Far and Away (1992), Batman Forever (1995), To Die For (1995) and Eyes Wide Shut (1999). Kidman won the Academy Award for Best Actress for portraying the writer Virginia Woolf in the drama The Hours (2002). Her other Oscar-nominated roles were as a courtesan in the musical Moulin Rouge! (2001) and emotionally troubled mothers in the dramas Rabbit Hole (2010) and Lion (2016).\r\n\r\nKidman\'s other film credits include The Others (2001), Cold Mountain (2003), Dogville (2003), Birth (2004), The Stepford Wives (2004) Australia (2008), The Paperboy (2012), Paddington (2014), Destroyer (2018), Aquaman (2018) and Bombshell (2019). Her television roles include two projects for HBO, the biopic Hemingway & Gellhorn (2012) and the drama series Big Little Lies (2017–2019). The latter earned Kidman the Primetime Emmy Award for Outstanding Lead Actress and Outstanding Limited Series.\r\n\r\nKidman has been a Goodwill ambassador for UNICEF since 1994[9] and for UNIFEM since 2006.[10] In 2006, she was appointed Companion of the Order of Australia.[11] Since she was born to Australian parents in Hawaii, Kidman has dual citizenship of Australia and the United States.[12][13] In 2010, she founded the production company Blossom Films. She has been married to singer Keith Urban since 2006, and was earlier married to Tom Cruise.\r\nConsidérée comme l\'une des plus grandes actrices de sa génération, elle est reconnue pour l\'intensité dramatique de ses compositions, sa capacité à s\'effacer derrière ses personnages et l\'audace de ses choix, alternant entre films populaires et cinéma indépendant.', '2020-07-26 08:44:36', '2020-07-31 08:11:00'),
(13, 'Megan', 'Fox', 'photo/y5UNipZvsQcM1RKsND0w1d5IB3caDkvs6AhkzbsW.jpeg', 'Megan Denise Fox (born May 16, 1986) is an American actress and model. She made her acting debut in the family film Holiday in the Sun (2001). This was followed by numerous supporting roles in film and television, as well as a starring role in the ABC sitcom Hope & Faith (2004–2006). Fox went on to make her feature film debut in the teen musical comedy Confessions of a Teenage Drama Queen (2004).\r\n\r\nFox received worldwide recognition for her breakout role as Mikaela Banes in the blockbuster action film Transformers (2007). She reprised her role in the sequel Transformers: Revenge of the Fallen (2009) and portrayed the titular character in the horror comedy Jennifer\'s Body (2009). She starred as April O\'Neil in the superhero action film Teenage Mutant Ninja Turtles (2014) and its sequel Teenage Mutant Ninja Turtles: Out of the Shadows (2016). Fox also starred as Regan Lucas in the fifth and sixth seasons of the Fox sitcom New Girl (2016–2017).\r\n\r\nFox is considered a sex symbol and has appeared in numerous magazines, such as Maxim, Rolling Stone, and FHM.\r\nElle est révélée au début des années 2000 par des rôles réguliers à la télévision : Ocean Ave (2002-2003), puis la sitcom La Star de la famille (2004-2006). En 2004, elle donne la réplique à deux autres jeunes actrices en pleine ascension : Lindsay Lohan, tête d\'affiche de la comédie musicale Le Journal intime d\'une future star, puis Kaley Cuoco dans le téléfilm romantique Crimes of Fashion.\r\n\r\nMegan Fox was born on May 16, 1986 in Oak Ridge, Tennessee, to parents Gloria Darlene (Cisson) and Franklin Thomas Fox.She spent her early childhood in nearby Rockwood. Fox\'s father, a parole officer, and her mother divorced when Fox was three years old.Her mother later remarried, and Fox and her sister were raised by her mother and her stepfather, Tony Tonachio. She was raised \"very strictly Pentecostal\", but later attended Catholic school for 12 years.She said that the two were \"very strict\" and that she was not allowed to have a boyfriend or invite friends to her house. She lived with her mother until she made enough money to support herself.', '2020-07-26 08:47:18', '2020-07-31 08:13:00'),
(14, 'Robert', 'Redford', 'photo/CWUmWtxwIM3FFd9yiTx64B6MlBiFCcpgiDUGsUAf.jpeg', 'Charles Robert Redford Jr. (born August 18, 1936) is a retired American actor and director, best known for his many Hollywood films. Over his more than 60 year career, he has won several film awards, including an Academy Award for Lifetime Achievement in 2002. He is also the founder of the Sundance Film Festival. In April 2014, Time magazine included Redford in their annual Time 100 as one of the \"Most Influential People in the World\", declaring him the \"Godfather of Indie Film\".[1][2] In 2016, he was honored with a Presidential Medal of Freedom.\r\n\r\nRedford began acting on television in the late 1950s, including an appearance on The Twilight Zone in 1962. He earned an Emmy nomination as Best Supporting Actor for his performance in The Voice of Charlie Pont (1962). His greatest Broadway success was as the stuffy newlywed husband of co-star Elizabeth Ashley\'s character in Neil Simon\'s Barefoot in the Park (1963). Redford made his film debut in War Hunt (1962). His role in Inside Daisy Clover (1965) won him a Golden Globe for the best new star. He starred alongside Paul Newman in Butch Cassidy and the Sundance Kid (1969), which was a huge success and made him a major star. He had a critical and box office hit with Jeremiah Johnson (1972), and in 1973 he had the greatest hit of his career, the blockbuster crime caper The Sting, a re-union with Paul Newman, for which he was nominated for an Academy Award; that same year, he also starred opposite Barbra Streisand in The Way We Were. The popular and acclaimed All the President\'s Men (1976) was a landmark film for Redford.\r\n\r\nIn the 1980s, Redford began his career as a director with Ordinary People (1980), which was one of the most critically and publicly acclaimed films of the decade, winning four Oscars including Best Picture and the Academy Award for Best Director for Redford. He continued acting and starred in Brubaker (1980), as well as playing the male lead in Out of Africa (1985), which was an enormous box office success and won seven Oscars including Best Picture. He released his third film as a director, A River Runs Through It, in 1992. He went on to receive Best Director and Best Picture nominations in 1995 for Quiz Show. He received a second Academy Award—for Lifetime Achievement—in 2002. In 2010, he was made a chevalier of the Légion d\'Honneur. He has won BAFTA, Directors Guild of America, Golden Globe, and Screen Actors Guild awards.\r\nEn 1969, il devient célèbre grâce a un film du western Butch Cassidy et le Kid. S\'ensuivent d\'autres succès, tels Les Hommes du président, L\'Arnaque, Gatsby le Magnifique, Out of Africa et L\'Homme qui murmurait à l\'oreille des chevaux.', '2020-07-26 08:48:55', '2020-07-31 08:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$xRWqE5NMRvtlDGK.2QOSMur1fFrPbuOoKp73.IhLCE0mhZV7RbMlG', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
