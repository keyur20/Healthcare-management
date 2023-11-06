

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `admin_pswd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `admin` (`admin_id`, `email`, `admin_pswd`) VALUES
(1, 'admin@gmail.com', 'admin');



CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `booking_date` varchar(500) NOT NULL,
  `booking_time` varchar(500) NOT NULL,
  `permission` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `appointment` (`app_id`, `booking_date`, `booking_time`, `permission`, `date`, `pid`, `sid`) VALUES (?, ?, ?, ?, ?, ?, ?);


CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `gmail` varchar(500) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `comment` (`c_id`, `name`, `gmail`, `text`, `date`) VALUES (?, ?, ?, ?, ?);



CREATE TABLE `consulting_schedule` (
  `consulting_id` int(11) NOT NULL,
  `Day_Time1` text NOT NULL,
  `Day_Time2` text NOT NULL,
  `Day_Time3` text NOT NULL,
  `Day_Time4` text NOT NULL,
  `Day_Time5` text NOT NULL,
  `Day_Time6` text NOT NULL,
  `Day_Time7` text NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `consulting_schedule` (`consulting_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(33, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234017),
(34, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234018),
(35, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1234019);



CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `specialist` varchar(500) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `bmdc_reg_num` int(11) NOT NULL,
  `address` text NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `permission` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `doctor` (`id`, `f_name`, `l_name`, `email`, `contact`, `specialist`, `qualification`, `DOB`, `gender`, `bmdc_reg_num`, `address`, `pswd`, `date`, `permission`) VALUES (?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ? , ? ,?);


CREATE TABLE `doc_message` (
  `m_d_id` int(11) NOT NULL,
  `d_text` text NOT NULL,
  `u_text` text NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `text` text NOT NULL,
  `d_text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `message` (`id`, `pid`, `sid`, `text`, `d_text`, `date`) VALUES
(1, 12, 22, 'hello', 'gcngc', '2018-09-18 22:40:24');



CREATE TABLE `schedule` (
  `s_id` int(11) NOT NULL,
  `Day_Time1` varchar(500) NOT NULL,
  `Day_Time2` varchar(500) NOT NULL,
  `Day_Time3` varchar(500) NOT NULL,
  `Day_Time4` varchar(500) NOT NULL,
  `Day_Time5` varchar(5000) NOT NULL,
  `Day_Time6` varchar(5000) NOT NULL,
  `Day_Time7` varchar(5000) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `schedule` (`s_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES (?, ?, ?, ?, ?, ?, ? , ? ,?);


CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES (?, ?, ?, ?, ?);



CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `maritialstatus` varchar(500) NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `f_name`, `l_name`, `email`, `contact`, `address`, `DOB`, `gender`, `maritialstatus`, `pswd`, `date`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ? , ? , ?);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);


ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);


ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);


ALTER TABLE `consulting_schedule`
  ADD PRIMARY KEY (`consulting_id`),
  ADD KEY `d_id` (`d_id`);


ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--

ALTER TABLE `doc_message`
  ADD PRIMARY KEY (`m_d_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);


ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);


ALTER TABLE `schedule`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `d_id` (`d_id`);


ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;


ALTER TABLE `comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;


ALTER TABLE `consulting_schedule`
  MODIFY `consulting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;


ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234044;


ALTER TABLE `doc_message`
  MODIFY `m_d_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `schedule`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;


ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `consulting_schedule`
  ADD CONSTRAINT `consulting_schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `doc_message`
  ADD CONSTRAINT `doc_message_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `doc_message_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

