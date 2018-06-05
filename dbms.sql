-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2016 at 09:30 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `doc_id` varchar(11) NOT NULL,
  `doc_name` varchar(15) NOT NULL,
  `doc_gender` varchar(1) NOT NULL,
  `doc_age` int(3) NOT NULL,
  `doc_address` varchar(50) NOT NULL,
  `doc_city` varchar(20) NOT NULL,
  `doc_state` varchar(20) NOT NULL,
  `doc_dept` varchar(15) NOT NULL,
  `doc_fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`doc_id`, `doc_name`, `doc_gender`, `doc_age`, `doc_address`, `doc_city`, `doc_state`, `doc_dept`, `doc_fees`) VALUES
('doc1', 'A J Cronin', 'M', 54, 'plot 101', 'Banglore', 'Karnataka', 'Physician', 500),
('doc2', 'Malini Kakkar', 'F', 47, 'plot107', 'Delhi', 'Delhi', 'Eye Therapist', 500),
('doc3', 'Sanjay Gupta', 'M', 32, 'plot103', 'Meerut', 'Uttar Pradesh', 'Orthopedics', 800),
('doc4', 'Monica Agarwal', 'F', 34, 'plot 104', 'Vasundra', 'Uttar Pradesh', 'Gynecologist', 1000),
('doc5', 'Amit Agarwal', 'M', 36, 'plot 105', 'Vasundra', 'Uttar Pradesh', 'ENT', 500),
('doc6', 'Shameer Rehman', 'M', 45, 'plot108', 'Shadra', 'Uttar Pradesh', 'Surgeon', 1000),
('doc7', 'Sanjana Seghal', 'F', 34, 'plot110', 'Mumbai', 'Maharashtra', 'Neurologist', 1200),
('V_doc1', 'Robin hook', 'M', 48, 'plot102', 'Kolkata', 'West Bengal', 'ENT', 600),
('V_doc2', 'Vinod Singh', 'M', 58, 'plot106', 'Gwallior', 'Madhya Pradesh', 'Neurologist', 1000),
('V_doc3', 'Ashutosh Singh', 'M', 47, 'plot109', 'Meerut', 'Uttar Pradesh', 'Surgeon', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

CREATE TABLE `doctor_patient` (
  `p_id` varchar(30) NOT NULL,
  `doc_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`p_id`, `doc_id`) VALUES
('p-24-04-2016-01', 'doc3'),
('p-24-04-2016-02', 'doc5'),
('p-24-04-2016-03', 'doc2'),
('p-24-04-2016-04', 'V_doc3'),
('p-24-04-2016-05', 'V_doc3'),
('p-24-04-2016-06', 'doc7'),
('p-24-04-2016-07', 'doc1'),
('p-24-04-2016-08', 'doc5'),
('p-24-04-2016-09', 'V_doc1'),
('p-24-04-2016-10', 'doc4'),
('p-24-04-2016-11', 'doc6'),
('p-24-04-2016-12', 'V_doc2'),
('p-24-04-2016-13', 'V_doc2'),
('p-24-04-2016-14', 'doc1'),
('p-24-04-2016-15', 'doc3'),
('p-24-04-2016-16', 'doc6'),
('p-24-04-2016-17', 'doc7'),
('p-24-04-2016-18', 'doc5'),
('p-24-04-2016-19', 'doc3'),
('p-24-04-2016-20', 'V_doc3'),
('p-24-04-2016-21', 'V_doc2'),
('p-24-04-2016-22', 'doc1'),
('p-24-04-2016-23', 'V_doc2'),
('p-24-04-2016-24', 'doc4'),
('p-24-04-2016-25', 'doc2'),
('p26', 'doc6'),
('p27', 'doc4'),
('p28', 'doc3');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_phone`
--

CREATE TABLE `doctor_phone` (
  `doc_id` varchar(11) NOT NULL,
  `doc_phone` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_phone`
--

INSERT INTO `doctor_phone` (`doc_id`, `doc_phone`) VALUES
('doc1', 9876543210),
('doc2', 9876543211),
('doc3', 9876543212),
('doc4', 9876543213),
('doc5', 9876543214),
('doc6', 9876543215),
('doc7', 9876543216),
('V_doc1', 9876543217),
('V_doc2', 9876543218),
('V_doc3', 9876543219);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE `guardian_details` (
  `p_id` varchar(30) NOT NULL,
  `guardian_name` varchar(30) NOT NULL,
  `guardian_gender` varchar(1) NOT NULL,
  `guardian_age` int(3) NOT NULL,
  `guardian_address` varchar(25) NOT NULL,
  `guardian_city` varchar(20) NOT NULL,
  `guardian_state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`p_id`, `guardian_name`, `guardian_gender`, `guardian_age`, `guardian_address`, `guardian_city`, `guardian_state`) VALUES
('p-24-04-2016-02', 'Neelam Agarwal', 'F', 45, 'Plot No-145/29', 'Meerut', 'Uttar Pradesh'),
('p-24-04-2016-03', 'Pawan Agarwal', 'M', 47, 'Plot No-145/29', 'Meerut', 'Uttar Pradesh'),
('p-24-04-2016-04', 'Sanjay Prakash', 'M', 54, 'plot2', 'Bangalore', 'Karnataka'),
('p-24-04-2016-04', 'Vasu Prakash', 'M', 24, 'plot2', 'Bangalore', 'Karnataka'),
('p-24-04-2016-05', 'Radhey Shyaam', 'M', 35, 'plot 3', 'Raipur', 'Chattishgarh'),
('p-24-04-2016-06', 'Damini Chauhan', 'F', 45, 'plot 4', 'Lucknow', 'Uttar Pradesh'),
('p-24-04-2016-11', 'Kanta Bai', 'F', 56, 'Tapu, Nigara', 'Vijaynagram', 'Andhra Pradesh'),
('p-24-04-2016-15', 'Mukesh Gupta', 'M', 45, 'plot 12', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-15', 'Poonam Gupta', 'F', 40, 'plot 12', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-18', 'Sahil Agarwal', 'M', 35, 'plot 15', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-18', 'Shalini Agarwal', 'F', 32, 'plot 15', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-19', 'Aditya Trivedi', 'M', 66, 'plot 16', 'Balaghat', 'Madhya Pradesh'),
('p-24-04-2016-19', 'Shubham Verma', 'M', 32, 'plot 154', 'Balaghat', 'Madhya Pradesh'),
('p-24-04-2016-23', 'Anjana kumar', 'F', 42, 'plot 20', 'Gurgaon', 'Madhya Pradesh'),
('p-24-04-2016-23', 'Ashwarya Kumar', 'M', 45, 'plot 20', 'Gurgaon', 'Uttar Pradesh'),
('p-24-04-2016-27', 'Aditi Arora', 'F', 23, 'Plot 1257', 'Bangalore', 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_phone`
--

CREATE TABLE `guardian_phone` (
  `p_id` varchar(30) NOT NULL,
  `guardian_name` varchar(15) NOT NULL,
  `guardian_phone` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian_phone`
--

INSERT INTO `guardian_phone` (`p_id`, `guardian_name`, `guardian_phone`) VALUES
('p-24-04-2016-05', 'Radhey Shyam', 9875643224),
('p-24-04-2016-02', 'Neelam Agarwal', 9876543220),
('p-24-04-2016-03', 'Pawan Agarwal', 9876543221),
('p-24-04-2016-04', 'Vasu Prakash', 9876543222),
('p-24-04-2016-04', 'Sanjay Prakash', 9876543223),
('p-24-04-2016-06', 'Damini Chauhan', 9876543225),
('p-24-04-2016-11', 'Kanta Bai', 9876543226),
('p-24-04-2016-15', 'Poonam Gupta', 9876543227),
('p-24-04-2016-15', 'Mukesh Gupta', 9876543228),
('p-24-04-2016-18', 'Shalini Agarwal', 9876543229),
('p-24-04-2016-18', 'Sahil Agarwal', 9876543230),
('p-24-04-2016-19', 'Aditya Trivedi', 9876543231),
('p-24-04-2016-19', 'Shubham Verma', 9876543232),
('p-24-04-2016-23', 'Anjana Kumar', 9876543233),
('p-24-04-2016-23', 'Ashwarya kumar', 9876543234),
('p-24-04-2016-27', 'Aditi Arora', 9876543235);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_rooms`
--

CREATE TABLE `hospital_rooms` (
  `r_id` varchar(11) NOT NULL,
  `r_type` varchar(20) NOT NULL,
  `r_numbers` varchar(19) NOT NULL,
  `r_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_rooms`
--

INSERT INTO `hospital_rooms` (`r_id`, `r_type`, `r_numbers`, `r_cost`) VALUES
('EW', 'Emergency Ward', '001', 3000),
('GW', 'General Ward', '003', 400),
('ICU', 'ICU', '002', 3750),
('r1', 'Double Bed AC', '101-105', 2200),
('r2', 'Single Bed Non-AC', '201-205', 900),
('r3', 'Double Bed Non-AC', '205-210', 1500),
('r4', 'Single Bed AC', '106-110', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `lab_details`
--

CREATE TABLE `lab_details` (
  `lab_id` varchar(11) NOT NULL,
  `lab_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_details`
--

INSERT INTO `lab_details` (`lab_id`, `lab_name`) VALUES
('L1', 'Radiology'),
('L2', 'Pathology'),
('L3', 'Sonography'),
('L4', 'Colonscopy');

-- --------------------------------------------------------

--
-- Table structure for table `lab_tests`
--

CREATE TABLE `lab_tests` (
  `lab_id` varchar(11) NOT NULL,
  `lab_testname` varchar(50) NOT NULL,
  `lab_testcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_tests`
--

INSERT INTO `lab_tests` (`lab_id`, `lab_testname`, `lab_testcost`) VALUES
('L2', 'Blood Test', 300),
('L4', 'Colonscopy', 1200),
('L1', 'CT-Scan', 1000),
('L1', 'MRI', 1500),
('L3', 'Sonography', 1000),
('L2', 'stool test', 250),
('L1', 'Ultra Sound', 2000),
('L2', 'Urine Examination', 250),
('L1', 'X-Ray', 250);

-- --------------------------------------------------------

--
-- Table structure for table `med_details`
--

CREATE TABLE `med_details` (
  `med_id` varchar(11) NOT NULL,
  `med_name` varchar(50) NOT NULL,
  `med_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `med_details`
--

INSERT INTO `med_details` (`med_id`, `med_name`, `med_charge`) VALUES
('m01', 'Gentamicin 1200mg', 78),
('m02', 'Dettol Anticeptic 500ml', 118),
('m03', 'Betadin 15g', 72),
('m04', 'Savlon Anticeptic 1l', 217),
('m05', 'Crocin Advance 500mg', 17),
('m06', 'Pedicof Syrup 60ml', 50),
('m07', 'Rinosolvin Suspension 60ml', 62),
('m08', 'Celact 100mg', 42),
('m09', 'Vicks Vaporub 25gm', 60),
('m10', 'Lorinol 10mg', 65),
('m11', 'Ceftum 500mg', 345),
('m12', 'Brufen 400mg', 12),
('m13', 'Flumol Suspension 250mg', 14),
('m14', 'Climox 250mg', 66),
('m15', 'Sancef O 200mg', 129),
('m16', 'Paracetamol 500mg', 138),
('m17', 'Cyra -D 30mg', 40),
('m18', 'Nimucet Gold 50mg', 13),
('m19', 'diclofenace Gel 15mg', 10),
('m20', 'Aceclofenac 100mg', 7),
('m21', 'Volini 50g', 125);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_details`
--

CREATE TABLE `nurse_details` (
  `n_id` varchar(11) NOT NULL,
  `n_name` varchar(30) NOT NULL,
  `n_gender` varchar(1) NOT NULL,
  `n_age` int(3) NOT NULL,
  `n_address` varchar(20) NOT NULL,
  `n_city` varchar(15) NOT NULL,
  `n_state` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_details`
--

INSERT INTO `nurse_details` (`n_id`, `n_name`, `n_gender`, `n_age`, `n_address`, `n_city`, `n_state`) VALUES
('n01', 'Vimala Sharma', 'F', 53, 'Plot no-256/23', 'Jhansi', 'Madhya Pradesh'),
('n02', 'Pankaj Pratap', 'M', 24, 'Plot no-22/54', 'Varanasi', 'Uttar Pradesh'),
('n03', 'Shubhangi Srivastava', 'F', 21, 'Plot 7842/2', 'Gwalior', 'Madhya Pradesh'),
('n04', 'Shivangi Patwardhan', 'F', 25, 'Plot 451/7', 'Bhopal', 'Madhya Pradesh'),
('n05', 'Vishaka chichra', 'F', 30, 'Plot 45/87', 'Gwalior', 'Madhya Pradesh'),
('n06', 'Akansha Goel', 'F', 37, 'Plot 58/79', 'Faridabad', 'Haryana'),
('n07', 'Shruti Jain', 'F', 23, 'Plot 87/456', 'Raipur', 'Jharkhand'),
('n08', 'Varsha Sachan', 'F', 35, 'Plot 89/654', 'Hasanpur', 'Uttar Pradesh'),
('n09', 'Tanya Sharma', 'F', 28, 'Plot 897/4', 'Ghaziabad', 'Uttar Pradesh'),
('n10', 'Suruchi Arya', 'F', 44, 'plot 78/5546', 'Agra', 'Uttar Pradesh'),
('n11', 'Aditi Agarwal', 'F', 45, 'Plot 555', 'Pune', 'Maharashtra'),
('n12', 'Sagar Sharma', 'M', 65, 'Plot 55/564', 'Agra', 'Uttar Pradesh'),
('n13', 'Anjali Munjhal', 'F', 45, 'Plot 87/56', 'Indore', 'Madhya Pradesh'),
('n14', 'Sanjana Reddy', 'F', 45, 'Plot 78', 'Warangal', 'Telengana'),
('n15', 'Nikitha Chilivary', 'F', 24, 'Plot 987/4', 'Warangal', 'Telengana'),
('n16', 'Nishtha Gautam', 'F', 56, 'Plot 87/45', 'Kanpur', 'Uttar Pradesh'),
('n17', 'Asritha', 'F', 34, 'Plot 77/45', 'Chennai', 'Tamil Nadu'),
('n18', 'Tanya Tripathi', 'F', 24, '21,Block C', 'Ahemdabad', 'Gujrat');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_phone`
--

CREATE TABLE `nurse_phone` (
  `n_id` varchar(11) NOT NULL,
  `n_phone` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_phone`
--

INSERT INTO `nurse_phone` (`n_id`, `n_phone`) VALUES
('n18', 7041555687),
('n01', 9876541230),
('n02', 9876541231),
('n03', 9876541232),
('n04', 9876541233),
('n05', 9876541234),
('n06', 9876541235),
('n07', 9876541236),
('n08', 9876541237),
('n09', 9876541238),
('n10', 9876541239),
('n11', 9876541240),
('n12', 9876541241),
('n13', 9876541242),
('n14', 9876541243),
('n14', 9876541244),
('n15', 9876541245),
('n16', 9876541246),
('n17', 9876541247);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_room`
--

CREATE TABLE `nurse_room` (
  `n_id` varchar(11) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_room`
--

INSERT INTO `nurse_room` (`n_id`, `room_no`) VALUES
('n01', 1),
('n02', 2),
('n03', 2),
('n04', 101),
('n05', 103),
('n06', 104),
('n07', 105),
('n08', 107),
('n09', 108),
('n10', 110),
('n11', 201),
('n12', 204),
('n13', 205),
('n14', 206),
('n15', 208),
('n16', 209),
('n17', 210),
('n02', 1),
('n04', 102),
('n07', 106),
('n09', 109),
('n12', 202),
('n12', 203),
('n14', 207),
('n20', 3),
('n19', 3),
('n18', 3);

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `p_id` varchar(30) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_gender` varchar(1) NOT NULL,
  `p_age` int(3) NOT NULL,
  `p_address` varchar(50) DEFAULT NULL,
  `p_city` varchar(20) DEFAULT NULL,
  `p_state` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`p_id`, `p_name`, `p_gender`, `p_age`, `p_address`, `p_city`, `p_state`) VALUES
('p-24-04-2016-01', 'Devansh Verma', 'M', 66, 'House no-155 Sec-23', 'Faridabad', 'Haryana'),
('p-24-04-2016-02', 'Akshit Agarwal', 'M', 19, 'Plot No-145/29', 'Meerut', 'Uttar Pradesh'),
('p-24-04-2016-03', 'Sahil Kori', 'M', 23, 'plot 1', 'ghaziabad', 'uttar pradesh'),
('p-24-04-2016-04', 'Amar Prakash', 'M', 98, 'plot 2', 'Bangalore', 'Karnataka'),
('p-24-04-2016-05', 'Hitesh Khatwani', 'M', 21, 'plot 3', 'Raipur', 'Chattisgarh'),
('p-24-04-2016-06', 'Ashish Chauhan', 'M', 23, 'plot 4', 'lucknow', 'uttar pradesh'),
('p-24-04-2016-07', 'Evi Agarwal', 'F', 18, 'plot 5', 'Balaghat', 'Madhya Pradesh'),
('p-24-04-2016-08', 'Divya kumari', 'F', 19, 'plot 6', 'lucknow', 'uttar pradesh'),
('p-24-04-2016-09', 'Abhishek Singh', 'M', 54, 'plot 7', 'Ghaziabad', 'Uttar Pradesh'),
('p-24-04-2016-10', 'Sagar Sharma', 'M', 24, 'plot 8', 'Agra', 'Uttar Pradesh'),
('p-24-04-2016-11', 'Mayank Agarwal', 'M', 112, 'Tapu, nigara', 'Vijaynagram', 'Andhra Pradesh'),
('p-24-04-2016-12', 'Archit Joshi', 'M', 32, 'plot 9', 'Bilwara', 'Rajasthan'),
('p-24-04-2016-13', 'Madhavendra Singh', 'M', 29, 'plot 10', 'Mumbai', 'Maharashtra'),
('p-24-04-2016-14', 'Abhishek Anajana', 'M', 67, 'plot 11', 'Chittor', 'Rajasthan'),
('p-24-04-2016-15', 'Ayush Gupta', 'M', 21, 'plot 12', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-16', 'Siddhant Shrivastav', 'M', 24, 'plot 13', 'Lucknow', 'uttar pradesh'),
('p-24-04-2016-17', 'Akhil Agarwal', 'M', 26, 'plot 14', 'Kanpur', 'uttar pradesh'),
('p-24-04-2016-18', 'Aditi Agarwal', 'F', 99, 'plot 15', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-19', 'Adarsh Trivedi', 'M', 48, 'plot 16', 'Balaghat', 'Madhya Pradesh'),
('p-24-04-2016-20', 'Akash Soni', 'M', 49, 'plot 17', 'Gwalior', 'Madhya Pradesh'),
('p-24-04-2016-21', 'Akhilesh Samora', 'M', 54, 'plot 18', 'Morena', 'Madhya Pradesh'),
('p-24-04-2016-22', 'Alok Sharma', 'M', 14, 'plot 19', 'Noida', 'Uttar Pradesh'),
('p-24-04-2016-23', 'Amar kumar', 'M', 46, 'plot 20', 'Gurgaon', 'Punjab'),
('p-24-04-2016-24', 'Anshul Sharma', 'M', 87, 'plot 21', 'Morena', 'Madhya Pradesh'),
('p-24-04-2016-25', 'Yusra Qureshi', 'F', 48, 'plot 22', 'Kolkata', 'West Bengal'),
('p26', 'Kanisk Agarwal', 'M', 23, 'Plot 125', 'Balaghat', 'Madhya Pradesh'),
('p27', 'Anshul Prasad', 'M', 45, 'Plot 1257', 'Banglore', 'Karnataka'),
('p28', 'Anshul Sharma', 'M', 63, 'Plot No 852', 'Agra', 'Uttar Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `patient_lab`
--

CREATE TABLE `patient_lab` (
  `p_id` varchar(30) NOT NULL,
  `lab_id` varchar(10) NOT NULL,
  `lab_testname` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_lab`
--

INSERT INTO `patient_lab` (`p_id`, `lab_id`, `lab_testname`) VALUES
('p-24-04-2016-02', 'L1', 'MRI'),
('p-24-04-2016-02', 'L1', 'CT-Scan'),
('p-24-04-2016-04', 'L2', 'Blood Test'),
('p-24-04-2016-05', 'L2', 'Blood Test'),
('p-24-04-2016-06', 'L4', 'Colonscopy'),
('p-24-04-2016-11', 'L3', 'Sonography'),
('p-24-04-2016-15', 'L2', 'Blood Test'),
('p-24-04-2016-15', 'L2', 'Urine Exami'),
('p-24-04-2016-18', 'L1', 'X-Ray'),
('p-24-04-2016-19', 'L2', 'Stool Test'),
('p-24-04-2016-19', 'L2', 'Blood Test'),
('p-24-04-2016-23', 'L3', 'Sonography'),
('p-24-04-2016-27', 'L4', 'Colonscopy'),
('p-24-04-2016-08', 'L2', 'Blood Test'),
('p-24-04-2016-21', 'L2', 'Urine Exami'),
('p-24-04-2016-22', 'L2', 'Stool Test'),
('p-24-04-2016-24', 'L1', 'X-Ray');

-- --------------------------------------------------------

--
-- Table structure for table `patient_med`
--

CREATE TABLE `patient_med` (
  `p_id` varchar(30) NOT NULL,
  `med_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_med`
--

INSERT INTO `patient_med` (`p_id`, `med_id`) VALUES
('p-24-04-2016-01', 'm12'),
('p-24-04-2016-01', 'm14'),
('p-24-04-2016-02', 'm01'),
('p-24-04-2016-02', 'm04'),
('p-24-04-2016-02', 'm07'),
('p-24-04-2016-02', 'm14'),
('p-24-04-2016-03', 'm21'),
('p-24-04-2016-04', 'm17'),
('p-24-04-2016-05', 'm12'),
('p-24-04-2016-05', 'm18'),
('p-24-04-2016-06', 'm04'),
('p-24-04-2016-06', 'm05'),
('p-24-04-2016-06', 'm08'),
('p-24-04-2016-07', 'm15'),
('p-24-04-2016-07', 'm19'),
('p-24-04-2016-08', 'm04'),
('p-24-04-2016-08', 'm09'),
('p-24-04-2016-09', 'm10'),
('p-24-04-2016-09', 'm20'),
('p-24-04-2016-10', 'm12'),
('p-24-04-2016-10', 'm14'),
('p-24-04-2016-11', 'm16'),
('p-24-04-2016-11', 'm17'),
('p-24-04-2016-12', 'm17'),
('p-24-04-2016-15', 'm07'),
('p15', 'm19'),
('p15', 'm21'),
('p16', 'm20'),
('p18', 'm04'),
('p18', 'm19'),
('p19', 'm18'),
('p20', 'm01'),
('p21', 'm01'),
('p21', 'm02'),
('p21', 'm03'),
('p22', 'm08'),
('p23', 'm21'),
('p24', 'm18'),
('p24', 'm20'),
('p27', 'm01'),
('p27', 'm11'),
('p28', 'm05');

-- --------------------------------------------------------

--
-- Table structure for table `patient_phone`
--

CREATE TABLE `patient_phone` (
  `p_id` varchar(30) NOT NULL,
  `p_phone` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_phone`
--

INSERT INTO `patient_phone` (`p_id`, `p_phone`) VALUES
('p-24-04-2016-01', 8975642310),
('p-24-04-2016-02', 8975642311),
('p-24-04-2016-03', 8975642312),
('p-24-04-2016-04', 8975642313),
('p-24-04-2016-05', 8975642314),
('p-24-04-2016-06', 8975642315),
('p-24-04-2016-07', 8975642316),
('p-24-04-2016-08', 8975642317),
('p-24-04-2016-09', 8975642318),
('p-24-04-2016-10', 8975642319),
('p-24-04-2016-11', 8975642320),
('p-24-04-2016-12', 8975642321),
('p-24-04-2016-13', 8975642322),
('p-24-04-2016-14', 8975642323),
('p-24-04-2016-15', 8975642324),
('p-24-04-2016-16', 8975642325),
('p-24-04-2016-17', 8975642326),
('p-24-04-2016-18', 8975642327),
('p-24-04-2016-19', 8975642328),
('p-24-04-2016-20', 8975642329),
('p-24-04-2016-21', 8975642330),
('p-24-04-2016-22', 8975642331),
('p-24-04-2016-23', 8975642332),
('p-24-04-2016-24', 8975642333),
('p-24-04-2016-25', 8975642334),
('p26', 8975642335),
('p27', 8975642336),
('p28', 8975642337);

-- --------------------------------------------------------

--
-- Table structure for table `patient_roomdetails`
--

CREATE TABLE `patient_roomdetails` (
  `p_id` varchar(30) NOT NULL,
  `r_id` varchar(11) NOT NULL,
  `room_no` int(3) NOT NULL,
  `nurse_id` varchar(10) NOT NULL,
  `in_date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_date` date DEFAULT NULL,
  `out_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_roomdetails`
--

INSERT INTO `patient_roomdetails` (`p_id`, `r_id`, `room_no`, `nurse_id`, `in_date`, `in_time`, `out_date`, `out_time`) VALUES
('p-24-04-2016-02', 'r2', 202, 'n12', '2016-04-24', '05:05:06', NULL, NULL),
('p-24-04-2016-03', 'GW', 3, 'n19', '2016-04-24', '06:21:27', NULL, NULL),
('p-24-04-2016-04', 'r2', 201, 'n11', '2016-04-24', '06:21:23', '2016-04-25', '06:20:27'),
('p-24-04-2016-05', 'r1', 101, 'n04', '2016-04-24', '02:21:27', '2016-04-04', '07:04:27'),
('p-24-04-2016-06', 'r3', 206, 'n14', '2016-04-24', '14:35:24', NULL, NULL),
('p-24-04-2016-11', 'GW', 3, 'n18', '2016-04-24', '22:52:50', '2016-04-26', '23:51:49'),
('p-24-04-2016-15', 'r2', 203, 'n12', '2016-04-24', '07:22:00', '2016-04-26', '02:00:00'),
('p-24-04-2016-18', 'r2', 204, 'n12', '2016-04-24', '10:27:28', NULL, NULL),
('p-24-04-2016-19', 'r2', 205, 'n13', '2016-04-24', '06:21:27', '2016-04-26', '21:21:27'),
('p-24-04-2016-23', 'r4', 106, 'n07', '2016-04-24', '09:00:19', NULL, NULL),
('p-24-04-2016-27', 'EW', 1, 'n1', '2016-04-24', '00:16:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `doctor_phone`
--
ALTER TABLE `doctor_phone`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `guardian_details`
--
ALTER TABLE `guardian_details`
  ADD PRIMARY KEY (`p_id`,`guardian_name`),
  ADD UNIQUE KEY `p_id` (`p_id`,`guardian_name`),
  ADD UNIQUE KEY `p_id_2` (`p_id`,`guardian_name`);

--
-- Indexes for table `guardian_phone`
--
ALTER TABLE `guardian_phone`
  ADD PRIMARY KEY (`guardian_phone`);

--
-- Indexes for table `hospital_rooms`
--
ALTER TABLE `hospital_rooms`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `lab_details`
--
ALTER TABLE `lab_details`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`lab_testname`);

--
-- Indexes for table `med_details`
--
ALTER TABLE `med_details`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `nurse_details`
--
ALTER TABLE `nurse_details`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `nurse_phone`
--
ALTER TABLE `nurse_phone`
  ADD PRIMARY KEY (`n_phone`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `patient_med`
--
ALTER TABLE `patient_med`
  ADD UNIQUE KEY `p_id` (`p_id`,`med_id`);

--
-- Indexes for table `patient_phone`
--
ALTER TABLE `patient_phone`
  ADD PRIMARY KEY (`p_phone`);

--
-- Indexes for table `patient_roomdetails`
--
ALTER TABLE `patient_roomdetails`
  ADD PRIMARY KEY (`p_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
