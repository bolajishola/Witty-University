S--Creating a new database named "WittyUniversity"
CREATE DATABASE WittyUniversity;

--Making use of WittyUniversity Database
USE WittyUniversity;

--Creating Table 1 named "Students"
CREATE TABLE Students (
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE,
major VARCHAR(50) 
);

--Creating Table 2 named "Courses"
CREATE TABLE Courses (
course_id VARCHAR(10) PRIMARY KEY,
course_name VARCHAR(50),
department VARCHAR(50),
credit_hours INT
);

--Creating Table 3 named "Enrollments"
CREATE TABLE Enrollments (
enrollment_id INT PRIMARY KEY,
student_id INT, 
course_id VARCHAR(10),
enrollment_date DATE
-- Referencing foreign keys
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

--Adding a new coluumn named "email" to the "Students Table"
ALTER TABLE Students
ADD email VARCHAR(50);

-- Inserting data into the Students table
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, major, email)
VALUES 
(1, 'Junie', 'Giabuzzi', '06-Jul-1997', 'Accounting', 'jgiabuzzi0@forbes.com'),
(2, 'Anton', 'Judkins', '06-Apr-1997', 'Mass Communication', 'ajudkins1@desdev.cn'),
(3, 'Westley', 'Mc Kellen', '19-May-1996', 'Philosophy', 'wmckellen2@stumbleupon.com'),
(4, 'Isobel', 'Puden', '03-Nov-1996', 'Pharmacy', 'ipuden3@csmonitor.com'),
(5, 'Michaella', 'Danaher', '30-May-1998', 'Computer Science', 'mdanaher4@bbb.org'),
(6, 'Corie', 'Scane', '18-Oct-1995', 'Business Administration', 'cscane5@yolasite.com'),
(7, 'Vernice', 'McCullouch', '20-Sep-1995', 'Philosophy', 'vmccullouch6@un.org'),
(8, 'Stevena', 'Whistance', '03-Jul-1997', 'Public Administration', 'swhistance7@huffingtonpost.com'),
(9, 'Pia', 'Curryer', '11-Nov-1997', 'Philosophy', 'pcurryer8@apache.org'),
(10, 'Krysta', 'Peverell', '24-Jul-1996', 'Public Administration', 'kpeverell9@artisteer.com'),
(11, 'Hendrick', 'Dunnico', '19-Jan-1999', 'Pharmacy', 'hdunnicoa@gizmodo.com'),
(12, 'Mirabel', 'Allone', '02-Jan-1999', 'Computer Science', 'malloneb@alibaba.com'),
(13, 'Jori', 'Heppner', '27-Jun-1998', 'Computer Engineering', 'jheppnerc@mapquest.com'),
(14, 'Rebekah', 'Tingey', '17-Apr-1995', 'Computer Engineering', 'rtingeyd@oaic.gov.au'),
(15, 'Sheela', 'Houndson', '01-Aug-1995', 'Accounting', 'shoundsone@amazon.com'),
(16, 'Matthaeus', 'De la Yglesia', '06-Jul-1995', 'Pharmacy', 'mdelayglesiaf@pinterest.com'),
(17, 'Janna', 'Fisher', '05-May-1997', 'Philosophy', 'jfisherg@google.pl'),
(18, 'Hunfredo', 'Dawton', '29-Jul-1996', 'Computer Engineering', 'hdawtonh@marriott.com'),
(19, 'Hamid', 'Pinckney', '11-Apr-1998', 'Accounting', 'hpinckneyi@hostgator.com'),
(20, 'Dreddy', 'Caddy', '19-Apr-1998', 'Medicine', 'dcaddyj@netvibes.com'),
(21, 'Roseline', 'Bermingham', '22-May-1997', 'Business Administration', 'rberminghamk@unesco.org'),
(22, 'Davie', 'Edess', '14-Apr-1997', 'Public Administration', 'dedessl@hhs.gov'),
(23, 'Ibby', 'Daskiewicz', '03-Jan-1999', 'Accounting', 'idaskiewiczm@yahoo.co.jp'),
(24, 'Alejandra', 'Escala', '21-May-1997', 'Business Administration', 'aescalan@miitbeian.gov.cn'),
(25, 'Cedric', 'Thumnel', '03-Apr-1996', 'Accounting', 'cthumnelo@blog.com'),
(26, 'Biron', 'Straw', '04-Sep-1997', 'Medicine', 'bstrawp@booking.com'),
(27, 'Kiersten', 'Glanert', '22-Aug-1996', 'Pharmacy', 'kglanertq@odnoklassniki.ru'),
(28, 'Gregorio', 'Fendlen', '19-Jan-1997', 'Mass Communication', 'gfendlenr@comcast.net'),
(29, 'Benn', 'Mackin', '05-Dec-1998', 'Accounting', 'bmackins@w3.org'),
(30, 'Jammal', 'Just', '02-Jan-1999', 'Business Administration', 'jjustt@google.co.jp'),
(31, 'Donalt', 'De Normanville', '22-Oct-1998', 'Public Administration', 'ddenormanvilleu@ycombinator.com'),
(32, 'Henrietta', 'Hindmore', '25-Oct-1998', 'Medicine', 'hhindmorev@ocn.ne.jp'),
(33, 'Zacharias', 'Segges', '13-Jan-1999', 'Medicine', 'zseggesw@time.com'),
(34, 'Travus', 'Bothams', '26-Aug-1998', 'Pharmacy', 'tbothamsx@answers.com'),
(35, 'Amalea', 'Ridgedell', '12-May-1997', 'Accounting', 'aridgedelly@yahoo.co.jp'),
(36, 'Jori', 'Chicotti', '14-Oct-1998', 'Accounting', 'jchicottiz@wikimedia.org'),
(37, 'Corbin', 'Cadding', '21-Feb-1998', 'Accounting', 'ccadding10@tuttocitta.it'),
(38, 'Bran', 'Radbourn', '22-May-1997', 'Business Administration', 'bradbourn11@ebay.com'),
(39, 'Cordula', 'Blunt', '19-Oct-1997', 'Computer Engineering', 'cblunt12@mediafire.com'),
(40, 'Kalinda', 'Canadas', '05-Aug-1995', 'Philosophy', 'kcanadas13@latimes.com'),
(41, 'Shandra', 'Fancourt', '23-Jan-1996', 'Philosophy', 'sfancourt14@ameblo.jp'),
(42, 'Cecilla', 'Revel', '02-Sep-1997', 'Accounting', 'crevel15@wikispaces.com'),
(43, 'Findlay', 'Santino', '17-Mar-1998', 'Accounting', 'fsantino16@ustream.tv'),
(44, 'Griffin', 'Bovis', '24-Nov-1997', 'Accounting', 'gbovis17@globo.com'),
(45, 'Kimberli', 'Landers', '29-Dec-1997', 'Pharmacy', 'klanders18@parallels.com'),
(46, 'Roobbie', 'Verling', '20-Nov-1995', 'Accounting', 'rverling19@indiegogo.com'),
(47, 'Erminie', 'Rockhill', '15-Mar-1997', 'Computer Engineering', 'erockhill1a@about.me'),
(48, 'Kalina', 'Pasley', '04-Sep-1995', 'Pharmacy', 'kpasley1b@unblog.fr'),
(49, 'Agretha', 'Marr', '29-Nov-1995', 'Public Administration', 'amarr1c@umich.edu'),
(50, 'Sandro', 'Rigate', '08-Jun-1997', 'Medicine', 'srigate1d@cisco.com');

--Inserting data into the Courses table
INSERT INTO Courses (course_id, course_name, department, credit_hours)
VALUES
('C001', 'Introduction to Computer Science', 'Computer Science', 3),
('C002', 'Calculus I', 'Mathematics', 4),
('C003', 'English Composition', 'English', 3),
('C004', 'History of Art', 'Art History', 3),
('C005', 'Chemistry 101', 'Chemistry', 4),
('C006', 'Psychology 101', 'Psychology', 3),
('C007', 'Introduction to Business', 'Business Administration', 3),
('C008', 'Physics Fundamentals', 'Physics', 4),
('C009', 'Sociology Basics', 'Sociology', 3),
('C010', 'French Language 101', 'Modern Languages', 3),
('C011', 'Environmental Science', 'Environmental Studies', 4),
('C012', 'Algebra II', 'Mathematics', 3),
('C013', 'Introduction to Literature', 'Literature', 3),
('C014', 'Macro Economics', 'Economics', 3),
('C015', 'Physical Education', 'Health Sciences', 2),
('C016', 'Introduction to Music', 'Music', 3),
('C017', 'Political Science 101', 'Political Science', 3),
('C018', 'Organic Chemistry', 'Chemistry', 4),
('C019', 'Introduction to Psychology', 'Psychology', 3),
('C020', 'Introduction to Marketing', 'Marketing', 3),
('C021', 'Statistics', 'Mathematics', 4),
('C022', 'Spanish Language 101', 'Modern Languages', 3),
('C023', 'Introduction to Philosophy', 'Philosophy', 3),
('C024', 'Computer Networks', 'Computer Science', 4),
('C025', 'Anthropology Basics', 'Anthropology', 3),
('C026', 'Artificial Intelligence', 'Computer Science', 4),
('C027', 'World History', 'History', 3),
('C028', 'Microeconomics', 'Economics', 3),
('C029', 'Introduction to Sociology', 'Sociology', 3),
('C030', 'Japanese Language 101', 'Modern Languages', 3),
('C031', 'Physical Chemistry', 'Chemistry', 4),
('C032', 'Developmental Psychology', 'Psychology', 3),
('C033', 'Managerial Accounting', 'Accounting', 3),
('C034', 'Organizational Behavior', 'Business Administration', 3),
('C035', 'Astronomy Fundamentals', 'Astronomy', 4),
('C036', 'Linear Algebra', 'Mathematics', 3),
('C037', 'English Literature Survey', 'Literature', 3),
('C038', 'International Relations', 'Political Science', 3),
('C039', 'Cell Biology', 'Biology', 4),
('C040', 'Consumer Behavior', 'Marketing', 3),
('C041', 'Art History Survey', 'Art History', 3),
('C042', 'Data Structures', 'Computer Science', 4),
('C043', 'Human Geography', 'Geography', 3),
('C044', 'Neuroscience', 'Psychology', 4),
('C045', 'Financial Accounting', 'Accounting', 3),
('C046', 'Marketing Research', 'Marketing', 3),
('C047', 'Inorganic Chemistry', 'Chemistry', 4),
('C048', 'Social Psychology', 'Psychology', 3),
('C049', 'Operations Management', 'Business Administration', 3),
('C050', 'Introduction to Statistics', 'Mathematics', 4);

--Inserting data into the Enrollment table
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
(101, 1, 'C001', '2021-02-05'),
(102, 2, 'C002', '2021-02-06'),
(103, 3, 'C003', '2021-02-07'),
(104, 4, 'C004', '2021-02-08'),
(105, 5, 'C005', '2021-02-09'),
(106, 6, 'C006', '2021-02-10'),
(107, 7, 'C007', '2021-02-11'),
(108, 8, 'C008', '2021-02-12'),
(109, 9, 'C009', '2021-02-13'),
(110, 10, 'C010', '2021-02-14'),
(111, 11, 'C011', '2021-02-15'),
(112, 12, 'C012', '2021-02-16'),
(113, 13, 'C013', '2021-02-17'),
(114, 14, 'C014', '2021-02-18'),
(115, 15, 'C015', '2021-02-19'),
(116, 16, 'C016', '2021-02-20'),
(117, 17, 'C017', '2021-02-21'),
(118, 18, 'C018', '2021-02-22'),
(119, 19, 'C019', '2021-02-23'),
(120, 20, 'C020', '2021-02-24'),
(121, 11, 'C021', '2021-02-15'),
(122, 12, 'C022', '2021-02-16'),
(123, 13, 'C023', '2021-02-17'),
(124, 14, 'C024', '2021-02-18'),
(125, 15, 'C025', '2021-02-19'),
(126, 16, 'C026', '2021-02-20'),
(127, 17, 'C027', '2021-02-21'),
(128, 18, 'C028', '2021-02-22'),
(129, 19, 'C029', '2021-02-23'),
(130, 20, 'C030', '2021-02-24'),
(131, 11, 'C011', '2022-03-15'),
(132, 12, 'C012', '2022-03-16'),
(133, 13, 'C013', '2022-03-17'),
(134, 14, 'C014', '2022-03-18'),
(135, 15, 'C015', '2022-03-19'),
(136, 16, 'C016', '2022-03-20'),
(137, 17, 'C017', '2022-03-21'),
(138, 18, 'C018', '2022-03-22'),
(139, 19, 'C019', '2022-03-23'),
(140, 20, 'C020', '2022-03-24'),
(141, 1, 'C041', '2023-08-15'),
(142, 2, 'C042', '2023-08-16'),
(143, 3, 'C043', '2023-08-17'),
(144, 4, 'C044', '2023-08-18'),
(145, 5, 'C045', '2023-08-19'),
(146, 6, 'C046', '2023-08-20'),
(147, 7, 'C047', '2023-08-21'),
(148, 8, 'C048', '2023-08-22'),
(149, 9, 'C049', '2023-08-23'),
(150, 10, 'C050', '2023-08-24');

SELECT *
FROM Students;

SELECT *
FROM Courses;

SELECT *
FROM Enrollments;