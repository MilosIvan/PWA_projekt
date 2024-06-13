-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 08:48 PM
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
-- Database: `projekt`
--
CREATE DATABASE IF NOT EXISTS `projekt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projekt`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `korisnicko_ime` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(3, 'Ivan', 'Miloš', 'ivanmilos', '$2y$10$zszA4xOtK2wajCrBeuqu7.Q7HRYPiSX4Ry4dSoXB2k47.6YxuhC8W', 'admin'),
(6, 'user', 'user', 'user123', '$2y$10$WVmflT731Bmm8sHRmnl9mea7z36wMqhTYMjoa0t4H3/0czA5yVojy', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `naslov` varchar(64) NOT NULL,
  `sazetak` text NOT NULL,
  `tekst` text NOT NULL,
  `slika` varchar(32) NOT NULL,
  `kategorija` varchar(16) NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(6, '2024-06-11 18:02:05', 'NOVI ČOVJEK NA OPUS ARENI', 'Osijek ima novog trenera, sutra službeno predstavljanje. S njime stižu čak tri pomoćnika.', '<p>Federico Coppitelli u srijedu će biti promoviran u novog trenera Osijeka. Da je Talijan idući šef struke u Opus Areni bilo je poznato već dan nakon što je završila prošla sezona, još prije tjedan dana iz kluba su zakazali njegovo predstavljanje za srijedu u 11 sati, a znakovit je bio i osmijeh sportskog direktora Bijelo-plavih Jose Bota prije nekoliko dana na izravno pitanje je li mladi talijanski stručnjak idući Osijekov trener.</p><p>Coppitelli u Osijek ne dolazi sam nego s trojicom pomoćnika. Nova lica u stručnom stožeru bit će njegov prvi pomoćnik, kondicijski trener i trener vratara, a u stručnom dijelu prve momčadi, kako doznajemo, nastavit će raditi Ivo Smoje (koji je inače prošle sezone privremeno vodio Bijelo-plave u dvije utakmice i upisao dvije pobjede) te kondicijski trener Marin Vučko.</p><p>Da je jedan od najperspektivnijih talijanskih trenera idući šef struke na Opus Areni odavno nije tajna, a od srijede će to konačno postati i službeno.</p><p>\"Boto u Coppitelliju vidi prototip trenera budućnosti - 39-godišnjak je stručnjak iza kojeg je aktivan rad s mladima, počevši od Frosinonea, preko Torina i Rima do Leccea s kojim je 2023. osvojio prvenstvo te je izabran za najboljeg trenera Primavere. Ta titula osvojena s Lecceom peta je omladinska titula za Coppitellija koji je pravi majstor u tome da uspijeva razvijati svoje igrače i istovremeno se boriti za važne ciljeve. Osijek, klub s izvrsnom infrastrukturom i koji je uvijek veliku pozornost pridavao svojoj omladinskoj školi kao resursu i baštini, želio bi Coppitellija između ostalih i iz tog razloga\", predstavio je Coppitellija talijanski ekspert za transfere Gianluca Di Marzio.</p><p>Iz perspektive Osijeka novi trener morao je zadovoljiti dva osnovna uvjeta - uz ambiciju da mu Osijek bude stepenica prema nečem još većem trebao je iza sebe imati i rezultate u radu s mladim igračima i njihovom razvoju. Trojica kandidata našla su se u užem izboru, a nakon detaljne analize i odrađenog skautinga treninga i utakmica svakog od potencijalnih trenera koji su se našli u finalnoj rundi odluka je pala na Coppitellija.</p><p>- Današnje generacije nisu kakve su bile prije 20 godina. Imamo puno mladih igrača, a ja trebam nekoga tko ih razumije, pod kojim će rasti na iduću razinu. Jedna stvar je staviti mlade igrače u momčad, a druga je razvijati ih. To zahtijeva posebna znanja. Želim ambicioznog trenera kojem je Osijek stepenica na razinu više. Nekog tko želi jednog dana voditi Milan ili Manchester City, a Osijek vidi kao korak prema ostvarenju toga cilja. Ne možete ni zamisliti posao koji sam napravio sa svojim timom oko proučavanja načina na koji igra, na koji vodi treninge kako bismo vidjeli koliko se uklapa i izbjegli što više pogrešaka u procjeni - kazao nam je Boto prošlog tjedna.</p><p>Coppitelli će tako postati peti Osijekov trener u nešto manje od dvije godine, ali i peti trener bijelo-plavih koji će raditi s momčadi na posljednjih pet priprema. U ljeto 2022. momčad je pripremao Nenad Bjelica međutim koji mjesec kasnije dobio je otkaz. I pritom otkaz nije dobio trener Bjelica nego sportski direktor Bjelica, ali kako je obnašao obje funkcije jedno je automatski povuklo drugo. Zimske pripreme u siječnju 2023. odradio je Rene Poms, ali brzo je po nastavku sezone bio bivši. Mandat Borimira Perkovića koji ga je naslijedio završen je u rekordnom roku, nakon samo sedam utakmica. U ljeto 2023. momčad je za novu sezonu pripremao Stjepan Tomas, ali je klub s njim prekinuo suradnju već poslije desetog prvenstvenog kola. Zoran Zekić bio je na pripremama prošle zime, no ni on nije završio sezonu.</p>', 'trener.jpg', 'sport', 0),
(7, '2024-06-11 18:04:02', 'SKUPOCJENI KADAR', 'Čudesni rekord pada u utakmici Vatrenih: Prizor čeka cijeli svijet, Gvardiol u duelu od 165 milijuna eura?', '<p>Hrvatska je Europsko prvenstvo 2020. (2021.) otvorila porazom. Englezi su nas nadigrali 1:0, danas nepostojeći reprezentativac Raheem Sterling probio je Livakovića i osigurao nam još 30-ak nadolazećih minuta strepnje i, ispostavit će se, uzaludne nade. U 82. minuti ispisana je povijest, Jude Bellingham zamijenio je Harryja Kanea i sa 17 godina i 349 dana postao najmlađi debitant EP-ova, no šest dana kasnije nastupit će Poljak Kacper Kozlowski, nepuna četiri mjeseca mlađi veznjak.</p><p>Rekord Kozlowskog preživio je znatno duže od Bellinghamovog, no budite sigurni da će u Njemačkoj umrijeti. I to, vrlo vjerojatno, baš u utakmici Hrvatske, pod uvjetom posve izvjesnog scenarija - ako Lamine Yamal istrči na travnjak, Španjolska će imati najmlađeg debitanta u povijesti EP-ova. Dragulju Barcelone 16 je godina, 17. rođendan proslavit će 13. srpnja, dan prije finala njemačke smotre. Nitko nije u tako mladoj dobi debitirao za Barcelonu i Furiju, ni startao i igrao u nokaut fazi Lige prvaka, ni zabilježio nastup u El Clasicu, zabio u La ligi i španjolskoj reprezentaciji... Lamine Yamal istinsko je čudo od djeteta, najmlađi rekorder svega.</p><p>Luis Enrique na prošli je Euro vodio tri igrača s 21 godinom ili manje, Pedrija, Ferana Torresa i Erica Garciju, a kostur momčadi gradio se na iskusnijim pojedincima poput Busquetsa, Jordija Albe, Azpilicuete, Kokea... Enriqueov imenjak i nasljednik, izbornik De la Fuente, blago je podigao kvotu, na turnir vodi četiri izabranika koji nisu premašili 21 godinu. Točno toliko broje Pedri, Fermin Lopez i Nico Williams, no svijet ipak najsnažnije iščekuje na dijelu vidjeti nepunih pet godina mlađeg školarca, tog prozvanog nasljednika Lionela Messija, doduše i samo jednog u moru takvih nogometaša s laskavim nadimkom (Halilović, Krkić, Munir, Ansu Fati...), no ima ga pravo nositi ponosnije od drugih. Ako već ta izlizana krilatica novog Messija mora postojati, unatoč tomu što takvog više nikada biti neće, onda ju zaslužuje isključivo Yamal.</p><p>- Posujeduje apsolutno sve da postane sjajan igrač, možda i jedan od najboljih na svijetu. Lijeva noga, brzina, završnica, izvrsne sposobnosti asistiranja... Usporedbe s Messijem? Velike su to riječi, kaže vam čovjek koji je nekoliko godina igrao pored Argentinca. Nema sumnje da će Yamal biti opasnost za sve nas - kazao je albanski izbornik Sylvinho, nekadašnji igrač Barce (2004. - 2009.), kojeg čeka sukob s Furijom 26. lipnja.</p><p>Bivši izbornik Barce Xavi Hernandez znao je mnogo euforičnije govoriti o Yamalu. \"Njegov napredak seže do neljudskih razmjera, on je odabrani\", veličao ga je Xavi. Jasno, treba držati Yamala na oku, no možda je (još uvijek) prerano govoriti o nadčovjeku. Istina je da se radi o igraču s posebnim štihom i dodirom, izvrsnom dribleru, problemu za svakog braniča sa suprotne mu strane, ali i krilnom napadaču kojem će neki zamjeriti pokoji potez previše, omanju sebičnost u situacijama pogodnima za asist, a posebice manjak kvalitetnog angažmana u obrani. Sve to logični je produkt neiskustva i enormnog porasta u jako kratkom razdoblju, zna se dogoditi da Yamal \"izgori\" u svojoj genijalnosti i napravi podjednako štete koliko i koristi.</p>', 'gvardiol.jpg', 'sport', 0),
(8, '2024-06-11 18:05:49', 'NOVOSTI SA ŠUBIĆEVCA', 'Šibenik riješio pitanje trenera za novu sezonu. Vraćaju se i ‘izgubljeni sinovi‘ kluba?', '<p>U iščekivanju novih, najavljenih vijesti sa Šubićevca vezanih za kadrovske promjene, navijače je pomalo zabrinula mogućnost da Mario Carević napusti klupu Narančastih. U eteru se množe različite kombinacije, ali prema ipak provjerenim informacijama Carević će povesti Šibenčane i u novoj prvoligaškoj sezoni.</p><p>To je nekako i najlogičnije, i red je da Makaranin dobije priliku voditi HNK Šibenik u najjačem rangu hrvatskog nogometa. Čini se da to nije upitno kod obje strane, možda se jedino malo nejasnije sve to komunicira prema van.</p><p>\r\nJoš dok je trajala ta bespoštedna borba za prvaka drugog razreda, Carević nam je u više navrata rekao kako ga naravno intrigira vođenje Šibenika u Supersport HNL-u, čak je neformalno pričao i kako vidi Šibenik u elitnom društvu, potencijalna pojačanja... Upravo je ovo posljednje neophodno da se skinu eventualno i zadnji, preostali upitnici oko cijele te priče. Činjenica je da će vodstvo kluba morati poraditi na snaženju kadra, i doznajemo kako se već razgovara, pregovara, kako s postojećim kadrom, koji bi trebao u najvećoj mjeri biti sačuvan, barem onaj dio koji čini okosnicu momčadi, tako i s potencijalnim pojačanjima.</p>', 'subicevac.jpg', 'sport', 0),
(9, '2024-06-11 18:07:33', 'NESVAKIDAŠNJE GLASINE', 'Hajduk pronašao pojačanje u Južnoj Americi? Agent mu je čovjek koji brine o karijeri Alexisa Sancheza', '<p>Između svakog završetka sezone do prvog dana priprema, a nekad i duže započne takozvana sezona kiselih krastavaca. Tijekom tog perioda na površinu izviru svakakve glasnine, bilo da su u blizini ili daleko. Jedna od ovih dalekih koja je stigla do Poljuda je došla iz Južne Amerike, piše Slobodna Dalmacija.</p><p>Na drugom kraju svijeta pojavila se informacija da se Hajduk zanima za 25-godišnjeg peruanskog vratara. Kako piše više medija s područja Perua, vratar Franco Saravia je navodno interesantan Hajduku, a neki pišu i da je stigla ponuda što je malo teže za povjerovati.</p><p>Na Poljudu još ne znaju tko će biti novi trener pa nema baš ni logike da se tome tko bude dovode igrači koje nije sam barem odobrio. Nema ni puno logike da će Hajduk dovoditi vratara pored Ivana Lučića i Lovre Kalinića koji bi trebali biti spremni za pripreme, a tu su još pod ugovorom na primjer Toni Silić, Borna Buljan i Karlo Sentić.</p><p>Inače, Saravia je prošle sezone bio drugi golman u Alianza Limi te je upisao ukupno 11 nastupa, primio 13 golova i 4 puta sačuvao čistu mrežu. Agent mu je inače jedan od najutjecajnijih na području Južne Amerike, a riječ je o Argentincu hrvatskog porijekla Fernandu Felicevichu koji je vodio i cijelu karijeru Alexisa Sancheza te ostvario niz milijunskih transfera s južnoameričkim igračima. Saraviu na Transfermarktu cijene na 450 tisuća eura, a nema podataka do kad mu traje trenutni ugovor s peruanskim klubom.</p>', 'golman.jpg', 'sport', 0),
(10, '2024-06-11 18:09:17', 'NOVI UGOVOR', 'Sada je i službeno: Na Maksimiru pao potpis, Dinamo osigurao uzdanicu na još četiri godine', '<p>Ono o čemu se posljednjih dana špekuliralo, danas je dobilo i službenu potvrdu. Ivan Nevistić je potpisao novi ugovor sa zagrebačkim Dinamom. Dosadašnji ugovor ga je s Dinamom vezao do 2025., a sada je svoju vjernost produljio do 2028. godine.</p><p>Nevistić je preuzeo “jedinicu” Dinama nakon transfera Dominika Livakovića u turski Fenerbahçe. Nakon nekoliko lošijih reakcija u prvih par utakmica, umjesto njega je na gol stao veteran Danijel Zagorac.</p><p>No, Nevistić se kako je sezona odmicala sve više dizao i postao jedan od ključnih igrača u Dinamovom pozitivnom nizu na kraju sezone. Posebno se pamti obrana kaznenog udarca pred kraj utakmice protiv Varaždina, kao i bravurozne intervencije protiv Hajduka na Poljudu.</p><p>Ne čudi stoga što su u Dinamu požurili s novim ugovorom za Nevistića. Vratar iz Đakova ima tek 26 godina i polako ulazi u najbolje vratarske godine. Dinamo je u klub vratio i vratara Lokomotive Nikolu Čavlinu, ali on je odmah proslijeđen na posudbu u Osijek.</p>', 'dinamo.jpg', 'sport', 0),
(11, '2024-06-11 18:14:20', 'THE SMILE STIŽE U PULU, U MALO RIMSKO KAZALIŠTE', 'The Smile se prebacuje u Malo rimsko kazalište u Puli', '<p>Koncert supergrupe The Smile dobiva novu lokaciju, bit će to Malo rimsko kazalište u Puli. Datum ostaje isti, te se stoga koncert održava 15. lipnja.</p><p>Publika će na koncertu imati priliku vidjeti obnovljeno Malo rimsko kazalište, smješteno u samom srcu Pule. Nakon dvije tisuće godina, ponovno je stavljeno u izvornu funkciju. Ova pozornica može se pohvaliti 330 četvornih metara velikim ekranom, a dostavlja jedinstveni ugođaj prožet vrhunskom akustičnom kvalitetom.</p><p>Ovu supergrupu čine Thom Yorke i Jonny Greenwood iz Radioheada, te Tom Skinner iz Sons of Kernet. U Pulu ih dovodi europska turneja na kojoj će posjetiti preko 15 zemalja, a na koncertima će kao gost nastupiti britanski glazbenik James Holden. Ove su godine objavili svoj drugi po redu studijski album “Wall Of Eyes”, koji je na muzika.hr recenziji dobio visoku ocjenu od 4,5.</p><p>Na naš prostor stižu 15. lipnja, dok su dan ranije u beogradskom Hangaru. Bendu je to ujedno i povratak u Hrvatsku nakon što su u svibnju 2022. godine nastupali u zagrebačkoj Hali.</p>', 'theSmile.jpg', 'glazba', 0),
(12, '2024-06-11 18:19:27', 'ROCKLIVE', 'RockLive – koprivnički festival objavio finalni lineup i raspored', '<p>RockLive Festival objavio je izvođača po danima, nove izvođače i dio dnevnog programa, kao i vijest da u prodaju kreću i dnevne ulaznice.</p><p>RockLive Festival #13, koji će se od 25. do 27. srpnja održati u koprivničkom Kampusu ove je godine dodatan naglasak stavio na pružanje prilike mladim izvođačima. Tako će, kao i godinu ranije, festival otvoriti pobjednici projekta “Puna šuma rokenrola” (izlučna večer održava se 28. lipnja na šumskom imanju pored Koprivnice), dok iz programa Superval dolaze izvođači Gradske bitange iz Valpova i Slow Cured iz Zagreba.</p><p>Prvi dan, četvrtak 25. srpnja</p><p>Na festivalsku se pozornicu u četvrtak 25. srpnja penju Kawasaki 3P, Savršeni Marginalci, IDEM, Porto Morto, Ogenj, Đutko i plodovi zemlje, te pobjednici Pune šume rokenrola. Puna šuma rokenrola je mini-festival  u formi natjecanja, na kojemu nastupaju mladi izvođači, a pobjednik dobiva paket nagrada što uključuje nastup na RockLiveu, studijsko snimanje singla, promo fotografiranje i recenziju albuma ili nastupa na barem jednom glazbenom portalu.</p><p>Drugi dan, petka 26. srpnja</p><p>Drugog dana festivala, u petak 26. srpnja nastupaju Zabranjeno Pušenje, Svemirko, Six Pack, Antitodor, Grobenski, Ministranti i Slow Cured, dok će specijalni gost na RockLive radio pozornici biti Pater Papula.</p><p>Treći dan, subota 27. srpnja</p><p>Finalni dan, subota 27. srpnja rezerviran je za sljedeće izvođače: Partibrejkers, Pips, Chips & Videoclips, Vojko V, Šank?!, Šiza, Kids from the sky i Gradske bitange.</p><p>Osim novih izvođača, treba spomenuti i dnevni program kojem je dodan i Sajam supkultura, program koji će se drugog i trećeg dana festivala odvijati na dnevnom platou pored festivalskog kampa. Svoje će radove izložiti 10-ak obrtnika, a posjetitelji će moći razgledavati brojne rukotvorine i umjetničke radove, te kupiti nešto kao uspomenu na ovogodišnje festivalsko izdanje.</p><p>Kako do ulaznica za RockLive festival u Koprivnici?</p><p>U prodaju su puštene dnevne ulaznice, pa tako cijena za svaki dan zasebno iznosi 20 eura, dok će se na blagajni festivala moći kupiti po cijeni od 25 eura. Cijena festivalske ulaznice trenutno iznosi 35 eura za tri dana festivala, dok će se na blagajni festivala moći kupiti po cijeni od 45 eura. Ulaznice se mogu kupiti putem sustava Entrio. Omogućena je i limitirana količina muzika.hr fanclub promo kodova, no oni su rasprodani.</p>', 'rocklive.jpg', 'glazba', 0),
(13, '2024-06-11 18:20:41', 'GREG HOWE', 'Greg Howe, rock jazz gitarist premijerno stiže u Zagreb', '<p>Howe, koji je poznat kao tehnički inovator zbog svoje upotrebe tapkanja, neobičnih taktova i signature legatto metode „hammer–on frome nowhere“ u Zagreb dolazi u pratnji basista Mohini Deya (Steve Vai, Marco Minnemann, Zakir Hussain) te Marca Cirigliana (Nelly) na bubnjevima.</p><p>U svojih trideset godina karijere, Howe je producirao, napisao i aranžirao deset solo instrumentalnih studijskih albuma, kao i dva kolaboracijska albuma s Richiejem Kotzen iz benda Winery Dogs.</p><p>Surađivao je s umjetnicima kao što su Dennis Chambers, Victor Wooten, Richie Kotzen, Jason Becker, Billy Sheehan i kao session glazbenik s Michaelom Jacksonom, Justinom Timberlakeom, Christinom Aguilerom, Rihannom, Enriqueom Iglesiasom i mnogim drugima.</p><p>Njegov debitantski album „Greg Howe“, rangiran je od strane Guitar World Magazina kao deseti najbolji shred album svih vremena, a „Wheelhouse” iz 2017. godine smješten na šesto mjesto u top 20 najboljih gitarističkih albuma desetljeća.</p><p>U Zagrebu će izvesti pjesme s novog albuma, ali i većinu popularnih i omiljenih hitova kao što su “Jump Start”, “Kick it all over”,”Sunny”, i druge.</p>', 'Greg_Howe.jpg', 'glazba', 0),
(20, '2024-06-11 22:59:35', 'DUA LIPA U PULI', 'Dua Lipa u Puli: radikalni optimizam u rimskom amfiteatru', 'Dua Lipa je, netom nakon objavljivanja “Radical Optimism” albuma, po prvi put došla u Hrvatsku, u posebno okruženje u Areni Pula, s kojim je i sama bila impresionirana.<br><br>Premijerni nastup prati izlazak istoimenog albuma s kojeg je objavljivala i singlove “Houdini”, “Training Season” te “Illusion”, a koje je sve i izvela u rimskom amfiteatra. Iako se na otvorenju turneje u Berlinu (5. lipnja) kritiziralo kako je s aktualnog albuma izvela tek tri stvari, u Puli je osim navedene tri izvela i “Happy For You” i “These Wall”, no i dalje je najviše pjesama s njenog hit albuma iz 2020., “Future Nostalgia”, s kojeg je izvela čak sedam pjesama.<br><br>Redovi pred Arenom su se već u popodnevnim satima produživali da bi neposredno pred otvorenje vratiju u 19h, bilo nemoguće vidjeti mu kraj. Sam koncert je najavljivan za 20h pa su se ljudi požurili nakrcati prostor, no, nisu očekivali da nastup ipak počinje u 21:30, što se shvatilo kao kašnjenje, naročito ako sudimo po zvižducima kojih nije nedostajalo, no već prvim zvukovima hita “Training Season”, publiku je preuzela euforija karizmatične mlade zvijezde koja je u svojim najboljim godinama.<br><br>Lipa je na scenu dovela 12 plesačica, a sam show je izrazito plesan, što su glavne osobine njenog showa, uz moderne vizualizacije, sinkronizirane vizualizacije te njenom kontrolom ekipe koju je okupila i publikom, a tu se obratila i Puli u više navrata i zahvalila se na ljubavi te prilici da nastupi među “zidovima starim više od 2000 godina” (referenca na “These Walls” prije koje je to i napravila).<br><br>Nastup od 4 dijela, sveukupno 17 pjesama, imao je i svoj ikonski moment kad je obradila Elton Johnovu “Cold Heart” u čast mjeseca Pride, a kad je na scenu izvela i zastavu s duginim bojama.<br><br>Ukratko, Duin nastup u Puli, iako nije ni pola godine iza nas, može se okarakterizirati kao jedan je od najboljih ove godine u Hrvatskoj, a svakako jedan od najatraktivnijih s obzirom da je Lipa došla po prvi put, k tome u svojim najboljim godinama. Koncert koji je trajao sat i pol vremena, a koji je odijeljen u četiri dijela, zatvorila je najvećim hitom s aktualnog albuma, “Houdini”, nakon kojeg se pokupila s pozornice te se upisala kao jedno od svjetskih imena koja su nastupila u rimskom amfiteatru.<br><br>No, morat ćemo istaknuti još jedan velik minus turneje. Naime, Dua Lipin management nije dopustio akreditacije medijima što je udarac na novinarska prava koji se ne smije ignorirati.<br><br>Setlista:<br><br>Prvi dio:<br>Training Season<br>One Kiss (Calvin Harris & Dua Lipa cover)<br>Illusion<br>Break My Heart<br>Levitating<br><br>Drugi dio:<br>These Walls<br>Be the One<br>Love Again<br>Pretty Please<br><br>Treći dio:<br>New Rules<br>Hallucinate<br>Electricity (Silk City & Dua Lipa)<br>Cold Heart (Elton John cover)<br><br>Četvrti:<br>Happy For You<br>Physical<br>Don’t Start Now<br>Houdini', 'dualipa.jpeg', 'glazba', 0),
(30, '2024-06-13 14:07:21', 'PORTO MORTO', 'Porto Morto stižu na Ljeto u MSU u Zagrebu', 'Nakon što je Konstrakta prošli tjedan otvorila Ljeto u MSU, koncertni program nastavljaju predvodnici JeboTon kolektiva, Porto Morto.<br><br>Porto Mortu su predvodnici plemena okupljenih oko kuće JeboTon, a njihov zvuk temelji se na mješavini art rocka, progresivnog popa i indie elektronike. Bend čine Roko Crnić, Hrvoje Klemenčić, Matija Brajković, Matej Perić, Marjan Uroić, Marin Živković i Antun Aleksa.<br><br>Njihov debitantski album “Porto Morto” objavljen je 2016. godine, dok je drugo po redu izdanje “Portofon” izašlo 2019. s pjesmama “Kuća” te “Hodaj”, koju je obilježila suradnja s Darkom Rundekom, a koja im je donijela tri nominacije za Porin. Godine 2020. pustili su u eter i “live session” sa sedam pjesama, a 2021. objavljuju spot za pjesmu “Vrijeme je za čilanje”. Singlom “Čekam ih”, najavili su treći album “Portopop”.<br><br>Osim koncerata, u sklopu Ljeta u MSU održavat će se filmske projekcije, izložbe, plesne predstave Antisezone i program Animafesta, svjetskog festivala animiranog filma.<br><br>Kako do ulaznica – Porto Morto u MSU?<br>Ulaznice možete nabaviti putem sustava Eventim i na recepciji MSU, a cijena im iznosi 19 € do dana koncerta te 23 € na dan koncerta. Kao partner eventa, omogućili smo i limitiranu količinu muzika.hr fanclub promo kodova s 20% popusta.', 'portomorto.jpg', 'glazba', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
