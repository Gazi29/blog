-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 12:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = Inactive, 1 = Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `status`) VALUES
(1, 'Web Design', 'Blog about Web Design & Development', 1),
(2, 'AI', 'Blog about artificial intelligence', 1),
(3, 'Language', 'Blog about programming language', 1),
(4, 'Java', 'Blog about java', 1),
(5, 'App development', 'Blog about app development', 1),
(6, 'PHP', 'Blog about PHP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `post` longtext NOT NULL,
  `category_id` int(30) NOT NULL,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= for review, 1= published',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_published` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `category_id`, `img_path`, `status`, `date_updated`, `date_published`) VALUES
(6, 'Basic Knowledge about Web Design', '&lt;p class=&quot;b-post__subhead-wide lede&quot; style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 2rem; line-height: 1.6; color: rgb(0, 0, 0); font-size: 1.4rem; font-family: Graphik, sans-serif;&quot;&gt;Becoming a web designer doesn&rsquo;t have to be difficult. If you want to know the basic fundamentals, we&rsquo;ve put together this guide that covers everything you need to know to get started.&lt;span style=&quot;font-size: 1rem; letter-spacing: 0.1px;&quot;&gt;Web design has so many different facets and it can be hard to know just where you should begin. We want to make things easier for you and we&rsquo;ve put together a wealth of great information to help get you on your way to becoming a web designer.&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;b-post__subhead-wide lede&quot; style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 2rem; line-height: 1.6; color: rgb(0, 0, 0); font-size: 1.4rem; font-family: Graphik, sans-serif;&quot;&gt;&lt;span style=&quot;font-size: 1rem; letter-spacing: 0.1px;&quot;&gt;We&rsquo;ll explore these fundamental steps to learning web design:&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;b-read__article-content w-richtext&quot; style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; position: relative; z-index: 3; font-size: 1rem; color: rgb(0, 0, 0); font-family: Graphik, sans-serif;&quot;&gt;&lt;ol role=&quot;list&quot; style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 32px; margin-bottom: 24px; padding-left: 32px; overflow: hidden;&quot;&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Understand the key concepts of visual design&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Know the basics of HTML&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Understand CSS&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Learn the foundation of UX design&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Familiarize yourself with UI design&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Understand the basics of creating layouts&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Learn about typography&nbsp;&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 12px; line-height: 1.75;&quot;&gt;Put your knowledge into action and build something&lt;/li&gt;&lt;li style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-bottom: 0px; line-height: 1.75;&quot;&gt;Get a mentor&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;text-underline-position: under; -webkit-font-smoothing: antialiased; margin-top: 16px; margin-bottom: 32px; line-height: 1.75; font-size: 1rem; letter-spacing: 0.1px;&quot;&gt;&zwj;&lt;/p&gt;&lt;/p&gt;', 1, '1679048220_w.mp4', 1, '2023-03-17 16:17:35', '2023-03-17 11:17:00'),
(7, 'How to Change Your Career from Web Design to UX Design', 'Changing careers isn&rsquo;t as hard as it&rsquo;s often made out to be, especially if you&rsquo;ve got the right resources to help you make the change. For many web designers, now is the perfect time to make the switch into UX design. To start with, there&rsquo;s the monetary boost that comes with the change in career. According to PayScale, web designers in the US earn an average of $46,000 annually(1), while UX designers on the other hand earn a sizeable $74,000(2). Secondly, job opportunities for UX designers are booming: CNN reports that a total of 3,426,000 UX design jobs will be created in the US alone within the next 10 years(3). Furthermore, UX design is a meaningful job, not only because you get to work on a product from the inside out, but also because&mdash;as DMI has shown&mdash;UX design makes a significant impact on businesses, with UX design-driven businesses outperforming the S&amp;P index by 228%(4). So, where do you find the right resources to help you make your career change? Why, you&rsquo;re reading one right now.', 1, '1679047620_4_ui_ux.gif', 1, '2023-03-17 16:07:44', '2023-03-17 11:07:00'),
(8, 'What Do Web Design and UX Design Have in Common?', '&lt;p&gt;The job title &ldquo;Web Designer&rdquo; has many definitions, and indeed, what a web designer does is largely dependent on what the client or project requires. Some web designers simply create visual designs and/or high fidelity interactive prototypes of the website, and leave the coding of the website to front-end and back-end developers. The majority of web designers, however, do get involved with both the designing and (front-end) development of the website. Some web designers even regularly do user research and testing as part of their jobs (and if you&rsquo;re one of them, you&rsquo;re already almost ready for a job in UX design).&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;But no matter what your job as a web designer entails, here are some aspects of web design that can also be found in UX design.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Problem solving&lt;/p&gt;&lt;p&gt;Web designers look to solve problems for their clients; UX designers look to solve problems for their users. Web designers work with a problem solving process: first, they find out the problems their clients have, then design a web solution for them, and then proceed to develop and test the website before releasing it. And after a website is launched, web designers often are involved with further testing the site, collecting feedback from users, and then reiterating on the design.&lt;/p&gt;&lt;p&gt;Emotional design&lt;/p&gt;&lt;p&gt;When designing websites, web designers often make use of typography, color and layout to shape the emotions of users. A sense of credibility could be established, for instance, by using darker colors and serif fonts; similarly, a sense of fun could be created using colorful imagery and playful typography. Web designers are familiar with emotional design; that is, creating designs that elicit emotions from users. UX designers are also concerned with emotional design, but on a larger scale&mdash;they are concerned with eliciting emotions from users throughout their entire experience of using a product.&lt;/p&gt;&lt;p&gt;Multi-disciplinary&lt;br&gt;&lt;/p&gt;&lt;p&gt;Web design is a multi-disciplinary job, where you&rsquo;d need not only knowledge in design (typography, color theory) but also skills in developing a website (HTML, CSS, JavaScript). Some web designers are also involved in interaction design when they code for animations and interactions using CSS and/or JavaScript. UX design is also a multi-disciplinary field, but perhaps supercharged in that sense. UX designers need to make use of knowledge from the areas of psychology, user research, visual design, and even business to create the best UX for their products.&lt;/p&gt;', 1, '1679047800_Website design.mp4', 1, '2023-03-17 16:10:44', '2023-03-17 11:10:00'),
(9, 'The 10 Best AI Writers & Content Generators Compared', '&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;AI Content creation tools are becoming more widely available since the development of GPT-3 (and its release through Open.ai) has made AI much more accessible.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;To see just how good AI writers are, we selected 10 of the best content generators and road-tested them by comparing their output on the same topic.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;We ran our own mini Turing Test while testing the AI content generators.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;We asked our audience if they could tell the difference between machine and human-generated content through social media polls.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;Are machines taking over the content industry? Read on and find out!&lt;/p&gt;&lt;h2 style=&quot;font-family: Inter, sans-serif; font-weight: 700; clear: both; overflow-wrap: break-word; letter-spacing: 0.1px; font-size: 32px; margin-top: 60px; margin-bottom: 20px; color: rgb(37, 37, 37);&quot;&gt;How GPT-3 Is Shaking Up Content Creation&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;GPT-3, the language prediction model, was introduced in May 2020 and is widely available for public use through Open AI.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;The quality of GPT-3 output was a huge leap forward from GPT-2 toward asking a machine to write intelligible cohesive content.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;The downside to the development of GPT-3 and vastly improved content creation tools: How do you keep pace with the output of a machine?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;Google has been looking at solving the potential issues of the predicted explosion of AI content to ensure their search results don&rsquo;t become swamped with low-quality content.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;They recently restated that&nbsp;&lt;a href=&quot;https://www.searchenginejournal.com/google-says-ai-generated-content-is-against-guidelines/444916/&quot; style=&quot;color: inherit; transition: all 0.2s ease 0s; border-bottom: 2.5px solid rgb(113, 194, 27); text-decoration-line: none !important;&quot;&gt;AI content is against their guidelines&lt;/a&gt;&nbsp;and updated their webmaster guidelines documentation.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;How can they distinguish between a machine and just badly written human content?&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;The progress and development of AI writers and content tools is only just getting started.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;Private investment in AI more than doubled last year to $93.5 billion in 2021.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;This means that more machine learning tools are being developed that will become more integrated into the tools we use as marketers and SEO professionals.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;Meta recently announced&nbsp;&lt;a href=&quot;https://www.searchenginejournal.com/human-level-ai/448006/#close&quot; style=&quot;color: inherit; transition: all 0.2s ease 0s; border-bottom: 2.5px solid rgb(113, 194, 27); text-decoration-line: none !important;&quot;&gt;a new research project&lt;/a&gt;&nbsp;into next-generation AI.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;They aim to create an AI that processes data like humans and would be indistinguishable from a human.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;When that might be available is not known.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 34px; color: rgb(37, 37, 37); font-family: Lora, serif; font-size: 19px; letter-spacing: -0.2px;&quot;&gt;Machine domination aside, in this article, we will review a selection of the current best content creation tools to see how they compare.&lt;/p&gt;', 2, '1679047920_Ai Content Writing Tools - Free to Best Value.mp4', 1, '2023-03-17 16:12:53', '2023-03-17 11:12:00'),
(10, 'App Development Blogs', '&lt;h2 id=&quot;android-app-development-blogs&quot; style=&quot;margin-top: -96px; margin-bottom: 16px; font-weight: 600; line-height: 37px; font-size: 30px; word-break: break-word; padding-top: 100px; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif; text-align: center;&quot;&gt;&lt;b style=&quot;font-weight: bold; padding-top: 110px; display: block; margin-top: -110px;&quot;&gt;Android App Development&lt;/b&gt;&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;Android is one of the most popular operating systems in the world &mdash; it&rsquo;s mobile market share is 75.44% worldwide. The internet is full of blogs that provide you with valuable insights on how to build an app which will run on this OS. Below you can find five most insightful blogs on&nbsp;&lt;a href=&quot;https://litslink.com/services/android-app-development&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;Android app development&lt;/a&gt;:&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://android-developers.googleblog.com/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;1. Android Developers Blog&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;It comes as no surprise that Google powers one of the best blogs on Android app development. There you can find the latest news on the operating system, its updates, and other useful tips and tricks. The contributors to the blog are Google professionals with hands-on experience in Android app development. With such an insightful source at hand, you will definitely find what you are looking for.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: Android developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 2.01+ million followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Youtube&lt;/b&gt;: 800K+ subscribers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://www.androidauthority.com/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;2. Android Authority&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;Android Authority has everything you need to know about Android apps, games, phones, laptops, or tablets. The blog provides you with detailed reviews on the latest Android updates, its features, development issues, and the best Android apps to install on your phone. Moreover, the resource acquaints you with comparison charts of Android devices so that you can make the best choice. Android Authority is a perfect app development blog for both new and experienced developers.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: general audience, Android developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Facebook&lt;/b&gt;: 2.3+ million followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 1.01+ million followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Youtube:&lt;/b&gt;&nbsp;3.36+ million subscribers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Instagram&lt;/b&gt;: 796K+ followers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://proandroiddev.com/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;&lt;br&gt;3. ProAndroidDev&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;Published on Medium, ProAndroidDev has a lot of Google and Android contributors, who share their insights into the best tricks and tips of mobile development. Visit the blog to find out everything you want to know about the&nbsp;&lt;a href=&quot;https://litslink.com/technologies/flutter-development&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;creation of a Flutter app&lt;/a&gt;&nbsp;in 30 minutes, best usage of Kotlin for Android development, and many other tech-related how-to topics.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: Android developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 4K+ followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Facebook&lt;/b&gt;: 60K+ followers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://androidweekly.net/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;4. Android Weekly&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;It is a real &ldquo;gold mine&rdquo; for Android developers and designers, who want to stay updated on all the&nbsp;&lt;a href=&quot;https://litslink.com/blog/mobile-development-trends&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;latest trends&lt;/a&gt;. Android Weekly provides news, tips, and how-to tutorials on creating savvy apps. You can also find there code snippets from GitHub and other useful tricks that are updated on a weekly basis.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers:&nbsp;&lt;/b&gt;Android developers and designers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;:15K+ followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Facebook&lt;/b&gt;: 4.4K+ followers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://fragmentedpodcast.com/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;5. Fragmented&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;You can read articles on app development blogs and also listen to Android podcasts. Fragmented thoroughly covers tech-related topics targeted at diverse audience. Both beginners and proficient developers will find useful information applicable to projects of different complexity.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: Android developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 9.8K+ followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Youtube&lt;/b&gt;: 760+ followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;img decoding=&quot;async&quot; class=&quot;alignnone wp-image-3574 size-full&quot; src=&quot;https://litslink.com/wp-content/uploads/2019/10/android-development-blogs_1-min.jpeg&quot; alt=&quot;Best Android app development blogs | LITSLINK company Blog&quot; width=&quot;1440&quot; height=&quot;800&quot; srcset=&quot;https://litslink.com/wp-content/uploads/2019/10/android-development-blogs_1-min.jpeg 1440w, https://litslink.com/wp-content/uploads/2019/10/android-development-blogs_1-min-300x167.jpeg 300w, https://litslink.com/wp-content/uploads/2019/10/android-development-blogs_1-min-1024x569.jpeg 1024w, https://litslink.com/wp-content/uploads/2019/10/android-development-blogs_1-min-768x427.jpeg 768w&quot; sizes=&quot;(max-width: 1440px) 100vw, 1440px&quot; style=&quot;height: auto; max-width: 100%; width: auto;&quot;&gt;&lt;/p&gt;&lt;h2 id=&quot;ios-app-development-blogs&quot; style=&quot;margin-top: -96px; margin-bottom: 16px; font-weight: 600; line-height: 37px; font-size: 30px; word-break: break-word; padding-top: 100px; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif; text-align: center;&quot;&gt;&lt;b style=&quot;font-weight: bold; padding-top: 110px; display: block; margin-top: -110px;&quot;&gt;iOS App Development Blogs&lt;/b&gt;&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;Now it&rsquo;s time to have a look at some popular iOS resources:&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://iosdevweekly.com/&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;1. iOS Dev Weekly&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;This mobile application development blog provides a new set of hand-picked articles on&nbsp;&lt;a href=&quot;https://litslink.com/services/iphone-app-development&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;iOS mobile development&lt;/a&gt;&nbsp;on a weekly basis. Subscribe to iOS Dev Weekly to get the latest information at your email. Learn about Swift features, quick tips, and other iOS tech-related topics.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: iOS developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 13.6K+ followers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://developer.apple.com/news/&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;2. Apple Developer News and Updates&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;Official site for iOS developers provides the latest articles on different matters &mdash; how to submit your applications to the App store, notifications on iOS updates,&nbsp;&lt;a href=&quot;https://litslink.com/technologies/swift-development&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;Swift&lt;/a&gt;, Siri,&nbsp;&lt;a href=&quot;https://litslink.com/services/machine-learning-services&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;machine learning&lt;/a&gt;, and other equally important topics.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: NA&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://www.objc.io/blog/&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;3. objc.io&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;The website provides rich mobile development blog where you can find various tutorials on iOS and macOS development. The resource has free and paid content. General information is provided at no extra. Moreover, on objc.co, you can find books on mobile app development topics.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: iOS and macOS developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 34.1+ followers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Youtube&lt;/b&gt;: 1.41K+ subscribers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;http://iosdevelopertips.com/&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;4. iOS Developer Tips&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;The blogs offer a wide variety of tricks, tips, advice, tutorials for iOS development. Looking for information on how to use Flutter for your iOS app or how to handle errors in Swift &mdash; iOS Developer Tips is what you need.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: iOS developers&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 50.3K+ followers&lt;/p&gt;&lt;h4 style=&quot;margin-bottom: 0.5rem; font-size: 28px; word-break: break-word; color: rgba(0, 0, 0, 0.85); font-family: Montserrat, sans-serif;&quot;&gt;&lt;a href=&quot;https://appadvice.com/appnn&quot; style=&quot;color: rgb(22, 144, 211); text-decoration-line: none;&quot;&gt;5. AppAdvice&lt;/a&gt;&lt;/h4&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;This blog on mobile technology offers articles on the best iOS mobile apps, messages apps, Apple TV and Watch apps. In addition, there are a lot of best iOS games charts and gadget guides and deals. At AppAdvice, you can find everything you need to know about the best iOS mobile products. .&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Readers&lt;/b&gt;: general iOS audience&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1rem; color: rgb(21, 23, 46); font-size: 16px; line-height: 27px; word-break: break-word; font-family: Montserrat, sans-serif;&quot;&gt;&lt;b style=&quot;font-weight: bold;&quot;&gt;Twitter&lt;/b&gt;: 88.9K+followers&lt;/p&gt;', 5, '1679047500_custom-apps.gif', 1, '2023-03-17 16:05:04', '2023-03-17 11:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_img`
--

CREATE TABLE `post_img` (
  `id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `fname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `about` longtext NOT NULL,
  `blog_name` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `contact`, `email`, `address`, `about`, `blog_name`, `date_updated`) VALUES
(1, '', 'teamauthor@gamil.com', '', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;b style=&quot;background: transparent; position: relative; font-size: 14px;&quot;&gt;&lt;span style=&quot;background: transparent; position: relative; font-size: 24px;&quot;&gt;About us&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;b&gt;This is a technological content based blog website .Here people can access easily, read blog and can give valuable feedback for improvement.&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Our Team Member-&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Amit Paul-1802002&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Ahnaf Shahriar Rafat-1802009&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Daniel Roy-1802027&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Gazi Farid Ahammad-1802029&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;Contact Us--&lt;/b&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;b&gt;teamauthor@gamil.com&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 'Author', '2023-03-16 18:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(4, 'AdminPanel', 1, 'admin', 'admin1234', 0, '2023-03-16 18:55:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_img`
--
ALTER TABLE `post_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_img`
--
ALTER TABLE `post_img`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
