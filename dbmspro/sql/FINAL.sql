SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `FINAL`
--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$IElzRe3vNDhhoBbzJhqpZuKuI3N2Kn7fNlCdw.9Z8Y32FpKQl56BW');


--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(50) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch`) VALUES
(1, 'Computer'),
(2, 'EEE'),
(3, 'Mechanical');

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(200) NOT NULL,
  `roll_no` varchar(200) NOT NULL,
  `branch_id` int(50) NOT NULL,
  `sem_id` int(9) NOT NULL,
  `subj_id` int(200) NOT NULL,
  `marks` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--


INSERT INTO `results` (`result_id`, `roll_no`, `branch_id`, `sem_id`, `subj_id`, `marks`) VALUES
(1, 'AP23110010053', 1, 6, 33, 87),
(2, 'AP23110010053', 1, 6, 34, 99),
(3, 'AP23110010053', 1, 6, 37, 87),
(4, 'AP23110010053', 1, 6, 38, 69),
(5, 'AP23110010053', 1, 6, 32, 77),
(6, 'AP23110010053', 1, 6, 31, 99),
(7, 'AP23110010053', 1, 6, 35, 88),
(8, 'AP23110010053', 1, 6, 36, 98),
(9, 'AP23110010125', 1, 6, 33, 99),
(10, 'AP23110010125', 1, 6, 34, 87),
(11, 'AP23110010125', 1, 6, 37, 78),
(12, 'AP23110010125', 1, 6, 38, 69),
(13, 'AP23110010125', 1, 6, 32, 78),
(14, 'AP23110010125', 1, 6, 31, 97),
(15, 'AP23110010125', 1, 6, 35, 78),
(16, 'AP23110010125', 1, 6, 36, 69),
(17, 'AP23110010022', 1, 5, 27, 33),
(18, 'AP23110010022', 1, 5, 28, 99),
(19, 'AP23110010022', 1, 5, 11, 78),
(20, 'AP23110010022', 1, 5, 29, 99),
(21, 'AP23110010022', 1, 5, 30, 74),
(22, 'AP23110010022', 1, 5, 24, 66),
(23, 'AP23110010022', 1, 5, 44, 87),
(24, 'AP23110010022', 1, 5, 3, 77),
(25, 'AP23110010022', 1, 5, 25, 99),
(26, 'AP23110010022', 1, 5, 26, 87),
(27, 'AP23110010022', 1, 5, 5, 99),
(28, 'AP23110010002', 1, 1, 69, 66),
(29, 'AP23110010002', 1, 1, 65, 87),
(30, 'AP23110010002', 1, 1, 66, 79),
(31, 'AP23110010002', 1, 1, 67, 69),
(32, 'AP23110010002', 1, 1, 70, 88),
(33, 'AP23110010002', 1, 1, 68, 99),
(34, 'AP23110010002', 1, 1, 71, 100);


--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(9) NOT NULL,
  `semester` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);



--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `reg_id` int(255) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Roll_No` varchar(160) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `branch_id` int(100) NOT NULL,
  `sem_id` int(8) NOT NULL,
  `Reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Updated data for table `student`
--

INSERT INTO `student` (`reg_id`, `Name`, `Roll_No`, `Email`, `Gender`, `DOB`, `branch_id`, `sem_id`, `Reg_date`, `status`) VALUES
(1, 'Sowmya Sree','AP23110010053', 'sowmyasree@gmail.com', 'Female', '2002-10-23', 1, 6, '2023-01-01 17:34:31', 1),
(2, 'Dheera', 'AP23110010002', 'dheera@gmail.com', 'Male', '2008-01-09', 1, 1, '2023-01-01 17:35:09', 1),
(3, 'Meghana', 'AP23110010022', 'meghana@gmail.com', 'Female', '2002-07-09', 1, 5, '2023-01-01 17:36:06', 1),
(4, 'Radhika', 'AP23110010125', 'radhika@gmail.com', 'Female', '2002-07-19', 1, 6, '2023-01-01 17:37:03', 1),
(5, 'Pravallika', 'AP23110010091', 'pravallika@gmail.com', 'Female', '2002-07-30', 1, 5, '2023-01-01 17:38:00', 1),
(6, 'Aakanksha', 'AP23110010741', 'aakanksha@gmail.com', 'Female', '2023-01-01', 2, 5, '2023-01-01 17:38:29', 1),
(7, 'Asritha', 'AP23110010069', 'asritha2@gmail.com', 'Female', '2022-07-13', 2, 4, '2023-01-01 17:39:35', 1),
(8, 'Navya', 'AP23110010064', 'navya@gmail.com', 'Male', '2022-08-11', 1, 4, '2023-01-01 17:40:28', 1),
(9, 'Swetha', 'AP23110010016', 'swetha@gmail.com', 'Female', '2023-01-11', 1, 5, '2023-01-01 17:41:08', 1),
(10, 'Meghana R', 'AP23110010004', 'meghanar@gmail.com', 'Female', '2002-11-21', 3, 5, '2023-01-01 17:43:39', 1),
(11, 'Swetha K', 'AP23110010098', 'swethak@gmail.com', 'Female', '2023-01-25', 3, 6, '2023-01-01 17:44:06', 1),
(12, 'Navya S', 'AP23110010052', 'navyas@gmail.com', 'Female', '2022-12-27', 3, 5, '2023-01-01 17:44:35', 1);




--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subj_id` int(200) NOT NULL,
  `subj_name` varchar(200) NOT NULL,
  `subj_code` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subj_id`, `subj_name`, `subj_code`, `status`) VALUES
(1, 'Ordinary Differential Equations ', 'CSE101', 1),
(2, 'Feedback Control Systems ', 'EEE111', 1),
(3, 'Data Structures and Algorithms – I ', 'CSE202', 1),
(4, 'Data Structures and Algorithms -I Laboratory', 'CSE203', 1),
(5, 'Digital Logic Design ', 'CSE204', 1),
(6, 'Digital Logic Design Laboratory', 'CSE205', 1),
(7, 'Discrete Structures and Graph Theory ', 'CSE206', 1),
(8, 'Principles of Programming Languages', 'CSE207', 1),
(9, 'Principles of Programming Languages LAB', 'CSE208', 1),
(10, 'Vector Calculus', 'MATH301', 1),
(11, 'Biology for Engineers ', 'BIO101', 1),
(12, 'Object Oriented Programming ', 'CSE301', 1),
(13, 'Sensors and Automation ', 'EEE222', 1),
(14, 'Theory of Computation', 'CSE302', 1),
(15, 'Microprocessor Techniques ', 'CSE303', 1),
(16, 'Microprocessor Techniques Lab', 'CSE304', 1),
(17, 'Data Structures and Algorithms – II ', 'CSE305', 1),
(18, 'Data Structures and Algorithms – II Lab', 'CSE306', 1),
(19, 'Data Communication ', 'CSE307', 1),
(20, 'Probability and Statistics', 'MATH302', 1),
(21, 'German Language', 'LAN101', 1),
(22, 'Software Engineering', 'CSE308', 1),
(23, 'Robotics', 'EEE333', 1),
(24, 'Computer Organization', 'CSE309', 1),
(25, 'Database Management Systems ', 'CSE310', 1),
(26, 'Database Management Systems Lab', 'CSE311', 1),
(27, 'Artificial Intelligence ', 'CSE312', 1),
(28, 'Artificial Intelligence Lab', 'CSE313', 1),
(29, 'Computer Networks ', 'CSE314', 1),
(30, 'Computer Networks Lab', 'CSE315', 1),
(31, 'Finance for Engineers', 'MATH303', 1),
(32, 'Design-Simulate-Prototype', 'CSE316', 1),
(33, 'Advanced Microprocessors', 'EEE444', 1),
(34, 'Computer Graphics', 'CSE317', 1),
(35, 'Operating Systems', 'CSE318', 1),
(36, 'Operating Systems Lab', 'CSE319', 1),
(37, 'Data Science', 'CSE320', 1),
(38, 'Data Science Lab', 'CSE321', 1),
(39, 'Liberal Learning Course', 'LLC101', 1),
(40, 'Cloud and Big Data Platforms', 'CSE322', 1),
(41, 'Internet of Things', 'CSE323', 1),
(42, 'Project Stage-I', 'CSE324', 1),
(43, 'Parallel Computer Architecture and Programming ', 'CSE325', 1),
(44, 'Cryptography and Network Security', 'CSE326', 1),
(45, 'Parallel Computer Architecture Lab', 'CSE327', 1),
(46, 'Cryptography and Network Security Lab', 'CSE328', 1),
(47, 'Cloud and Big Data Platforms Lab', 'CSE329', 1),
(48, 'Intellectual Property Rights ', 'LAW101', 1),
(49, 'Compiler Construction ', 'CSE330', 1),
(50, 'Mobile and Ad-hoc Networks', 'CSE331', 1),
(51, 'Mobile and Ad-hoc Networks Lab', 'CSE332', 1),
(52, 'Computational Biology', 'BIO201', 1),
(53, 'Computational Biology Lab', 'BIO202', 1),
(54, 'Project Stage-II', 'CSE333', 1),
(55, 'Compiler Construction Lab', 'CSE334', 1),
(56, 'Basic Electrical Engineering', 'EEE101', 1),
(57, 'Univariate Calculus', 'CSE304', 1),
(58, 'Semiconductor Physics', 'PHY201', 1),
(59, 'Mechanical Fabshop', 'ME101', 1),
(60, 'Engineering Mechanics', 'ME102', 1),
(61, 'Engineering Graphics and Design', 'ME103', 1),
(62, 'Intro to Scientific Computation', 'CSE335', 1),
(63, 'Basic Electrical Engineering Lab', 'EEE102', 1),
(64, 'Semiconductor Physics Lab', 'PHY202', 1),
(65, 'Foundation of Mechanical Engineering', 'ME104', 1),
(66, 'Linear Algebra', 'CSE305', 1),
(67, 'Optics and Modern Physics', 'PHY301', 1),
(68, 'Programming for Problem Solving', 'CSE336', 1),
(69, 'Applied Chemistry', 'CHEM101', 1),
(70, 'Optics and Modern Physics Lab', 'PHY302', 1),
(71, 'Programming for Problem Solving Lab', 'CSE337', 1);




--
-- Table structure for table `subject_comb`
--

CREATE TABLE `subject_comb` (
  `comb_id` int(200) NOT NULL,
  `branch_id` int(50) NOT NULL,
  `sem_id` int(9) NOT NULL,
  `subj_id` int(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_comb`
--

INSERT INTO `subject_comb` (`comb_id`, `branch_id`, `sem_id`, `subj_id`, `status`) VALUES
(1, 1, 1, 65, 1),
(2, 1, 1, 66, 1),
(3, 1, 1, 67, 1),
(4, 1, 1, 68, 1),
(5, 1, 1, 69, 1),
(6, 1, 1, 70, 1),
(7, 1, 1, 71, 1),
(8, 1, 2, 56, 1),
(9, 1, 2, 57, 1),
(10, 1, 2, 58, 1),
(11, 1, 2, 59, 1),
(13, 1, 2, 60, 1),
(14, 1, 2, 61, 1),
(15, 1, 2, 63, 1),
(16, 1, 2, 64, 1),
(17, 1, 3, 1, 1),
(18, 1, 3, 2, 1),
(19, 1, 3, 3, 1),
(20, 1, 3, 4, 1),
(21, 1, 3, 5, 1),
(23, 1, 3, 6, 1),
(24, 1, 3, 7, 1),
(25, 1, 3, 8, 1),
(26, 1, 3, 9, 1),
(27, 1, 4, 10, 1),
(28, 1, 4, 11, 1),
(29, 1, 4, 12, 1),
(30, 1, 4, 13, 1),
(31, 1, 4, 14, 1),
(32, 1, 4, 15, 1),
(33, 1, 4, 16, 1),
(34, 1, 4, 17, 1),
(35, 1, 4, 18, 1),
(36, 1, 4, 19, 1),
(37, 1, 5, 20, 1),
(38, 1, 5, 21, 1),
(39, 1, 5, 22, 1),
(40, 1, 5, 23, 1),
(41, 1, 5, 24, 1),
(42, 1, 5, 25, 1),
(43, 1, 5, 26, 1),
(44, 1, 5, 27, 1),
(45, 1, 5, 28, 1),
(46, 1, 5, 29, 1),
(47, 1, 5, 30, 1),
(48, 1, 6, 31, 1),
(49, 1, 6, 32, 1),
(50, 1, 6, 33, 1),
(51, 1, 6, 34, 1),
(52, 1, 6, 35, 1),
(53, 1, 6, 36, 1),
(54, 1, 6, 37, 1),
(55, 1, 6, 38, 1),
(56, 1, 7, 39, 1),
(57, 1, 7, 40, 1),
(58, 1, 7, 41, 1),
(59, 1, 7, 44, 1),
(60, 1, 7, 47, 1),
(61, 1, 7, 48, 1),
(62, 2, 4, 50, 1),
(63, 2, 4, 51, 1),
(64, 2, 4, 1, 1),
(65, 2, 4, 2, 1),
(66, 2, 4, 5, 1),
(67, 2, 5, 70, 1),
(68, 2, 5, 11, 1),
(69, 2, 5, 8, 1),
(70, 2, 5, 44, 1),
(71, 2, 5, 3, 1),
(72, 3, 5, 1, 1),
(73, 3, 5, 2, 1),
(74, 3, 5, 5, 1),
(75, 3, 5, 8, 1),
(76, 3, 5, 31, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subj_id`);

--
-- Indexes for table `subject_comb`
--
ALTER TABLE `subject_comb`
  ADD PRIMARY KEY (`comb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `sem_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `reg_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subj_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `subject_comb`
--
ALTER TABLE `subject_comb`
  MODIFY `comb_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;
