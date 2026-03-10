CREATE DATABASE vibeReadsdb;
USE vibeReadsdb;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";

-- Table structure for table `book_info`
CREATE TABLE `book_info` (
  `bid` INT NOT NULL PRIMARY KEY auto_increment,
  `name` VARCHAR(100) NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `category` VARCHAR(50) NOT NULL,
  `mood` VARCHAR(50) NOT NULL,
  `description` TEXT NOT NULL,
  `image` VARCHAR(50) NOT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

select * from orders;

-- Add data for table `book_info`
INSERT INTO `book_info` (`bid`, `name`, `title`, `price`, `category`,`mood`, `description`,`image`,  `date`) VALUES
(100 , 'The Hundred-Year-Old Man' , 'Jonas Jonasson' , 1190.00 , 'Fiction' , 'Happy' , 'A hilarious and feel-good story about a man who goes on a wild adventure at 100 years old.' , '100yr.png' , '2025-01-23 15:14:49'),
(101 , 'The Thursday Murder Club' , 'Richard Osman' , 1950.00 , 'Mystery' , 'Happy' , 'A charming and witty mystery solved by a group of retirees.' , 'murdar.jpg' , '2025-01-23 15:14:49'),
(102 , 'Red, White & Royal Blue' , 'Casey McQuiston' , 3490.00 , 'Romance' , 'Happy' , 'A funny and heartwarming love story between a prince and a U.S. president`s son.' , 'red.jpg' , '2025-01-23 15:14:49'),
(103 , 'The Lost City of Z' , 'David Grann' , 14246.00 , 'Adventure' , 'Happy' , 'An enthralling real-life adventure about the search for a mythical city.' , 'lostCity.jpg' , '2025-01-23 15:14:49'),
(104 , 'The Princess Bride' , 'William Goldman' , 2060.00 , 'Fantasy' , 'Happy' , 'A delightful tale of true love, adventure, and humor.' , 'prince.jpg' , '2025-01-23 15:14:49'),
(105 , 'Project Hail Mary' , 'Andy Weir' , 3145.00 , 'Science Fiction' , 'Happy' , 'A thrilling and witty space survival story.' , 'hail.jpg' , '2025-01-23 15:14:49'),
(106 , 'Educated' , 'Tara Westover' , 3180.00 , 'Non Fiction' , 'Happy' , 'An inspiring memoir about resilience and pursuing knowledge.' , 'educated.jpg' , '2025-01-23 15:14:49'),
(107, 'Atomic Habits', 'James C',  3843.00, 'knowledge','reflective', 'Her imaginative childrens books feature many natural animals that can be found in the British countryside', 'ah.png', '2025-01-23 15:14:49'),
(108, 'Darwin', 'Darwin D.', 1260.00, 'knowledge','peaceful', 'Beatrix Potter ', 'sddxc.jpg', '2023-02-24 10:54:38'),
(109, 'Capture The Crown ', 'Jennifer E.',  1350.00, 'Magic','excited', 'From the author of The Witch Boy trilogy comes a graphic novel about family, romance, and first love', 'gf.jpg', '2025-01-23 15:14:49'),
(110,  'Crush The King ', 'Jennifer L', 2342.00 , 'knowledge','curious', 'These stories are carefully chosen to highlight the power of the gods and how sometimes the demons challenge it. The stories are narrated in a way that would be suitable for children and ensures small moral lessons in each story. Children will learn that there are no short cuts to success, and our confidence is our biggest super power.', 'uuh.jpg', '2025-01-23 15:14:49'),
(111, 'Stephen King', 'Carre',   1616.00 , 'Adventure','adventurous', 'The political struggle in the ancient city of Hastinapur is escalating as the Pandavas and Kauravas are on the verge of war. But its the rise of the demonic Asura King, Mahendrasura, that most troubles Krishna. Fueled by vengeance, Mahendrasura is not looking to just win a battle. Instead, he in search of dark powers to eradicate humanity once and for all.', 'FGGH.jpg', '2025-01-23 15:14:49'),
(112, 'The Winter King', 'Christ C',  1970.00 , 'knowledge','curious', 'Trapped in an era beyond his wildest dreams, Abhay has managed to land right in the middle of all these conflicts. Along with Krishna and Suryaputra Karna, the responsibility to save the past, the present, and the future of mankind has fallen on Abhays shoulders. And for that, he must unlock ancient puzzles, encounter mythical beasts - and confront his terrifying destiny!', 'ghfh.jpg', '2025-01-23 15:14:49'),
(113, 'Ray Bearer', 'Jordan I.',  699.00 , 'Magic','inspired', 'Once upon a time there were four little Rabbits, and their names were -- ', 'jjj.jpg', '2025-01-23 15:14:49'),
(114, 'The Sea Girl', 'Adriene ',   2552.00 , 'romance','happy', 'From the authovel about family, romance, and first love. ', 'jhj.jfif', '2025-01-23 15:14:49'),
(115,  'Love Boat', 'Abile Hing', 2700.00 , 'Adventure','romantic', 'Feel the power of strength and banding together come alive through the celebration of our very own female animal characters in Lili the Lioness & Friends. Written, designed and produced in-house, this impactful read highlights the importance of community ', 'jkkj.jpg', '2025-01-23 15:14:49'),
(116, 'Seventh Sun', ' Lani Forbes',   3235.00 , 'Magic','curious',  'The terrible Asuras are pretty notorious. These demons have decided to spread chaos across the world and win over heaven. Here comes an Asura trying to kidnap mother Earth', 'kjljl.jpg', '2025-01-23 15:14:49'),
(117, 'Sunrise', 'Jhon D', 800.00 , 'Magic','curious',  'Charming but venturesome college student, Abhay Sharma, always thought the Mahabharata was just a story; until he set out to explore the secrets of an ancient temple – and finds himself transported five thousand years back in time!', 'hujh.jpg', '2025-01-23 15:14:49'),
(118, 'Batman Knight', 'DC',  9000.00 , 'Adventure','adventurous', 'This collection of adorable stories for children show us how the Asuras tried to defeat the Devas, and how the gods ultimately won over. These stories will entertain, educate and provide healthy enjoyment to the readers.', 'kjkjl.jpg', '2025-01-23 15:14:49'),
(119, 'Last Blood ', 'Alexander G',  2200.00 ,'Adventure', 'excited', 'The political struggle in the ancient city of Hastinapur is escalating as the Pandavas and Kauravas are on the verge of war. But its the rise of the demonic Asura King, Mahendrasura, that most troubles Krishna. Fueled by vengeance, Mahendrasura is not looking to just win a battle. Instead, he in search of dark powers to eradicate humanity once and for all.', 'hjhj.jpg', '2025-01-23 15:14:49'),
(120 , 'A Man Called Ove' , 'Fredrik Backman' , 2500.00 , 'Fiction' , 'reflective', 'A heartwarming story about life, loss, and human connections.' , 'ove.jpg' , '2025-01-23 15:14:49'),
(121 , 'The Shadow of the Wind' , 'Carlos Ruiz Zafón' , 16904.00 , 'Mystery' , 'reflective' , 'A literary mystery about the power of books and the secrets they hold.' , 'shadow.jpg' , '2025-01-18 22:57:32' ),
(122 , 'The Time Traveler`s Wife' , 'Audrey Niffenegger' , 2370.00 , 'Romance' , 'reflective' , 'A thought-provoking love story exploring time, memory, and devotion.' , 'wife.jpg' , '2025-01-18 22:57:32'),
(123 , 'The Old Man and the Sea' , 'Ernest Hemingway' , 890.00 , 'Adventure', 'reflective' , 'A reflective tale of struggle, resilience, and man`s connection to nature.' , 'old.jpg' , '2025-01-19 15:18' ),
(124 , 'The Ocean at the End of the Lane' , 'Neil Gaiman' , 3150.00 , 'Fantasy' , 'reflective' , 'A poignant and magical tale that reflects on memory and childhood.' , 'ocean.jpg' , '2025-01-19 15:18' ),
(125 , 'Flowers for Algernon' , 'Daniel Keyes' , 8126.00 , 'Science Fiction' , 'reflective' , 'A deeply moving tale about intelligence, self-awareness, and human nature' , 'flowers.jpg' , '2025-01-19 15:18' ),
(126 , 'The Art of Happiness' , 'Dalai Lama' , 1512.00 , 'Non Fiction' , 'reflective' , 'Insights into achieving inner peace and happiness.' , 'happiness.jpeg' , '2025-01-19 15:18' ),
(127 , 'The Road Less Traveled' , 'M. Scott Peck' , 1090.00 , 'Self Help' , 'reflective' , 'Explores the challenges of personal growth and self-reflection.' , 'road.jpeg' , '2025-01-19 15:18' ),
(128 , 'Shantaram' , 'Gregory David Roberts' , 3240.00 , 'Fiction' , 'adventurous', 'A thrilling story set in India, full of adventure, love, and danger.' , 'shantaram.jpg' , '2025-01-19 15:18' ),
(129 , 'The Da Vinci Code' , 'Dan Brown' , 2133.00 , 'Mystery' , 'adventurous', 'A fast-paced, globe-trotting mystery filled with puzzles and historical intrigue.' , 'brown.jpeg' , '2025-01-19 15:18' ),
(130 , 'Outlander' , 'Diana Gabaldon' , 2350.00 , 'Romance' , 'adventurous', 'A historical romance with time travel and epic adventures.' , 'outlander.jpg' , '2025-01-19 15:18' ),
(131 , 'Into Thin Air' , 'Jon Krakauer' , 3222.00 , 'Adventure' , 'adventurous', 'A gripping true story of survival on Mount Everest.' , 'into.jpg' , '2025-01-19 15:18' ),
(132 , 'Mistborn' , 'Brandon Sanderson' , 1813.00 , 'Fantasy' , 'adventurous', 'An epic fantasy featuring heists, rebellion, and incredible world-building.' , 'mistborn.jpg' , '2025-01-19 15:18' ),
(133 , 'Dune' , 'Frank Herbert' , 2781.00 , 'Science Fiction' , 'adventurous', 'An expansive sci-fi epic with political intrigue and survival on a desert planet.' , 'dune.jpeg' , '2025-01-19 15:18' ),
(134 , 'A Walk in the Woods' , 'Bill Bryson' , 9335.00 , 'Non Fiction' , 'adventurous', 'A humorous and insightful account of hiking the Appalachian Trail.' , 'walk.jpg' , '2025-01-19 15:18' ),
(135 , 'You Are a Badass' , 'Jen Sincero' , 3114.00 , 'Self Help' , 'adventurous', 'Motivational and adventurous in tone, inspiring you to take risks and chase your dreams.' , 'badass.jpeg' , '2025-01-19 19:57'),
(136 , 'Capture the crown' , 'Jennifer Estep' , 12390.00 , 'Fiction' , 'Romantic' , 'Gemma Ripley has a reputation for being a pampered princess who is more interested in pretty gowns, sparkling jewelry, and other frivolous things than learning how to rule the kingdom of Andvari. But her carefully crafted persona is just an act to hide the fact that Gemma is a powerful mind magier—and a spy.' , 'capture.jpg' , '2025-01-19 20.01');

-- Table structure for table `cart`
CREATE TABLE `cart` (
  `id` int(100) NOT NULL PRIMARY KEY auto_increment,
  `book_id` int(20) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(25) NOT NULL,
  `quantity` int(25) NOT NULL,
  `total` double(10,2) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
   FOREIGN KEY (`book_id`) REFERENCES `books`(`id`),
  FOREIGN KEY (`user_id`) REFERENCES `users_info`(`Id`)
);

select * from `cart`;
-- Table structure for table `confirm_order`
CREATE TABLE `confirm_order` (
  `order_id` int NOT NULL PRIMARY KEY auto_increment,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int NOT NULL,
  `address` varchar(500) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_books` varchar(500) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending',
  `date` varchar(50) NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES users_info(`Id`),
  `total_price` double(10,2) NOT NULL
);
 

-- Table structure for table `orders`
CREATE TABLE `orders` (
  `id` int NOT NULL ,
  `user_id` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` int NOT NULL,
  `book` varchar(50) NOT NULL,
  `unit_price` double(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `sub_total` double(10,2) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users_info(Id),
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ;


-- Table structure for table `users_info`
CREATE TABLE `users_info` (
  `Id` int NOT NULL PRIMARY KEY auto_increment,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
);

-- Table structure for table `books`
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    description VARCHAR(200) NOT NULL,
    rating INT NOT NULL,
    image VARCHAR(255) NOT NULL,
    mood varchar(50) not null,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE books 
MODIFY COLUMN category VARCHAR(50) NOT NULL DEFAULT 'Unknown',
MODIFY COLUMN description VARCHAR(200) NOT NULL DEFAULT 'No description available';


drop table books;

insert into books(id,title,author,price,rating,image,mood,created_at)
values
(100, 'The Hundred-Year-Old Man', 'Jonas Jonasson', 1190.00, 4.8, '100yr.png', 'Happy', '2025-01-23 15:14:49'),
(101, 'The Thursday Murder Club', 'Richard Osman', 1950.00, 3.9, 'murdar.jpg', 'Happy', '2025-01-23 15:14:49'),
(102, 'Red, White & Royal Blue', 'Casey McQuiston', 3490.00, 4.1, 'red.jpg', 'Happy', '2025-01-23 15:14:49'),
(103, 'The Lost City of Z', 'David Grann', 14246.00, 3.9, 'lostCity.jpg', 'Happy', '2025-01-23 15:14:49'),
(104, 'The Princess Bride', 'William Goldman', 2060.00, 4.3, 'prince.jpg', 'Happy', '2025-01-23 15:14:49'),
(105, 'Project Hail Mary', 'Andy Weir', 3145.00, 4.5, 'hail.jpg', 'Happy', '2025-01-23 15:14:49'),
(106, 'Educated', 'Tara Westover', 3180.00, 4.5, 'educated.jpg', 'Happy', '2025-01-23 15:14:49'),
(107, 'Atomic Habits', 'James C', 3843.00, 4.3, 'ah.png', 'reflective', '2025-01-23 15:14:49'),
(108, 'Darwin', 'Darwin D.', 1260.00, 4.0, 'sddxc.jpg', 'peaceful', '2023-02-24 10:54:38'),
(109, 'Capture The Crown', 'Jennifer E.', 1350.00, 4.0, 'gf.jpg', 'excited', '2025-01-23 15:14:49'),
(110, 'Crush The King', 'Jennifer L', 2342.00, 4.1, 'uuh.jpg', 'curious', '2025-01-23 15:14:49'),
(111, 'Stephen King', 'Carre', 1616.00, 4.1, 'FGGH.jpg', 'adventurous', '2025-01-23 15:14:49'),
(112, 'The Winter King', 'Christ C', 1970.00, 4.3, 'ghfh.jpg', 'curious', '2025-01-23 15:14:49'),
(113, 'Ray Bearer', 'Jordan I.', 699.00, 4.3, 'jjj.jpg', 'inspired', '2025-01-23 15:14:49'),
(114, 'The Sea Girl', 'Adriene', 2552.00, 4.1, 'jhj.jfif', 'happy', '2025-01-23 15:14:49'),
(115, 'Love Boat', 'Abile Hing', 2700.00,4.4, 'jkkj.jpg', 'romantic', '2025-01-23 15:14:49'),
(116, 'Seventh Sun', 'Lani Forbes', 3235.00,3.8, 'kjljl.jpg', 'curious', '2025-01-23 15:14:49'),
(117, 'Sunrise', 'Jhon D', 800.00, 4.2, 'hujh.jpg', 'curious', '2025-01-23 15:14:49'),
(118, 'Batman Knight', 'DC', 9000.00, 2.8, 'kjkjl.jpg', 'adventurous', '2025-01-23 15:14:49'),
(119, 'Last Blood', 'Alexander G', 2200.00, 4.2, 'hjhj.jpg', 'excited', '2025-01-23 15:14:49'),
(120, 'A Man Called Ove', 'Fredrik Backman', 2500.00, 4.4, 'ove.jpg', 'reflective', '2025-01-23 15:14:49'),
(121, 'The Shadow of the Wind', 'Carlos Ruiz Zafón', 16904.00, 4.3, 'shadow.jpg', 'reflective', '2025-01-18 22:57:32'),
(122, 'The Time Traveler`s Wife', 'Audrey Niffenegger', 2370.00,4.0, 'wife.jpg', 'reflective', '2025-01-18 22:57:32'),
(123, 'The Old Man and the Sea', 'Ernest Hemingway', 890.00, 3.8, 'old.jpg', 'reflective', '2025-01-19 15:18'),
(124, 'The Ocean at the End of the Lane', 'Neil Gaiman', 3150.00, 4.0, 'ocean.jpg', 'reflective', '2025-01-19 15:18'),
(125, 'Flowers for Algernon', 'Daniel Keyes', 8126.00, 4.2, 'flowers.jpg', 'reflective', '2025-01-19 15:18'),
(126, 'The Art of Happiness', 'Dalai Lama', 1512.00, 4.2, 'happiness.jpeg', 'reflective', '2025-01-19 15:18'),
(127, 'The Road Less Traveled', 'M. Scott Peck', 1090.00, 4.1, 'road.jpeg', 'reflective', '2025-01-19 15:18'),
(128, 'Shantaram', 'Gregory David Roberts', 3240.00,4.3, 'shantaram.jpg', 'adventurous', '2025-01-19 15:18'),
(129, 'The Da Vinci Code', 'Dan Brown', 2133.00, 3.9, 'brown.jpeg', 'adventurous', '2025-01-19 15:18'),
(130, 'Outlander', 'Diana Gabaldon', 2350.00, 4.3, 'outlander.jpg', 'adventurous', '2025-01-19 15:18'),
(131, 'Into Thin Air', 'Jon Krakauer', 3222.00, 4.2, 'into.jpg', 'adventurous', '2025-01-19 15:18'),
(132, 'Mistborn', 'Brandon Sanderson', 1813.00, 4.5, 'mistborn.jpg', 'adventurous', '2025-01-19 15:18'),
(133, 'Dune', 'Frank Herbert', 2781.00, 4.3, 'dune.jpeg', 'adventurous', '2025-01-19 15:18'),
(134, 'A Walk in the Woods', 'Bill Bryson', 9335.00, 4.1, 'walk.jpg', 'adventurous', '2025-01-19 15:18'),
(135 , 'You Are a Badass' , 'Jen Sincero' , 3114.00 , 4.3 , 'badass.jpeg' , 'adventurous', '2025-01-19 19:57'),
(136 , 'Capture the crown' , 'Jennifer Estep' , 12390.00 , 4.2 , 'capture.jpg' , 'romantic' , '2025-01-19 20.01');


SELECT o.id as order_id, 
       u.name as customer_name,
       o.sub_total as Sub_total
FROM orders o
INNER JOIN users_info u ON o.user_id = u.Id
WHERE o.sub_total > 3000;

-- Table structure for table `msg`
CREATE TABLE `msg` (
  `id` int(100) NOT NULL PRIMARY KEY auto_increment,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `number` int(20) NOT NULL,
  `msg` text NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users_info(Id),
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ;

CREATE TABLE `msg_replies` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_name` varchar(100) NOT NULL,
    `surname` varchar(100) NOT NULL,
    FOREIGN KEY (user_name) REFERENCES users_info(name),
     FOREIGN KEY (surname) REFERENCES users_info(surname),
    `original_msg_id` INT,
    `reply_message` TEXT,
    `reply_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (original_msg_id) REFERENCES msg(id)
);
drop table msg_replies;

SELECT * FROM msg;

/*-- Table structure for èbooks`
CREATE TABLE ebooks (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  description TEXT,
  price DECIMAL(10, 2),
  image_url VARCHAR(255)
);*/

/*-- Query 1: Fetch books in a specific category:

	SELECT * FROM `book_info` WHERE category = 'Adventure' LIMIT 8;

-- Query 2: Fetch orders with user details:

	SELECT co.order_id, co.order_date, ui.name, ui.email, co.total_price
	FROM `confirm_order` co 
	JOIN `users_info` ui ON co.user_id = ui.Id;

-- Query 3: Count books in each category:

	SELECT category, COUNT(*) AS total_books 
	FROM `book_info` 
	GROUP BY category;

-- Query 4: Search for books:

	SELECT * FROM `book_info` 
	WHERE name LIKE '%magic%' OR title LIKE '%magic%' OR category LIKE '%magic%';

-- Query 5: Retrieve books based on mood:
    SELECT * FROM `book_info` WHERE mood LIKE '%happy%';

-- Get cart details with book and user information
SELECT c.id as cart_id, 
       b.title as book_title, 
       u.name as user_name,
       c.quantity,
       c.total,
       c.date as cart_date
FROM cart c
INNER JOIN books b ON c.book_id = b.id
INNER JOIN users_info u ON c.user_id = u.Id;

-- Get order details with user information and payment status
SELECT o.order_id,
       u.name as customer_name,
       u.email,
       o.total_books,
       o.total_price,
       o.payment_status,
       o.order_date
FROM confirm_order o
INNER JOIN users_info u ON o.user_id = u.Id
WHERE o.payment_status = 'pending';

-- Find all happy mood books with ratings above 4.0
SELECT bi.name as book_name,
       bi.price,
       b.rating,
       bi.mood,
       bi.category
FROM book_info bi
INNER JOIN books b ON bi.name = b.title
WHERE bi.mood = 'Happy' 
AND b.rating > 4.0;

-- Get all adventure books with their ratings
SELECT bi.name as book_name,
       bi.title as author,
       bi.price,
       b.rating,
       bi.description
FROM book_info bi
INNER JOIN books b ON bi.name = b.title
WHERE bi.category = 'Adventure'
ORDER BY b.rating DESC;

-- Find total order value per user with their details
SELECT u.name,
       u.email,
       COUNT(o.order_id) as total_orders,
       SUM(o.total_price) as total_spent
FROM users_info u
INNER JOIN confirm_order o ON u.Id = o.user_id
GROUP BY u.Id, u.name, u.email
ORDER BY total_spent DESC;*/













