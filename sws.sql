-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 12:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sws`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `cid` int(20) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `mobile_number` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `add_id` int(50) NOT NULL,
  `rid` int(50) NOT NULL,
  `add_title` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `addDescription` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `section` varchar(150) NOT NULL,
  `start_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `end_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `category` varchar(100) NOT NULL,
  `add_image` varchar(100) NOT NULL,
  `flag` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user_name`, `password`, `created_at`, `created_by`, `modified_by`, `modified_at`) VALUES
(1, 'admin', 'admin', '2020-01-03 10:07:20', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `magazine`
--

CREATE TABLE `magazine` (
  `magazine_id` int(10) NOT NULL,
  `magazine_name` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `magazine_status` varchar(50) NOT NULL,
  `cover_image` varchar(150) NOT NULL,
  `magazine_pdf` varchar(50) NOT NULL,
  `magazine_month` varchar(50) NOT NULL,
  `magazine_year` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `magazine`
--

INSERT INTO `magazine` (`magazine_id`, `magazine_name`, `magazine_status`, `cover_image`, `magazine_pdf`, `magazine_month`, `magazine_year`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'patrika1', '1', 'Aug2019_1.jpg', 'Aug_2019.pdf', 'August', 2020, '2020-01-03 18:28:42', 0, '0000-00-00 00:00:00.000000', 0),
(2, 'patrika2', '1', 'Aug2019_2.jpg', 'Aug_2019_cover.pdf', 'August', 2020, '2020-01-03 18:28:50', 0, '0000-00-00 00:00:00.000000', 0),
(3, 'patrika3', '1', 'Sep2019_1.jpg', 'Sep_2019.pdf', 'September', 2020, '2020-01-03 18:28:57', 0, '0000-00-00 00:00:00.000000', 0),
(4, 'patrika4', '1', 'Oct2019_1.jpg', 'Oct_2019.pdf', 'October', 2020, '2020-01-03 18:29:02', 0, '0000-00-00 00:00:00.000000', 0),
(6, 'demo6', '0', 'IMG_20190615_113848.jpg', 'Amit Chandrakar.pdf', 'November', 2020, '2020-03-29 05:43:03', 0, '0000-00-00 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `nid` int(30) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `news_cat` varchar(200) NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(100) NOT NULL,
  `publish_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` int(50) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`nid`, `title`, `news_cat`, `description`, `image`, `publish_date`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'Rajya Sabha Election: NCP Supremo Sharad Pawar, BJP\'s newest recruit Jyotiraditya Scindia in fray for 26 March polls', '1', '<p>New Delhi:&nbsp;Rajya Sabha Deputy Chairman Harivansh, NCP supremo Sharad Pawar, BJP&#39;s newest recruit Jyotiraditya Scindia and Congress veteran Digvijay Singh are among those in the fray for elections to 55 Rajya Sabha seats to be held on March 26 with a number of the contestants set to get elected unopposed.</p>\r\n\r\n<p>Friday was the last date of filing of nominations for the biennial polls. Fifty-one of these 55 seats from 17 states are falling vacant on different dates in April due to retirement of sitting members, while four other seats are already vacant due to resignation of members.</p>\r\n\r\n<p>Bypoll will also be held to a Rajya Sabha seat from Haryana vacated by former Union minister Birender Singh.</p>\r\n\r\n<p>Counting will be held on the evening of 26 March, an hour after the conclusion of polls.</p>\r\n\r\n<p>A keen battle is on the cards in Madhya Pradesh, where the Kamal Nath government faces a grim future following rebellion by at least 22 MLAs, as both the BJP and the Congress have announced two candidates each for the state&#39;s three seats.</p>\r\n\r\n<p>Scindia and Digvijay Singh are expected to comfortably win in the polls. The BJP&#39;s Sumer Singh Solanki and Phool Singh Baraiya of the Congress are likely to slug it out for the third seat.</p>\r\n\r\n<p>The two parties are comfortably placed to ensure the win of one of their candidates, and while the Congress appeared to have an edge for the third seat but the decision of its 22 MLAs to resign from the state assembly has upended the numbers game.</p>\r\n\r\n<p>Most of these MLAs are supporters of Scindia, who joined the BJP on Wednesday after quitting the Congress a day before.</p>\r\n\r\n<p>The official tally of the Congress in the 228-member assembly is 114 and the party also enjoyed the support of four Independents, two BSP and one SP MLA.</p>\r\n\r\n<p>If the resignations of the 22 MLAs, who are camping in Bengaluru, are accepted or they abstain from voting in the Rajya Sabha polls, then the actual strength of the assembly will fall to 206. The Congress, on its own, will then have 92 members and the BJP 107 seats.</p>\r\n\r\n<p>Two other candidates -- BJP&#39;s Ranjana Baghel and Ram Das Dahiwale, an independent -- have also filed their nominations in Madhya Pradesh.</p>\r\n\r\n<p>Apart from Madhya Pradesh, there are seven vacancies from Maharashtra, six from Tamil Nadu, followed by five from West Bengal and Bihar, four each from Odisha, Gujarat and Andhra Pradesh, three each from Assam and Rajasthan, two each from Telangana, Chhattisgarh, Haryana and Jharkhand, and one each from Himachal Pradesh, Manipur and Meghalaya.</p>\r\n\r\n<p>The ruling Bharatiya Janata Party and the opposition Congress are expected to win most of the seats in the elections but the two will also see their strength diminished marginally.</p>\r\n\r\n<p>The Trinamool Congress and the YSR Congress Party are expected to make significant gains in the 245-member Upper House after the March 26 elections.</p>\r\n\r\n<p>For the seven Rajya Sabha seats falling vacant in Maharashtra, Pawar and Union minister Ramdas Athawale, both sitting Rajya Sabha members; BJP&#39;s Udayanraje Bhosale, a descendant of Maratha warrior king Chhatrapati Shivaji Maharaj, and Bhagwat Karad; Congress general secretary Rajiv Satav, Shiv Sena deputy leader Priyanka Chaturvedi and former NCP minister Fauzia Khan are in the fray.</p>\r\n\r\n<p>Neighbouring Gujarat is also expected to witness a close contest with three candidates from the BJP -- Abhay Bharadwaj, Ramilaben Bara and Narhari Amin -- and two from the Congress -- Shaktisinh Gohil and Bharatsinh Solanki -- filing their nomination papers on Friday for four vacant seats.</p>\r\n\r\n<p>In the 182-member state assembly, the BJP has 103 members, the Congress 73, the Bharatiya Tribal Party 2, the NCP 1 and independent 1. Two seats are lying vacant.</p>\r\n\r\n<p>For victory on all the three seats, the BJP will require 111 votes, while the Congress will need 74 votes to win two seats.</p>\r\n\r\n<p>Independent MLA Jignesh Mevani on Friday extended his support to the Congress.</p>\r\n\r\n<p>In West Bengal, the ruling TMC has fielded Dinesh Trivedi, Arpita Ghosh, Mausam Noor and Subrata Bakshi. Its former MLA Dinesh Bajaj has also filed his nomination and may get the party&#39;s backing, TMC insiders said.</p>\r\n\r\n<p>Leader of Opposition Abdul Mannan alleged that Bajaj has been fielded by the TMC to defeat CPI(M)-Congress consensus candidate Bikash Ranjan Bhattacharyya in the fifth seat.</p>\r\n\r\n<p>All the five candidates in Bihar -- Harivansh (JDU), Ram Nath Thakur and Vivek Thakur (both BJP) and Prem Chand Gupta and A D Singh (both RJD) are expected to be declared elected on March 18, the last date for withdrawal of nominations.</p>\r\n\r\n<p>For the two seats in Jharkhand, the ruling JMM-Congress-RJD alliance has fielded JMM chief Shibu Soren and Shahzada Anwar of the Congress, while state BJP president Deepak Prakash is the party&#39;s candidate.</p>\r\n', '2.PNG', '2020-05-14 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(2, '‘Nero fiddled while Rome burned’: Opposition in Lok Sabha demands Amit Shah’s resignation over failure to control Delhi violence', '2', '<p><strong>New Delhi</strong>: Coming down heavily on the Centre over &quot;failure&quot; to contain violence in Delhi, the opposition in Lok Sabha on Wednesday demanded the resignation of Home Minister Amit Shah, but the BJP alleged a conspiracy behind the riots and sought to blame anti-CAA protests for the situation.</p>\r\n\r\n<p>As the House discussed the recent communal riots in the national capital that have claimed 52 lives, ruling and opposition members traded charges over alleged hate speeches by leaders before the outbreak of violence.&nbsp;Defending the government, the BJP members said the home minister and authorities took pro-active steps to control the situation.</p>\r\n\r\n<p>Initiating the discussion on &quot;recent law and order situation in some parts of Delhi&quot;, Congress leader in Lok Sabha Adhir Ranjan Chowdhury wondered how violence continued for three days despite the fact that Delhi Police is one of the best equipped in the country.&nbsp;&quot;The Home Minister (Amit Shah) will have to explain,&quot; he said.</p>\r\n\r\n<p><a href=\"https://images.firstpost.com/wp-content/uploads/2020/03/PTI11-03-2020_000211B-Copy.jpg\"><img alt=\" ‘Nero fiddled while Rome burned’: Opposition in Lok Sabha demands Amit Shah’s resignation over failure to control Delhi violence\" src=\"https://images.firstpost.com/wp-content/uploads/2020/03/PTI11-03-2020_000211B-Copy.jpg\" style=\"height:285px; width:380px\" /></a></p>\r\n\r\n<p>Union Home Minister Amit Shah in the Lok Sabha. PTI</p>\r\n\r\n<p>Hitting out at the prime minister, he said, Nero fiddled while Rome burned.&nbsp;When Delhi was witnessing violence, Modi was hosting US President Donald Trump in Ahmedabad, the Congress leader said.&nbsp;Chowdhury said while some claimed Hindus won, the others said Muslims won in the violence. &quot;The fact is that humanity was defeated,&quot; he said.</p>\r\n\r\n<p>He said the situation came under control soon after National Security Advisor Ajit Doval visited the violence-hit areas.&nbsp;&quot;Why could not the Home Minister go... NSA reports to the Prime Minister. Does this mean that the Prime Minister&#39;s Office had lost faith in the home ministry,&quot; Chowdhury said hitting out at Shah.</p>\r\n\r\n<p>Chowdhury alleged that Delhi High Court judge S Muralidhar was transferred out as he had questioned the failure of the Delhi Police in containing the violence.&nbsp;He said the &quot;midnight&quot; notification was aimed at preventing adverse strictures against the government.</p>\r\n\r\n<p>Nishikant Dubey (BJP) said the transfer was recommended by the Supreme Court collegium and the government had nothing to do with it.</p>\r\n\r\n<p>Chowdhury sought resignation of Shah, a demand echoed by TMC&#39;s Saugata Roy, CPI-M member AM Ariff and NK Premchandran of RSP.&nbsp;&quot;Mr Shah, in the name of God, go,&quot; Roy said while looking at Shah who was present in the House.</p>\r\n\r\n<p>AIMIM leader Asaduddin Owaisi said there is a &quot;tsunami of Hindutva hate&quot; and called for an impartial probe to find the perpetrators of the violence.&nbsp;Some of his remarks evoked sharp response from the Treasury benches, with at least two Union ministers - Ravi Shankar Prasad and Kishan Reddy - registering their protests.&nbsp;Speaker Om Birla also expunged certain remarks made by Owaisi.</p>\r\n\r\n<p>BJP members said evidence showed that stones and petrol bombs were stored in huge quantity to fuel the violence.&nbsp;BJP leader Meenakshi Lekhi alleged that some people are taking political benefit out of the incidents of violence.&nbsp;Referring to the killing of IB officer Ankit Sharma during the riots, she said 400 wounds were found on his body.&nbsp;&quot;What kind of hatred was this... we should discuss that also,&quot; she said, adding the riots were pre-planned.</p>\r\n\r\n<p>She also alleged that stones and catapults were found in the house of an AAP councillor and hate speeches were given by an MLA of the party.&nbsp;&quot;Every tenth home had catapults, which were used in the riots,&quot; she added.</p>\r\n\r\n<p>Lekhi hit back at the Opposition after it questioned the timing of transfer of Justice Muralidhar, saying IB reports of &quot;some people&quot; should be made public to clear the air.&nbsp;Lekhi, however, did not name anyone.&nbsp;&quot;Some judges, I won&#39;t name, some judges believe that unless a protest is violent, police will not take action. Who will decide when will the protest become violent.. the judges they have named.... They don&#39;t know that government cannot transfer without recommendation... transfer was not done, it had already happened.&nbsp;I want to say that the IB (Intelligence Bureau) reports about some people should be made public. Everyone will understand who was transferred and for what reason,&quot; she said.&nbsp;Danish Ali (BSP) demanded that certain remarks of Lekhi be expunged.</p>\r\n\r\n<p>Lok Sabha Speaker Om Birla said members should not take the names of any religion in the debate.&nbsp;Birla expunged certain names taken', '2.PNG', '2020-05-15 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(3, 'Amit Shah should resign for \'failing\' to control Delhi riots, says TMC MP Saugata Roy in LS; demands judicial inquiry into violence by sitting SC judge', '3', '<p><strong>New Delhi:</strong>&nbsp;TMC MP Saugata Roy on Wednesday said Home Minister Amit Shah should resign for &quot;failing&quot; to control the riots in Delhi and demanded a judicial inquiry by a sitting Supreme Court judge.</p>\r\n\r\n<p>Participating in a discussion on the violence in Delhi in Lok Sabha, Roy said the Delhi riots happened 72 years after Mahatma Gandhi was killed by a Hindu fanatic.</p>\r\n\r\n<p>&quot;Gandhi&nbsp;<em>ji</em>&nbsp;has been murdered again in Delhi by, you know who,&quot; Roy said while addressing the Chair.</p>\r\n\r\n<p>Taking on BJP MP Meenakshi Lekhi for defending BJP leaders for their controversial remarks, which he claimed instigated the violence, Roy said he has seldom heard such a communal speech ever.</p>\r\n\r\n<p><a href=\"https://images.firstpost.com/wp-content/uploads/2020/02/northeast-delhi-school-PTI.jpg\"><img alt=\" Amit Shah should resign for failing to control Delhi riots, says TMC MP Saugata Roy in LS; demands judicial inquiry into violence by sitting SC judge\" src=\"https://images.firstpost.com/wp-content/uploads/2020/02/northeast-delhi-school-PTI.jpg\" style=\"height:285px; width:380px\" /></a></p>\r\n\r\n<p>Schools were also vandalised in violence-affected areas. PTI</p>\r\n\r\n<p>Dubbing the BJP MP as &quot;Devil&#39;s Advocate&quot;, Roy said, &quot;She spent five minutes defending the most hated man. May I quote (William) Shakespeare and call her the Devil&#39;s Advocate?... She is the best Devil&#39;s Advocate possible. She has also been an advocate for the Delhi Police which has shown total inaction and ineptness in this whole riot in Delhi.&quot;</p>\r\n\r\n<p>Thereafter Roy trained his gun at Shah, who was present in the house while the TMC MP was speaking.</p>\r\n\r\n<p>He said that when the riots started on 24 February, Home Minister Shah was sitting in the front row at Motera Stadium (in Gujarat) welcoming US President Donald Trump.</p>\r\n\r\n<p>&quot;When Mr Shah should have been in Delhi Police control room, he was welcoming Mr Trump at Motera. There was no order to the police. Then on 25th, things went out of control. Armed mobs fought with each other on the streets of Delhi,&quot; Roy said.</p>\r\n\r\n<p>Demanding resignation of Shah, Roy raised questions on NSA Ajit Doval&#39;s visit to the riots-affected areas on 26 February and asked what was the Home Minister was doing.</p>\r\n\r\n<p>&quot;Is it NSA&#39;s business to control ordinary law and order situation? Why was the Home Minister absent in action? There is no explanation for the same,&quot; he said.</p>\r\n\r\n<p>The TMC leader said he feels bad standing face-to-face with Shah.</p>\r\n\r\n<p>&quot;He is still young, he has a good future. He should acknowledge responsibility for his failure to control or stop Delhi riots and bring peace in three days. In the name of God, go and do not stay in the Home Minister&#39;s position,&quot; Roy said, adding he is the man who could not prevent riots in Delhi, at a place 10 kilometres away from the Home Ministry.</p>\r\n\r\n<p>Roy demanded a judicial inquiry into the riots by a sitting Supreme Court judge and complete rehabilitation for all the riot victims.</p>\r\n', '1.PNG', '2020-05-22 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(4, '\'Karnataka was better prepared for COVID-19 than other states\': BS Yediyurappa on governance, jobs and coronavirus', '4', '<p>It has not been smooth sailing for Karnataka chief minister BS Yediyurappa over the past nine months since he assumed power. Initially, it was the uncertainty of a minority government, later the pressure from his own party legislators for cabinet berths, followed by floods in several districts. Just when he thought he would settle down to administer after presenting his tailor-made budget, the coronavirus pandemic struck.</p>\r\n\r\n<p>During the 44 days of the lockdown period so far, the 78-year old faced some embarrassing moments when some of his cabinet colleagues tried to upstage each other in their respective bids to handle the COVID-19 situation. The crisis has also taught Yediyurappa to become tech savvy and for a person who used to pull slips of paper from his pocket to prompt him on issues, the chief minister is now comfortable video-conferencing with Prime Minister Narendra Modi and state government officials.</p>\r\n\r\n<p>While the handling of migrant labourers&nbsp;&mdash; in terms of arranging transport for them&nbsp;&mdash; led to confusion, a course-correction was embarked upon after the Congress applied pressure. Yediyurappa&#39;s Rs 1,610-crore package for the unorganised sectors on Wednesday was also appreciated in all quarters. In an interview, he said, &quot;COVID-19 has taught a lesson not only to the elected representatives, but to all mankind that no one is bigger than God and nature.&quot;</p>\r\n\r\n<p>Edited excerpts of the interview follow:</p>\r\n\r\n<p><strong>While presenting the 2020-2021 budget, you had admitted that the state was facing the worst financial crisis ever as the GST received from the Centre for 2019-2020 was low. How has COVID-19 impacted the state&#39;s fiscal position?</strong></p>\r\n\r\n<p>Obviously, Karnataka is going through a financial crisis, which is a global phenomenon. Decrease in GST devolution is only one of the factors. We have been pursuing this matter with the Union government and hope to get some relief. But due to the pandemic, the situation is no better now. But we are making all efforts to mobilise funds and trying to reduce unnecessary expenditure. Resuming economic activities would provide&nbsp;a fresh lease of life, I believe.</p>\r\n\r\n<p><strong>Is there any plan to merge some of the departments such as minor irrigation with water resources and backward classes with social welfare to cut wasteful expenditure?&nbsp;</strong></p>\r\n\r\n<p>Yes, as part of bringing reforms and enhance efficiency in governance, we are looking at various possibilities. A cabinet sub-committee headed by Revenue Minister R Ashoka will examine this subject and submit its report soon. We will take necessary steps once the report is received.</p>\r\n\r\n<p><img alt=\" Karnataka was better prepared for COVID-19 than other states: BS Yediyurappa on governance, jobs and coronavirus\" src=\"https://images.firstpost.com/wp-content/uploads/2020/02/BS_Yediyurappa_PTI.jpg\" style=\"height:285px; width:380px\" /></p>\r\n\r\n<p>File image of Karnataka chief minister BS Yediyurappa. PTI</p>\r\n\r\n<p><strong>Why was there so much chaos in transporting migrants with the Karnataka State Road Transport Corporation (KSRTC) charging double to ferry them, especially when other states have sent special buses and arranged for trains to bring back daily wagers?</strong></p>\r\n\r\n<p>We are facing a crisis that has never occurred before. Although on the first day, we reduced the fare, free bus services were available for migrants till 7 May. On 3 May alone, 951 KSRTC buses were provided. Till 7 May, 1,00,500 migrants have travelled to their hometowns in 3,350 buses buses from Bengaluru. Free food and drinking water has been provided to all passengers and standard operating procedures (SOP) are being followed to prevent the spread of the disease.</p>\r\n\r\n<p><strong>Former prime minister HD Deve Gowda has urged you to announce a special package for the farmers on the lines of the support that is being given to milk producers? Would you consider it?</strong></p>\r\n\r\n<p>My government is monitoring the situation on all fronts. This was the reason we were able to announce a special package of Rs 1,610 crore for all sections of society including farmers. My government is a pro-farmer one and is aware of the farmers&#39; situation. During the lockdown, [my government] has taken all necessary steps to ensure that all farming activities including markets are unaffected. The Centre has released first instalment of PM-KISAN aid of Rs 2,000 to the farmers. The state government has also decided to release its first instalment. Flower, fruit and vegetable growers, MSMEs, badly-hit workers in unorganised sectors like barbers, washermen, autorickshaw and taxi drivers, and weavers will benefit from the special package.</p>\r\n\r\n<p><strong>Even as the state government is doing its best to help ease people&#39;s lives in the lockdown period, some BJP leaders have been misusing the situation. Food grain released by the Government of India is being repa', '2.PNG', '2020-05-14 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(5, 'Coronavirus Outbreak: Rahul Gandhi slams Centre\'s \'unfair\' decision to hike petrol, diesel prices; calls for move to be withdrawn', '1', '<p><strong>New Delhi:</strong>&nbsp;Terming the rise in petrol and diesel prices as &quot;unfair&quot;, Congress leader Rahul Gandhi on Wednesday said when the fight against COVID-19 is causing economic hardship to all, the government instead of reducing prices has raised them.</p>\r\n\r\n<p><a href=\"https://www.firstpost.com/health/coronavirus-outbreak-live-updates-covid-19-india-today-death-count-cases-lockdown-economic-crisis-latest-news-8335541.html\"><em><strong>Follow LIVE updates on Coronavirus Outbreak here</strong></em></a></p>\r\n\r\n<p>He demanded immediate rollback of the increased prices on the fuels.</p>\r\n\r\n<p><a href=\"https://images.firstpost.com/wp-content/uploads/2019/05/rahul-gandhi-pc-380jpg.jpg\"><img alt=\" Coronavirus Outbreak: Rahul Gandhi slams Centres unfair decision to hike petrol, diesel prices; calls for move to be withdrawn\" src=\"https://images.firstpost.com/wp-content/uploads/2019/05/rahul-gandhi-pc-380jpg.jpg\" style=\"height:285px; width:380px\" /></a></p>\r\n\r\n<p>File image of Congress president Rahul Gandhi. AFP</p>\r\n\r\n<p>&quot;The ongoing battle with the coronavirus is causing severe economic hardship for our crores of brothers and sisters. At this time, instead of reducing prices, the decision of the government to raise prices of petrol and diesel by Rs 10-13 per litre is unfair and should be withdrawn,&quot; he said in a tweet in Hindi.</p>\r\n\r\n<p>His remarks come after the central government hiked excise duty and cess on petrol by Rs 10 per litre and on diesel by Rs 13 a litre.</p>\r\n\r\n<p>Retail prices of petrol and diesel have, however, not been impacted by the rise in excise duty and cess as oil companies will adjust them against the recent fall in international crude oil prices.</p>\r\n\r\n<p>Petrol prices in the national capital were hiked by Rs 1.67 a litre and diesel by a steep Rs 7.10 per litre after the Delhi government raised local sales tax or value-added tax (VAT) on the two fuels.</p>\r\n\r\n<p>Petrol in Delhi now costs Rs 71.26 a litre as against Rs 69.59 previously, oil industry sources said. Diesel price has been hiked to Rs 69.39 per litre from Rs 62.29.</p>\r\n', '3.PNG', '2020-05-08 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(6, '\'Cruel and retrograde,\' says Omar Abdullah after J&K administration extends detention of Mehbooba Mufti, two others under PSA by three months', '3', '<p>National Conference leader Omar Abdullah slammed the Central government on Tuesday after the Jammu and Kashmir administration extended the detention of former chief minister Mehbooba Mufti by another three months under the stringent Public Safety Act.</p>\r\n\r\n<p>Mufti&#39;s detention was set to expire today.</p>\r\n\r\n<p>In a series of tweets, Abdullah termed the decision &quot;cruel and retrograde&quot;, saying, &quot;Nothing she has done or said in any way justifies the way the Indian state has treated her and the others detained&quot;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>He also said that despite the government&#39;s claims of normalcy in Jammu and Kashmir, &quot;the last few days coupled with the extension of Mufti&rsquo;s detention is proof enough that (Prime Minister Narendra) Modi ji has single handedly pushed Jammu and Kashmir back decades&quot;.</p>\r\n\r\n<p>In a similar move, the detention of former minister and senior National Conference leader Ali Mohammed Sagar, and senior PDP leader and uncle of Mufti, Sartaj Madani, was also extended by another three months, officials said.</p>\r\n\r\n<p>In a brief order by the Home Department of the Jammu and Kashmir administration, the extension of PSA was made under the public order provisions of the act.</p>\r\n\r\n<p>While Mufti is at present lodged at her official residence &#39;Fair View&#39;, which has been converted into a subsidiary jail, Sagar and Madani are in a government accommodation at Gupkar Road.</p>\r\n\r\n<p>Mufti was initially detained on 5 August last year when the Centre abrogated the special status of the erstwhile state and bifurcated it into two union territories &mdash; Ladakh, and Jammu and Kashmir.</p>\r\n\r\n<p>Later, her six-month preventive custody was extended by invoking PSA on 5 February this year along with Omar. However, Omar was released in March.</p>\r\n\r\n<p>Having spent over eight months in detention at two government facilities that were designated as sub-jails, Mufti was shifted to her home on 7 April, a move seen as a partial relief to her.</p>\r\n\r\n<p>Earlier, Mufti was lodged a government guesthouse in Chashma Shahi and a bunglow on Maulana Azad Road near Lal Chowk. Mufti heads the Peoples Democratic Party (PDP) which was in power in Jammu and Kashmir in alliance with the BJP till June 2018.</p>\r\n\r\n<p>Several political leaders inlcuding Omar, Mufti and former chief minister Farooq Abdullah were detained by the authorities on 5 August. The PSA of senior Abdullah and his son was revoked earlier in March this year.</p>\r\n\r\n<p>Mufti&#39;s daughter, Iltija, has moved a habeas corpus petition before the Supreme Court in February challenging her mother&#39;s detention.</p>\r\n\r\n<p>A three-judge bench had issued a notice to the Jammu and Kashmir administration seeking its response on the plea and posted the matter for 18 March. However, the petition was not taken up for hearing due to coronavirus outbreak.</p>\r\n\r\n<p>Habeas corpus is a writ seeking production of a person supposed to be in illegal detention before a court.</p>\r\n', '3.PNG', '2020-05-15 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(7, 'Congress leader Adhir Ranjan Chowdhury reappointed as chairperson of Parliament\'s Public Accounts Committee', '3', '<p><strong>New Delhi:&nbsp;</strong>Congress leader in Lok Sabha Adhir Ranjan Chowdhury has been reappointed as chairperson of the Parliament&#39;s public accounts committee (PAC), the Lok Sabha Secretariat said on Tuesday.</p>\r\n\r\n<p>Members of the public accounts committee are elected every year. The 22-member panel includes 15 members from the Lok Sabha and seven from the Rajya Sabha.</p>\r\n\r\n<p>Chowdhury was reappointed to the chairman of the committee by Lok Sabha Speaker Om Birla.</p>\r\n\r\n<p>The PAC examines accounts showing the appropriation of sums granted by Parliament for the expenditure of the Government of India, the annual financial accounts of the Government, and others.</p>\r\n', '2.PNG', '2020-05-08 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(8, 'Congress dismisses Narendra Modi\'s \'headline-grabbing\' Rs 20 lakh crore package announcement; BJP hails move aimed at making India \'self-reliant\'', '3', '<p><strong>New Delhi:</strong>&nbsp;The Congress on Tuesday dubbed the stimulus package of Rs 20 lakh crore announced by Prime Minister Narendra Modi as one that only grabs headlines, while the ruling BJP hailed it as the world&#39;s largest holistic package.</p>\r\n\r\n<p>The Congress and the CPI(M) said India was disappointed by the Prime Minister&#39;s silence on migrants&#39; woes as he has failed to address the issue.</p>\r\n\r\n<p>While Union Home Minister Amit Shah said the Modi government took decisions in the interest of the country, Union Finance Minister Nirmala Sitharaman said it was not just a financial package but a reform stimulus, a mindset overhaul and a thrust in governance.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Prime Minister Narendra Modi addressing the nation on Tuesday. ANI</p>\r\n\r\n<p>BJP president JP Nadda said with the announcement, Prime Minister Modi has laid the foundation of India leading the world in the 21st century and an &#39;Aatmanirbhar Bharat&#39; (self-reliant India) is the &#39;mantra&#39; for driving this change.</p>\r\n\r\n<p>The Congress, however, termed the Prime Ministers&#39;s address one that gave the country a headline, saying the nation was disappointed by his &quot;failure&quot; to address the woes of millions of migrants.</p>\r\n\r\n<p>Lok Sabha Speaker Om Birla said the Prime Minister&#39;s announcement would lift the country from the atmosphere of despair. He said his mantra of self-reliance will inject new energy into the country.</p>\r\n\r\n<p>&quot;The 21st century will be defined by India, Hon Prime Minister&#39;s message today has laid the foundation stone for implementing this. AatmanirbharBharat is our Mantra for a driving country towards this new change,&quot; Nadda tweeted.</p>\r\n\r\n<p>&quot;PM has declared the world&#39;s largest holistic relief package. The Modi govt has given financial packages of Rs 20 lakh crore to support every section of the society. It is around 10% of the Indian GDP. Hon PM&#39;s proactive approach will build an &#39;Aatmanirbhar Bharat&#39;,&quot; he added.</p>\r\n\r\n<p>Congress chief spokesperson Randeep Surjewala said the heartbreaking human tragedy of migrants walking back home needed compassion and care.</p>\r\n\r\n<p>&quot;Dear PM, What you said today gives the country and the media a HEADLINE,&quot; he said on Twitter.</p>\r\n\r\n<p>&quot;When the &#39;blank page&#39; is filled with &#39;Heartfelt help of people&#39;, the nation and Congress party will respond.</p>\r\n\r\n<p>&quot;India is deeply disappointed by your utter lack of empathy, sensitivity and failure to address the woes of millions of migrant workers,&quot; he said in a series of tweets.</p>\r\n\r\n<p>His colleague, Manish Tewari, tweeted, &quot;PMs speech can be summed up in one word - HEADLINE HUNTING. A NUMBER -20 LAKH CRORES. NO DETAILS.&quot;</p>\r\n\r\n<p>Rajasthan Chief Minister Ashok Gehlot, however, welcomed the package.</p>\r\n\r\n<p>&quot;The financial package announced by PM Modiji was much awaited. Better late than never. We welcome this,&quot; he tweeted.</p>\r\n\r\n<p>CPI(M) leader Sitaram Yechury said the prime minister has failed to address burning issues of migrants woes and hunger plaguing lakhs of Indians, even as he has not explained how the package will be used.</p>\r\n\r\n<p>&quot;Thousands are walking home, hungry and even dying. We were expecting some relief for them. Where is their free travel? Lakhs are going hungry, they need food. I am disappointed that these burning issues were not addressed,&quot; he added.</p>\r\n\r\n<p>Shah said the Modi government took decisions in the interest of the country and the relief package will help the poor, the farmers and the middle class.</p>\r\n\r\n<p>&quot;In every decision of the Modi government, the interest of the country and the countrymen has been at the centre. A special package of about Rs 20 lakh crores announced by the Modi government is reflective of this,&quot; he said.</p>\r\n\r\n<p>Sitharaman said, &quot;We shall convert the pandemic challenge into an opportunity. &#39;Aatmanirbhar Bharat&#39; will integrate not isolate.&quot;</p>\r\n\r\n<p>&quot;This shall not be just a financial package, but a reform stimulus, a mindset overhaul, and a thrust in governance,&quot; she tweeted.</p>\r\n\r\n<p>&quot;Now, we can confidently engage with the world. We aim at overall transformation and not incremental changes,&quot; Sitharaman said.</p>\r\n\r\n<p>Union Minister Prakash Javadekar said the package &quot;is the biggest package India has ever seen&quot;.</p>\r\n\r\n<p>Congress leader Abhishek Singhvi tweeted, &quot;If substantially, concretely, new proposal is 10 pc of GDP, it would be great. Both God and devil lie in details, not available. 10 pc should be additional, not counting old pre-corona schemes.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Congress spokesperson Jaiveer Shergill said, &quot;Hoping that the Rs 20 lakh crore package is not scripted with the same pen which was used to make promises of giving everyone Rs 15 lakh, cleaning &#39;Maa Ganga&#39;, bringing back black money in ', 'soap.PNG', '2020-05-08 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0),
(9, 'Gujarat HC declares BJP minister Bhupendrasinh Chudasama\'s win in 2017 Assembly polls as void for indulging in \'corrupt practices\'', '3', '<p><strong>Ahmedabad:</strong>&nbsp;The Gujarat High Court on Tuesday declared state BJP minister Bhupendrasinh Chudasama&#39;s election in 2017 as void on grounds of malpractice and manipulation.</p>\r\n\r\n<p><img alt=\" Gujarat HC declares BJP minister Bhupendrasinh Chudasamas win in 2017 Assembly polls as void for indulging in corrupt practices\" src=\"https://images.firstpost.com/wp-content/uploads/2020/05/bhupendrasinh_Chudasama_Twitter_380.jpg\" style=\"height:285px; width:380px\" /></p>\r\n\r\n<p>File image of Bhupendrasinh Chudasama. Twitter@imbhupendrasinh</p>\r\n\r\n<p>Justice Paresh Upadhyay cancelled Chudasama&#39;s election in an order passed on an petition filed by Congress candidate Ashwin Rathod, challenging the BJP leader&#39;s victory from Dholka constituency by a margin of 327 votes in the 2017 Gujarat Assembly polls.</p>\r\n\r\n<p>In his election petition, Rathod alleged that Chudasama indulged in &quot;corrupt practice and breach of many of the mandatory instructions of the Election Commission, at various stages of the election process, more particularly at the time of counting of votes&quot;.</p>\r\n\r\n<p>Chudasama currently holds charge of the education, law and justice, legislative and parliamentary affairs, and some other departments in the Vijay Rupani government.</p>\r\n', 'breadcrumb.PNG', '2020-05-10 18:30:00.000000', NULL, 0, '0000-00-00 00:00:00.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `cat_id` int(20) NOT NULL,
  `cat_name` varchar(500) NOT NULL,
  `cat_image` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`cat_id`, `cat_name`, `cat_image`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, 'Technology', 'short.jpg', '2020-05-14 17:11:57', 0, '2020-05-14 17:11:57', 0),
(2, 'politics', 'md.PNG', '2020-05-14 17:12:33', 0, '2020-05-14 17:12:33', 0),
(3, 'openemr', '2.PNG', '2020-05-14 17:14:10', 0, '2020-05-14 17:14:10', 0),
(4, 'slider', '3.PNG', '2020-05-14 17:20:18', 0, '2020-05-14 17:20:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `rid` int(10) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `mobileNumber` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topslider`
--

CREATE TABLE `topslider` (
  `id` int(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT current_timestamp(6),
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topslider`
--

INSERT INTO `topslider` (`id`, `title`, `description`, `image`, `created_at`, `created_by`, `modified_by`, `modified_at`) VALUES
(1, 'विश्वसनीय की जगह ‘गढ़बो नवा छत्तीसगढ़’ का दिया नारा', 'छत्तीसगढ़ की सत्ता हासिल करने के बाद सूबे की भूपेश बघेल सरकार ने राज्य का स्लोगन बदलने का बड़ा फैसला लिया है. राज्य सरकार ने छत्तीसगढ़ के तकरीबन 10 साल पुराने स्लोगन को बदल दिया है. विश्वसनीय छत्तीसगढ़ स्लोगन को बदलकर \'गढ़बो नवा छत्तीसगढ़\' कर दिया गया है. मालूम हो कि कांग्रेस ने अपने घोषणा पत्र में गढ़बो नवा छत्तीसगढ़ शब्द का इस्तेमाल जिसे अब राज्य का नया स्लोगन बना दिया गया है.', 'bg.jpg', '0000-00-00 00:00:00.000000', 0, 0, '2020-03-15 10:53:33'),
(2, '', '', 'bg1.jpg', '0000-00-00 00:00:00.000000', 0, 0, '2020-03-15 10:56:48'),
(3, '', '', 'bg2.jpg', '0000-00-00 00:00:00.000000', 0, 0, '2020-03-15 10:53:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazine`
--
ALTER TABLE `magazine`
  ADD PRIMARY KEY (`magazine_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `topslider`
--
ALTER TABLE `topslider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `add_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `magazine`
--
ALTER TABLE `magazine`
  MODIFY `magazine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `nid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topslider`
--
ALTER TABLE `topslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
