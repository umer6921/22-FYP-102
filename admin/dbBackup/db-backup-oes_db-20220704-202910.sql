CREATE DATABASE IF NOT EXISTS oes_db;

USE oes_db;

DROP TABLE IF EXISTS tbl_alerts;

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO tbl_alerts VALUES("1","9275","Department is added successfully");
INSERT INTO tbl_alerts VALUES("2","1185","Duplicate record found");
INSERT INTO tbl_alerts VALUES("3","5426","Could not add department");
INSERT INTO tbl_alerts VALUES("4","7823","Settings applied successfully");
INSERT INTO tbl_alerts VALUES("5","1298","Could not apply settings");
INSERT INTO tbl_alerts VALUES("6","1289","Category is added successfully");
INSERT INTO tbl_alerts VALUES("7","7732","Could not add category");
INSERT INTO tbl_alerts VALUES("8","3598","Subject is added successfully");
INSERT INTO tbl_alerts VALUES("9","1925","Could not add subject");
INSERT INTO tbl_alerts VALUES("10","6310","Student is added successfully, default password is 123456");
INSERT INTO tbl_alerts VALUES("11","9157","Could not register student");
INSERT INTO tbl_alerts VALUES("12","2074","Duplicate phone number found");
INSERT INTO tbl_alerts VALUES("13","1189","Duplicate email found");
INSERT INTO tbl_alerts VALUES("14","2932","Examination is added successfully");
INSERT INTO tbl_alerts VALUES("15","7788","Could not add examination");
INSERT INTO tbl_alerts VALUES("16","0357","New question is added successfully");
INSERT INTO tbl_alerts VALUES("17","3903","Could not add question");
INSERT INTO tbl_alerts VALUES("18","9174","Notice is added successfully");
INSERT INTO tbl_alerts VALUES("19","6389","Could not add notice");
INSERT INTO tbl_alerts VALUES("20","9135","You must be admin to access the control panel");
INSERT INTO tbl_alerts VALUES("21","9422","You must login first");
INSERT INTO tbl_alerts VALUES("22","0912","Invalid username or password");
INSERT INTO tbl_alerts VALUES("23","9122","You must be a student to acces the exams");
INSERT INTO tbl_alerts VALUES("24","5732","Your account has been disabled");
INSERT INTO tbl_alerts VALUES("25","8924","Account not found");
INSERT INTO tbl_alerts VALUES("26","1804","New password has been sent to you through your email");
INSERT INTO tbl_alerts VALUES("27","1100","Could not reset your password");
INSERT INTO tbl_alerts VALUES("28","9123","You must be a Teacher to acces the exams");
INSERT INTO tbl_alerts VALUES("29","10097849766","Database Export Successfully");
INSERT INTO tbl_alerts VALUES("30","123456789","Candidate delete successfully");
INSERT INTO tbl_alerts VALUES("31","6410","Teacher is added successfully, default password is 123456");



DROP TABLE IF EXISTS tbl_assessment_practice_records;

CREATE TABLE `tbl_assessment_practice_records` (
  `record_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `next_retake` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_assessment_practice_records VALUES("RS56646664669425","S139-886-833","M Umer","Demo","EX-3506920","100","PASS","07/03/2022","07/03/2022");



DROP TABLE IF EXISTS tbl_assessment_records;

CREATE TABLE `tbl_assessment_records` (
  `record_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `next_retake` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_assessment_records VALUES("RS11076205545528","S739-434-648","Muniim Student CS","CSS","EX-0009440","0","FAIL","06/27/2022","06/27/2022");
INSERT INTO tbl_assessment_records VALUES("RS68228290344030","S738-929-281","Arsam Student","CSS","EX-0009440","0","FAIL","06/28/2022","06/28/2022");



DROP TABLE IF EXISTS tbl_categories;

CREATE TABLE `tbl_categories` (
  `category_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_categories VALUES("CT-302627","IT","Computer Science","16-06-2022","Active");
INSERT INTO tbl_categories VALUES("CT-686828","Computer Application 1","Computer Science","16-06-2022","Active");
INSERT INTO tbl_categories VALUES("CT-922923","Civil Diploma","Civil Engineering","04-07-2022","Active");



DROP TABLE IF EXISTS tbl_departments;

CREATE TABLE `tbl_departments` (
  `department_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_departments VALUES("DP-030059","Computer Science","10-12-2017","Active");
INSERT INTO tbl_departments VALUES("DP-095351","Fashion Design","28-06-2022","Active");
INSERT INTO tbl_departments VALUES("DP-905765","Civil Engineering","04-07-2022","Active");



DROP TABLE IF EXISTS tbl_examinations;

CREATE TABLE `tbl_examinations` (
  `exam_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `passmark` int(255) NOT NULL,
  `re_exam` int(255) NOT NULL,
  `terms` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_examinations VALUES("EX-0009440","Computer Application 1","Computer Fundamental","CSS","04/30/2022","30","67","0","Yes","Active");
INSERT INTO tbl_examinations VALUES("EX-3148130","Computer Application 1","Computer Fundamental","Demo3","07/01/2022","53","60","0","Notjing","Active");
INSERT INTO tbl_examinations VALUES("EX-3506920","Computer Application 1","Computer Fundamental","Demo","06/30/2022","20","60","0","Do a testing","Active");
INSERT INTO tbl_examinations VALUES("EX-3506921","Computer Application 1","Computer Fundamental","Demo 2","06/30/2022","20","60","0","Do a testing","Active");



DROP TABLE IF EXISTS tbl_notice;

CREATE TABLE `tbl_notice` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `notice_id` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `last_update` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_id` (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_notice VALUES("1","NT-60920607","19/12/2017 01:16:53","04/07/2022 09:29:00","every student is required to take his/her assessment on time, fail to do that the instructor wont re-enable the assessment again.","Assessments");



DROP TABLE IF EXISTS tbl_question_answer;

CREATE TABLE `tbl_question_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` varchar(50) DEFAULT NULL,
  `exam_id` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `correct_answer` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id_exam_id_student_id` (`question_id`,`exam_id`,`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO tbl_question_answer VALUES("1","QS-162115","EX-0009440","S139-886-833","PHP","CSSS","practice");
INSERT INTO tbl_question_answer VALUES("2","QS-173460","EX-0009440","S139-886-833","2","4","practice");
INSERT INTO tbl_question_answer VALUES("3","QS-929730","EX-0009440","S139-886-833","2","4","practice");
INSERT INTO tbl_question_answer VALUES("4","QS-102287","EX-3506920","S139-886-833","ALI","UMER","");
INSERT INTO tbl_question_answer VALUES("5","QS-273462","EX-3506920","S139-886-833","BACK END","BACK END","practice");



DROP TABLE IF EXISTS tbl_questions;

CREATE TABLE `tbl_questions` (
  `question_id` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `question` longtext NOT NULL,
  `option1` varchar(255) NOT NULL DEFAULT '-',
  `option2` varchar(255) NOT NULL DEFAULT '-',
  `option3` varchar(255) NOT NULL DEFAULT '-',
  `option4` varchar(255) NOT NULL DEFAULT '-',
  `answer` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_questions VALUES("QS-024632","EX-5690270","FB","What is it stand for?","-","-","-","-","","2022-06-16 16:40:38");
INSERT INTO tbl_questions VALUES("QS-102287","EX-3506920","MC","Who are you?","umer","ahsan","ali","aliyan","option1","2022-06-30 12:57:12");
INSERT INTO tbl_questions VALUES("QS-162115","EX-0009440","MC","Which HTML tag is used to define an internal style sheet?","csss","html","script","php","option1","2022-04-28 01:28:05");
INSERT INTO tbl_questions VALUES("QS-173460","EX-3148130","MC","name?","122","2","4","5","option2","2022-07-02 00:36:31");
INSERT INTO tbl_questions VALUES("QS-218857","Demo ","MC","demo q?","1","2","4","5","option1","2022-07-02 17:17:19");
INSERT INTO tbl_questions VALUES("QS-269458","EX-0009440","FB","What does CSS stand for?","-","-","-","-","","2022-04-28 01:26:11");
INSERT INTO tbl_questions VALUES("QS-273462","EX-3506920","MC","php use for?","back end","front end","game dev","graphic","option1","2022-07-03 14:06:58");
INSERT INTO tbl_questions VALUES("QS-544185","EX-0009440","FB","how t","-","-","-","-","","2022-04-28 01:25:43");
INSERT INTO tbl_questions VALUES("QS-609073","demo","MC","demo question?","1","3","4","5","option1","2022-07-02 17:16:14");
INSERT INTO tbl_questions VALUES("QS-637979","EX-0009440","FB","Which HTML tag is used to define an internal style sheet?","-","-","-","-","","2022-04-28 01:27:04");
INSERT INTO tbl_questions VALUES("QS-899866","EX-0009440","FB","Where in an HTML document is the correct place to refer to an external style sheet?","-","-","-","-","","2022-04-28 01:26:50");
INSERT INTO tbl_questions VALUES("QS-908494","EX-5690270","MC","What is it stand for?","Info tech","Option2","Option3","Option4","option1","2022-06-16 16:48:52");
INSERT INTO tbl_questions VALUES("QS-929730","EX-0009440","MC","randomm","1","2","4","5","option3","2022-06-27 23:19:24");



DROP TABLE IF EXISTS tbl_subjects;

CREATE TABLE `tbl_subjects` (
  `subject_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_subjects VALUES("SB-170007","Computer Inside","Computer Science","IT","16-06-2022","Active");
INSERT INTO tbl_subjects VALUES("SB-945992","Introduction To Diploma","Civil Engineering","Civil Diploma","04-07-2022","Active");
INSERT INTO tbl_subjects VALUES("SB-957983","Computer Fundamental","Computer Science","Computer Application 1","16-06-2022","Active");



DROP TABLE IF EXISTS tbl_teacher;

CREATE TABLE `tbl_teacher` (
  `user_id` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT 'teacher',
  `acc_stat` varchar(50) DEFAULT '1',
  `login` varchar(50) DEFAULT '1',
  `avatar` longtext DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO tbl_teacher VALUES("T804-593-153","Umer","Teacher","Male","06/09/2022","LAsani","teacher@gmail.com","43432423","Computer Science","Computer Application 1","teacher","1","1","");
INSERT INTO tbl_teacher VALUES("T730-396-348","Ahmad","Teacher","Male","06/02/2022","Makkah","ahmadteacher@gamil.com","75656565","Computer Science","Computer Application 1","teacher","1","1","");
INSERT INTO tbl_teacher VALUES("T450-112-718","Rashid","Ali","Male","03/09/1994","Sitara","rashiddigitalsoft1@gmail.com","03087991851","Computer Science","IT","teacher","1","21232f297a57a5a743894a0e4a801fc3","");
INSERT INTO tbl_teacher VALUES("T912-053-719","Ali","Teacher","Male","06/02/2022","Madina","ALiteacger@gmail.com","43432131","Computer Science","Computer Application 1","teacher","1","1","");
INSERT INTO tbl_teacher VALUES("T396-396-396","Usman ","Teacher","Male","07/01/2022","Gulberg Green","usmanali@gmail.com","03356574521","Civil Engineering","Civil Diploma","teacher","1","1","");



DROP TABLE IF EXISTS tbl_users;

CREATE TABLE `tbl_users` (
  `user_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL DEFAULT '-',
  `category` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `sending_invitation` int(11) NOT NULL DEFAULT 0,
  `avatar` longblob DEFAULT NULL,
  `acc_stat` varchar(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_users VALUES("admin","Umer","Ahsan","Male","01/02/1995","-","umer@gmail.com","9876543210","-","-","dbfc95d5c71fda69e4e7dece33dbc3df","admin","0","�PNG

\0\0\0IHDR\0\0\0�\0\0\0�\0\0\0	m\"H\0\0\0�PLTE���666444111///   $$$,,,)))&&&888��������������ߔ��������www���III���SSS���������mmmYYYAAA���������ccc���gggttt\0\0\0FFF���R!^@\0\0IDATx��][c�����\0APP�_��n����\0�$0��������f�$���z�����?��W�]�������1��>����y���?N��~0s�����z4�.�^�a�3Ĺq¦e;��4�zq0��.�#���)�������sB��/1L�m�{�S�ۮ��D�TJ&�g��7=z�\'N17��)c���,�^lĜf��P�`h`���rձ�ARB�㻝8s\"c\"pkt�f%�
�2��z��8p�D4c�y#-�h6`��zݵ�pP��>t��3e�I��z�uAP3�h���kbJ2�l=�z�u��)C�o�������24����3,݆��)7�u�-]5 �k��m��pîYTa�Pk��g�,*��3�����2^i�փ����9oϐ���ΰv]�bKA����H��@�c�D�X� ���۪�����5)>�~uMD�ah�&\"��,��]�t�5)�	$����W/�`N����o4p@�ai��@0D����+Ϻ�Q��bj���1.,��4�a���d3}��^/P�8��M��-\0���� \\Qc��2�c�+�Gc���c\0I�$*�i�P�c{�Fk��tP���uMD����֏��ŉ���\\`���0&~��\"�&l�q(0�0�wME����j?Mm ��:�c��aP]]��~���Z,�qw������&~�q�0u��{�-PtM_GM\0]s5vc��-���Q���UgK��8�-��0k{�\0Ȋ����J �gbd��Uk���)6���SĘ��]q�?�67��4�7�$�Ǝo�5��+>���oS��؛�ޥf�i�k��U\07��$�]/�6�V#�X��\"bڨrFc˷��5`���*�#�f����7`�����+3��yQƔ(3|����Pe��i_�N5⭵�I��R30�5#��c񭮊3|E���eP
D�ɛؾ9��,}�f\'iO��q���ZP_�x���6��H�X��F��������@������r����r(�e�����IԸˀj�����b�n�^�*�%����nj��f禮�񧷳��ٴD���Io��*����ƊpPMW`����RE����,��+�CN��j��_f�Gj�|7�-��������}+D��s���������5��v���amK�R�+\'�tk��kv���nd��V�;��&��n-	������c�E�����iBQ�X=W���pl�ۣ���n�-�\"�];3�yk=��L}l�=�׈���<Ԅ���s���{�j��y���O#���m�Vc0=Z�2�-��y���}T��l�H�H����S��� Z;$�n}�J{��\\	g�Bȩ\\��lg6���ߏ��8��n��oKe�s�%EKM.�^�dS�y���7/��ĺJ�S��H� e-��05~mS&[�9&���?g�;��
ꙥ�4���¦\\D�13+re�Eu{�!VQ�ɋ�ˇ��W/�o(C���z��9#fw?BDlz�0�KF�g�����\"���:�ނ�)�q�^�x6z�B�kM~�����3����`sWo����g�a{�.^e�ݍ6�]4�6{��<���������\0a��U�]������ID=~�3��(R��elq�?��ߖ��!Y���
l8VLN3��E#+5�>�¥�/�sd���5�4i�0���S9Ek�\\��<��\'�<�K֨�.a(K���Y�g��\0�,�X��v��h�27�bȾsN/+��e��]���?E�>R��1�u�8k�ق�����Ul��NI�8�Iyp�}ET�cG���v����C�	�9�L�0|T�ţU[uG�*)9͛��Gt=�E�饊	�(������M&��r�HQoy�hG�a���b.L�a�n
HY(�OY7Z�W�����S�R)-��3є$A��]9?������̦T�(���:��eb��Y��b:\\�P0���R��زZ]1�P��i\\b\\DE�����ծ��]OLc������+�֝��D�q�P��1�7rn�{��v�.EGX��\\r*�)����rK��� �\'Z�t�nC1�:ފ!�h��W�27@��6��\0����\'rM���k�Y�V�S��y����Z��yT%$��s���sM���\\X|�~���xd��H�������<���Cz�����Q�����+���7��M�\\��t�ļ�ų�rQ;(�1<R�;�P1��:�\'G��Q\00W!�r=+/�`���*�ץv�ũN��O�H�����@a�֒��󢇳u4�2����1�#EA�*E\\���b*]�Q=qRr5Ea���͍��3a�63sTV�C����_���Jv���Az���(n@����Y�����ۓ4W��`:�\'y�����#`�p��o��}��~A�����!}�\0êq����D����VU,��,�T,�F�3,�������6w	h#\'�A�H��,	��F7�tΒ	\'g�t9�I`�������ܕq\0<J�_�����K(1tn�~j7��ê #��0��_,(��9��7eX+ה��W��>կ.j۲�w����|��y���a��hi�O�̆�2e����@���b���o< O�!��A�>�2�V4�2}��3o1b���h �|q�_	����M��_�POfy
�	E�=�@c�;�^Q$]�\0��%�W���Zr}x�I��ؼP�
TY�Q�(��m@�[!�r�v��k]����{����5�@{��8��N�:�E&?�m�7T
I����a��)�s��9~G@���G�F�`��	Q���, H%\06E�}�2^������%a�-��*!�#P����le��1Q1$S2���B��W�o�Wf�d>T&�#��
���o|�o�Ϊ:[�?��M�,2���;�{��kï�I���M�Ñ�����ɗ�$l�V��_�V�\0�)[m��$$���\"��[������e�*8`��m��ьگ0\0��d�*��_�۬�EH^���\0��f}P=nJ�	�_2Ï�F;d��R{2_Y���ُ�:8bf�g��M�G+���E�0�ݯv����;�z����%b61g��f5� �Iǎm����&��;�O]7�	��hm8��@<�q��(
5jm����cbQj[�UVh�J�i�6�6��C8�4�T�?�����tǮk��+.f�_6-fSg<f��0���I��~����~t�m%�C���2fe`̶���M${3�����\"xb�=�,�0�N�h���wQt�n�a������?���?��\04�෪f_�\0\0\0\0IEND�B`�","1");
INSERT INTO tbl_users VALUES("S139-886-833","M","Umer","Male","06/02/2022","House#57 St#2 Abdullah Chowk, New Lasani Town Sargodha Road, Faisalabad","umerm6921@gmail.com","03025701864","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S514-388-386","Rashid","Ali","Male","01/01/1994","Asd","rashidrasheed1125@gmail.com","03466912456","Biomedical","Civil Engineering Diploma 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S738-929-281","Arsam","Student","Male","06/02/2022","Taddress","arsam@gmail.com","3234323","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S739-434-648","Muniim","Student CS","Male","06/02/2022","Gulberg","munim@gmail.com","42432432","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S880-800-739","Munim","Jutt","Male","06/04/2022","Sahiwal","munimmystudent@gmail.com","3232323","Computer Science","IT","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("T396-396-396","Usman ","Teacher","Male","07/01/2022","Gulberg Green","usmanali@gmail.com","03356574521","Civil Engineering","Civil Diploma","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");
INSERT INTO tbl_users VALUES("T730-396-348","Ahmad","Teacher","Male","06/02/2022","Makkah","ahmadteacher@gamil.com","75656565","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");
INSERT INTO tbl_users VALUES("T804-593-153","Umer","Teacher","Male","06/09/2022","LAsani","teacher@gmail.com","43432423","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");
INSERT INTO tbl_users VALUES("T912-053-719","Ali","Teacher","Male","06/02/2022","Madina","ALiteacger@gmail.com","43432131","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");



