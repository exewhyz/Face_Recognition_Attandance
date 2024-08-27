CREATE DATABASE face_recognition;
USE face_recognition;

CREATE TABLE `regteach` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `cnum` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `s_que` varchar(255) NOT NULL,
  `s_ans` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `stdattendance` (
  `std_id` int NOT NULL,
  `std_roll_no` varchar(45) NOT NULL,
  `std_name` varchar(45) NOT NULL,
  `std_time` varchar(45) NOT NULL,
  `std_date` varchar(45) NOT NULL,
  `std_attendance` varchar(45) NOT NULL,
  PRIMARY KEY (std_id, std_time, std_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `student` (
  `Student_ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Department` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  `Division` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `DOB` varchar(45) NOT NULL,
  `Mobile_No` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Roll_No` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Teacher_Name` varchar(45) NOT NULL,
  `PhotoSample` varchar(45) NOT NULL,
  PRIMARY KEY (`Student_ID`),
  UNIQUE KEY `std_id_UNIQUE` (`Student_ID`),
  UNIQUE KEY `roll_UNIQUE` (`Roll_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;