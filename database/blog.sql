-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 12:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(2, 'Academic Subjects', 'Explore more on academic subjects '),
(5, 'Uncategorized', 'Category for posts with no category'),
(8, 'Events and Outcomes', 'Events held at the collage and their outcomes and learnings'),
(9, 'Sports', 'Sports event achievements and experience'),
(10, 'Career Development', 'Building Career in the tech field '),
(11, 'Exam Prepration Stratigies', 'Helping to prepare for your exams');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(7, 'ICMS sports week days ', 'Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '1691206025blog4.jpg', '2023-08-04 15:53:25', 9, 2, 0),
(8, 'Effective Strategies For Exam Prepration', 'Exams can be a source of stress and anxiety for many students, but with the right strategies,you can approach them with confidence and achieve better results. Effective exam preparation goes beyond simply studying harder; it involves implementing smart techniques that optimize yourlearning and retention. In this blog, we will explore some proven strategies to help you prepare for exams and perform your best.\r\n 1. Understand the Exam Format:Start by familiarizing yourself with the exam format and requirements.Understand the types of questions, time limits, and any specific instructions provided. This knowledge will help you structure your study plan accordingly and focus on the most relevant topics.\r\n2.Create a Study Schedule:Developing a study schedule is crucial for efficient exam preparation. Break down your syllabus into manageable sections and allocate specific time slots for each topic. Be realistic about your study goals and avoid cramming at the last minute.Spread out your study sessions to allow for regular breaks and better retention of information.\r\n 3. Organize Your Study Materials:Maintain a well-organized system for your study materials. Keep your notes,textbooks, and reference materials neatly arranged. Use color-coded tabs or folders to categorize different subjects or topics. Having a structured study environment will save you time and make it easier to locate specific information when needed.\r\n4.Active Learning Techniques:Passive reading and highlighting are not always the most effective ways to\r\nstudy.Engage in active learning techniques to enhance comprehension and retention. Summarize concepts in your\r\nown words, create flashcards for key terms, or teach the material to someone else. Actively participating in\r\nthe learning process reinforces understanding and improves long-term memory.\r\n', '1691197943blog3.jpg', '2023-08-05 01:12:23', 11, 1, 0),
(9, 'Thinking of being a QA tester??? ', 'skills and traits that can benefit you as a QA tester:\r\n\r\nAttention to detail\r\nThe ability to focus on details ensures overall productivity, performance, efficiency and client satisfaction. Attention to detail is a learnable skill that you can improve by eliminating distractions, practicing observational skills and focusing on organization.\r\n\r\nOrganization\r\nOrganizational skills refer to the ability to create structure and order. Practicing organizational skills can improve your productivity and efficiency in the workplace.\r\n\r\nListening skills\r\nQA testers benefit from being able to comprehend, remember and implement instructions and standards that supervisors give them. Listening effectively is also an important aspect of communication among peers and subordinates.\r\n\r\nCommunication\r\nIt is not uncommon for quality assurance testers to work in teams and be required to interact with colleagues, supervisors, engineers, developers and clients. This communication may be written or verbal. The ability to discuss errors and problems tactfully is very beneficial.\r\n\r\nProblem-solving skills\r\nQuality assurance testers identify errors at work and are often tasked with finding the source of a problem and developing a solution. Being able to problem-solve independently and collaboratively is crucial in this position.\r\n\r\nDeductive reasoning\r\nDeductive reasoning is a type of logical thinking that focuses on forming answers or conclusions using factual statements or evidence. A common example of deductive reasoning is if-then statements, which are used widely in technological industries.\r\n\r\nTime management\r\nDepending on the problems encountered, a quality assurance tester&#039;s time requirements can vary unexpectedly. They are also commonly required to meet strict deadlines. Being able to plan and allocate time effectively is crucial to a QA tester&#039;s ability to perform their duties.', '1691206209img2.jpg', '2023-08-05 03:08:53', 2, 3, 0),
(10, 'Dreaming of becoming future frontend developer', 'This we need to learn to become a frontend developer are mentioned below:\r\nStep 1: Learn HTML, CSS and JavaScript\r\nThe front-end of a website essentially has three types of files: HTML, CSS, and JavaScript. \r\n\r\nHTML, which stands for Hypertext Markup Language, creates the basic structure of a website. It is the primary file type loaded in your browser when you look at a website. \r\n\r\nCSS, which stands for Cascading Style Sheet, designs and lays out the web page to enhance its aesthetics. With CSS, you can add elements such as colors, custom fonts, widgets, and animation to the website. \r\n\r\nJavaScript creates the logic of a website. By using this programming language, you can make the website responsive and interactive for users.\r\n\r\nLearning these three main languages is a must to enter the field of front-end development. \r\n\r\nStep 2: Practice for Free\r\nOnce you have learned the core concepts, you must practice and improve your coding skills. First, you should practice the coding languages you have learned and try to create projects on your own such as building a website. Several open-source online tools can help you practice HTML, CSS, and JavaScript.  \r\n\r\nAlso Read: Which Coding Language Should You Learn? Check This List Before You Start!\r\n\r\nStep 3: Connect With Other Front-End Developers\r\nLearning is always fun and effective when done with others. So while practicing your coding skills, you should connect with other front-end developers. There are many online communities you can easily join and communicate with other coders.\r\n\r\nParticipating in coding communities can help improve your soft skills, resolve queries, share projects, receive feedback, and help you become a better front-end developer.\r\n\r\nStep 4: Mastering Command Line\r\nA Command Line Interface (CLI) is a text-based user interface navigated by typing commands as prompts. It can perform various tasks with single-line instructions. Mastering CLI can help developers troubleshoot, perform regular tasks and have better control and management over the developed application.\r\n\r\nStep 5: Consider a Front-End Developer Online Course\r\nIf you aim to learn skills in a short course that fits into your budget, online courses for front-end development from top universities can provide an alternative to a full-time degree. \r\n\r\nThese bootcamps are short-term, intensive learning programs that can provide an educational structure and help you engage in the learning process. Investing in such courses can help you obtain skills to become a front-end developer and enhance job opportunities. \r\n\r\nStep 6: Seek a Mentor\r\nLook for a mentor who can guide you and help you hone your skills and knowledge. An expert who has spent many years in the field will be able to evaluate your strengths and areas of development much better than your peers. Speak to one such subject matter expert before diving into the development field. A good mentor can have a significant impact on your life and career.\r\n\r\nStep 7: Look for Internships\r\nNo learning is complete if you don&rsquo;t have hands-on experience. Internships can provide high-impact, experiential learning. It is an effective way to gain valuable exposure\r\n\r\nand give insights into the required skills for long-term career growth. Platforms like internships.com, LinkedIn internships, and ZipRecruiter can help you kick-start your career. ', '1691206658img3.jpg', '2023-08-05 03:36:38', 2, 1, 1),
(11, 'GIT and GITHUB SESSION', 'Successfully completed the first day of the git and GitHub session conducted by Samarpan Youth Initiative at ICMS. During the session, we covered various topics including the concept and functioning of version control, the significance of git and GitHub, the process of installing them, and the fundamental git commands. We extend our gratitude to Dibash Thapa, our skilled instructor, for the insightful session today.                                                         The final day of the session will be held on Tuesday, 20th June, at the same location. On that day, we will focus on team collaboration, discussing question and answer sessions, and gathering feedback. I kindly invite everyone to join us on 20th June for this valuable session. #syi #samarpanyouthinitiative #collegeclub #github #git #icms #workshop', '1691207268img4.jpg', '2023-08-05 03:45:23', 5, 14, 0),
(12, 'this is title', 'this is body', '1691217605blog4.jpg', '2023-08-05 06:40:05', 2, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'Peayush', 'Shrestha', 'Piyu', 'shresthapeayush@gmail.com', '$2y$10$x1jAoJ1YddOyPJUYkr6b0.yVR5kZ4hGLDKU9VhCEJgo30tPArJ9m.', '1690389141avatar2.jpg', 1),
(2, 'Manjit7', 'Dhungana', 'mjit', 'dhunganamanjit@gmail.com', '$2y$10$UpcTHwV2dd7Uh.ExUnJnku3If1bTKiYcgFVN0Gmhio/2vXDohKKdC', '1691164197avatar3.jpg', 0),
(3, 'Sakar', 'Dahal', 'sakar', 'sakardahal@gmail.com', '$2y$10$6wjQ1MBmY67gAJVpBSAei.0DsgYRGhnQnr1T0mQ7UaWVRSeXAlI3K', '1691164228avatar4.jpg', 0),
(14, 'Shushanta', 'Dhungana', 'shushanta', 'dhunganashushanta@gmail.com', '$2y$10$bc31B29ken9wNESQxV85ReSzNbNNdtVe1oOM6MlXC3iXnVUzUwJFK', '1691206756avatar7.jpg', 0),
(15, 'Neeschal', 'Dahal', 'neeschal', 'Neeschal@gmail.com', '$2y$10$SOucIS0es3uYtdw7DidZmu7Ueto.VERvMPI0givKnsiEVLxczno1q', '1691217515avatar4.jpg', 0),
(16, 'Bimochan', 'Bajimaya', 'bimochan', 'bmochanb@gmail.com', '$2y$10$e.XJJw1.gSqLCaacLLghze1wJVk0qGN6MmC8pSJEOrKTUv8MM8Fgq', '1696320898photograph.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
