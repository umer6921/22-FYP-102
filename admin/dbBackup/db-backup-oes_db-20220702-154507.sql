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
INSERT INTO tbl_assessment_records VALUES("RS16925022605991","S139-886-833","M Umer","Demo","EX-3506920","0","FAIL","07/02/2022","07/02/2022");
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
INSERT INTO tbl_departments VALUES("DP-152240","Civil Engineering","10-12-2017","Active");



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

INSERT INTO tbl_notice VALUES("1","NT-60920607","19/12/2017 01:16:53","19/12/2017 01:16:53","every student is required to take his/her assessment on time, fail to do that the instructor wont re-enable the assessment again.","Assessments");



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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO tbl_question_answer VALUES("1","QS-162115","EX-0009440","S139-886-833","PHP","CSSS","practice");
INSERT INTO tbl_question_answer VALUES("2","QS-173460","EX-0009440","S139-886-833","2","4","practice");
INSERT INTO tbl_question_answer VALUES("3","QS-929730","EX-0009440","S139-886-833","2","4","practice");
INSERT INTO tbl_question_answer VALUES("4","QS-102287","EX-3506920","S139-886-833","ALI","UMER","");



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

INSERT INTO tbl_users VALUES("admin","Umer","Ahsan","Female","01/02/1995","-","umer@gmail.com","9876543210","-","-","dbfc95d5c71fda69e4e7dece33dbc3df","admin","0","����\0JFIF\0\0\0\0\0\0��\0Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0��\0C\0		



	
��\0V\0\0\0!1AQaq\"���2�B��	#R���3b$r%4CS�c���5s
DT���&\'8Ft����\0\0\0\0\0\0\0\0\0\0	��\0@\0\0!1A\"Q2aq�#3����B�$R��4bCScr�����\0\0\0?\0�f���6t��B��e���f,�\0^R;�6|���!�Xd��ꡰ�PڹG��@؅&<���nD��\0��R>�8�Q�
��@�0�MoZ�EP��[(�(��q��(���TM�1�5�TC�T�B
J�D�
����u{���V�{*J8��H�\0�}�ԏ
h-d�+
�:�ed[����`�1}�O���Ȉ�thX7E���R�DE(!���>/��Й{�����[��3�@Zu��Z�bL���Ac��  �}{�v�P����Ae��U�%^��@D�\0� �EfeU�͕��)��~J8�6��V>�AQ��ٿ�U\"n,����F�w����T\\\"@��{��`]��b��ms���k�T���dy��+i�QW��mc��e��T^�m���)3:YAk�1�+��\\���g �v��d��)�%��1by�
����?R�g�O��!*黗�5�K7Q��!E�2�YO��S�$�QM�TW�E\'��t��D�=�N�TT�Qh�~�ÉB�Y<��W0U�*\'c�%�S}f,�F��ln�(�u4�A��MD�P��根�\0
�E-}�
��8����+]~�A��\"����)��M6SI��F�ƪ�((��\\��R�x�&}�C�`T�P���MT��PX ���+2����dB���W��W�A�U?�+i1�R$ƈ\'�衼
O��F�{���QmP]��<��Oi��\'悵�
��@�Dr�VM������P�P���p��4P�@P]���jB��sd��H�Eu5��~J8y�G���+\0`��V�S2M�VL�Wi�t����#�L �5^�aPi��`\'�`��}Si�\\��Ma0Se]0\']N�j(�3�;�
2W;Y_)?�,H*w7U��1�P|�YAӴ�\0� ���X2�(2���R\0��D
�w�
�`X�V4S�ZU9����QtC���TF����v�d�.DP*�VYP	7�(Ɗ�쏔
���(\0;n�L�E�A$����7
��T�n�H���Q�T0\\[P�-�������fghS���ت�\"�*
�U��Xr΅��(}�}.�vP@ ^�\0�M}�D+:Od ]I�C�1y=ԝŖ�N轍����ss��v���1�
�f.T�+��l�4������X��Q[��H�����¸�m�Q��R-��2�4A� �}Չ\"�C���X��d������S��P��B��\0��)�A�{��
V��E< �uQ��Y6�	�B�!H�J��PX�B��Ίh���ur\"�R��G��n�u��T_����($��� ��TGk����
�R҂M�*�nT�����	��i2��A�(!�aT�|�{�*�j�\0̨4�P|>T��%N��(Z���r�\0%d�ʧF�QV�����*�H��\0u.5�(/���N�/�*�+$D���\0���P_u\0�T����\\���K�ѝE�yS�o���E�
�H:xBȓ��v�܉�N���P3�#TD0������^aN��
�7�ZС<�M6������o
�Nu��S���d(�U������[��E�tR��iV\0��|�����v�0DxP6tCj�4I\0]A\0���i�\'MT�A��B��2w0��U��K@��R.��6��NC����\0���)4|��Xde\0E�6W�b@�#�ʾI:L�CeN�5�M��(:��&�}��04c�.Y�gaA�ʲ�0��e9G��P�&d�X��ɼ��,�A@�I�uN���ad�*r�s��/������UĎ�ڡu!��\'[����
��zDv��-2��k�<��Jm�I{D`J��<Jo)�
�oT�I���,�in�V��l\"��jβ��详ֵ�Y�T���1T4�����XH$�O����I�ke�y�\\��\"�ł�aG0�e�M���^ڄ�2u)�
��1n�X;�S��Q�K��A?% ��,Q(����l�i�E�	��REGc
�\"����&|���YTw�l-��������C\"ڨL7I��AN0m�\\��\\5�8Ɂ>C��Si�+���	��
d­\"ʦ�+VAW}U�>J�I����*�yP�W@��u?O~�QN��v����9젟���)��4�I���P?Ur��TM�����AodУ
�:X�|j��o*�L�U��{+���f�uk�SE{�
��-urE�T\"7SX�6 7�F�+�媯ܪ�[-o��ʰ.��\"�A@��H ��Q�*/��SF����$�h~jN�P�:� �c�Ѓi���]Ct��\0�A1p�_�V\"PH��/�B/�K�PT[�����R�ث
	x��������U�LZ\'�m6��h
�o�S�~�2	M�`���|#��\"�]M�\0���y��\"��BD��;��<��e�Ճ*��M� �r�$�+���
\"4�l�r
��P���}
�\0��zl*�*��uD��)sV�xU�7��%CsxW�~�n	l�����ݎ���B�\"
��>�-$�B���O�\"L�`�e��\"�YmΛ�\0��w�����`׺���\0�.�=��\\���¸��)R��b�alm��
CBA�g�$R��}��@�I�&��yW�h�%M�������#�����>��j�_ � �䈰N�?���H���9co	�9�
r��)���nh�	�oH�~�N�$@J��Q`���8�3��E��l�%��	&T�m�\'�x#e]1�:��vK�y�҄�v�Z9Y��I�J���sJ��T�!?�A<�BX#xSK	-�Z�͘�\0�C���,#U�M�6P1�dL4�QyTXv��C�HP�`��SZ�4ƣ1����)�m�J�1�E&�
m��A���N{�U �\"odڕ���	aNm9��T�g}Jl$��m;��7�7�F�T�̟�Wf���e\\�-2��P2cxM�!��*-=�7��t*�c�l(�HU��N-��N��6X|E�̄Ν��VD��IB9�N.���P���	�����h��$Ā���t!6l�^_��^�ŦU��ev�qNf�O(y�X#H!Q�{J�Ȓ���J�\0�8����������S�&���Tc����� �TA�L��iSEl?e\\�4�d�H�W,�
w���r��8���Cɸh���b�2l<(D�ٱ�S7�()����~�e˴�zr&�� %)�U�ΖUv��*t�6���t쬰����߲���0��5���;!��6\'¢�ő�*F�(l���@�ɑ�U@Ψl��t%�md����V]+�Y
��y�b��vyVd�R~/t�7�6H���,��E�dI;*#��U����PҤmT*��P4(�?����&Ю� (J�
�O�]���Q\'`��U�p�ʑ
|��=��Z��=���~j+�\'s+ea�|+h$�ӺSΊB�� QM�AQME�M��wQ������U�\\��^�4�	%�����x@,F� <���P@oe\0��Af׺� E51(,��4�!U�M�2
:^%B��H����(-�����m(�Ǻܻo
˾(*�I�R4�*}i���&wSA!MeA$!�u{@�AI�
� ��T~������}&Uj,�Z� �tn���hT�v�[]�J3��5��BdB�\0$Odp��e[^���%Ǖ�2,UE���t]��W�t�Kf��Ϻ�ص�i2�\"k�E�n�A&U�w�Jk�԰�������tB�VD�i�%V���K³!4�HV��vRZj��T>�,�xT`�\\��b�!�M�T
h
H��D\\��������?�hG�W��I����в~�N�J�4�V�	��衈Q>Dl��u#�hIR-70�uv���͂a%6�@>��ĉID�Sn�|�E�	�R!H�.�\\�剈Rv��A	�<)1*;YAo�
���U�:(�Ub��iRԴ;{�
Đ`+3*\'��cE �DZ{��U����\0e��\"{+6\0
Gq�ME�	���$Z,�S��\"kH�Ou<\'��9�Ί�n�ā����H�jk��p�l��L�%B�
�\\(�v?0�07a��� �XJ�Mӧ�6��hQ6�$I�gb��U��ɂ�\0ܫ,B�|��i�Ն��3�F�Xo��op�)�����X�;��.S�F�5��{�WO}�/�$�N�r�Szp5���dئ�d�{�9u���#P~jt��{��:vU�DJq��§R���6G-�uW��E��9�Ut{*)�����H�D-�^
�KQp�1�H�*� j�r^%N�0��5+9��ir�Ӌ��t@��)�#s\'�+7N����P���J��0�D?��B-�4Ҽ|C�P��%
p��]��B��Qd-�\'`�Ӟҁ��(M1��O!h:�-3QH��*䙀�-��N
���Xo���h)�l�Gc
�;�O4�A!Q�7�S\"9��>i晽�T�@�
�]�i��B=�o$�}����i�W &�-#BBg)�J�B�)e��U��\0j!��xU���(yO�\\M��}�����\\ۨ\\AVXQ�leNK�)��5\\��g(�
uB�&�)�ɰ\0F�U�B�\'d|���F�P�!Bh�c�eE���\0���N@N�!�xTi�y��:r&M�!���7�E\"�XI�$��0UD\'UO4��ԵJ!\\Q��H�������\\�QG�qK�]�K6TD��i�T��\'t
�tp9oTZР�}Q�I�*4���;f�Oʝ?(l*��NA>U����[ou&���e|�*��@\"�\"h�W��� ��nU(�)��P �E��+3�R� �)��Q\0���ţ�Q�3�C��+�{�pl�أ��$B
��+3�B/�� �G�4?{�������̪=�*	A\"�sA)`}�
^~_E4��IP:���
�����(�څ��E6�E�뺣 ��E]�����\\�\\ƈ��۲\"�%_�$Oe7�ؚ4�)���U�hD�*�\0��l]�����O6��>�
���&)}����)E�J&uSU4�5�A	��\"B�E}�P�
���$�C1�k)����UϱT\0��YZ������i(+E�+
�|�S}�Sf�>5P�~J
h�P�v�+��J��;)�j4�\"�kdMd�ea��wYJX��\"v��5��4�\"������m~J�L�D�gm�CP!����H�+� �guI*/�#��P�\'TM`�H�\"��]Kא���X`�҈��F����!���rvL#�V�na[P��FЈS$���D&���а�\0,����ta�-dM`#[w�M����4�����Qs\\n�K�OD�y���5�l@�x���$���6�:Qr��)�m�n��Gk��D�\\����[�t�A��V)H0�CeA+k\\�ޞ�+� ���W+��\0��[�ǄΘ�rHEN�E�w;\"Rz ��Q��\"��<2���A�X�Q�1
�=m�d�;�
�(��i�H�ӓ��Ef�*bwO4��U

]���$\\LYTM��W?%��,
A��T��|���:IL\"�PL�T/M x(�������L�n�W*�_-�NPѭ�9Fҧ$�P-���o�>��7S�/��kbv��2�Qp,1�T@|�H�r�|���	d�
g)
��(���S���&cEr�j|�l�5L���PO~�4�Z\"�mp���iZ���NS�Ȳ�j��毗{\"6�7��Z�(Օ�����b�����J+�*�P�&�(��(���뺧��d	q�v�)Έ�\07���	7�G6Eκ*����#�5VF��왏�6�y(��N�m�BG,@;�
�@`�W��B,B�m?}Uƾ.���ʠ
*�ē�&:Ђ`��W4g��Ee��Da4�QI���=�VF�����P�`Gb�;�Q0Q�Tm�I�p�Dl��
�:(6��\\L�BH*��yX�X�l��e����l[oyS��U>Ui�D��P^J�=��Dy�j3��Y�J�	�U��e�
�
(=�F���b�[*�t�{YKwA�*G�M5RT�L����H��&��Sjk9���5P�hW.��H�����
N�!jE@!B/����Aso�TI��V�O�Ml\0MՓ:|�6���`��|��ةS^6���C}TV>;+�ڀP	3���+�,����-�N�+
bI.�_L4�n����RgLx!B�\00��Xwr�qd�i�(3�l���&�P0	1�6w\07��h��U�u��Q
M��h�\"(�e.�f�i�����S��M(�Nꃏ�8\0h�a�Ƿ�Q����gk|��!P�Y��\'P.�:@G�
�f��R�G�i�l��d� �*T�%��*r����Q���;�?u6�yb,�V���������-����5�\\D��i\0�*h�p����\"m>a���b/��(�������0Pi�~�$�=�E(��T(��S`YL�
`
J�O�j�h�<(i�h4t�����mYE=,Ut�iQ�|�N��I��?N7���4����JM�~�
D�����qK�F�����P7�])k�6�&n��@Cɤ�N��	� �M�ٺc®�2ej4�BHi����3d�������Ҳ�K�lf����M�����|!�s曣3���F���e�ҿ�(M/0a���Mh�ú�OƩ����Ӎ�����:@@�N㲝9:\'�Q��(�g4���t�7ZM1\'R����vCl���K�̭�;JS��l�J6�e]1�v��$lQv�iI�J�3�$X��`Z�\0ENd�nv�i�\0e]�@���1s>�M?�I�fٺPt\"US\'u���_N�
�\0��Zzw����6WuX9�JM��\0U}7���Y�5U���] �^g�Cc�X���b�b���MQn�
D(hΖ��6�$�hSQ{�-=��H��U�DT��_���]���{+�ͷyF� �gh�S�b,�%��k*��D�?~�
Nn�{�{^~�A�Gpn	\\`�kء�x��tS&DIﲷi&ҊY`\"�B��7F�5Oe���\0Y�IU��FAi�۲�i���\"��;��L;ot\0X�B�ciL}#P�����KK�-�H?򏔟r���m7Cqت\"/�){�/}	0��\"�P\0Q����W�+,�u\\�t�쬨��,��N[m�P[�VQ\"�r����]��E�-O��Pm}>�+���*�=�om����2l����B��&- Z���]Q�R���e�`� m$�m8G���\'��O�I6����&�tm��f�j��+�_Dq����j� ��m-��Wu �-\"B� ��uf��xP7����@��*E�=\"J����b#D���c
^�Vc+B��W �\\��X 4����]�uF��J���M�Mt�H��̨E�����}Pi�n,�\";�7����(j����o�Q�W���Y^�7�#i��\"�(��!�I�� �yG2h��P_����ԃ�e��	3��$�@�&�V��[���R�[��Cq�-ܩ�Yb,L�U��.�u��U���t��N��m�Qh����쨐��RT��lBu��e&�!O��I�)��ʀ|^�Q#EmG�a�3�v쥩�ۅ��Q�m���l�K���Oe&�E�V��A��l	����hD�����9�Ds��kZ�e\"
\0���h����t�V\0�E/��]WH�ɤ��U�����9�����X�$� ZٺC-�&饱�̡虰��,$�J�N�cy�4R��-*�\0@Pr|rnGd�4�p�}>�R(��3ʜ@ #���]�6�[}>ȹ>#x��-6���`jc��F��V&�>r���\0�47�Uj�?5	��h���\'�\0;�
����D���1i@�f��-Z h���gl� XL�P^��0��(��Pa�*��4�a�\"�$�QF���żʸ-�r�miv���\0�Q3a
��j���wSamh߲>�����E�u������h�q3�_Lso)���A�=�v(��(3�jm;�spT)�[\"-6�S�|�.a�6\'��Q�a.��\0��\0H1e6���U���@1��i��)�v[Y7{+���Ɖ��09@�Q
`�H���0������`��ϔlhkydYa&tp�B�mn���ky���5���J����H�i��D�Gi	��b��\"�\"�w�	�G��閘��)�`U�7��d�Ɲ�j�@��܇P=����ͫ��*�\"4��i�[Aef���c7 ::{\\w�
6��N�pJ�?L���B�E��7��ʝ(e���BI
�ӽ�ou];�i�M�6�h�6W�>>�Q�#yS�y2>I��/F������S�i#O
w��u-VN���CG��[:V�&|�4o��
c4A�>J�0 X�} 6�Bh���mJ�i����J�=��F��%D��{\"�� ���zv3���D�F�؏t6�i�Q���WD�<����������*4lD��I��T�A�\'��n�{�J�xZ�9q�����z6����e��;]f@�6�hƞ@�-�j4�P�ӝ��f�M1��R<�-F��h~J�&,k�Y�!	*�+�`�&�,��WK��
m{��q�Ti����
t��V�F�D}�f��I�l��ء�k�h����Fʍ3$M�e���M;�>V��6��Uӑa`�]��A�G�N���\\�WJ�M�����К@�%jueF�7�*�����J�ZM8&��h�#���iA�Q�����7��	���t*4���Q����������:~�J{+��AÊpg@��f�t��{��+4ě��ې�ə�@�Za`\'pT,��WN�\'b��pHL�kb�yC����?Q��Pq)��֒���~����ʅ�(�G,I�uQ��t	������)$on��A3$ʄ3�(l<�hE�.Q@��(yD�V.�e�P%W 7��}Ut���QvJ�nʹ\\�:�\"�7��t�6Y���!�� X^ʋX�G�D\'�O�l�ܙL4��3�R-#D	\']<(O��i���Y$�\'E|	\0�BX`^e�\0np[+K2���_hM�T-���[��]Q�[/(;���$Ɗ���?��)��o` �拔H�*��K��$`����b� �u9L�[xTu;��k*4�����*���6PDxV�B�n��*L�6��Wi�{iu �*Ī,\0i(��T��\0Z$؄%���M
�2T���P���
j���f�A��l���X��]So�Si\"��\'���+\"��P���K�#
�S\0N���k��1�����QA��7��1�	�m���1}�5�O�q�t�6���EZ�RB`�7�R\0�d\0�.O��D��4�SZ��N��2�0$+��D `n�$oo�
�[�\0u2w�\'Dsq��7P4��\0,�y;]_ ���	�N��	�<�4�X�������}������f��Χ)����;�+H�&�e�6��#�F���I�X�T�\"�����酀��TZ&�d�,��v�vW�\0��2�#p�,�i�(�����
0�<�\"�y\0`m����\0���;̄$i�E�\"LF��:Yd��;( Qv�=�@� H���b���-M�	:ܢ�0���ɱY��
<v����!����1Z�2G��l�#��Th�e��a`���*mY
����f��#��lv��Ћd��̨h۸�S�v:�EF�7
�Y:&&�Pa�D�n�O�&�����m��dD�!�`υ��d�*4H�j�)�q@�4-\"|�iuwCѷ��������.:�ku\'`V7�҃3�r��N�A�.&��j4��D��Q���mv��me\\�41�j4���4�A
�f刋*�l�t�m�������M���Iza�I��ZX�Ud� �l�g���6TiA� ���Ǻ������׹�$�P���i
N�˹�\'q0�{)ҹ�~ڧ�#uA����l��6�*- ~�A�?��~��*�o��vϠ��U��O%I���T���M� ��?��������BZdK~��,��TZKu�@p�	�D%����ma
��x�O�~��\"&.�E��o
t��!7���9��,��F�Dj,��mJ��5X	�\0U�6����Q`7��j>J6@�?�g!���@����m�ih� 
�`�e3��XCfAVP�(\'bde�b��\"䫿�����&��d��~��RN�d�;�t6P4N�FY{\'Ί�d�\0䒩�1���op�o���H����(�T,��!\\�Vik}U{�#��
�k�7�(,�	a�U�7T/uDX�rɝ!Q���W�Y[�\0��P���B���oe|е��v�\05[F�0�b�ydn��e/2!a
����H�+�M��T�T3����o�X�ەd^��A�����K}����?�o�TDΪ�P�NIM��T���L��b�mT�(�3�~��Z�Q+#����a
��������w&�J��TT��PT�
[Zu_��ۺ��J��wGxT{����|�*)RuQ^�P�������#[�7��R	s�VuDvTNҠ�EwP];�72�HP���6�ڧ�v��m?55P_��Aﲃ�� �.�G�
`�O�;��)
�7��@$�kI�DQ`�P�M�W$s%F�Ϋ)���¨�R���d-x��.\'�&�練@�u�R�|����ʍʀ][X]���;\"m2ll>��CH�B��|�-Po(1�#���gk��$��P&aAL��Z�h
X{��1�
�A��\'{ma�r|0H�\0?čI*�d�d`@�e\0d
�{�m3����
��tnd��(Yܨ�t���%B��il명�/tR�A��}T��	�g��ʧ2h@�&�M;�E#�T
cxF֑�\0|�mP	�o0��y\0<Y>Y-��p#~��J���-�eĉ�\"kCf�@rr^5�U�� �~����I�tV�r�	\'S
�
d�6�m��L���uQ��ؙ�Q
��Od}0H�G{��@�\"�cS�M�-�I��n錦Zw�	���?;&�d�/��Z�F��i����D���\"�\"F�!f�ŁD)I��`�l���a!KSe
Q}=���\'
Pظ���$��͑��ƛ\"���\0��S.:H
�+_O*Zm�R��X�h�)�/�S<�? ������:3������C@��;�����`�S���
R�x
�#l���%�LZ@=�S�x�t�H�$�#�͕)�ga� ��50V�@ȓ�WF��E�)�>^� m���ӝ&Ub7�u6��о�i�B�,�6���}T4��>ڦ�lF�q�
�6��ix��]���q�.��?UF��
�p��*���\0Sk�D_����������F���sL})uF�$�6[: �$�h�Z������*�O����&���Z��lb4-
�Q���oDjc�Гa�;�ˈ���Š���m>hz7؎��F=М>�Oe�ж��U4N�1:�a����=�����ͱt\'�����i��̪�˴�M�؎��F���u��/`�ͱ�2{wT�4��ҏ�Cѱ)�m�Q:AUҍ��@��PѾ��Wqv�h���D-�(b��{�l�b���ﺣBN����`c��HBl�B�������J@�����ͻ��lF��,<!4KV�Q�
�B6�M�b41�	�a�[Mi�P�<IM��N�{k�Th�e�������m��6�h�*�$���1`!u4\0�
���V�G�؁�4�¢�
�E�uE���0��R& �YaA�鼑me_}P��樲Gd�A�A �e��f ��0�5R ��eG��eN��@���b.��d$D����TDj���w���.Pb4S��!%UdDB�T\'�TZ&HG*j�9.M�)�}��đ`�_X+^@��n��td[� �v!\'�<��3۲#s~��&�@\0#��m �Do~ʹc�  �ԩ�L�n!G7dq��d����B�	���[o$`D�
���=��\06��E���ԫ��Z-q*�K���%=�|�\"H1��m�7�_��NR��e��X�ta�l���4ͭEZ���v�>�*�V�t��%���3{B���S%X\0���\"ҡ�� ��U��~�%��$X�I�ud�x+�b��*cu9`��噿��1�]���/&\0���
ANȃ\0�\'�(S�U�v����|�L삆�m�V֑�E5
�l5@<� �(�|B�]7V6�(��كo�	��hԠ�}�@��3�ou9\0v��\0.M��2w�&���#Ua�s)��\"\0���af�
m���L�Ɂk�W����싦@�*Z4X��ν���D�;�k/��h�6��0�UG��m=ĩ˨&霤��m��ae���)�\0�G�7&��`�X\0_UA\'��g.�S���@��q�$���7�&��\0e
��T6Yl�O�U�2�@.����
�N��	╴0��_oe�(��ӽ�I�;
t���\\���+�\0���1�X�;��Pt�F:�L��#�D�qh
P�@;��!��H;�\'c�Sa!�v��<o�9��O��Ґu\'褡<�?$M�4�s(�=�1H7S?d	m.]Q
vԧt������P)�E����P-0Bo�c)I܁�M���B&������0a�ܦ~^F�KSd6�l@�S湂N���`6��p���%��!���A�&t�ؐt#m@7�D�l�Dm�ue���,7��H:�!ȹ`�#�(���i��r�ܒ?�2�[$�*�KⰘ�6�4^\0\'R�3�	�5�m�1�y��FH���h�\0�J��h�[���6�7>�F�1�x�M��\"e�m6Ki���������� �X�,�-gm�i3%��Z4J&�=�v�!�J1Bb7���(h��m�ؒ�i�[Jn����V�Dt*���jm���b{\"�i�ցB�[�m\"n�]��^.�P:�WF4�e}o�����ѿy�((v��-B�x.D(�cX�����R�X��`e�� Z$n��=��rV>�v�U#O�m�ȸ�����C[k�p�&H���ѓ�*0��
lc�����W�\"�@�eb��1k��VF�}���췚�(���mfL]�O˙+oC�£CI\0�Z�a4xTp�[�?��9��M�	��T�F�[���Th^\"�n`����4o�n4�N�!6�q�
���RQ�웑$&��rZ��N�G�$���]��cP�����i���y/�*m�R���9�{��hs;�%�N��v����<�\0-&�zbd��\"��7$Lj���A�i�u0P�d���g��T��E��a�e�ѱd\'uN#[�)����B)A}�4��)�F�S�
�e���i?��$nS
���S�P<�����e$Z����:j�)��yL7�ʠF��.��o�L-��TDZfRZ\0�ѩB)���7
�@9��}�9�l �\"$x�B�E���\\FǺ����o�P\0��#�����Y 
���T��S2v(+]�W�tB�\\���3r)@��E�(�ͩ�*k��u��	0eH:�emi�Ez�hnB�%Cx�-7�*�C0����+��\\
����ᤒ�i?ea����HX��1e5�����T\\�\0Um�KL良���ڔb�&I����=�M�����;K���G\0 è�!ahP
6V��\0{+\0�K���l���2�44@2���@0Lʱ�o插��%\0��
��LE�Ȉ\'�)�0-@>���N�aZ��?��
cs wD�
��mF�1�E�p����Ev+N�3rB*�tV�_.��B���k�\0��L\" w�\\s�Ӎ��,�6��J��{n����Y�R�	t�Me��j���n4�b�����
&�
$��im{+��_��8��fd�O4�缵�`�`4w+�?���iq��,��X�ҏ�^��q��o��;�g�$�Ki�h�T!�l���<{󺋆7+�f�;�M�n{	D0�lG�_�9W�=��d��T��3�qPEL�4��\0����5�C)��@1ܮ��/�.�&}�;	��GĜ�Mq}��`��)���Ze��\0L��]H+˞��ܻwg�j�<�ޟ�� �O�\"�i��}Q���}�+��o����\'�G=L;�ԡ��OÈ�U
\0�>h�&���P��aɼLh�Ͳ
H��a���[?/\"t���N��B�i�V(��0�/�l�a�o�M�����ʯ�Ɨ���{*�;���P�=l���P��Ebv��71u�����\"Jmeb�[�4U�{��\'c
�D�|&�1��U:���e�R���u]�2�Y��i�*8}V�H��
E�h�jmv��o��α%��k�����6M�`4�m�?�o43$B��]�Y\\�X*v5���	.U:�l����	�Ŷ\\�����	���YX��a�/�-Ρ6�M��h�ǚ�m��E�~^6�*8x�Yl���4[��Q��Cl��*8y�[�Ъ�J�Аl?1[�\0!W���\'~�]@x����s��Ut`!�AWG���h��8��UٶCbn���:����M�t\'i)�lF���n4-iB���&Ͱ���{*4���i�&҄П�M��]@��z��q�;�н��M��4�B�Yo4/��uLG�6oL&�lTp��-���aN�i�&�m�ńie|�CZtU�`m�z�m��ܘE��K/���E�
rO�N��\0z�Ҙ��y4���}�siQ���l�M��o�i��®B-n褖F���H�ɦ���\"5
�d��!�i�>]DE�%,�#�T�����AU�|���P��}�4���Ms-���4	��i��盛�pv��N馔��e\\���T��Ad�A:��{\';�	`#���N��OM)���h���S�b&{\"�����uE����v7Cӑ;����maS�\0I����<�� B)���LL��<0�GS\'i�E�1���.��&D\'�zd&�����7�Ϻ�����D*��e�WdzA��u25�9ʹXJ�Wf�\0o��#D��#��.m&<��r��Qh�Ms6�eD^$�@�S˴�@�0S`��*-�(�T\"�2�Z/1:�WN��͕�*;ʆ�
a�@�ʢ�Zl/�M��LE����d|�m��L�������mi�T�;�(	�n��D��R\'hɰ�ۺ����%NS�ʠ9\'b���߷��$�)��a�*�I\"�6e\\��Wt,��$!-��܄?�H��+-�0UdSK\\�\0a�c�hY�w�@�ڣ-��\"�H&�\" ��T��R67S��\0�&�uM X]A\\�T
W\'���Ll/�$����v�J����.�\'udH

C��6P�`IWӵ��h
tw����\'�F�;�M��0�k\"m;�#f��7\\\0KV36���#m:���� ��J
S�C��bI����;��3q\0/D�+~���/\\0|!F�LI��;4��������0�\0�Z�!��Ivˏ�<p�嗴$���?���)C�3��\0��6��w�96#���	g�/�1�:�����ߝͻ�
4�5�)�r���`\0B�G�����>_C*Ȳz�e�}�,Y��:�I�v�[E< l���z�.�>��~#�:~x��J����!��9��8�&u7���������d��Z]�L�\\9���0�Ӟז~+Y��џ�%���o�mu~
�W��q�سC�8_��J�*�\\�8�*�h���W�������d���m^@��ۅ����x��F`3���~��N[���f��u7�~�Fк~ ˻�����rz>:�2���k )эf��/��\0�S��K���?�̱�!�i���j��b�PK�J�⫆o�R2�cI|m�
wc饑tL�+cp��1��KFBv%�ͷ[4�vD�!���6�0�E��X�\"V�B4D0�Pf؛��c��i��w�kp����h�g��p�.�
���\"�q�Ï J�a�:[�rg
:�\0?e���c��vM�au!����5�����������ɳl/��^;�4~�CY@p�}���؟D���1��Ѝ&��ݕٶCI�Q=��$��&e6m�Ё0Pv[��S�F�!7l\' ���U�pu�t�G�N���M�o+�h4�:f�Szq��A����vvP��B�@A0JkY�	W�I:\'�$S	iD)�!4ӛ��CNL\\���7\0�P�dh
pf�;�$R�h ��l
p�}�NI:m3?�CO�)�($v�&�l⟿u]=S�6
sئ׸�0��C�m�&�^>��0H�}��f,�Ti���t��O��J��A�
���B��@�<Ҹ��$
N�@�0��ao	ܤ|н�ɉE$���\"�w���u2�^�BظT����!���hZ�vIg.�uE�L��s�#�쇦@���d���ql̈TY�]Uh�OT-�G�im�5�Q`�@����U�$�
�p����g$ G�W$n�e���\'D��N� %X@� ([�b�\04��{ǅF���B�{*�\'h��J�U�{L��y�NH7\0�r��S��-��o�ɜ�H7P�7�s\'�WN
o!\0*�1�l/��UG�1�#e\0v��,���B`����uE�?���r;ʣ�t���m
�1*�D�Em�F捾wT�]�\0���G�;j�0E�w�\0<Pi�3�4}^�����+��}�.��;#�i�@!���U�d6�%tI*v�yL���N���ln�Sl�U����\0
�2N���J�/��\0�2��(2�S�G� �\0��	� �С��Vo6V�(��L��_L�$���_,��\0_�M;�dWVڟ�6�{k�TQ즇K~��L��A\";��!L�������PPiv�[)ƦQXax������\0,,����˴�(��d!�.l�\0;	W��r�>��1�bg_�\'6׈(�y�`��U�|��bU��ꂚ��*�ONȆ�
.I�\0�db��G�Mh
���2�ˣ��8h� ��z]�1��k(��~}>���,�N��:�+ju)�9����g]\0�R�����\'�3�V�0�x��v7���O��kK��2�G�8��Jy*����\0.r�^9�S�P&�*����5�Ú曵��M�_S��||�w�~���Am)����o���ѓ��h��J�8{�+(�`�P��
7��P�N�;Y���}��;�#n���Q;�qؖe�*����E�Ώ=���O���4��5~��l�p�e��ig�I�ة�p�Y��_AJ����$����G����33��o
p%:y�x�6Y�w1n���ŧ���}�>�s���ծ�Q�g�o׺������zw���xk-J.��	��b�5���[���pb?�C�qU��Ā7:/���z��r�Sb�E�luI�my�ߖ�Z6Ԯ/1>!��+]�6wy��
u��^u����\0�O�Ǩ�\'B�q�,���&�A}<f����SmF��8��8�s�Z.���dܯ:��s�2��G����&۩��x�O�sú\\~��|�O=���$:�6�1���?u�a �A�.��ޜ�J=U�.��-�cr�e��b�}8A��e�3A��N�2��C�+�W6��6B#@o$�n��E�>��\0+&u�6��dfH&
\0l��,��\\צ^���ޣe|�XFc��8$����*�+�Hg���YOzI�����>q/��*\\\'��m\'�cqY�kR�S
s.>�D�<��K����n	�W��,��m�b��A����ٿ��cDjn����~�)�po�\"��3L֣q\\A�?��S�(ьѭ��znG��Ih_/�=u志���\0W�zC�=�ϫ�2�����`
N�R�_���ǄM����`�j����7(0
t�6��k�[�
{p���2�WD���q����m�q��U����j��i��ɨ�(±F�ajm`�P���KU��بh�������_�,�\0������O쫡;�a�Z�?`���o��ṁ�淜/3L��Cx��6��q�\"\"��4t�=���@�F�gUv��\"�4����q��!O�l����xT&���\0�Š*8QqD�Oه�?4?�.�-�x�*��$�6�q�\\	Q�oe��n!W�cDٷ��\";
w�\'
f.�e�l�J,�Q��S�Jk�Q����M D��Ig�*4��M�+��N�#A+I�.L£N�*���~�\\���Z�WСu0\'u6���04!Q�D�K�Gp�Ԣt?�U�e\"Ѧ�%ӯe�ҀuPr;��3@o
�|�e���5�ӈ��i�~>ahskj���Ѓ;���t&�pG�9��!ds���q34�B�b�
�ұ��	i�]���;�,
 /u\\���z�휰�F�!4����q�P��;�wS\'��Q�)�\0�*4��Ȥk�BZ\'M�`®C\0Eֶl���D.��[�O�l��S\'qb�� ���W)��XI��£J4E(����^�Sy>jrA���3�TXf�&�I>U�(�2b�y47N�1��\\��J4��_!�a3�o��S�������/���}�N�A�*�=����!�\\+�_tȗA
�A��	�����{|�$E��B��Qi���o!h�)@���BX	�:kI�ʻ	u���d�xD���Wa&�>���F���
��;#m.`{���
1���S��T�l�Ks��L���C=ъ[�;(l�LN�(�L���\"}Ѷ�
QyD)�����\'o�F�<�c*Z��xc�s�Sx�%�n�+������u�k�����;5~��#��M�|�Ǉ�!����L
���`ل�Ư86�|�qغ���&ֱ]N[&���?9�\0��Y��7���.FR�#���i�\0�c�Pc^{s0�6$�\"nγ��}%��Ym6�&�wM�/̸E�j���[��	_?�{�;�]-˧�/��=v=��O݉�{hO��p��>��ц������Y�vnN�-��Qi�����U��CA��qyYM�.s�\0�k�-�3��vf}G�Si��c/�:DS˩��NG9��x��U�������0���ȱ.���^9�\\Pc�[0���O-3{�B�n�⫀LΧr�OS�,����{ޕ�x����,�.�r�e�Ф)�T�0�\0Yj䒼��R$�+���ui7\0�`p�=�j᜻��D7Ko�F��n�\'��<K��>V.�s8F�G�n[��h1R���.���򈧛���#�;��?�5rLXi��
�f#�\0u:�,p�c�V\\zy�7D���i�k�~_���4�z.�j[�Wlٷ��.��x��)���b2|~+.�L��5�����韕�|׬~48n�
n�<�;
�@�vM-�--T���!��2/�W��\'��\"H*��mƈ��S��62<�@�����:G�eB� u��N����06F�U���WaA�J���	��2CE��yK��G��_ b4��04Y\\ �>��@wVZl����-$�9`	�˓{&k6S�c��\0\'��9�Bah� >��?.��G]!3��Z|J1�Ӑn�4��F����P�L�	��{)�cx�@\"�����Cv�����	(�\\m>�6�����A0����CDƶ� 	�!_(�@�$����$k� �B\"g�&��\'�D���\0��,��E����D+
��TA$k�N�t[�6LuF�Zt0�B����r�1=��}\0�\0=�V�`1	���m�-:!��ua��n�u};�D�md7� \0\"��F51�[[;	Sf�.��t|�`��Ä�xW�$�UM��6���,D�ӂm��m>o1�d�ΐ.1��H�f�:����n�S�Ou)��!�$ϲ&��\0	��
�3�!8��)�\\���]���f�@D)�ܦ����	���E�-�F���j?�G�-��J��\"�6�䠧�}��-�X�bb�\"��e
mY�/iB�k�is  4�Р��_�� u9���Z�1>�z@�_Kh�+�ǀ{�u&�E����T�[�E��;�?d&�^�s6Ɖndk\"<\"��ix��P���Z�hAE�3��4��Q�D�\0����VcN��s-p#��p-#䨰Š�̙��Wn%Q�n�\0�{���U��#[f����t��Nm\"�w��TV~C�0�	�(#PJ�L�l�������y��O/�\\��m�Z����\"�졦A-�4Bi�$��M��p��N�_���RE�\0����U\'��������gC쯧y����B��w�qgȕ
�F��Q	�[�k�1����Y��*����j�e����\"Ε]&�$��y�$�!�x;���TX�L�ev��f\'���#M�E1��\",i��P����諒��w%�>�rڬ
�=����1f�\0%�3��@{YYgd�Y$Y_O����P��
ry�i`���be����oo���O��Y�@���\0��NF��ɱ�D;N薔\0��I�tư��]XaIӲ2Xg}��F�\0T�Y\02�, B!mm�� ؋����\'~Ț������ea��{�r{B�A�����v׺����\0a�up�v�4>T��&r�6P�PM��D���苖��J1O��D)�Q���FM�1HN���qp4s� \0�;\0�7X�t�tA�G�Yܕm�j��S���l �m\"o�.�lhf���X\"�\'r�h��Z\">��H��#�\0��\0`&�
�%07��.]-dM�dA���02ү��;��M�ӝu
�0bf?t�Hj��H��)��ӓ��!N��4S�D�tm�Nڨ)�R!J�[h�x��*�3k H���Q
{hS�  �6�)�	�6�?$��.���\'P�l�C��:ꍴ\'RI+H�� �����vQ�,!iH�������\0�&6�m};(32��Ln�hZYF�&����KR�6��c~ɍÖ�i�6�5����jm�a�\0�<&7
f�V�tC��E	;�6�g��1�`H:��� ��r�0��tK�7�N�o��NJ�޾��s,e(�x�Q����-̢	^˳z)�R�/_�>��SmjX�\"�S{	��\0�}�c,�-Ls��������L�Ht�a�7�E�c���kZs��W�y�L�Ss��`K����G�R�I�yMѸ��|5��o���Q���;_�\\
��#������^�/*c�g/�M��_�^�dްzeŜ����x�)��c��)u�V7,���\0�vvT蹽ʬ����\0�����Y���Y��|x�����N3ϸ/���q/f2\\��ԭF\0�?���׃��u���\0�1������<vg�\'�>_G��?��\\VZ�q
�4$���~���C�Y��U%�\0������-�\'���;�*��9n�����WU�\\�Rkc=������np\04	�_Y�yL^Ǥa�.W��dUq\"?%��P2��E�x`sҞ�B�q�qD[MW��/k�囬Y���N�8s\0AE�qq17UA���\\��q��l�ʻ[�{���+�J��G��Dl���@�6���|��|m�f����6\\uz�:Pv�ӏ�9M�~�W��
Z\\!��<G8��J\\bD�g�/��|o]���b��;M{\\#m�#���(H�D0��4�-���?�ߦQ~^���E��R���������Q��X�|ss�rm˝���$�\0�S�q_�\'dC
H�>,0C��}�~P^@������@��_�K��	�c�Xh��&�/�<���`���a=�����Ke�fL�>�K�\0=�p��/\0�N��	+��\'�	�ԢڜC�نaSWP�pߒ�������:�0�U���y�<㏇�?� ����:�������*�:|Lǁ�T9�O��dr�ae�8�\0�G����=�b��>�ʍ>����6��\\s��6�����7������Ɠ���_�\\�5��r�}/�]�c�N�B�0�{v]���Yu\\��J&�`�_Ϋq�ƨ�*H!;��*ۅ0u�onHo�1�A�r��a{AD0ѵ���kXG��nfɵ��,8��)�X����N���-���=˷�{+Yv�u�!k��儁���;�n7�ܧc������&�i�S�t�wq����gb�3�.Vp�,�7�;�8���,��	��r�͠\'�\\!vN��N�n1�]��¯�[�rG\";�N���	�6�q��N�+��M%�I�{�?,	q��K+�ۋ~������\"5\\��sj\'��
�8Г)���p�H��*��m��{�̡��\"��O`\",����Ө����>�4i�7[�V֑r@��G-
yl��P���lH�]8����[���7�s1
x	�9��4�P�GNdE��!?�N������g N���a�����3��4X`>�f��uF��}��d�t��p��n� *��$�Hc�:+$L��M!ʧN��ʡ=31�\'hS��p��J�����B*S$I�lb�ܐm\"����P��\0;�rO�(iȰ7@�Lɂ#��B馘���cd� ���D�5\\�juN�\0H$�tP��@Z������NC>qa6�_�W\',]VK,�S��`C@;�;��i@�A&�@ٛxN;�!�{�\"RE=���x	��:�����(ͥt��� ��� \0.Q�N��I��yw�L
�d�I�@��@�m(�HƾSO��#m26�f��H=�r�:�B���@@���ɡ������
9(R`�J�vkX�k@�\0�`2���QyԀ!|�\'�.���˓�8�/����Vs���%�;��}k��NB�����5)�Ԝ�:�axߪؑ�ߧ�Z�_N}O��a���/��&?\'�cy��d�/�j8j�s�F��!�
�Jx?ſ��9��\"È����u��w��\\yN��k�:�C]k�	&�0|R����2�<�0�[��{ܮ�����i�\0��_�}�q���dW�i�_��/-�|丆������?I�s圣R�}�G�k.48��>9\\9{�g��嬽�����2Y`�y/�2-̽C��c\0�nV(�,n��״q��<��L��! ����i2d/\'�7-,�����0p9�me�L��G�H��
�a�������}9��\\�*`�b��P��W�Uk����[\'�x{��s�	��8��neF#������G0�����n�1����$�;ž���k}g�^�d^��i5���,��ӥ�ah�6�h�z��n�{����o����~�\'$����ٕ�L�?��Rf��C�D�D�i�7�}���(�G��]�~���SU��pM\0����8��W]��*�A�.����˧k����W!��l`��V)ܵ�PeԺ
[��恘���e���r3�lW#�T�h+��V\08���t�r�����c�EB�AY+8�4SS�]6Iļr��/7���8|׌�4�}_��-��Qϰ8���;H~%�?��@����7-���ߘ��ϳ�s��k�(��unC�0�W�[R�[��ĕ1��8�����\0>�m���E��/�q8~L�s�[ȇ7m���5��;�{����}5�_?�7��������}B��70,;��\\J��\'X�#��/v���Z�Lm�9n�z�I�+@�x����a`h���R��M�.�KJڟ
I����>\\-J�����3���8�r���-�-Իd��.`ߺ_d��¸_�B@�z7a�(���t��8��h$����e�~���.�m8UsQ��j�q�k��𜥦�-�\"��h����k�s�[�y�S!�s��*A�㑳���)�MV4��DjJ�������\0J�]��6����6�ɲ�A����ſ<�p��������p�6�k[C/�S\0G���J���dAd�9�Ş���g@G�8�^q�p�OՅp���d��u�au����s��+��)�h1�7�:��| ��i�0.o�5�������E+[��S8 �x�0R=�i�Vv��)�}
2t�)>�O*w�\0���>S]L�����kX�g8���e�^��1�:�8�p����1��Tm�5�?D�\0�\\o79&럧��˷�_L�%Ͻa�����h����P���l��0z�����B�/��\0��zt[��So���qx�M}:G~�3f{�+����40xJp�<8�th�1�ǀ\'��5q��k~�]N�,�o��t����;�<�0�G����=�.ϒ��0�z���oE���;O/�*=�@���Y��S�N97����z/�U����Z�7��y]��80���=���%����W	�\\<��׺ �^��a]���cs
s��N� �~+~ҳx��%��?��=P��0Ʊ�fw��*?)Ĵ�U!���k�
��p�M����\"�N����<́%r���N�\'r8�aD�h��&�&u\\����*���&I���srP��w����4;W�]��~K�4k��z�^��;\",P�8\"���.DЇD!8{�,�$q���C�PW\"��\0�8}`$����;
��$[�zm�;
�w6��&�%ir�.�)��6���M��#Tm�i�tM�3`��||�
dYM�iB�lS���dޘJ�����6�r|]Պt�K\0��X�M�5�-vD��pdo�iL�H���2vM E��V)�
m�\"ī��\0mSC\']}Պ6�eP�џ(�JM�	��}�싧h�%,Q����z������~H�,R&��[D�Ϛ��%M�Q6��&6���@�m�M�ɵ�.��I�Dֹ�r���B�J[D�@�#m#3�\0	�����R��2��e2�l[NZ��\0ư�0ϒ�;\0�+�L�J63�ih@���=�!O�t��̤Gq=Ѷ�x�����(�O��^�L��-6[iL�<wF�S���4@�NeD^VmM���5�\0o_�\04*gv�S�p�<�0�l�1��Ʌ¸��W�wqO��^��<3�U��i7�8���~�O����?nI�d�x��,��o�ڊ�L56���;�O��n[@T�H��\"�z�Qs�����?K�������l#Y�e\"f�;����8w\0L\\>���g���/c�?e�L^�ݳ�73�-�fR���k����X\"�+�b2��8WS#�wM���p�2[�ԮE�e,�x$}J��ɝ��Kb
ז���i\\��<�x���3�?����k���g�J=,����������R��u$�Y~M�*�s�\'��.]ƴ0��7{��q^���T�\0��w��ui!~�U��̰�Z#�_���d���Vi�<O�`���3�a���L>�`4{�Q����4�g����o��y�g���7<_��4�����V�OlH�����\0���~
1G��<F7�}!�b[B�a�&�?�kT?@��ju����;0bn�[�/����<{��3�ŗ]��07 I��u,���|���s7�6��%�]����ch�4����kLN���\0i \0�w36���]������I�oP���yE��?e�?/&�j�7�O��� 8PM<>�s��\0|}o챕�[�\\���
R���q��\0������:Õ��v쉑�������]V�#C6��_�?�������G�J�\0���:�:��+���-����ϕ��LA���~���/S*�]��5 .�%��yWJ�
��]rY�k��\"��x����l�C���|��ڔ񎣘ᎎ�_��\\�j�bj/e�+�E=u\\WQ8:�A �E���q��g,e�_.p� ��-�t��؎H\0h���j��A�U�z������\0�^�]��_x\\^ULTx#}��v�G9\01��!`���r?����\\a�\\5\0n�7��#>d�x�t��:�-���hk����&NLc&gPƿ���3|Im3\0���O5�@�!p9�N�L���yr�>3Lo�\\�h�F�����a�,���&�	���ۮ�Wyj;X�\\z=O����U�P�gx��Ԣ�_ҧQ��6��}��-*��ԛB�0F�D6�\0��\0䟆�8�����0���\'�%��{/gv����������c��ܞ}�e�.h��tɭ\\�g��F˙͚�.�\0!�X8k�ل� h��δ�x-!�[h\\�L\'; \0H�v]��h�᭐f���.b��Νg9�_��!��G!��Vo~ˋx��	&�eڸO\\C��u��;��ELA0?�`\'��=Nca\0
����g�rq�WGԤ�\0��o��\"f�Q
6�Z�@�V�Bl �n��X��:�W�`u\0\0�Bf>/�!���O��df��ec	\'O�lk�Tl�H2��e;��\'L@��P��@��T��0a;�� \0��3.K���Y�y�;�Ŝk��,��1+���h�t?�\0�JL��R<���u�~^LB���7��+�8ni���.��/���Q�A6n����n\"P�9?�`�M�$A)g�\0vN�\\i��H�(p�=� �<���}�F�� 8{��h��d	W�a8pv2�а���a������D�����N�-���о���09; v֋�c�Fu�;���\\�A@p㱏�o�}��
���$���,�#@��:�L��,	���q�䝇�1\0���4W�q����a�.H�&ݒ݇�%{��4P;\'��8}bP?K�s;q� kn�_�;��y�O�a��{��҉?��C�P�a��P\'�w��J�b�D�L̝{\"e(��N��\\����dΤ��)���=�6P��<yD)ț��R��;��d�gd6Kir�@�0/D�L4h�ՊRt����H�j�ɉ$�m4N�@Q��=�6@����X�َQ>S�\0\0�,�S\0�������S��=��v:�t�u\"�iX�\'�C�r5��U���Y�IV)��BVC�$iO�U;6 |�e��#��=���5�;�]�؍�]a��M$�m49�h=��l/1�6mǻ
K]V>R�7��jVSLHTi3%j4�O�	���\0
+)��\\�:_��D��\0��eV~�t&�4	j4ma�e
�v�h�🪮���,�:��/瞧)�k�]�f4�,~j�3�>�G[
t���쒌������=����3�Vi_RA�3Q�U�.խ%i4���Ti:�?N/�n�2���F��h}��:s�?E2Z`O4�P�gB#ʻ��Ь0�v�i@�(K\01��M��;��ԃ�@$��)�<����?��1�D�fvW�/)�0� ��eE���X����g�O4�f:660�ٺ^,�ӽ�hc�+���l�H�j��6�	�0\0��b�� ��)k,�+ؐeb��H+H�r5�
r/̛-\'��,+���h~p���By9��E:`E�-�P��\0r��:c]���PIO�F���)�Jm\"�g������H�{�S�c�B9�~H�Gr\"�v���H�d�6P`H�a��F�Ɨ)���rM��\"!��k)��l���pi����&Q6W$[��Md
�Z�3��.;��*a�]gҨ�g1���t�V\\Ws�����&<���\0��p��0t��
:tə�Wп�/�}_��S�8tb�I3��C�_W�q/$�C�	&(�;|��� �R6���s�Ɍ��s��ŝ�6xb���k(�]�
 ����~�)k(m0u��$�����=]��<�y���\0�>���Vn\'�̧\"���h�q5��������c+�Mc��~�������C����y�4�6ȴ���4��L�1ಓ�iݯk����/��sV�\\�/��1�V>��뾄bC\\/N�+
q�@��H�����
����(ZN��aY_0��^	D(r�,�g�N��B&īm�D���y=��/ �ړ�Q�a!N�$Ylm����1�N�c6��B;�G���\'p��?+��CѼ-Ǝ�.���;�3Fm
�
jt���Q�H4���UtA:���i_�N���R:D�e]+Z�-��������GH��CJ׼�Z:p.%WLA��]�2D*u�~wZy.��+#��ȑt����H�
\'���F7q�
�E-l!N�����	�
to0�U6�����w�\0E�Ԍ�G��c[����(�.���J�����/�훣����{��(��B���~��g�v\"U�$�O�h�W싣���Dfu\0<����%���
!D��l��n�
�bE����b �䡣\'KhQ6GH�	PS<փ	��YX�\\@���6����U�V���촷����W)n�}��VqLD����F�N��c�+��M��y;���d\0\'t���D)�0&Ў�Πf��Y<S2���[X��wD�1\'T�K�>!�m���d��ꎝ.��N�\0-`�Q�ʌ��>țJ�h�q�D�R;x�
gu.�mA~��F@$��Æ���26�878U�?�?îG����4�n&���=��>�A���=]/-&tsI��u�-�:I9��~����ǆa�\04�a@�;�>���ޠf�!Ÿ#��,��%p��R$��t��T	i,
��9J�ǚ��0h1�\\6�c�+��W�>k��r�&�)��8�^������򼧏2�����mmC[TA�t^~i���~�6y�Eù��B峓w
���V���.#?��l06\\�^m��x�E�bH+�z���`�ˢe�NZ�ד��kݷf�|(�A���\\��qat��Rcu.1:/A�i�O:@X�r����q_>����3���ɖ�s��^��ಪ�j���s�|�^��3�F%��Tyq����>6��?�7 $��E<;�7�Vz��X6>�Y�~L/,��H����
�W���1[	F�j�)��I�˔��q&#���=��x��Y�m��;���Vp�LZ�[I�١qe|����/o�|��d�@\0yM�Hثh;H�(�N�>�/��,��as�Z�	.&��^���������ᗱ��=A��:�^?�6�z
�Q�u��n��1�+�l	�z-h�����ǩߓ���O�i���V
(4r���@�U�h�E���U{X<��Z\"I+��;���dҲ캦a\\\0�>v��x1�cZ���xQ��/�u۰�{pXTx
��uO�֋�|@_�NW���<Ϊ���o�bqN1�U�I��h����V���|Q�2F!�O�a�<�uZ��b��/�he�I������\0����Zx~���x�\0�=*.d�Nd٢��{(
�0�)�2t\0��\\DF�Q�dD�].�ш��h���
�=dY&C�	�
� u&Oa+gF�
�Om�J��\"oc�Q�kZ�B�\0\'��S�b�s��g�	��k�f�M��O�鱘��Dw�Z��\'�O�)���P��a����K�PDvT�<�E�;�l=!i �kA�[��>�\04#0`Ot�F>�h��*4A��a�@�	���e���B��Ӈ1i�.�K}��c4/p!�Z-����$L!4L\'p�Ѐu�a�#E��v@h�)�0�,����V�FF�/��+�0�>H
��t�\0D&���Y�0t>.��nvN��?��}��M�\'���tmh�@�\"cf�}W�f��Z{��Y~��9��\0Dmi�\0T6�X��m87(�N��&6���v
m6�dM�����_�0��We�s{�E���5������q:B��K)��U����0Ы�l?����qbtW��_Ci���\0�=�e���{G�ALv��
w�	���!+8�,�NvZ
�h�o
t�CF7?EG��&�������u:b���Ԭ}Gبh���tcI�Pҗ@�n�b�M����$-��3�O�W��`d�Wf��R��K����s&A1�C@���1�&n
Q�l4#iU�g�A��=��F��_��ҙ؟*�Q�%]��(:YY�DX��iN��Y6�L����S�6������S��B�-d4�ܩҍ��-f��\0e]\0DB�;d����Q\0V���
�@����~�@*�Q&�
=�o��(�#싣q�M�3(�(�N�@���do��6�م��Y�H&4���3x��h�i�f��k+��ů�i4��O�Qgã���0\\C��Si\\��>�H�CtӺ����?)7l������7 �]ͽ��R=�m0L��ZMĂ;\"mZ5��3
$�:��FI�5iE�����#;gG, ߺ�H�i+GO��Eb��dM��pܫ�I�h���X�4��;iI��)���]9�~H�\'ID����tL�\'6��DvL胱�M�@�y��#m�V�ѝd��B��mM�(����K�\\Chɐ�;�jl��6S[Jo%9�~q�Le	؈Y�$2�&�5�������e>���Oy�{0�D�l�S�����=ў�jXX��$�a���������� ʛc��P��=�LŻ&������Ʊ�v���?ٕŧ��n
�n��u�T��w\\�=����x8㫧�e\'(�\0�T-;�c�\0���L��L@stM�+�8��V#���C�.c\"ƚd\\���H�`Y�� A\\w
��:��/���\'�)����jz��x6P�.(Ŷ�����y.iP��֏�B��`
�X�S�������n�����_4t�l\'�;��`��Ne��W��;����!eAq9h��s>�St7�������$�e���z�np<�����#����g��?��W�t��1�Ó�>��/1���}l�1>W��c�m�>�������<�����ǚ���/H��l��1���3�;�E��/j�W1N�\0�^g#Җ�?Vr��/
K��O6ͫ@aq5d��gD


>,|��2t9A��eF��l���;J�F,�p��%B��4����t{�p��2�t��l��̛*u-l�p�ihcD&��H�pmu:s*�d4`�YWJ���ёa�B�V���e4�-��Ch ��H�$��vܦ٬���dÀu&V�N@d<�l	N�X�v��8�\0%l4oq%�O����FCB5�d&�
�.b5Z�FIԍ��#��N��3�(M?-f�`�懣r\"�&C!�cA��	a�~Kc�si�C�7���xC�,��t\'p �Nᓦ��&5�a��F�\'s6�@
t��	�<�\0���X�Z�����5��QÀl�U����=�F���Ou���i���D���Q�	hڨ)y�#R���m|!u�D}���>�N����H�Bv[�ž�M	�}ea8p��*�h�h��F��؍��Ut���o����6Wk+�u��F��}־�4�6&Sk�CB��CDl�
`u#~�ɵe�N�*��������|&�#G{}U �>�iÙ����7��lb�o�Pо�\"��=ɂ�P��$xVS��� ���BhΖ[MF�%]
����3yU�`6��+\'JF�JF`Ymu� u
���*1t�����������[hțe���AZ�:HM�YE�>��#CWF��t���3t�?����V�K��t�Jm�YMIl��n���-�\0
&�»e��}#校�>�gG�Ѐ<*�[o�L�VҶ�}��#h��Si\\�ј�k�6ͬ��b��.�t��F�����m6�ғ�k�X�y����}��@M�h�(��*�?�=b/�PQ�K)�nD
7%X���Si\"
�D�
#Df��K?/��O$Z�ie��k(E�\0�mc����1�Me?\0J�O����A�n{�J�ȚxbE����=�yOe�^�O��k7&ztci�S�Ѽ�Ɓ>�2-m�}<1
�;��`��B�[���鯪�!�m�����p���.������p�ix��L�+SkZ�o�\0;A���Q�G�蜟E���<m�:�`�򻯣X��:� Thq~��EJ��#�#�±��ҟ�Y��g<��W�� W��?Sex�Mug�MB@\'��[��4��u�~�`:�b5��]{�������x\'Y^��MJ���B���[��<�^����n�`-e<hw�pn�z���c[P���B���5]_�,��Y}:���<<Q��H}>��q=#C4k��+�`�s\\���.5����r#xv[VN�0��>��eت#�T��S����0/���G0d�������X�ų�����q��?(F��\\�a�����\0.��g��\'0�p�վR}N*��e�gN�5;칼[�������Ȧ�Y�<��s�����
�w�<\'E�fWK,����4���8l`0�����p;#�<�S��,p��\0
��A׳���g�y�4[f��q��5\'Qk�\'�pr9�{�g=�Cn���y�g�~k���$��xWZ����1\0� }?�`�֍���H	+��/H��
S�ܫ����-\'dl�N����B&�;O�O�m�\0O����9����#m8?�l�-�2L�1Lŷ�9��nQ5��B�� ӓ$��cY��F���\'O�!J�e��\'�{�b�=͓�)�S�ASk��\'諥\'@���7���/s7F.�F��\"��\0?��?�����N���C����F����TjV3F��:�B���4\0�	�du#0�ӋZ�[�_}P�\'���Ze��\0 졧i\0��Ѽ�P���Qv���ҽ�h,:�~jFď�5+#�����h$H��E�>;�������
�Q����6����h[o��G�ڂ�to(M
�5+�F��!Q�	�[Mk�WGb/����i8\'[*陉�|-��.�]
|־��>�_J�1;��d�ѽ������k4\"E졣��m�#B��Yl4$i��\0��WmJ�Ҿ�S��f�B=��bM��h$Oe
�.%��-iW�����\"�/�b�Uc�W�u�P1y��F�uF3@�i��(��_��eYÐw�J13�*��m����8{�	ܛ�])�Pa�\0�-��S�pM�ԥ�_���;����I�����|��غ:�iBh�n4 ]WA��x�T4	U����A��y�WB��toe?-͢��\"�;*3:��h���T(j`��哣������	�_
��kl��F&�t&l,��<[������B{:BB�(Ƒ!CFG�3�CF\0�CK�e��9�����UQ���i�+��O�j���:\0~z�6��
[\'�>o��\\f�$]hf�j�=���S����,�y�V��������ʺ�\\�
@��\\��7��9�x�/خ�)b�\\K[Z�x��h
_�$��\03�
�3�m��iq�S��;�ndI��t�>����\"5=�݇�G�[_N`k�i�-\0���\'��D�J����3�>IO���c}+�_�Ҿ�O��ԻD%�����Z�iŴA�V�R�E/t�w>m0/\0��3ꉌ�Bci���gn���SL�e;]1��+6�m4�S�>h��#��V�|�6��	����e=?�6�\"�ȡm(2%X5�������L��6�H����N���FF�����쳰�ӋnQ�zM�OH�}Q��/�ʁMd��O`$�������T]�)N�IV)�D
l��=`*4�ح=\\)���^ɶ�e�{(i@�WJG�e]lBw5.�
t�\"v�B�7���ܲ�����Ѕ��#�*�\\���ed4 |�����[
] H�����ў�:�+{���� �A�ڕ�э\0�P�s�񷺣Fʮ�
�����a}
�Fb��-�
6���Y�F�e}��jV3B��)ҸZ��T���5+�m���ѓ�((FĔjV>�vT(������Իa4$Lj���x[�UВ�J��s{h���-�\'UG�SmJ�о�t>�m��
�`4-��\0x�-ℝ.�����M����.�a��o�.C��=�89؅���q愞�<�u��`��P
;*��_��BB��{�ШP��6�t&��g{-������(����hxl�C��M��#�]m��7qh��m~Q`��X\\��-a8��\0*{-b�l���ISl_����)�0?���P���Ԁv������
��wZ�A�N]�
S�Wl��(M�F�
#Hi��G���e��m��tB��i\\B�������.�7E�Q2B���Kv�ٙ�剓�F(|֑GC(ۇ3�Q�B�K&�
��0\0;�c�����2G��r����,���]�c���N˸�y���9�~e_uun�	�u�X���V�]7�F�ޓ�ě,Z��r�_M�p0Wr�q_��5Ğ`߲�캿3D��d�3*�l]2�
����Q��w[�i�x�?��>�����+T\"C�`4��L!�
-`6�u��������t���	�:C
0L�\'�y��Y_J��D�������.��T�����;��M��,��G��G�0^s|�����t�ݰ.
͙ހ���<���-��Y%s$�ը���`������,�c��=^�[���\\kd��^������؅�G�<�v��u���g�
�yw�=��p�&�×�N���z
���4��?�]c��E�k�B�!�y\'U+0��0���b��Ѧj8�h�+4͟��_Z���I���?Y8��xm�Y�o��K��yU\\KE)�@[�ʺ؎RH��;�s�I��,^4R��WR��W;��e�g�Q��^�zs���nǑ��0ls��8�L7����;�_�?C?�_���1�zlγp+��\0����;\\\\�h&�/zn�\0Y�U��&��	�EC��� ����n;Ҧ>7�4<�ˋ��^���L��\\�<}���\\�W��e}���k�������rw��昰*2b�l�-��#��3`������<^C���W�p�N�5�?��.+�rc��`�n3-��,fZefe�\\@ _���-���CG,蹎-ύj�C=�]W���Hq?��dYN֭�p.��8g%%���\0�����EG7�n���N�F�g�����Of�r9Tܾ��k����+��(��OM�A�Ehϳ��
�(�DGb�R`߲��C�\0$�M�t�I�N�������\0�1�R�$L��l���7�S���e��\0�&�zsb�r3��i����`r��b
3�	N�]H��X����ۅ���B%(�\'mu���W��D���LJ�R�h$vKu0\0��Wl�nH6�@~��=��	��YQ�;i΂r��
^?�h�Ν�`�:˔ٲYFM�Ѷ�k��F�� ��@�ƾ�Sk�v��A�~țF5��CKǂ���5��gf��@�[db��`g�V����F-�M�0�-`\0V(- {-/�M~��>n{�^�ƿ5
��m���$O�Tp��ㇾ�_K[�n�+��2`
��+�ma���_��l\"��o�\0*���puG=���B�C�`\0��$��N���oua{!u{x���0[�ËX�\0����Z�;b�Q�=����;Ɗ~^fɱ�P�6G�P��0��T8{�r�ص�a��?�AC]@�7\'uf�k`}��0���T�DD����y��4Tp񠏖��k�A����\"�`/�l4�6�S��0h�kGB�
7��m��1c%C�E��D�BM�&᷀��
�j3�_m�x�4��s�g��\\y�/$����^���#��g[6x��G���6*S��\'��w_-�����]�+b�S���|G/Ɗ8֛D~�
U�ͥ�;���|jk�\\V7���t�5�+���3����>����5~��.�_���v2�#��]ˈ���:�\"��X�0v\"AZ��\0\0 ����֏E8֬����j��5w��^u4k7�o�x_.z�����Tژ�͙�ó�����N�&��)�kHy���\'����S?w�u^��������$؀��h����6c�9���,�2lɤ�D�5������g��${$��.�r\\����=�Wܠق$ŗ{�4����筹v{^�enwJ`/p
5 YD��(�dlS[L�t�ۣB�l�G��V)�[m��E�����UBK$�3M+��\'�I���N��b�*�8�Z]NݷC��a�3��@
����ҏeF���X��qr�Է�k4d�\0D�=��2:�#�ؠ4��h[L�|�u0Gt��HD%��7Yj��`4��J�OCa�i�Wik�!�\0�����/�]Fr�Jm�r�V�������c62�͍l���@�~ʜ�ad�	��A���6�%���o�	�t�Ӑ&߲0DSt(S;)�9�5��l��?5{���@LϺ� �~�2\0��)���)�������\'�i#�W,�o�hSi�qPa;�o)�kd%��tٲ�l���\0����VD�)�����D��:��&od�����%Q��W��~NQk.����!4�3!63>�(�!,���ON�iBY#k���+����	l�?���of�&it�������/��[�t�$:����=��&B6I:���9d�B�x���7�����g}���D�G�=�p,���M�������F������&
b��Q�^o�cZ�ea���mgd�Lc-}�S����b/�����Me1mյ�鷔�Ӽk�e�౜�F�D�Ӷ��7�ƞSZ�	����ʪtI\0�	���� @��Tk	�Dl��.���4Y�ڙDpd�F)ko��Ww\'_	��l%E[p�
�1:i�9�����Dym;	�\0�Y_DEŅ̌t���!h	�g���e:QҴ�s�AN���5�\\�\0+�h)Z:W����+hg�6�ͤ{
t��OFv>�:��ld�H6�����Mϕ�ї�і��J�h�6��O$-F�{��&$��m2DΟE]8�����(�s*�=�\"���ԉ��4A�i�g�y ��e8y�JP��
@ɐ~Z(�B�Zn�i��i��&��-���-����ul�\0MКQ�s��]	���z+��a4��H�~kh�Ƿ�P�ڕ�ѽ��Q��gF�@���mL����+k��6WDL��a8`���~bl\0a��{���6�����/
�6e��h\0�_�6�*mX���Th_Cy�k�x(
�M�6��1>�$�h�tT4$�jV�m�uf���o������m?5{���Q���Z���A@��[����
�E��eǻP�g��[�\0-q*:Uv��?��D\"����sp���Ռ4_�m�&�#Y�f�3���c\0̫u^.y�$j��\"�k��I�+g]Q�YYB�Q��-�E�������L���k��P�i��Chx��t\0�8�f�CK@N�B�֖P���hЋ�kڿ�ۏ��>�f�%�a�R��R)�vM��g�s����e���O�q�>E:��_�ԩ��U�_Q�1�:��᪴��U�k���_�����������h�S�b�|Ҁ��e����Û�����_��������/��~��S����k0/þ`��8?����m*��6%zVU�niD�F��=G�.�:�d��nf*���#���<\"�Q�\\6f��v��Q�D�����e˳@�R�F�l\'����	\" ��;$\0R1}�5�-c����a�c_��byn�����\0z���́�����7����&�y�D6��w�&?�a��-7�#��
�K\0��Lڳl��e�
5� ����
����
%fs,mNZl!j4���s;@Dd}9����O�C��߿����{��>����J��E����˾�eJ{�\".��3��6U�W2E�
����O��b4��|����2
{��̴�����0�!hs4�\0���Fw�ʅ\'��=̀DJ�Op�go�����m#�]6�`[��r$hW�˧�1���1���QS�X�&�a�#�j�-�M6Mk/`�\0$M�y�\0e1�����M���T�ӷ����I��F��u-]�S���ɭ�`���͓Ns�,�

�N��#mӚ�v�>j�KI�d�t��j�����F&�m�N��
sp	;,�)-�o����t�Ӹ��B�IR�)���*�NDA���d����-��)�� Q.�}T�̅�R�AH��;�3[ξ�W:}���Fӱ��ʛVsJ�諣d���M��\"�~ɱ�Q��U�175��?]%WJN�k++��5Bhv��H��\04&�\'F��&�[c�X�S����ވ�PR���mX�\"%N�&�{-�F6�*mw��i�c�Ӎ�����Z�>
�jV3FIa�Q�},{VÇ���*4nOo�m���\\���6A���5�����@���m���5]�aÃr?�S�N�ʲ��I�a_G�����X��Q�[�&ڙ2�[£@�rVވ�7ABH��M�/ه�Vh��-����UБ�m�Y
:ئ����t\'�e�R��vD(��Wm̘�	<*8i���s��T(hG�T�jV/�L��)�{{�[�.6��7
��XB}�&��wS��@��i���.@��b�u�+`�@�,���uM��؃
C��V�0{+�ar��YØ����Н@�61�6Th��m8{��N�~^1	�nL]c�{�%mn��E�~_�k6�m��O��y��j�sl-�#nZ��v�2��&S�о�	���u��}�Y���-<0;\'�È��Á��\'R�pu�X��Xx�H/A�5z��\0�ϨG�/�¹�%,�[�i�n%�����o��=Pu�b�v�Q��Me.5x�r��g��~��3�����f#����j1�̫M����W�H��Z�4�~\"�.aC�3��d��˒bj�[��d�;�қ��ؒ-e�f7*��V�67��_-�t�p����}Y�Q��=�ْg�:a��H�r���\\�\\�,��yg	�c��`{�sW�����(0=�:�0�Wu��߇�u���Y��֬FT�U!���j�cpG\0LZ�q��s8|@$^�j`��pxLK��%�ǀ\0��~X�0��o%.����E��cU��[R�D�Lq�+���\'���5| �����L~�6\'u\0�I\\V:�|��A#\0[?.�Wo��YqA4��Zb��+�@�?U��!Y�H/+�L��奒��L.H��9���\0F�t�\'�c��k��ͪ��,�lg����0�� �[Ͳ`� Hr������O��L&�+���$�ϩ���nzG�L�m��fuJ�\\a��q�r<N
��٘���P	\'@�am���cN� ��N��*�&z��qF�8�
B��&�M�e*�7�ƞ��Ю��\0��X:��0�<,�+���W�H���S�$2�T� L��sj�H��f]3kϸ�%4^�A l�6}�/im����\\14��$���q�Xp5����[�՟,�_�<���kI�����g*�.���Z�U����o��\0�W� ��m�7s�B�<��]�\'��7������X�����U�<������iȉ�qmwB�U�bp�
�cM��A�� ��\\^>�-`�B�X�rڽ\\0a�y���\"3\"0��]�\'����M�[}+��o4�Ob���w�Q��X\"[TM��ݐW��	}���ku�6\\�x/�Ѥ���d�\\�GW����&���>�!p�y�b��P�� ��/&2���wlƁix����H
�]e�w�/��F\0�jC*�mWsS��� tA�S�S\"Ѣ��nr��� �V�A!y�۷/��~�wg��!��<����:����~��FD�R@�����82�b�k�Ȉ����nz���v<���ٌ棄q.���B�8|q�^�k�j�՜	���7)�(S\0 ,X�W7���6��e˄���E�4r����띗C�W���A�Wi�,�Q�rO��e�0���0er����T9� ~��0���\'p�tu1��5R��@�+�8^.Ά/���i �xVw��kQ���8�;.�\0��A�À��\'�W������B��CI����w���˪5�H~k�`�M3�0<�6ǲ�7=���υ���
}>���ŁO5�qx�u���\0�ɰO����ݷ��\\S��3���mցf�h��fdj��n`�vN1ϥ�]���S��v(��c>�v�)�Z�n\'@\02L.�`��$��F��c��G�fOae�|1Y�՘JGwlP�1�ŗI�J՝f���I��ϕ`��	��-�dk�2�Y�`6]�\0�rq���\0y\\gdᡍ\0@ԕ�
���8��6�/4
Ni�������9�=Ʌ���-���\"y�kH���c���l]�z~K��<+�L	�X���S�\0�9��]��ȷ��fX�#�E��
�je�Ǿ��QI���	���O������}����_3}7���a\'�R��e�V�L��[��8���(�y���8*�[��a�G��s0�!���\\ypg>~N��	��b{,gT����kSKkSc���4�?4������]K���_�~�Oh���S�\0F���Q�Te���T�ӈ��UFF�l��A�7U�~H����r�ݖ�R�`$j4@�`��v�l 2t��4��Y\0�s*sy�܅�Y��	;��Ϣ{�`d[��I0�H�T����!��=�-�|W�N~�E�F\0ΥW,��L-YS�����e��S�v��9; -��]P4�9��\'dcC�Ֆ� Z������@|�������#;)͗u���ïM��B@$�O�6�>�e��� {@!���
t�mh�6?��p�6��˶.� yPR�������\0����1��q���\"���H��p�E�<���?�~�ܬF�-�$��/?E��1aa�P ^ �w,�f����oe��t��Bhx\"��N����n�F��[G��N��i�W��X���76���~��ThͿmՕed4t(M	�V�Q��	���6ܬ}�d\'}���D�G�e;�R�:���!4I\'����\0\\T�>�Sm0�\"wEҽ�6[B\0�ϴ* ǂSk+ ��v�_��n�~\\D������1��V^������)Zm�N� �ڕ���B��n�?�$��Y[����o�S�$w�l4�L(�BqX]���͔��M���_�!O�ͣO��jV�*8�-���y:LZ!YÉ����(�N��ц:�J�@���6�ɏ���Cq\0���G��~\\bL�R�?�{�}.a���p���Uf�^#[cnheX���ly�i`���� vEbn�\'Oe���B�X�{�?Uv0~W[	Paɑ���:k*�#
�t ��aɝ�\\����U~Xq��r���<T8w��u�~Vcs����?%vm��0mu]>c��0��?8��Ṷ�-l�`���T8pH[�\0/
~V#e���ƪ~^�\"Sl=�B�6�n��LG�����%Tbm��z������ϴ�m>�WlZ��6�	���?i[��)�v �\0E�Y���I	��{H�S�����4w�����Fa��}ӛ��\0赌1;�s����s�X�I�?ȣ�F�6Z�Ch��b�\"��&��:�@K]�i �b43���o�w�e�i�<%�؂��.���� y�!��x�]|��>\"QQ�`q�\\^W���FD�\\5V�����Ȳ���g�nN�G�����=�_�Y�H�3�J�����\'���K����\0���/Y2��y�[�✮�v\"��<�H�I����7���1�9��3]p�B��~���zn�l&x=7���WcX�H+�a[K3��&W������C��B�>⮣曍B�{�z�X���p\0�,5):��#X�s�NuO��	��brqZ\\\0;�@�$�\'� �.W�긼FX�6$
�@��&6[��6��0��J��ef��#�U����d���WL�~K��q�]#5�zL�빞Ui\0/H�储6]{5�`��>�}���f�Pk�\"B��L*�@��W�f�)u3�5�f�Yl�,N��lx��E�^�Z
�+��9�2�*U�F� ��̈���q��;���F�a�^�g��R�Jō9�-r�&
�ʜ�C��0�����B�7�b¶�h{;��Ǚ�B�
�u? [��x��%Qŭ�^7��h��eg<u�}�$���\0T}ɱ��L�%/ɱ���s�ֺ;9�gu߱ԃ�`|�|�� �p��9�U���q^��LOFz���G�/���8t=�-�Ӎ�U�։��q�	���`�֙
�
�|=�Ik�}�,�+j4r�e�r�M�0����lñ�
nmW�gb�7�\'ʙ�j�Ms��h]+>�Z�$�h�㺙e\"���$�+�f�����~��<��.$�H��
���U<ϓ���\0k�4�\0�.�ⰵp���lM�Xs�R���4�\0N�{h|hDJ�ޥ��;7�ү�c*bp`�9��n�wv���l&S�y��cɍϏ�t���Q�$!;�nc�����1�� [>AS�@\"��y������Y_Oh��dI�C�6�.���ƫ6�A��Zġ,�73:���X@�f��5����P�04�H)�.`��S����k$����I�Q��L�%��\0(g��VV-Om���!q2�E�eQs�^���Yh\0_N�ʖ�������S�ۨ�;D(-:�jUn\'ue�w��M$�ʢ��rZ\\Ox
�
�H1�7��f���;]����;����;�T�qiLe1M�����V��r��s����:�cX;{#E���\0�ci�k�;&
s6�K�ASam����H���}��WLk�װ�gk)l�\0����:���\0`�xD�f
t@��v��N��g���11��0�&>��\0(>J����y\0k*=η���|�0��˷�}b�=�0��
~^\0��u���\\��0����ː�����ki�;��ǌ$��6�������ɴq����C�Y��E�;!v��N�Ŝ/y��<.LὌ�~
�߇}�|}�Ru�փ���7�nz��`~?2�l���[�\0�:`�c�}�����~�z؊�[��W9��ɕ�`C�1��y��W�3Os��8d�����2����q\\iô�0�K]Ύ�l����\\š�.?�T���eo|��_h��^�\\�����H�\'�\\sԹ~]��/��\'�48��
�Lf�Z��6\"F�����	�F�fiO�qf�>7NԱ��p����O���g���������t�ܕ��1�nF�Zߐ^O��\\Ä��s>�<v3�j
�*�)��y��r4D�s��?\'M�t���}�d�1O4J���������yjs4ϼ���{���mP�e�SE���a�aqn�\0�gNmKv2�O�����s�\\9��?>=]���n���������]�$��h��J�,nW��W3y�E�Ӳ�\\1ů��k����\\�e4)��
����뛄hcfo+��\\w�� �u��M�J�u~5�;���7���g�oǹ$̮w$hc�.-���u�PwB�؝��-��?�I�4/!�K�^�

]x��n�4�n�\0�Bve���h�-���%\\lT����Τ�@:�\\��X�8�fə�����@X��!�13r�>M�t�^�}��9L�0�ZH�.�y�h0������5n����u<�;ub�ͮ�X�mg,�<�?4�o�l�v}��-i��E���4����J�U�dϕ�u�p�Ѿ�Uĉ����04�H5Ɠ�����t�9<���Cpp�Vu����p���k���4D����a�H�8��MBO5j��t���$�;��WW��_S���A{�ѭ�Ѡ�y�W>�����S�gM�f��\0��&�;��{��.s��g<�I\'�������%0�m�q}��//��v�w}�`!�k�xM���N U
�N\0�-4��3�R�)]\"a�u$0������`P� �e���:mk�]ܤ	�40�h��
��ƈ\\�a:�:�; ���Fw�q�U��N���@��߲�7�`�N�e#Ǻ� �r~�M�b�5D�6�Uy��i��b�M�
���OuR��\\���]/}l�ͷ�C��oax��l�D5���\0;A(�H���Zǔn?ݐ\0��&�t[�	n�2,tBmml��-��p���p��.�L	W�LƨI������q�I@8|3T �ҘL
4XN��m�t��e��=l�s��Oc	�\0z�`�&?t�l�|�좣Y��w����h��4��ͤ[Y$Ͷ%6�	��U6{B}6,��b��Ӛ�-��m��Ξ�l���T-�=�{)�I��l�\'i&�go���2@#��I��\0%t�Yӿ��N��K@��r��+�4l�&�\0dƳ�ڞ�M�)m�����ґ	��1i;��ci�����h�R�q������MeI)��
n,�Ɯ��S��P�E�����M��CB6�CB ��Z�.Si*m&	��mchGs��PГA[:A������JԬ��HS���Gx*�<׉�i�P�,���Z� 
\\)�d8mw�?/l@�}�u0�����qq�mm	J�����Wk�]��\0�n�+X�{��Q���m2
��HNе?�³F�+ܲ�
3x��+n�]������Ԭ���<-����X�bnO�^啌a�7Tp��[�6�\'�N�M�}�j��`m�a9bE�Q�����}��m��b=���r��Н��6�ۄ�\"U#��\\�����&�n,�`��՜.�O�ɚ׋vU�a^��q��\0ir~RN��\\����*�#C�w&�X���ۍW$p��-������n8`ςw���L��r?���Pa��[�T�K\\p�h\0�rG��(	�Oˈ��v�`�����������\0�����{p��*!;��Z�~V
��a�;�F�|��U,E\0
-$���xb��繩�p��p�J��&I��}S��������\0.Il�p\\�,/��c��ѝXh��c045��]���y��-Lm.Zh���9�q$���������No�����\'�nby�g��˓,�1�-?��q3+%\\N�VZ��L̔��32 .�\'-��r㎚N\"B�3�%n\07��@Y���e�qjU�ɇ8i>Һ�Qի9�<����^?Q����^��K�����\0z�[S]���jT2b��	�[4�hr�5l޳�`�V��a�y�)1/v��.ݓz_Q��ƿ#�8z\"g�~�apqt������|=?Q�gr�v��X�:����:F�_��YG���iŗP��CL��Wp��eK0��E�G+Z#��>uZۂ�A���z|^�Ǉ���ޟ�x��廿����e���}K�sTh.&;�\0E�a��-�P���]���
�0]�t�b�S\"��J�/$�O�V)�ț��Qΐ���ƾB�#s�X�U���
�dh%M�؍��`$]al��.�6P@gre\\h#TL��(�H�\0m91d�4��#�BN�Z���0D�@�t�N�Fj;C>�n\0[ia�I���>,�Ž�Ӆ��Ԃ�d�UZ�Os�@��3�p�0g�A�7�-	�#�;~!Ŭ$ɹ�bk��8!�@�@�-
e�x��v!���pܭ�lh���{�\0��D�hQ�<AO�27g5jbúY]i_�b7c����&�L��nY{GJ�s0���s\\\\̞����s><\\�.��I����	E���2\\\\�9ĒI$��%S�exܼ��\\��s^^K��)�L��[ĉ�5�n l�Pȓ����M��=�a6��MK��glۢ���H	U
�m{O�:�b5��U6����m6�\'[(�c9d�=�hc9�\\ c$_@�M����b݃��
鷸��[N	�w+6�(YH�Ğ�Dư�dL�\0F������i��Q��1�!Oą����ЄM�g�h�\'a�i���M�)���\0DA�4	���{@D�F�(� S��
s��Ӆ9��*�<4}���:^uWҰ�?5�Q�+�Z��&�l�&��ʂ��\0Zzs�\0
�F���;��)k\'补��\">�H�����AN晝JO��N�>
��3��4���n�$(i
�#7BF�A���e�� �f���\0�&ڕ��\'r��%j4������Vn��%CF������T)��&�2���\0$��Z�/a��+j%]�+\'G�N�@���DH�T��F>���\0��[M&�v�����m�X�Pt�毦b����G���q�6�;)�h�a(� [�w���Yi��)
�\0/s\"e;��P���c_e�Q�`\"mc_d���+��5�{-��po�A@m�]����b����+w��X:��614xD0��k�\\X\"~k��]�?�=�T�h �[�/!A�`��/ˀDo��p��W�i::�у��P	Th6��F���5W�-qƄ��5W$p�m�r������?,omU~Z��&p����&gE{�0����\0�\0Eɜ\'.��T8HlAN�8Æ\"m�S��\0Eɜ:�B���w�au��r?��0���M�mq��C �o ���є�,���yL���m
��\'s98�$	���a����r\'{�Ёi��e�a$τ\'
	�CLV������2V�5�t%d��:4���hR��a�A.����#&>���{	
ԤƣG.�[��2ۻp�8�-�[]��;�HՇ�����ǆ)�T�����x5�0����쪻���h�Ҭ?�ק�e��,�)V#���Ԣ����7>6��r���ղ��4:�\\�G����䍗2�Q��s4�X1�6�U.a��E�-�1u�$� ��8�:��յD���0�\0܅��9���I���-�D�w\\n/$��B��6/�N���XW1�.I�:�#�n#�KD)Mŭ6 ��67\'eG� �<�\'�9�& -��b,%��y�\'�d2��m&�:�Ƚ��A�k�?���r%���4TD���Ŏ��e��0\0�Z�r!U��g���^]�c��f�4��ek/�xx�s�i�:Yt��I!��,�!mzd��Wp͜Cd{,e�ܘ��_N�F�}��f�c��ba��\\L3O��PlW���z��z���|�!�~o/�c6��~�x����?�& .?ӏR���?8���a103<��������8.�X��.�uW���a�F
��Ǩ�?�<�ϲP��ءհ�?��F�\0��+Q�o�����oPE�E���	��ע@0/�\"�f�_��?�q�A$�\'�eT�XbO�O��I�B�A���
��1�I-j�fn����51|�E�\0u��%��ݕ0�κ����|�d��\\Lu�g�@2������i<�?�:/�>�<A�\'4�S����I
r�61����&5�6��E,D�n|�{A�S��{��%�d�xf���4ۺ)�B�YI�0�ՇbHs[��+��JQ���`�U|{i�q+)���eB��*�.�1��<�; ��)���}k9�hY�F����#����\0u�e�3Dժ\"���K�챂��-��c�.]�ի��=���O:\0.W��o�8�7�ԍ
�������R��\0����]�����Y��2�0�2�U(Q��ľ��ϨA5>��Ah��.��Y~\'ԭ�$����#NY叒����U�z�O�ͬ0���dX���	\'�
���pf���
�P��Z����Zڡ$ț*$��e�/*��uSO
�l�#��H(����I���v����\\I���o��O����hyN�~�t�=�?�*�t
ۤ.����i�$��K���y�)}�ʹT���D��(]�M�	��3}�S�&�Vw��<�vU����	tj~�oq
Ϗ�oL�_2�����6{�[LZt�=��ə+�+]�h��R����쩍�a�Mc�ܬڻ�	�a.��(h�d�M��\0�Vmht��L]=���AM��mV�,�οeҤu��ڭ�{_�AE����-\0�b�[�B��@$�)�C�9�����AS��Xn����eTٶ��5��󯕛[Jl�n�M��iUJ��d�l$Ť}�h�2@���Ʋ�[�6S��m:F���Z��I��n�3^詶,5�	�dh	򱶋m?b���T�L���W�e6�[N4�a��J&��`Q���?u.K\0�P�$�a�O���i|���Wv;��H�7�\"e\"4\0O�<S<���5�ֺ�H�sn�R����p��NΒ�I�*u)�GD(�V3t���Q�`D���ғ��ʆ���6Ԭ��\'�B����h�!CL�];��t|�i���֒�B�����h�F�	�\"M�K_N�逛�)�7Ő�;�a� �:d��k+\'G_�D����F�?D=+�>X�сp$m
�+X}���v2���P�m�a��+�����a��c�C� i�Sf�e}2{��1�����t�~���c/J���Z�/��N��τi��>�!O�I��\'���>�.`�TYY���Q
h����<���h��鶥ex�>��@���i�\"t�D�;^�fm3a>6�.�
\'[����wF�gϲ�F�ցFGdB�͑ef4��0mQ��x��?%vܬ���4�����a�whM�&~jmY�S�*�͂�)C��\"\"��ٿ/=��AB��\0%�P��D(�%;��A�1p���m���Q����� {��B��O��A��0�;����
<!ncy�X����F�m%V�ᯡ���|�^�b\'��~gx[�V0�4
�6�0�d��t/�-�u?*�*�m��;:�h|��K�;�b?ܨ�<���:����BwG���A�������x�\"�:S�c8o�K�V0�b�a�y��6�Z5?T��-�U~_x�[M	�U�8��rV���T�)����\'�dF��)���q�D_�$�m��?.�ﺧP-1];����$�<!4&`|���~P��n`M�r`4�6z\0w[��5C�s�l���|К3�ԭߖ-*8h��g�4��10$\0\"� 
�2�)��a�)f8f��U#��S����M�+��U��wĔ�\\��Wl2�\'��4�� O)6�~9ɏnN�\0�z���z���\0��_e���5�����\'��&��^�*�?�[��e�`=:�z�
�W��Tl�;�#E�a�T�ב.��:�gǗZ������.ޱ��K��h1��`x�at|����j� ����r\\���	\"�\0P����zGa_F����E�cD�\\�O͹�=��ʹM�,�i41 �k~$yX?(�<�O�6��W�S��ѭe��k���=y+U*�A����m�1���`��AG����B[��K���EV�lJ�s��)������qk���.�\\ڱ\"��.:����pl���/�Zj5��@d=�!{Na�1���$���!�1���g�;��\\�\'�+�
:yMȽ������J����{\"m306Nmhe:��e-4��16ˉu���p�Qx& 
��/ɬ`;j{,�ЙL�A�>���[H_*�2�N���{i}VmiN�g��Sb�5�3��[

[ƨԬ1k��
�+h����
^4E���/��Pa@>�H6\'�WnM�
\0i
�J�����k쯥N�E���\"۫��h�i�����)l�Fn��+�i���Qa
�F<��ڒ)��t�⏄a�
m����1ub���J�țB5	�f�Mϕm�γm��)H�6F�0A�w	��ebA�y�C��������D�m�1�h�(�?�
<��m�^tcnAǕm�����(F�>������C{\"i�
��|9q�aw�7��ps�q�;]v||���+�ke�hhtЧe��|���9��Vq��6��OG�-\0��<s4���>/8�\00I��ka*���;�Y��;��0Ȕb�l��y�<SE�gIq��H�@:�I��8�u9]]
�j�ܠ��@0�)�4�ߺ�a��Y�ʠ�o�㩹��!>�iu*�+��U��J����h�0A��T�����Q�]s<�]����y�n�U�6ZB�G��d��2�X�e�	��q偻
�G�c*uh�L�ӱ�1ԋ�]���#{^.���,�*\0n���̯1��2�������r,б�8�w\\�g���^�$�vH���ig5�Ԯ���$���\0�x3:C��s�`��;��嫀����.5��k��4^,ar߃\\�\0�*.s\\zY>*#�h\0{�#�\\[�k���\\����\0��\'�&��~!��u���7�x�H��q63����/�ic�$����9�붅�u�b�r�}��I�O̳��̈�aj�tZ{
1���d�>�\"�;ő5�����B0ϊ�\0%v���%)�m�4 G�1JOxY�؁���	�Ð��8�@��IiLm-A\'tmlA��!0��E�`b�#hM�ctL�H��\0DkI=�Xi��vه�)���YD��ă&��8B�\'�Ӆ���$��K(ea����9�C��R��υ�
9�$�T
�f�G�y;:s���wO�Va:��i�AvS�{��i�p��S�o�mv�)ɷ�i2 �0N��e].��5Wk)�7V�[�O�u*
p`��(S��/�gDjEѶ���)��D�yVs�<\"�Wu�[N�諥\"~/�t�uf��
meg���Gӑ:�Ӂ�eb�5�d�e�]���Nfw�0S1\'�썬�a�l�� F�~h�G~�\'S`m̉��f�O���B:F�����0|��t� Q��%b����)�v��Ԭ���F�P;\'�΄�m�`|�� R�ܢ��I�	��ӷiD)�25�?�I��=��m({� Ϫp����AN��;��	��}U��(��L�}�.���l#�����wOm8d]>ҝ�9�\0�_�1�Z9V)��e^�3�4S�:)⍻���	�63
[
2|�8���Jt�>�w3XN�j{)�&ww��ꈟ

�����C�骯�E�n耯�;�e;�n<Ѝ�Bp�x%ov���v�����&E��Hbt��0�T`����h��.�N�ː�������,{l�rG�,IT�1��<�X��X���ޕ��l��A��G`�*:�/u����U�2�2�5�i7n��?�6g�&1���#m�\0�Vvi�1��bӺHH#S�K���~���.�:��8�%�)n/+�P�Q\"晻|�?�m�eM��G�|��fه
�c�cq9v$�j:��n!����6;�j�za���握��3+ǐ@İ�ak����Llu�.�|g�t^��������W��v[�9����$;�a1�l�ڔ�ڂZ��urn�� A�è���w�fܯ<�?���e��N+pkΫ���ja��ǲ�\\Υ�kF��d�����b�V��T\0��=����gSQ��%����yg���V��f�5LKe�R]�\"�2��Κ��\\���%��6k�4������t���e��!k�@U�
�@��q�,��y�\"b��R]oeO�A܄1�!�SN:y`��I����2�t�P<�I]�\0N��R�+;�:_zz�h/l1�t	]��6�
􃁉��f3E��i칁Q��;�X�b�2@ɶ�\\LpeR�D�8�fm{wY��mP����\0�H����U�x�+faI�tK���L����å�d��jMi��g�3��${���UZ�܅架p�,�(v%�+a�y?��\04���>�<�����\0��s���E��M݋L��#h������N����g�_�:�,FE���q^zA��H���5���/!�W[�<�&.��b��8��뜩�SbP2W@�3��=/����xɮ��^\0I[����ř�h�v*��ד��\\�������.s�`�MW	��q�Q���
��\'`9�p?=1R�8�7U�GW$R��e��v	\0�ذ�%,8�}�4Z�\0h�Z�p8^}P9�`���:T@��>�ik���	�|�܇	�֦�Fjxv0�@i�`]^�h[��87#�|+p�}>w�����$/,�Fs<]rM�K	H��r�S�]:�3���a��V,,<���qn3;�s9�
Ʊ۰RS�T��Y{�R4h��V���Ʊ��{ݳ@ܯ�?޽�Xszy~WV���*1�h��j床m�`:��u��lx������:n>���#�����7־8~q�k��

7��ye�����\0D��E�v�6�ԅ:`n�ڑ��6PS[�;�l]�S�Z�6����*��5;��*t��%6meqʛ�^T
m��a���D��:`\\��4�7M� 
}���r7����:%�B����3��t�Ҽ�ȅ9&Ԧ��]���	��W����)���(�#[�O�\"U�H7M�a�tV�v�ki�m{\"��w�B\0
>�?��B����l$RW��t��:��^4�)�)�E})v�\'�d�ՊC�+�3�.$i��[�EX�\0�;�:
����)�{+I:>��3����N�+OG��N��d�e�2�о���b-��S���fm�E:~fV�����J�	�3�����_Fx����cEF��Y;�wS�A�4�-\"�����7�gr�ri�R�c���@0��Ju:H��ƙE9v�Ef�i;n��-��Z�du���<���0tTh�
.�H�)�zv[Č�!�\\
�_���S�!�Gun�Ӡ��_��bW9���Y�$�c,v��6�`�t-�5�8���L؞˛I\\w\0���\0썮A���sN�\\	�V���J}6�t�g��)�~�-�w8I�9����>\\a�t��]����R�S ����-��u���ML%\"I-��f����Ǘ�0���\\�4��h�Xw����O���?����F����D�cv�\0��`���Zu�����6�v���9>�P�8���O���6c�ڮ�x?��VmQ����#��M�8�
\'
4�%���]ju�pA�^M��>�flQ�~/2��B�p`\'����̑py7����/�9�/>�s��/��e��qt�O27n)�9�u�~`���G���}�\0��;f3us�+�&>�����������\'������?�u��SyWR�����m��C��*1��h�F�I.;�u�P]�qߥC��w���fYU:A�^��*���
��-���z�~ �2��JX�_�~��sr�KsZ`�L�7G\0r�u_��\'�\0���e��>.n��g5ٖ�\0����^���t��2擖�7Ϗ���gx�;Ω�8w<����cѶ���e��z\'��$k��Vy�?��saz|���
N�n< ��9���@A��EEܧ���;�D����y���^�\'R��\0����c潕	��]���F����刼�U;��uKv�T���AU�=��*�&�\\����I���N~ֲ��VH�{ s�IT_�U\\��P�N������S�\"\0�~���!��	w(�ʮr:M��w��t$��������^�>F`���Nc{�n��y�NcdF�~�k�:m�/Z5JeϷ�:�i�Y�-4�{�
�y`�����UM��/�u&�;%����I:&6�kor����0�B��-g(��6�}��7��0�J��FH�ml�1m*�\0�&�b��1)��Gc�g�UJ���n����m��k�0����i��j+�,I����o�&�H��e|���>�m@@�a@�E���@�����P
f6VXd��F�W(pӺ
�D�*�?�F-��T�b.�r�r3
l`�7�J�i��P����eA�&~���:J���
w���$*��L�A��G.4�qt`sk:)�;X�ԾKy��
=�毥:_���4D72`��?C�^�U��F�\0e�S���J	����.M�r��q��V�Nlt��62�9�
�8΃u�SLo���>H*0iN\'C�Z�_��
��M��ɉ������:|h��O�����g�?�}3�qF2�
��u]wƽ�$���-*�{@�A!v�͡�t.��b���\\u}���K��|3��_(�iW�c�;8h�~-p�L�\0�+�O\'��9[�i�\0��{��{wA��ezo��:�,�#���釖�f�L	6\\\\�_f���G��>n�.�*�F��o1�\\#�c�W��������e������
f��<�+��:�t�ٍ�þ�CiҩP������s\\U�瞄���\\E�`1<3�bNK�ԩI���^�.�5F�{@����G���Y}[����onY��c�؆;��t_P6�_E�_J�\"��%�6]w��o��z�����+�?
X���,��2
|��iw���~5؊�? l�ZY��>\\|-XJ�s�;����|:�k����[�\0D�W
�>��9Q�f��\0xW�� �5C�`@����)�Ƃ,!q��ߙ,ϐܑ*�Cn������F�AB��g
t� B��R�Ґ=�@��[�I���Y<(0]�e�a�P�4�au|_R��?tm+��_����h��4��֮bCZѹ�`y\\YMM�t�g�yxzk�`W)�R\"��}J�F`�wW�e�ٶn�OL^\\�����\0G���q���Q~	J��U��
���5D_4{�.:ZB�y�<�
m�L�:��ϕ��2�{��n���&��3a��i�H�kF�\0�9�mܥѸ�\'Ӟ�,�S�N�>!���b���H��fՔ��	�d	ԥ�;-�&�,���4�-ߺ�ƇE�CM��
�!Y�40S�H��}wV�B^{&�[N����؂�
p�{�i��ɱ�����

0����(\0�63t���f���+A�acu]9�]A�R�����)攔F�����E�wPR��H�%X���
lg�B�@6ZzgaWH�^ݓ�g��4����h铹�ҍ��ri��G�PS��@�0e���nF�M$�PR�-\"�F�UJb���V�I\'E�䑙�d�/�`��p��ܓx���/�9��Y���j�9}R\'*bq-��5�����^���\0�?��_�3�m��ը��N��=��+�����:L���֧޾x�Nx���NO�c��C��VA�.j�]�#�!q.i|~a�e��H�Z<�}�/�0��tT{�o�\\�\0{ɷ��˚|G���S��^#�~r�������?��
x�n-y����x^�LA�lڕh��=Z�zc�X�3��d��n��(Ni.���y+���t��c?��\0��XjTp|1�r�<�8�3q���=�l�xoà��\'�켹���r�5�-`����\".e��ϴ��{�s�Æ>1��{��ZH��r���F�7�Ua6���R�\\\"��9��6�6��S��Վ���ot�xF���\'��)���=��R��t�-*��N�zsr�Lkl/��b�
���z@h\\�+�*��jY�>�&++G�9�E�e)^S�k���(:�E�e�ه`�C�\\�\"zbJ�1���X�-�_SB�uL��w���������D}Wg�z1F�?���4^64����ھ���C�����7�2��q�@2r������+\'Ӭ�L�YP��T:��c�5�j�q���i>�k�,��M��C3�=����\05���g�[<ܣ��B�<P
��G��Z͋������7���G9c���,敞�.1 hh�Y�츺y�8�g��e����w�N���Rx���N[J��A���h��/���V���x*�z�x�W#���|	WM�[�q3͇�Y�����L�>VFP{y]l��q�e<o�yZ��ft�\0S�R�Ds�u�|n_I�ͲZ������5K�׺����(�Q�-�� �`��cQ��^��u�����a�Ĵ��z�M�&�q���|Թj1��i��/)���À�5��[��\\� ��a���t��Ve�����ළǖ?f�R{�w3�9�w��m��<F9*���ϲ�\\��\"����<�6�{�*TgE�٤
�i&�\"�2�`�v?��\0H�<��?��N�ʟ���P�S}J��:�(���C��y�o�K�q��s�oC��|�,f�����v�w�Y�k���_C��s���7�����ո>�;�L���p�1���I�1���Ҩ\0k$��Vi�D^$j�gq_zW�X̷�p�N����a��A�4b��h�i=�M�f��\0��E�sH��?�S2N
�jϷQ���������߈��)d�5/����h�q���4ꉩ����\0��q�\0�n�_�����G��a�Í����c�����W�{ۜܳ��t�9�c�rx�??��Oq�C�h�h�*�=�yW��gX촾�EG����n�ʒA�L��쟉/V8W�=F�OØ>\'�s����f���`�|����\0���e*�<��F�G�Ḷ����N�E\'���&b050UE\\.f�E/��5iA-�D8r��b�]G�
\\I�|W�e\\)�������+�\\���0��kc1
��mO�\\��G����O���Z8�+�	��\"Ͳ̣��r<w	>�N��XgC����6�\\`2����|w�s���Y�Wң��09dY�>�c���x�����g�\08C�yjs@7]���������z�N�8��˷,�o���2��,���w�^�\\\\Ya�]FZ���S����vk����\\��S�A�xv�]����
���L�2�0r�n85�zt�Z�09��ܮ�Ɯ\'�g	�2�S�s�48�/W
�=*���\"�_�&��rX��޽�\'
��q�n�)���׉8�����g-ʳ�NS^�%�v�2�θ.w�p��y�\"��(CL�8�G������|2�&�,Ν,ˇ1Tq\'-�:�1u���ԉ7��)���i6��=��=N�>yǖ6M�Y�����&VI�佺ܓn<�8y�\\|���{�gXw�ݕ��c��)b+��E\0g�� 3���f,�2u���w]o�،MGfX긊8�t�Q�zYH���.h�tgQ�<60˙�n3��E�3��ӹ�:���\0
�U�O?M��.RK����?5��\0�/H��&9q_;w|>hѡ�v[p9�M`;��ex<F1�-[�1��~O�X��1]�4���/�8�d�_!q�k��pt�<]r�\'U��\"��(��KLF�칼���\\���>-{����d܀����k��3k�Ld�\07I�Mi(`�ƈ墝0�ª8W�Pc��*���ps�8��}f�T��Z)�\'6�6��o��7���Tٔ_�:.74��*�,?v5\"�eb�;�(s�B��!pЙ���b��\\(`p4i�f�u�b�Xγ��ǿnL8�﬩ޱ���&�
٥V2f0��|�.*�dj�j֩P��9ę��Mü�6���RrH��fa�������π�2�6�G����Oͱۘ8� �c��%0*1�6n�FS9N�&�)�*�ɕC��� 	\'�Z(��a�|��xW0Ŵ�~=��?u�`�3�1a���{[7��\\=���`n2����O�Y�s�OI3���zM;MPD.G
�r%uQ�-i�N�l�1�7sD��a=&�r|ll�3>V�^�ע�)�,ư�4h>����O+s�\\cu�0��bZO�N��w\\S�Q�nn1p��(�M\0-m�jg-7
����
�H�@Y6���\0����
\'Uml��F�S.���_� F�_O�(�	�LB��1��@�i�����KL�)ɢ2\'�
rA�.�h�yP���� mΉܡ��\0EMn�L ���ﲛ�X��x�g ���h���K
V�,j���U�����[D��$X��6jU��`��73�F�@[�S�lB�$ݓL����;i�s���M���DXDZ����u2�7�[�F�i%Nꪦ�dml��+
w6�	�;+4�6)��5�7V�rn�H4�3����LLh�)F���S�p�B
t���E���hcI0ִI\'e�^��F�T�����Th���Vhsp�j�s�;J�=:��.e�XG�
�Z@���V�JO��^.wJ��y�_��AZ�Z��&�C0M�e|�5�g�T��꘏��0��W�Y(;-�s?
f7h	�r��̴�?5�r��p�C�Ъ�9�D�u��p����8\\e4���Ө{8/]��;��^�WS��N��Lk\\K���\0u��^���;��u����W91�x�zM�z��6p��2��\'����l�K��g8ȚE�~:9�9�خ;#�n*�|mN���ԉ��x,����X�bײ�ɇ��?拮���s\\}<�4�s[XO,4���t�j-!����w�K�?��g���b�B�_S���Ԫ?Z��Uq8VG60r�>@.�_��\0�3�˫�|�s}�ϮY?N��\0o�޵�1���a���92�~�^w�z���?�u,�8��^�p�n#�Ԧ]ON���&�	�� �E�ٿ�<7��u�X~5��P�h��fL��3_�A_����rz���^������*8�?~��|�-�8c�~����,��,�G.t�U��e��]I�Ɖ{c��	����x���W�V�P���G���f%L��7?��M�^�M�CK�����E�\0!�Yǖ\\Yg��K��.�ܵ�X�/)�u2���xٖ^��Û�3�o����_�O���7�7�<��s�Ns�\\k�����!�s��o�J�j�?���Ma�Z�4;���I#���>�a�Q2�we�]M��8>k�|W��|%W��b�%��w��M:n�i-#U��\0
��O�p�<��\0�|׋�9�2�W�b��1O�M�ahSx��0�5�9%��OæU�ǩ���ק~�f����s<Âr�)�L���+k�C.�~]�qn�)���i�ܐ+������o�a2úsˎq��q���j�5�ԙI��o���񝽷)��_>\'��7�x�:t��zC���iqv]��_�=\\���\\��rї7����P�V�S�a�9��\\E�<n�ÿ�ެqo�ϧ^��o�ޏ�}<oe{Aٖy��(�ᰮ���˃[_����\"��\0��~�g�ПY�w���\0��eu87�>�/\'�,#፣�ð�~r��V�c�{k?ⱝ^��_g��{&�.	�S ��(�f�E��Ge�1�Fc�R�J�a��(8��;*2�T/�
N$6Z��<�\0��g�/G������>3>,�?��Id�c�u��^2��6����y=��\0�o�w�\0�M�{O���\'����)?�p6e���7�p5�b8���P���ژ�[3.ufR竇m*Ua\0�z����4��#􃃸S�\0
���9�}6��5G
����M��SA�]ի�9���\0�˜��N7�!qo���=V��$��Q�Ɇ5��< �W2�ӕ���Ӫ�u��������\0�i����Y�/?�w/�p��ڔ��\0���exW�7���V�x.o10����~��pvt�_�{r�1��.>l�?^6ee�٬mǺO�\0-f�����x����]y���<�o�y�B��\0�^��.��G����Vw�Y�?�xo��B�L�0঵���fU]M�5��熷��9Z�I��~?2�F�\0�Oë�<}G�va��\'�0�zT1�F�^��ؚLh4V�
�ez�]�%�8��\'��G�|-Ǿ�e\\_�G�ʸz�;*ȱ�������ܽ�)=�2�s1�������yG�/�</�9��~?	�����i���¼;��V�o�i����R��ܝ]��\0�uW<�{��a<c��7S,�p�+��m��:�᳒��&Y{���M�O�$��\0�y��}-�o�����ԊG��8o�gp�eO�q��X|;�4p8��΅vQ�\0
��y]����|QÜu��&*�SQ�&c�N�
N�
�p�1/��N�q�^I�fy���8��eC�]���1�7�im�\\0�VLTʕq&N����q��Y�|rc2�\0�����%�׵z�o�_R��p��(rۚ�L����H�jS��|�\\u�\0��h�y�#�\0%����J�^�G��z���s�vvz睹����2>A��N�uJ��ofpj�t���h�����/
�����]o��^;Af���,]�첺�r�2L����+��7]�/��1�9���E�I<����,ƹ��iR��-�@i*�^K��7-`�2v�m<:M����%z��\\����G�&��\\���|b���.��U��}�o�����T��x:=�$��}?�3 �G/Ė�I�{��3i�E:tX��5�Yh뗈.1�
N�|�x�[��s�p��8u�s�l���\0��c��h�������z{\\�.t�]�1`ce�80��a��u?���W��Y
�uTj��ҳU����j�$}Wj^�D��;�`�l�?K��1���ä�!փ*�k��a A��S���s�ӨK�Ǜ�-����,߹x��a�\0�v��y\\q��G�b]Z���H�Uf��^w6�i�]��:vTi���\\���χ�T���Q�^E��k�K2����7���qvӨɴi+��~��>YG�
��vI��jB�T�\0��/�S����u��̈́�������SMT}�r�:��:��\']�h\\�Wk2���� ���1���b�K�k���D0��u9�ڥ�}�59���;諟�K���:��Fv`q1�	y.�� ���9�/�Fm08�,laNrM�����q����n	�RS{��UN1d!G-ٳ:�B
��U\"�Q|D�ib�i#�D��vW�
�� �؛�\"c9d�O�1��[�;�
@\\��G��lL�5�s)��$y�.��&SL�$� ��&����E���`�\0
EX#Uj�=��Q�8\\��.�e�%۫&�+W�b�!�8#�mRG4o�K�x\"6�l	�f��EK���\0;��EK8wY��7?[$�[�1�-D�@)55�%I�����:Ll�@��BE��^�eu^=�Uf�[P�Nac�A�����\'j�cT�$����a�uM�6�;+�|r�͋�!�h܃�CR���\0
�\"��V}G���S��K3��\0:2��Gy�U�1�ʵR�G��)S\0��o��8��8׍8��8L\'���r�s_��8k,s���u*��j�k�d�=�����G�qG��E���\'���]�ӭ����s\'���NS��kj:�?��b׃\"<����W�$�c%���Ԯ���ؑK�8���T����䥇�k�t1F�-\\�L8X�/�η.�����9����[�>��m�^;m����w����L�ˇ�cݩ��ѻ��\0����	�~!x�+�n&��q8|�,��fe8LCK��]Ző��
c�˃D.��߇OI�����U����p�,��2�� �3-�e�h`��Xj����{^Xִ���N2:��\\맡]��y�c���3��Y�խ��2�	������\"���5�:���r絮si�^��\'��g�;�|G��S�q�\0���p�e�̭����T�����91�>���yĻ{�����痧���]��q�˓���&8I�Y�=N�V幹n�]S�3+��$���{|�\0k�g���-oŗ�|�.I�^�q��8S6�3��xO���V�Tk@�bz�x����<����W��\'�~�z%Ǽ!���*�ǯ�~O�\0a8���.#	��*\0]�q�P����\\B����-��^�e��E:�����L�x�1�Fw�o\"�eO�K�
G��H%�5��ˈ�c�7��l��?�9�`}z�����|𹡍�0t1,nc���&\0ژzl%���X�o��?��N�?TÏ�.x�<��<�cxx���Ǘ,-�q˲��&���v2�sp�~g%�)e��l��u���{kZ�vN09��� �̧�z���\"�*�k���|��fՆ]HS�eت5����Rc��<�Usba|�����>�z�ü_�\\G�Vxы�\\?�s�>�k�:��r�O��Ѭ�XjajN�k����^�ze�������O�/O2���A�َ&�$fu��~S[\"�����՟��5��ky����VQ�՞\'㼿�}������p�ke�jPs��r|���p�[/~#�\0ʜ�\0]�A��[�<|�we���]�K�\'��M^,x�\0/_�n���uy8�1���e�������o>~����^2�*�o�3>
�7�M���76�lEW5��h��r�Pߓ��żC�pk�Y\'U˰/��Fa�X��2���1�S���>g��!��:����8�	�V���8C0�Q����긚�zV	�i��ץ/��u��?�tL@Zr질�Fp�n)��}�#���c�(4�`�Uk���^_M�À5)�ɐ��c�Yveq��n��ܷq�߶�1��RM�k��)q�^������p�za���Nq�#�N8k�W����$+Rs]Q:��f�*=�\"c��O~
��N�~\"$��jt��dsk}��li�V�m�\\\"Jcd���F�k*����S$Π&5��R�V�3��`���d�m&�;qmI�&e=������F�s����qL�\00$�n`�5B�D͕�����\'0i�Ec3d맕��	 �?�4X�&�ͩ��>T��m���lLF��:�a��T3v����U��L0u9C�\0�3�\0���تD�L5�ɋ\\��oe�?=N�B�H�?u�9f�\"c�E��	�j���g���ĵ^	��0&���8�=�d�/1��q�9�Y��
S3���M�4S�\\ș�O1��g�Σu�T;>탙t4~�b��ϝ�+�9�B��\'�{q���NѰ����ǅ���kn4�c�@*����5��;�g�X1U�M�I�M���L�˭*v�\"�i��u\'ϲ��@4ˉ�>�$X���KjY:mq5Y�u:��{�t�h����B;\0*���Y��5Z�h�h��@[��Y����%�j�;�x��=�%�g4�Xf�����އ��??ɰ������4|q$է�4�M��\'�^Z�A������^��pÙF�*�I�{e��r��{a|/��l���0�i�}ZYf!�V=����f��	�<�#���Y�?/�����\'�_�J{���S�@����\'�S�\0I�y�
��jP�E��`M���\\A��%S�q�M�<�;��@\\�o2���>ʜ�-cd=C�D�t<�F�}�l�<�h��1r�B�P8�40H\'SԤ��Ju1ò�yӆ�%����Y����S���4S������J�I�o)�w,��\0t�!�|���1�C�{47�qP�dw\'�\'�)�I6Z#xY��g�B�LP4H�x��i�n7�f�Ԯ�>�ϝpfuO�<B��Yv�)���|�S�N�l\'@Tɣ�O(~�K��mV~�\0��H���4
���E��Q�r�]F����d ��\0�����F�bG�3#�.B�>��&D�d@{��W,F�t�I�6U6�����[>�r�dN \0��T�YԝT�]��}v
�cR\0�؈WHI2-
n��
`�!D�t썭�6�V.|�U6�h��\'uz��)���rGb�,�՝&�ʇ�6�0T�6�	6��]���cK���E0���mb�E�0���>҉��}�V�, ��A%k�߷d�e҃C@�xQ�{���ě�wQ�6�x��9�@���D�O�N�S/��\0��2]7B5M�6�m7E��d��6Ԩ-��a�W�+�h�d#PM���@�.��0w���ch�}%C���D�7�ܒ���{��Y\0�@�L`����G��2Z�e/$�d�	�ϕ�� !���F��
�@�e6�f�Lko��GqA���S���٦sNFҭ��XY;���\"&�a��K&d9۸C�����?�$�������ΘB�!�-pk����D�Ю���st��qg݋ӲJ̯O��k�43b��& ������E@ڎ}\\�������$?�fo�����Q̰�ǵ�|9�i�t ��57=�[��a͏v��ce�����/�ڭh������f�^�mI������B߆p�tJ�0���@\\m�N�m
ܧ�72��26YP�>�ͪ-:��f�7	�p�����d�T��A���2��ȁhY[R���Ց$�
z�c�l��`�:�x9ؐ�hm@�MB����{\\n\0�;ɲ�wP�L)�L���f���bفuW��<�j�k5�l�ӡ/��Y�G4��4��8����Vw��<��sa�Qq�%�]�k��)4s��N�ı����\0d؜����<�9�_��0t0���\0�,�\0���5���ɬ���#ָ��7�{���|I7��r���ܷ�ߍ�5����_���\0�l�Ү\'�O<�p��;�����e-Ɇ+N�#���Q���O�R�I3#u�eL�ٝ.%��f�.uv�ymLW�57�+RoS��b�3ִ8�\"*4H0eyW���N f4��b����F�; 8,]*��[T9��ը�yk�\0�I��͘���.�)g8ΪQ��\\7ƴ�_��,�㪊.�f59H����ʎ���Ǫ�?7���,�3^r�{�e��y.�|�1����]���|gŜO�;���,��ɬ�ckg8G���]����N�W1�ܵ�� ��߉��<�~������q>3(�i�*ar�#�s~���ҩ���7�R�>�3@\"d�w	bx ��	���� �b1��#��<��Fc�-�>�ı��s�l;E���Ŀ�\0g�����fgY�\'9���(�vZ�x3��U�bX�\'�Z �_%����wM��\0V~T���VIq�ܮ�ݗ�x�ߎ�ߗe��2]~��{��[ݳ�����@q��L��?β~�8�W(��>ɳL@g2�mGP�*0���~*�]L�����CyB�.�М�֞����˳�Æ*`�����l��F�)�q
����S�,�x�}�A����I��(��8|ޮ_�#���������p�F��,�5�0��^9O9���o���.K�o
�\\O�YW
W}M�.i���HV._���t
��?04^)Sd42�:mkG���W���7ey?�Fjꂨ,nnژ�
v�\\��$Ǻ���.?�f��4��~h�:�F�}���2.`yGN:����!�d�s*�̙��
7���V�
Z\\)�m�P7D&&���7H�\\�;�����Xy�j�x��@�T$�DL*��mU��b�(#d4��	gh!C���u�`�m<��{y	���+\0
zA���@�dj!�F�M}��B9m0	����L��m`��	$���$8�����	�h$|�
{5(�l�V����s�W�YM�(���tG: m��4F�=�m�r}ѱ��l7�� ���4��7���SD�!8�j��\'Pȑ�[{lJk$�X�S�d�q1�)���6��/e�Tl��\0vLd�e�m,��Ԩ
�P2c`��Ue�R������2D����N������i�B�x�O	�l����I��}�T=��C�d����b�,�V7�˗]�]W��/�xlޡ���8�8��봈$���w�.h�)��7^����h���C-\'V�b����3^���u<V��H�J4�2nM�y���������^9|W�ӯ��=�\'��ϡ^i����s��*2�YV��ﾫ��pʀ�	c��d�Y��0��v7q���\"�D��#خ7.��ե+Q���o�f��N�Z5OeuƇ��d�W,1��G&���E�d�V3k
EF�-��{�m�=ҝS�ߺ@�[\0��\0��t�&t�����\0e@TatȎǺMX� N�1�DY&��g����=��a�\"�\0DO#��(�\\4��*$\0ϲ�%�(��&���;A*�$�m���m�K��I@����F�c슝\"6�9�w�KB��^Tu�q�[�������C��L.+G�.��~�8��<�H���j8z|՞�c�\\~7�����p� ��ʸ��~\'LQ��N!���\0�*�߭��n����iY�ٷ�.��u�\0��W��Q3*�,��GZ�J9m
O�R#��bt_%z���8�����m��k�����ke���jWՙ���G0�M����ì����\\9�ia�U�k�]X���/��M�x��YL�����<���Y#�����[8db09�s����)�-�e�w���y��5a�ě�^����l����/��7
��,�(�0�1Y9ſ�s\\9�m��u:t��1��/{�nҺ����q�)�ӂ���S=��#0�,&#$�gt�εVSv��GңZ�s1TyCAo-�?I}g����2/J�c�lgU�s
�x[8����Õ��#�T!��*���s�#�����\\���������c\'Y�?��e�2�{{�f���ߪx���F\\X����ԛ�/���_��OD�-������q~qǣ�)qg����̷��`�,���V��-u\'u��%�2H]C�����õ�`8�\'�r�2wz{�����3\\�
�㱘8��/6sC�\0ƫ[h�fHh�0�e|������|eŘ�ط�3ɳ�\\5�˲��NK��Wi��(ՂSڽHq�PrA}��ޭcr�Y2~�;�򬫆qY38�1��[*~0��~�,V�c(�{^iӑP:����yv#�����#����*���n,��ׯQ��U�K���ᅯ��z�%���W���:Ώ�	�S����ˌ�<���y��M�����v6e���~�}�g���?�����;5���
�~I���0�s�Y��~[�kk4�K�y]�����^�g>��q���Ǉ���3���>��)�<ӣ���7Uԍ2�m4�| ��`x�8�/z���x�>α-�C�g*�xw	\\fU1��r��z4GU�ba��%��$3��:><�.���r���r��積�-�ߛq�_���oO�gɕ���\\|O�w����f��wҬ���2�B��Z�qW��L/�l�5�����3����ynbǎj���Y��M�ql�,�(�;����7��O�\\#�8��^5�	�e*Xfra��^1��Q�+9��8SAM�7�Z>���������2�P)bq>;/ȽBul�c1�\'ڦ�~vQ�C��E��yi2���p?�!�w	��E�k%�x[58��l>r��3��Ŀ��Q����hkD4Y����ǌß�N,0��q�%�c�x���ݎ9y�]�c���u<\\�<��_�Y���_m|I�n��w�[��g�ܿ3�lۅ1�\"����LÆ3
��Lߛ����pǒԂ����F���)����Lώr����ŚٞQ�ᨒ+����C��ka���AK��=3C��k�����u����f.�e-s�V�h�~f�I�5^�P��J�ר��(�s��/�x��r�=->��l�äO^�9�\0�`a�/�z�ǟ_9�81���/)������ջ7|�dӏ��+��/����R�g3���Ϩ`�O�a�����f�C��^N��X�+*aqT1��
�p.ky}�~z��#�X��mK	*�(1�m�N��l~%��(�{O���)\'Aq���
�+����S���{���Oc�0�����7T� ���[�iql8�R�r;�,�ifR��UjT�tޫ���>j�O�I�wZc�H8�VIV�9�qAD�nb���9M���G�|D��ۖk��t���Xsw�}�J���s�~��e��\0\0�yY�K�!��J��?E�.�	��|��e!�\0�Zp�4��}��	���q5\\Ay�
n�J�!�i(���}�c~L�l%��
$����9�	~���>7: p�<�L��F����Ҙ/��^�k��(Ѐ�����Tˏuec/qmo9�@��g`<����E�x�Ab��?
�������� �:N�u\"�*̵���\0<�E��d<@��1�V��|��D\0�:E�H�Ȫ-��~�M��o��U�I�*8r�lo�v�7C��!�3�,\\��9l\0��0G-���{���RD����`�}d�DA:)ʚ\0�J\"\0�w�yf�}�͢�\'q
�p�^�*O4��R�jw�v� Aܔ��a����vu\"�w�T�Ct���X7�򆛁g��6�%�hɋ��&	E��S2#� {��J�����
U��}���[����;L��!�vU6ؘ��sF�� vL�4R�\0$΁l�/�(�1�.P���A�&������X`sԁ
���6�計*�9D�#
Z�[�`\\t�E��X\'��$M��PCD�3�A�0�����>[L�9�.��f�Ŵ���u��Ѫ�\\MA���G�x���\0��Ԫ�ah$H��o�r��L;nW_�5��5�i�2��t����\\o��	��/�9����1�l��p�0�)���j>�X�eX�&�,��!�193sQ�\'4�q>�F�68&У�k�H�����0��\"�+��\0�O�q��kW�V�[�qv,ӳ�L� �?����q���2|��d\\=����Υ\\����S�U��q2�T$�r��\0�V=\\Ǉ}�����_��ߣ����˻/����oN������I��\0�O��x�=��ic8ޖ2
�f1�5�08���FS.qq3�ٍ����\0��u�9C���OW[ƹ#0ٝ|Q˰x�bj���p�������s��: �I�;�#��ہ�����(���.��G=�h��o��9�Vi���ݗ��ڝr������U�qt�w\'_�e���qr�V̲����<�&Vێ�ǻ�K%�����gӻ�-ߋ���\0��5�=\'0���ӎ ʸӆ�?0��j�Xl&w������~>��FbV�궓3@ui /!Ͽ>��=�<����]��f�~OO�id����Y�����l�����p`m�p�^�Z���\\���#��8�S�l&u���&�2�
ٮ\"�V��[�cz#�Mk�Sts8��	+��.�Z}+���L]W���vg�9Y���c��ǈ�O����ӫCR��L<Ӫ�<�zatOT�u����t�P�0�C��K�~q6_øZf�,�=�R�R����Q�P4���X*4�kH��}W�����ˊ�ȓ���\\��.9�e�-��Lr�Yo�^<�p�e&3-x��n�}���u��>��y�!�~2�ܿ��8��,���\0�iq>zܘ� 
���*�Y^�BC�uM���p����?��=�s��¾�?.{�����\0�/	q=FխC���*��P��W8ҫK�˚��B�n$�	���!<C�^7�P��{�u3�8����f�fmK\0Z��˜�V��GK�]~!=1�Tz��/�Yǧ�}��\'���#���j7%��\\�uK��e�s4<9�����~��}\'��9���99$��.7yp���\0/q�O��;�.�~wr}9:�g2��p�=��K�������柊D=���!x�xS#�L/p�Y������������hU�yeGb�ʁ�y��
�B�z9������Iq\\;��׊08��|�. �2��/��
X��c�j���r���!�z�
q��}&�쎦��E�،O
�M����2,�^�juqy�&�L���yIm�\0+���|Y��=?��.;gd���93�Wt���&9ۏ~;�.٬r��˞��7�SW�y�\0����XjY.\'��Q_��4�,/�)U�f��a�Q��Vl9Ռ�c��D��\0�Vo�I�g
��Lf0�0�5!�/�˙WÆݘv0�R�H.pu�4��<�����˳�xG�|Ӈ�=lM|5,.\"�p����(��ٖ|}\'�i+�zA��}C�}?��M���q8CЫ���/�f�^�����g��4�)�i\'��������u��Ǿˏ|�;���
��e���\0��\0�����zv��|˔���\'��~I�]O���Mklx<��y��/�
�^P�H�T
�$tP1�q��K��6��H>uL� �{�L�(P
���-e�/�f�D�A�1*�	�F�M/y��DƄYYk:�#�bۂ9������lTk�d�����*|��>��Ti��AY��ϕcك�������1%���1�F<|[�>U��0�0}��ǘI
}*oap>Q�;^d�2��.
k-��
���
x!L�n���0F��ڍ$^O�nK욌��\0&$�e���ְ�\0��2�=�,�e�jI�z�E�M
��}P�{�<d�	E�eF�.�k�T��Q�YC��s�ť/�H��
����	��s�����&T5쀹����:�it�?��čL \"K�u\\�nt@�\0��=�Wq�ܩ�;��쀓.�w}��§T3a7B\"�*/&�(���Ī��O�@�m��l|�2b4�>����L��m;e��t�h�b�=�)��OX�(i��J}#0tH��5�@�WV�GBB{4\0���O�ZnEԡ��k+C<��Vj0=��F�Xi;���f��ѹOu��{,Q��-d�ds�\"����5�5Q���r�Lr��Y��{��:��t+cM#a����Iܬ����e���wX�Oa���6��1����yMa��VF�V&b�F�|���d��j�[���.�lɘ��-\"p����Yh�z�魑q}�Xln�I����H�F����[a����FH�d��6���idMЃ��(��u���T?P_D|��YK���B#p ]M�u�؅�Eϲ#�@򬙃�AS?��9I��m����8�B��I7
�lA��b�m�����PS�\"���S���\02��3��pM��I��n�φD� ��B]6u	��T�YDH��	�;�@��Xt�қ�Ӕo�u�^ʄ\\i*��թ���͢��C���L	� �=�����y?u{v�����tL�G�]Ń�uB>үi�l�a#j�T\"A\"ʋg��qu�7�_�F���t����2N��`!�E�X��J����L1��K)2C��DA2U��h��[1�o�2w(&E��]\0	M�9��(�o;��(���[ƚ�(�I�O��#�La�?�7�e��ő�@�HKa��i���F�5��{xMa��d�8��2�5�[��/)����O�T�d<c,�sLi<��%�r���*�Xfu�cuT���M��M�h���k�D��N�7!J�ӰNl�h���	ͳ��
�7F+����g���aD:�~f�o�.j��W�0�k1��������\0�T�j�tY�u���9�9��u�ݾ���\0��p�s��.����\0�r^XG����i���3�v,��+�9��\0��VQ�㖡h#���%�a���$,X�C�šF�~6G��N�)����_k�}ŗ�ӑ�mC<ɪ�R���������>_Z93L���k�l}j����?�T��ܾ����1߸Y*�R����}��\0�U�]֬n~ �{��o�?��`^���dD���p?�\0�OQ���~g��I?�8��_�u�?$s��������?���W�rV�FI�N�����\0���\03���\0�C�\0��\0��\0��]Q���Pf�>@#�8��ZP��L�<�g<8��\0L���\0����W��bK�D��ҟ��`��Fg��� ˳a	���c㕭\'Ug=���O��a��?M�޳p�\\��Op�����&��9�R�o��2��0Mt�8�Z@��\0�7+���:�lgp�\0�i���c݆����6:�4�S�-��^���\0����0�o����,@��tFH2�E��ۙ�w�s�y/�i���:�O3�S�z�����s����=�g�� �*9V[�������+���b���a���\"��K��������\0a�ܷ/ʰ��p�vQg�\0b%O$c0I��Z�������\0dw�����,��m��*��~3���K�tG/�i�t��&��2�nܛ.�q��L9ҳ��z��긃�OsKH�����.Lx���!}6���>�P����#�:����&<R3s�(���F0���Md�\0�G
*�5:�N�[Y���DX\'2���m��h+K0�`O
�C\0]����|���bu��Յ
l o`W�7��^\\9���\'�՞n������-��멭�S�����N뼤z?�yF?Ю!�Or���|u��s���=nt8�	�p�[���3�Q�a(9���P��<��z��`˿��
�nB�/.`�m���@CHB�޸pg���a�g��\0�yug�|fs�\\]U�f/.56�4���T
����
��Z�h�4�r��|�\0�p�\0�<}_�t��i�Y���>of?D�w��a��}���p���
|7W���<\'�����^�qYY��ܲ�N*�K\\k�n.�4�x
5�˼5ΩM�����A��\\?�>ȿ�s�+ľ��O�yW`\\0��k���R{-E���5��k:��+ҿY+���ޞ�����^�qN7)g昮-ŻJ�_F^*R˨�c��i�c�p<�$_���py.$��U�/��s�}L��\0�5k6��%G�gQ{i�T���!�
����OP�ǯ밹t��;f8��L73˓�u�v��yL�7��1�z����;����}���%���s���V=\"�+dԫ�o�`�u���,^;2��b8!���)��`�8g9�r1�y�<�Gn�x���\0��j������	����
���0u����Z��ŧ�$\0\0]��fo�pk��\'��~OE�\0�̰�kif£\05X�5��>ypx�~(�@���!���e\\ż;�V˽S��5�FR��������������h�d�����>s�Y�l��~Q_�GR��M�t�l�I/�����/Zç�.I�ᷓ�����y�gt�L����e�y|��z�\\w��]e�n�\0����=+�O�2�e�z�+e�t���w1�
ԁơ�+7���ȩ��c`��bȱZh�t2��n\0�� �5�C�n4:�D*5��~K�mb���i�E͕�њp�Y�4�1�jH��F��Q��Eӳ�C8����K�L_�����`�s,�6$�i�#^ɔ��y>S�2��xOf��?M0�q���O=X�)��V�|��Ô��
��\0ey�O�g�8/����ץ}���1.�b*2�Y�?
�
|�Zp�K�G��4^��H��OJ�^�n�L��|�c�6GPq�O,��%�0�<����~3s��������\'ż9�v�7I��\0�p\\�W�x擿+��qW-�Y��A�aR~п2��Ѿ)�6~:�,ǅ�1��W�����b�M �FO���\'+�銔p�e@������\0����t2��n;�L<�^O��7���W���_���.���n��?�J~ld��A���ϑU��s^��d^[Z�g��]��r�0S�[Z�&�~�������n�_�������\0��A��g�L]��fd�4����@p_��
W�����ꘂ����32�3볿
��)�2��e�˫�&W޺�W6�+���(S�S�l��7��\0	�Yt�\\�Tj[P>K�úa�hРuM	0#DqtI@^#� 7<�ʣR�����(I��@�R�5�K��;%��M�S�N�.+4�$n�����Pܛ���/�RIK{��!uH3����U4��$�(C�D���
房Ϻ�i�;�k�ʁ�ӿ�.��t�2�]��No�*h0u���\\��MT�m.5>�PIHP�.����VBYp����2�#R�*�����k�	�(���{�rB	.:��s�mJ�s;�߱Rܠ �߲��Y4�D�����쫩�C�#�Q�nL\\O�G@H\'�1ܔ �nd g3g���u������T�D�Oe,
q�S�em�*ä���^��\0D���+ ����D���V
����#��@\"�7g\0��u\\�|9��c���������GO�V�)��I�v~��=R�FD�&KF;7q�aX���#�\0KJ��ӏ�GzmR�|�!���*fʎ��*ȃw�X,>���{������:�B��\\Dh��}>�ױ��w]ܹ����\0el,����h�`���r
mn����3�ṩa�\'w�%���%f����GU:{׿$��
���q63X)e��z�.�S�I-yZ@�j�+��~����z����;q՚�a���.����}�O[���$���~�������K����7!��S���2�Bs|��_�g��?�\0��=�@����x�G��5�g?F�.`g�>��q�|	�gcx��|�������w��u�TfG���*��Ŵp���ʴ�C1�����`�\'Ͽ�!��5�=
�m,M�_�\\V[����!s8|Kj�]�#���\'�7�ˏ����v�C�b��b2�u�HPuS>�����qy)$��خ\"�\\�op�2{�EVpk�{`:�=��FM�*f1̵�՞G%I��<4��?
�婇�j5b�KO����?t��|w��W����˗
_>���@�7P3�G�P���?�W7;�:Sx��e�,\\�J��g�Yt�R9��u4or<(]~�a�t!B}�(�cA�1���9�>4�Nc \\ `3
I�,����S�\'��rηS��p��[UE��%9���W=�� ��*$�� 0�:�uEĶ�t2B�`j���o���&uA�o�HTeEěD�[�.���Q-���?��BHq�A��1 �L�,�6�N�t�Y��E2mm��\0r�� �N��Lhl�F�qG��zH�,�=���\'��OAo�{-��5#0�L�E���Xo�!>��/��5\'i��韆G�5�t������L��p�3KD��4�2�&�<�;���p��m���j40��6��Y�bS��C;����cb�D|%f��\\�C5�������#t�>o�Hc�-�k.�\'E�#[Mi��
c,5�b�=�����&�]%�;&��gU6�0E��Zh>[����%��N�!�`6R�
7g�#c�La�	M3�k]q�T�@��=�@���n�H�B��q�C[&r��X����܃�7�i�\0F��i�O�����\'�,�#�l�M�
Ȑ4����\"tL���=�;!\"Ҭ��Oat�s!P2��D-�6��k�)���KD@*-�Q��{!y�#��D%�o��^vAQ��L�V��j6�-&�Q	��%TӺs�+6����C��ي�Sx�j�Z�Y��H?�e�.ef�~��Zk\\�Y��v�Q��~�|���D��1`�R��X,�f�M��j����>~���xmfS����`�I\0@U�Β_�$Dn��+��2j�m}����n�^.��c鿆p�ykٍ�͋�.>4��b��^����χx�E�x;�y�ȃ��|-�خ�I��w�w�ӹ�|�S�|����o�8v��r�`�n!����:E����p٠	���/�ۆ��R�gX�ψ�BV�F���-c~77yy�𽶆`���;�ϲ��q�.���3���}+���^k��8s
��7*
d����}ª<�yA�f۝�W�2���+���d>��$�b����KSv���H��euG�3&��K�J�=,��F*���{���>��=�/����a�rX,�����\\w;WQ�P��a[ie\\�H����Ll����S�h��7�\\e��P\0*�����F.��P��-�\\yd�q�pn�PE����@L-�|�ƺ��|�A ��+Zb���H>B�C\0�TH�����X-�]��q܂�ayt3�KJ].�E�5+��q�<)�KޭV۫�-��W	M���MG���7\'e�p�~g��s�G=gQ�)�@���K@�T�X9��]W��E�h]�����Y��2ie���-�����<�f��Y�f7��8���~jt�
��A--�q�x_����\\�U�U1��_�{Y��^|�����_Y���V7X�\0���&�|�z��&]�Vl�VoO,��q>w�7K��s76i����\00)�nnV:��Z��\0��?q&]�qf���eVo�����5�T�>��َ���o��Y��b⌋����#���U2Æ�f�)7���`��X�#��\0�mù^��\\^:�*�19�d�j��x5�#���Qe�����3�x�����77��r��μI�&��?�1�Y�9{~�����u��,z���q��+��~>�|z�l}Xi��s�\0��g�:I���s���¼o�`p��pFP�cka��6��&�־���)�d����K��^�c��Å0YUu&�~w��=�E1��WpF��;��\'��̗6��:�ϙ�m��N.E�\\J�9�u}OO����r�����%�;n��}��^���/%ǻX�\0�q߇U0Y������!�r~��N#;��XGf��	T�]H���@
>��1ف�^��Z��b��]]����w�q���4�e��=������2��h�\'�u6�(���\0$^�۸��\'��Ӭ\0�?��L���yvḪ�j�e�uB���:�psݽŌ��NO�u���f���+�W��ۍ���}�f�ּ��~ ó�n{��t��U��˰��79���c�<߈*V�Ƶ�n/�V��9��m`\0o1!��W=�k�1�\0�o���9�*�5����0�3柁�o�\01���6^��g�w�p�p�(ah��Q��d{_�^ǟd�(U-��@�h���~��o�p��r����K-��|��\0�����u���\'n��j�\'�ʚ�t��\0��Ǉ�P�9�Znw+����8�\0ȇ��4�i�\0/�#�\'�]���z}��K0eYoR��x��F��І
�g��Aa�v^i�ʟ����i26��8C=�����q[.�X���v��>2��+����������68.���g]\0�2#e˷����h�2;+��eV�[<�6
xQI�RP��F�\"�_7�B\0i �p��AU\"|�U��i������4B]oeS��:�T[������\'X]�q�\0� h�2��>u�ua��B�k6�~�D�
5�{j���D�Tu&��}D9�G�\08�uI���hΧ���m\0|?tBа�[\'ꦓ{�u�vB[iU�L}±SI@A���X�76?@�`3�+k�K�A� �_�h�D׀o1�&~Ț���)V41ܽ��n
�m-u��u7h{xY�����f	���J�mt�n\0���L[T�l��F�,�5�1�\"��;�&�ŷR�{M�&R����c&5�D�ecCt��!.����6	0m:#p�;�M��{L{$6E��4k;��4�i��ɺ`�*�Z	\"�+��N�%�~��}B����%<����,����#uS����X&<(���ꈁ�P:�yܢ�D)i�0O�U9@�Y��\'��K}�B�sࡨ#�c�`R_�J���2�J}���1��	o�\"$�Y�����TA1�O�dĤ<|7 �����r���}֪ι��e�CZ	 M�iGD���OPT��4����V�cK��\0�]��}$̸�ӯ�mL�/q-s*0��4�i�ro���a�x,3YT�}C�T>9��s���/��;]?�g��/�<�x���ƦqY�6�3�W�Y���JD�Ớu�z�zY��MN|�,���K���YĀ	�:L\\���.
�K�,�J���q�-��
#��-(�y�a�g\'.�N����~�Y�Y��s��+;���>�f�9F\"��F\"�hP���|^\0ܮ���#7�a�>����G�����4��.(UŽ�𱍊t�`��$�3�g�0�6��*.q�s���v@��3	��0,>��x��۪��5<3C��;�.:��X��\0��+=���\0;.����u	�)��\'Uo�43�8���kL6l�uleW�����lh�s�l��MrK���h?��/E}!+B��ty�J�����0,\"�#z��S�=� }\"���\0f�o�U�|e8l]�U3�
�cB���y���
s����viK����;�9��`1�n�S�&�F�O��{�/2���f9�,�
h0���O�Bj���A���]I�>�|�6S�|&�Fυ�uJ5-�յ�C9�dku9���$��+���@�S]�V�;X&f�Q|������\'qd�j��N�Ho<�G�S����K��y�CF���C�h��_\"�G�@�q�U\\�-�h��	|�H���O�EF�J�h�~��Ms[�U�/�Ywx\'�U�/MsH�\0wT\\y�
���!p.7���B�x�V_����j���\"���\0�Nr�}\'u� �\0;���0\\d�K$�`��AT����
��2�h0fȚ�u�W7ea��E<8����c�t$��G�)���ԭ
����lt�I5�*��J�6Р:���$�`�e��l��d	O�<����\0I��r�?���ܫlD���f�������7�d.t���5HI$�o)�3��*���)K`�%Հ|g^҂��nbT��~}�%!�� ��I\'�������v)�1έ�����>�G�����k}����w�|\\9�^�&�{+ȱ�G�40T
�%0B����kƉ�e�i?��J�iL�����D����1}�\'����$�k���	b��:�Ps��xWSO	s�\'�Z�H�5��w�Z���K�7m�W���=-4tX߈~!ę�{�w&��?�E��K�츪��#O1{
l�r����`��@8�fe�ͣq�sa�������\\G�꟩�tXL뽬h����#p��\'��ǎOv;�ǖd�����)�e;F���:օ�0̺,�U�4��36�i\0��\\�x�Q�I��l�>�5�3\\���a�yKu�Y㫹��A:.�b�]P��ԩ�q.��w�B=(<g����77&¼�R�� ?�?����ϒ�䘹B�uaG���#�~,�Q�?�]��\0� ��A�<ۘ>_}\\��Y�cI0	\0٠h=��q�
L{C�6E��<gu/q,��a��;�1��a���^\")Ĺ�Y�2u�y�gU1���0��b1X��tiS��<�\0�Ϝ��=��b=Z�yu\"�a��.�ӥ:�v��>�0�;��p�z]6���nƎ�WT�3�j>�p�0�k�����������wlUcB�t�����f��y�L9��4.���kU&��K4�T�Z�s�i0�.>�/i�oC-f|7�Y�p�E^0�|�l��X91��IW����Z� ꙥc��֫ŭ&7������O2����S8�� ��3!�d���)�r�1��U���>\"`b�gtA��;���w�tlVM��%l$7S��ܬհ�\0�Ӳ����xNzl�W��Oi��\'��s�|h>�.g9���Pa������,V���vf&и��a��67ƇG✫�@��Ӫ�}�W�8����)�ty��56�!w,��d��\'u�9�z�5�a��iw�+yf|��e5Z���\\18W����:f�NX�]�ץ�ҧ_z5釰L�?�u��\0\0p����.�h��a!ú�S+2 ]c�T,p���,+��GmT�k��Yk�5���\'�ےf䆐H#U��x!V�����9�W;4������]V��b��0���\'b��W�O+�����`�\"����]`HX�M3qB�5���L��r�Ca\0vWl1P����N�p\0��o��O2�X%nQ��p��p+��e��l>��*n�h@��*E�\0�<��	�n鴫�����Q�̀w�}7a��g��\\%��o�[(b~.냣��t-��6�ξ��=�u�;)��ˎ�cb�gu��3) ���^��X���䈂�s��[v�ŏ�&\\��ee׺X鸜���ZA#�TÒ���H�v�F��嚦^Ǹ��ֶ̿�R��*K�+��d\'�ܮ��:�{�H��������<�7#{.K	��rB�j`û�,�RtL����݃��P�K����Y�i]�s#h[�Y���9�[���XI�������?��y��1���f ��2�,;�\"ġ4�.Jpk^5�#H�n���:c}7BBfR��H=��!����N�K���\\썤8	T�F\0\"��a�+#a��6n�W�s�T��0�Z���TZ%Yt͎0��\\L�;�Y���p<_�V�3�5˫W�,�a�ݧ�!s��q�
���i��7��͛��c�S�Z���گ
̣H�8�3�\0�U��Y��č�^G��R�P)UmZw�2��ş�q�}GK���g$�5�&�y�t%� ʧ8w .7\\Nx�P��脸�.�-԰��I�wB_$D�wK/Г1�e]@\"d�u,
H0\0l��g��b����\"RC������2<��A��G˾�N��L���:o���c66(��7�$:I���A���Q��H�յ�\0\"��:�d]�בmQ�F���Li�!���6�H\'�쳇s�Ș�\0iF�[y�}7��X�N�����W
A�P�\0
�����R�O
x56��cƈm6��������o��ޕ6�.���X�$���Hk6���s����Wg�V5��/d�m��!����!��i�oG���u]?>����س�W(7�]?�12�~Qx\\\\�<��w�c�9�l���´P�贸�f��-R`I���F�t�:U�_����\\� |�-���;�(���\"�q0$l�SN�\\�Zr{����\\����@�ȑ+�j|>��Q�Vj�A��@q��Ip��0��Wc�@9�k�1���깰.a��P �מ�NO8�k���zmfs�΋�q�\\M\'��\\\\��b?F��pM:/qu|݆y7.\"��
��\\(�a��\'���K���<t�-Wr�̚[$�!�\'�z�zm6�╧O,4��þ-�J��A�E�����
�����Y�>�F\\�f�U���X�M�:�
�O�����y�:%v|]\'�qeV��	ЃpGpF��j_�N�i�봎�PU�2���2���ԥ��}�_���7��ˇ�d
[_i���o�7W���o�	6�uBI�R;쯈$X*�O�#3t/u�
n��g˲>����&`F���6WBˮB���eD��*�A�>|E�5�p,�=��[%��{)����E�~���ai����=²Psh��ʁ���A��;ꮔ�������*aYwseV���\\�K���X�J5)�q��l�<\0%g-��A�=�<�Hk����R��Xhq�tJ��w(���GIE��҃�H�L���)����F�SX��YX��S�;���ө���ǈ��V:o�L��=��&~}Ա�kS_�D���I��u�r�ܭ4�����M�X�����:���)�$����N��u����Q<ǿ��J��o�bƣU7hncY:\'0��iY�>��	�v��XnV�o�~]��o��%2C�6��1�dE�Q��Ub\">�u ��*n�!h�S���Q���������$Sq�t�]y���a��M���m7ˇq�YYRZ;��u7H�0��ǃs�\0	�w4^�+]3;�鴪Iԑ��+r�\"7Dם�Ik�w�m|�uQNc�D�����K�dM�����$�uV�M���?�����kR����d�
Xu�b��wQF	���
� E���Y�M�x1��̳N�D5�o	}NQ��8���%N����0F�\0�tq�ͼ*�<��
�v���a~=��k.;6�|.YD��o���ms/�*>\0���]ƸNc��mZ�Jl;�]?��[����j��OB[���ի�����ejak;�Ý����k��j��*:9��H�h���s�����
^��l;�3?-J��2vԞf��:��\0v���e��g�����w]��/K��_����C�kck������A�v��\0\05��aaE�\\5��5�q��\'�}�Z��5j�K9��1�r�q/q���\\��|·+Ll�R�(�ˋ�1��hp��r��.��ʝ�\\a���\'�hw(��.+��1]6�ĕؿ���f˘��0�*`�������w[��8��1��`c`@�eճ��2�n::DZ�O��_�#E\'�kO<�.��m:�Big3D�Ɍ�0V��ñ\\k-��0�{�\0�+�����tU�
������y�^y�~$�L�2qV�=G�T�
N�]��Z�j��Q�[�`
�HfY�XS�mR�%���eP��$n�.��%�����&o�b*`s
Ǝ\"��*7�>���x&�k������t��,?N_�\'�k�\0������t�=����CQ�k�Q|�Е
��\"l,ɰ-��۹T����R�c��	��
s�B����E���S�?4�&aTůu$
c_:麍J�J�\0���u��C�+��}7�B͎H�)�����|��M��V�o�L���j4����5N�V�e����o)�����a���}*�A\'Mebk�G�t�n���A���u��\'5�����s=�Z�\"�b�bŕ���h�@Mc�馋;
��AeNy��/�
�ɛ.3l\\O��˲��%¾6�0�{M�����\\��YF�Z��>�`��T)|8��\0i\\�Z�Rg+abA�wq�x�3�{���\'����^$4�\'��0�H:�U�k=��4��˲`Zj��	�Ӕ��||<�V��H����\0�80��,��t��v[p�p���bn 6t%����V\'GvA�;��hp��@��Qszm��\\K�\\�L��e�	��O����d�_P�����:��1���a2&�/�V*�Ո�D�G�Ϊ$���.c	�2�
�Nȳ,�Q�m@�����[�c��{��6��y�r(�ľ�U�s�\"8��`Y/8��*84��\\N+�w���37S�����G��������#�γ�9V
�*�FңA��s���]>N]�lp33�MP�u+U��N�*b_Y����_F�=>�e�ٟJ������
g�����\0�Fk
8�>�9��m.|�Y��Wp?�Ǎ�ٳX�H�[�:�\0�⿻U�9�����y�qW9p%������6�^ָN�t��K��^�1�\\�Xy�c+#.���ĒO�_�\\���\"�vo��q.7]+�3�J�,���s��\\���Z\0ܒW˹��X�ۑ��\0����Ǹ|���Ni\\��I�\03�����J�:T(���Sm*Y�iSm�к��^�Hx�Ci�=̝��޻o�SV���l�+��)S���pp�<!�}�e׫�O�J�s<`d�?�ՌĆ�7�p9�6���vd�a�_�R.D�%ǖ�J~g�0�V��칱KK���i\\.e��@�V�~\"�͗��Hdi�\\|٬��x�0-eH:�/t�8p�\0�G��W:�%\\s�����>P���~s���4�j��b@�8��%}o�˛�e����S��I���#�.���g���\'�L.��i}b`Yv��.�˩���`�����-���6���[3b��$���x��t��`kI�����|��V�s��\\1����(�0��f�&�\\�M#P���H�Eɂmӳ:$�\0�+)=��t��c���-���S�
��+���i �/ʹMF��w�u,��\\�ƶ��H,7g�E�lqXCL�츟K��|+L�<���0��8ƥs5�Uv�?eu�]CD�1��&Bۃ�\0�o����@4�qxI#��p�G=J�0����ic^4���5nqJ�I����8��.�`\\�W��=w0�H]��i+��0AØ��jRp����v��oc�]J�NW�_�م�Zff5Y�v�L=F����k��Z+4�_x\\\'	qI��y�A�w:�Y��*0��a�s��q��X������b�#E��,��Z�r�S�i���ز�@:,Q�:#�3.L3��,c^��L�a��w�pXl[�;Į_�\0�ٙ#8�������0�05!�q��q8f�`#U�g8�Q6��6:�-E�Mu9��˫e�\"�B��mB9�E�����οE��xk(��k�E��SU��l���Tڵ�\0�}\"+3c��$���Y����Y���?^?9ǣӝa18��\0��Ti���:����w��Y��Zws�~4x�������:|a���
Y�L���g���!}1������8q��9�̨ӫ\\
0���\0�2�(
iO���*5I1.I���M!WV�&�i4��#b�Ԙ���椉\0�5���W�S7#������\'�^�&���~�c�im��:���S|\0u��{\\l�֚(��M�`q�
�L����>�V�Ŕi����*� (�K}Nca�VM���t3�2,�0u�R���u�9lB�\'~����b|�:�t~-d���hԫs���-�A	���Q�,��^� J$�*��Yt{!���jAd�U�5�!s�S}U\\��\'<��ꨘ�����.���B^]{To�� /��y:�����\\��@��+�3��t�`����p}�%+��+�5)��:(*sn�_=�����/Khk�d�F����`K@��m�tQej�H��&5�=�fT�i#�Lc�t6F��\"��;JK_���k���\0$
X75��Q����,����O	��{�Y�J���������
c^E�*4�ǗZE�����u+*|2,ST�- h�b��ׁm�Fڀ{o��*&K��ѱ�l	Ykm!��[� ��Y��f�N���D{��m��o�W<����t��ix��N{���2��b���.�@�\0��|�� 5~�b��G�W�-��j���V\0G���yu6�cX߄.��k���N^�Fע�yy�ݧkJ�^ ��ð�sb&��\0%�����g,ˏ��;F
T�X#��˰�N���u|��q���ŀs�h%W����*<��Gtl��bIr�B�{���,]%V��P����G/�]>��&�@4H\0��FY�e\\�%r��K�\\N���k\0� ��c4�MڒU��kX���#D柄
b�5���.<���<���4�J�y�c�:�3GImSقߺ�	R�hu���\"?��p�v �*r�Th��\\�&v\"���&%r�c�|ӳ� m9�̝,�F��uy@&�(�Y{�ջ����^T�1\0+l�Lme�8u�V��I�v,�*}xkaj�8z� �=�6vl�)n����=�[���<0�p�O��r�����k�:\0w\\�)3D4D����,ĺt[Hv��N1�Vk&>���ᅠ]0F��q3���
�sf���ٿ�?�\0��i�>�.�e�z��A��@`�r����.��smN�Ŀ�8��Y�v�����`h���;�W���y�̧�W��\0��-��e֠L�v]����v�t|.\"���s���\0\'M5Ok~�8{ȅ���
���:�5]j��c?�rynlh�5���v��ibfyH�sA�.���0UK��Zn;�����X��d��\"4��f�V:>3�q�:�N���0N�>yÎ�K�36�qxL��W�X[���4�`�v�)Ǧ� �ۀ�S�(Ďm�\'���y��Flt/Y�ɽz����W�<O��)᳚L�uV��8��\0�)�?��W�g�9Ϧ�W[\"��~g��-%�|m=�a�iR��v�@_o�p��K���=]�!���]W
��N�k;G�1�)�u�K^A<\'0�X�/�k���q;�0�ѿ����d�d�h0���0d�)���:��h}2A���M�͡f�~�ELX��i�]i��N�Yh�]�!hd���Y�K
it�}|���#^�A7���ynN�Ӷ
e:��@we��� �`��q����5���beX�n�V����V�T��;썯����:��k^A�����\0�}*�l6?A�O�������r�R|���Z��Q�$��ʒfl�b�g��Sv���fcâ�;�Lc�?e������\0z�R��X�,l|io�N��h?�f��rjOi��<D\\��Q�LlB�J����[l��\0a����>tY���MeB\"����65+C*i��N�P��S����c_,vYi��BG��c�m:��\'e��A\0�:�M5N�aKƻ��1����e��Hh�����w�ԭ��r������g!?��M!��)��\0H�YKȞ�*ɑ7���J�*�[�E���e��7��.�ͦ{n��b�yV_~�s+0�/U9�D��:YZ:��+�3�+9�x?����\'�͉�s�ɂu��\'�%�>��uK�VlM�:��D�>P��%�lY��yeh\0�pG��K�M�h�K{��Lr����&X^�n��\'��`��9J��\0�&~K����؎�F>��qkiWx�R�	<�7p��yS�y�2�]��>&��3A�i\\����=./X���M���s�.<���ZΎa�I�������>�K��?�A�?B��H�\0�p��i�r�����|�h:EO���t����Ͼ�����\\-0��i�5>}�c�}Mɲ�����+�U�Կ7MՀ�X������ЦG- \0�I��++pl8q����.�\"��w�ԏu?;�yz����o�_�0Os_����m#���u�f�l����������,q��A>������U�����?:�:y��=�2G�g�n!�M��d�>�lV&�J��n�
`�6]o��غ�\"ZH�������V/�؝�G�q4R�`�r{.;�5��<ԧJ�6ԫQጤѫ��`r���Z��H<n8�܌�
�K�U1:��1��Qφ�X3
�\02�b+C7\\Na_ፖ�<D�/5đ��_c�nt.ǝb�ZH�p9^WS���-���>;�d��9�\'͂�<���uS�xTpo��^8�5G���^��B���D��V̶�n\0�\0ֆ\0���,؁-{��sc5yWN�����댨\0���b㶋S6\\��
a�E<=G��\0\\��#��B�.CDf���V���v���t�o.~.N�~��2��k�̿���kT����*�k��Q���fa��2�/g�����#���$���3\\Ʈ.�4D�=ų��j�p����]q�@�\0-�]����ף��ssa�L����N��iѥJ�&X2��\0-�g�%[�:[t�>�q�T��D��T|�*�V3d�T�m�4�=�H��)n|@��}C>Hz��=�ݓF��Lo�F��,>If��d�U���d�7�����A;����$��	�;�?tҟ��Bꄟ!\'�t%N�3P�8�]NQ<�\\�nM�����i|D@�P�o�+���e:�[~��{��P���xI��Tj����_�N���%u\'e:�	\0��I:YPy�\0��
�];CMN�������Bl����A��
uI>BWZ�o(\\�\0r�����	7U�ic�+�%W�G�{C����s�.uJ�{�B�v�S�7�*���%�M�U:ď���;C����\'W}R:�w1�T#o�W�t���\0�m=;�v)
4Ș�F�XCOp�H����}�AA�߰M`�2��|&�`�f�jvXk^T�����kE�Κ��D�#HM�BY��i�\"b�d�:ja?���@�xD��E� �Q���n�����I�7hENSa��)<��dN�$�}���\0��
����E���a�Q�q7D�5.L
q��tB-3
�bʜd�-H�&eQ<���_e4���S�	@]�w��eNp`�hS��
:�s����@l�V]ʗ?UAs_�T�k��=�sJ��꨼�e	p\0����A��x��\\��WPO�mA7��iJ5&F�
�I��4:LA�R��	��*�Tn*^��R}���U��/��¾x>$���p�H�;�5)�<���̩d�{��|؟����b���5�~�w	��kI�FՁHײk^u3���51��s}V6��t��˲����I��M:�h��zs*^Х�c\\�7���v�O�b�R;����|[a�Xm������Mk�s+��|�cr�S�{�*iq#���\'ө��e�ƹT�\'N�x%a�WA��1㽿e����k��#k�:��v�[�=�F��e������ǃ;E�c���?t־5*+e*���|lS�Pi!a�Z;��Oe^�t ,�5�C6���C�,��� �#���Y]�*\0H�ъ�R��.
�ՙ�%X�Ԏ��P��I�m��5�{
(�� ƛ���&W5��O��u����(�q��8��x����+;��v��Q��
��D�rt)�l�)�������U�s�ͺ;��������WT��T�N��L�!7\\�̮\'j�Yr��N���p|O@�F�+��~�/e޸�����t|{}�^V��l�3p�֧�Ý��ܽܯ���a\\�Q7V���y��\'�m�tlE~h�S�,���<��}LC�r�|��q�>��,��
�
8�5��\\6�+�*���&�\\��SmZD��]����;�s�q/��m���hp�X�˺vS(ˋ�iԋ
s�5
ju/�U{�%����Q�9��,
v��� �N�wJ5 u�EF�(��+���T*H�0|%�I>�I�M�R.ym��{�mRMPw��PN�Jj5!�I�\01��?�T�W��S}}�h�����X�\0��P
K?H�Bh2J�k�mR)�[	�\0\']6��l�LǸJi�h��eƲ��m�>��[ ����/����l1��l<�PҐO��4	$�
{
ؕA��D+�(!l�\0�H\"Q\\���v�A��!@yF��P���@�\"	�\0�H�Yt9�xCb&{n�c��_�F@qԀP�\0�u��e��g�\\.l��J��-�$�s�
���)\\�\0.țT�M)�tɘD#τ�ᬈ��波S��{�T�D�M�K_��Eqy��n��\05��U`Z���D���h�V�U���Ǔ��,t��XN�S��n�bƺo�l���]d���1��|���ʲt�\'ҫpF��XiԶ�����7\"$��K��S����R�L��c�VF���9� �{�ԭl}��u�бӪgYNeH��f��)T���a���X�\0x)��õ+7.܅:�LvLk底��Q�Vou����3�#�����A��\0Ts�,Xܧ��N����HԶv\"�bmK�	���EmCA�Ɍ���б2�n���Leo�e��nn�Q��VZu9�6?\"�԰�VF�����\0�&�8��*�a�u,��3eb��$ԓ6T*i��l]�u�`kd&��J�o*uo��i��Ջ~�B����H7 �`k�|�!5<���\0�PE��Jk��I	O}���_�Y|���K��ҥS��_@B�>ֿ�Js�\\���-��s�$T��ŕ�x��\"�Nk���+AQ։�g�
H`l{J��m�֣~Y��dy�
�3�.�&�/���=�.1�\'V�\0�\\&?6�ܤ��n������ֳ<��4�Ne����\'U�UĆ�u��߱�1�܁�c�b@1#�_�\0ύW�~%9��ܶ�
y�e�E7��SW�>I�K��ܔ���Là4}��v#�z��`Wy�?e����I�ۊ��M���ٗ;�f;�ɡ���<����$l��.}�]X ��&҈��\0��+X�eG@�X�UA�ź��l��}D�Ԯ���p��I\\�:��$���+���g�7���泉:��}W�+��垇`���f����h s���,�E��.*܂_���2���� o	zq�e�i��L*o^b9��xg��3rYù�[���5n�`��q�:ا�L���x���$��b8�u�S��͌�Ԝ
���J�ĸW�DȺ��(�^#u����6��>\'�Mwȋ�]nXܮ�9��)��qxw��e��n2<��Tm�EI�>!�\\_��~�Mŏ�C�F�:���]��9��z�e�\"�i�7]΋�����MK��Z�!�/�L�q
O4�mV���eY�X�+��	�AYiT$x;,��9��X6�2�9�q��q�Lc��n�J��ڔ����n�0k�Wg+�{��\\ʻs4���OC����6��/�e�s����
���Sd�]T�\0�=�����Y�_��?�	ڱ��\0���MbN�g5��Un�,��o��Z�D�u �*uMf��4s�*�_�P�kD�c�*5�c�)���6�.�
�ݮt��g_iX]5Q0;^������L�$Z@6Zi�7
U�du�u���=�^S���,�� X\'��xY����� �b������!6����!���:����mS��B�N�\0��\'��\\j{O�m�R?�3��ѩ73t�6��SG�t晉�&���uMd��ۍ�X`�o)-��)����d1�ze;4�����L���Ѵ��	��%�p�7�:h��:�`<� ��;�\"�T�������w��C`��s?H���[)��1�Xg�����Ȋ��
7c��e9� 	��	���(/����Nk�J��U���7�����@@���ad��=��m�%� \0��,�	@�$\\�GT�	�U[����_���q:!/��R���I�\0vZe[�2J��w8���t�!w��1p����E�t@L�s�� {��Ԃ=Ѧ�I�UHwTB�;!/��S�������T��x@\\N�0�nV� ��+�S��d��<tZ/����fvJ5&�F�sfJ
����&��jG� <�\0��]PM�,ikɁc
ç��4��)�����ʄ�!x&�;jE�
�0�C^F��6�L�;,�|[P��/�M,�-w5����v=�gmOc�x�7�cm�r���J�6e�8�Bc�}��l�T�
��#��`�WP>�D��$\\�+�J���Q
��U���nɢ�0��T�V*DœH7|,¤;TM|\\<����[��g����A�c,/���Y�԰m$E��E��|,���[t]q:H�YMQ�]N��}ef������
�H+��g�llU�r8�۔�
�_��\019�,��X��+tk`.�I�V��r�5a�>�:^=��}�\0���3k��͚�-�� <�Ή����.v�t>5�>�9.�Vx�W�n���$�9�Ķ���s<��\\b�����25�w\\;(0��I���<a��r�]F|�(S?H]�x�Syh2��r|Y��*9Ά�<���ǌ^%�\\�m$�����;�8v͹���O��e��0�����/Ѥ.�e��Y�a�\\��I�p�jM�I��+Z |׏��6w��~$�Rk1���\0\0槆h����+ة�5,/%��o��9��v�@��N%��AF���*�+$�\0%ٓ�9�0Ҧ�]G0����+��q�L�B똊��I�C�Q��]m�i��7�.���l1g+�תN���;Z)�k�X���#2�|Z��[���݇1ĀO�@];>Ɨ��6]�6ņ5�.���9�H�+���;Nʪq7dyf���}*-h��\'�\0J�
�o���S#ka�F�.<���\0d��
Fd�;.N�c<��N+�j��y���i������U^���$I�^q�ءW4k&yL�h�\'�����~�6YO��7Rh�U���2�~�\\��
�#�g�q��9�k�̻1��$��̰��sL;����b�����݆�/h\"�,�18Z�;���\\>]�mza��:��is>!ou\"���8�w\\�2���]&�C�i�]�}�)�gԪ���PF
�.!��\\[�칰`?�a�2f��{+Ʊ�����4s�//0��kv�3��]�s������8ڹ.0;�i�B�<�<��e�8�H��,�~K�G	��y�I�`hf�y@�<!���4]�\0����8]�\0���\0������S�k�̲\\��s8�dfx?���o���������c�Fs̒Y�3�<��Lk�gs���j��viE�؜�,�U9�Cg0�͑�p�q�M|��S������S�����U3�jt_~8� en�e6���m5���n��*��߄��
��T�1�楈��4�4���Ӵ��������,[Zy�H:��ra�O��m�����}M����&E\\��/��Q��b�#Spt\\�GS���\\�x�\0�Ѯ�Q�w�{��qd6&��}}ײ�z0�c��������%�DW�p�0�m�^}���&����(�{�~$%��#�B�^6�������� �\0���}!����8�s#�}\'\0\'��:{�<�w����\'ļ�\0Ge���K}��r�p3:�����cO������{B[�o���d��+ZU���>;�{���$���HB��&n4N�ѝK���ċj��
�L��5;L��
`���
��,9��ǔ4�wd7��I$E�6��
�w����W[K�q�Ĭ��L�E
9C�M�����\03�Tv�A*��N-��YT.;,ؗ[]���#���B��f��|�\0�._\"�jb^�j�̍�H΄G��?H0T1h��8�*�N�{���d��\'4��r̆��\'m�ϋ@���7Npְ�֞��g�F�u𷏰f&\\�]u3�r9�]�1�qM/�]�0�F��\\˅�J������d��5*�Fń�\'T���$�[ߒ;�Xyæ�u��^���E��O.w%I�T�0��;�\\�{y>�G�	�\\�IO��1b3�?O����M�sS#Qoe���mK�	�L��\"��yH��LF;���9˝ӭ��8�F�����^���3_*�L^�Ƹ�*[T�Aײ���v����z�s7p�3���ŰTkfK\'c�eqx�4���S��x\'Ԯ��2�E�B�,����m�)�dGg�z�i�~���a�R��{H�Ӽ��7xL���}�`�14\\�\0aun#���kH�6�s����� ��}6�
���J��f�,uƁg$ޝ/-�;��t7�a��Z4 ���̏�5���
���E���D;8���N^�.�r�����������&YK�=?���}:���su��lA�F���\0R�^�)W�]N�
��A��g��~)������)�V)ͯE�r��$�hh�4�\\݃�᫗6ӹ��y�O�=�\0������~!������X��/�)A&\0\"�鿉�����U�!�$���?�y>�d� G���5];��+�p�8r4��aפp�7��7x�I�4�A�34^����{�׼`��\\yc���q�����K��lDo���9#��)\07�
�\"�A�.��
�K/�����dN��Ց�����e����;���hS7�@�m�V�I��>M�H)�\0%����Q��?Q�%��?�Ԃ9�+��^.![�>F�P8ΤYhBI7�V�Ő����%�qu��m*��L\'@{�5
�M�$����-h5��$��:�������m�le���\0(VMͷI5bB���M���-�d�̥:��@����T`�MG�0a�əK}O�P��y]��a�[���*�I߯�Dv���ԭ�H�yFjj�3(�d���\0>�H�s!3����\0��Lg5�+��.�?;�eg��������8s\'�����I]oӎuLjצ�:ߨ��>{��G>�r�5��w(�
w-W7��s�yz�9���~ni���%���M���,^�;}\'�����<Ɏ{�uq�-J��Ϫ�W6<B��,�u1�\'�?���넛��|5Íx\'�2lXHg wJ� m��{T�8������]�O��p�f_�7����8Ķayn
�W��F�7�ʹ�\0/2Ȝ\"��L�cu�2��3@.�L��%�4\\.b��ƴ�˚\0`�\0�(lRm��e�@m\'�`��rp?-�_�V�\\) Ġ�HI�L�(\\q�j}d-��.�jԬ����lp���{֘��p�aϘt�#�2�5la�ll�����?�s�؇���pfa�g-���1�����e�u^6g�nB㸆��`�CL��3��
�X
蹎_S\'�\"`o��E#J�0�!p�[��~����m�^<5�U��� �g�u�Uq�R?H�+��q.��KI\"��؁��3>1�V�?\'�ہ�౹Fq���9��e�&z��\"��V�pB����I�~����p�f�f�%�����3L�41
g���{8M��z���}�8ʣ--y�y}Onz|�w���~)�k���� ޸J�I�s�bWF�4���>k��x�I�RCcخ>�OW���z{��t�#�ܿ��}�z48@h�U�ǧىv�%�F�/�=Ś���#��~K���/��q�w_Z0�L��^Y�=�/\'���F��w^�����U=76����W��\\YP�/��㏚�tYo�O�^{��)����t��\0؂���
it��\0Ot=X0wY�󦲨��7;&�4������uPL	\'賺�;�_���CK�l����\0u����[�־�E4�]R|J�Ro+0��>�uu�Dh|��������c[�5�e{O-E�7Bk^\"�{ě�EP@�M
��H��&�� U��%
�uP���������e�Z�O��@C�쳚��5�-�\0e9�bL�*�Ŧ���,5AV��/e4�=��K��kƀO�����%:�����Z*V:��)؀��׶��	n��M1i�j�H���U�biע�ʴ\\�1�=�W���R��WMq�e�S<n�z�9_��.a]�ʄ��\\�9�L�q��]�.Ì+����_pt�/��:\"�[pw˕�=M�Nkٗgoc^ �^�8r�@c�0�����7�9�u�\0X�d�2�FӪ6b`��4�������<·���D�68K\\�O�Y�>�q�\\9���\0M�+�ap�>�4�������x��\0Gӵ�?D��Pcn]X�`|���_��1��\\��>�Ъ��=���M�+&>k��爳<�<fY�k�
�q8�Tdl�����K(R�O���`��駟���Ƹ��\0��W�;
���W\\���hp��h�|G������ɬjԾ�?<̍ZܲV\\8��+3���<.N��T�`�`�ɝ�^!�����Ï6\\Uh3kh�L�Ԩu\0�ٞ#��I�p8���=��3��y� R�yO�u��A$��k2�
Ϩ�?�&_�$غ�2����:ÚN�/����N[��q�~!�<�/��V�?U�!�w�\"���������Fr�3�P�������H��\0��r��ve��ϼq�/]ߏ���?��a���ŗ*0��\\k�?��q�Ԫ�
n
��y�q8a0E�e�U�14n�U�_4�6=���_�㜗N���%�3�Lr��s��ktm,CA{t���Ō4I����p�Y�7�p�~����h~WH����K?��p�#u��pfk�f�3�5�6�1]��\0��m�X��:���r6X��}�r~v����Sf.�eF�X?˷�^��7�ۈ�6����^$�i�^�EGT̩��a�	�����怼���\'d$���L컏+��y8r��}����9�����[��V�qt�\0�R&DhH�+�a�V����󞓟G�N�l.��,N�j�^.?e����23
50�O���x*�ߊ�rM\'@�3�`>-}W<��/������5~�\0��&�t�V�\0�p�O�^��^�d�\0���ֆmJ��1����	k�`�&
�X=���r�`(Ӥ�2ژPL;�C��9�5��]��mi��Z��$x�м�6w+���f��E:��м��Z�G��4��W!�qL��eIs	�{{���52�V���:�bpvi��e���\0E���jy�T�\0��-\0Dݽ�כ`��
�W�\0~
��iay���n�;��:.�}4�\"�6֣�q^Ǌ\\��z8Z����2l��J�0|EX[��/h_�?�����/Jx|Ws,���8�!��X�F��wx���|��/Zp�.\"�@?�ǋ�uz�x���)z����NMS�N��D�ג��l�k����4��g�B�\\,K�h6�l�p�gU���3�*���\\b�/����r	\" /��F�#��o �z�sib�4nZn��n�k\'�u��w�,��v��D��e��d�+{�K��k�p۩�`*R �LA?u�f{�x�Z|�����Ӳ�le}!%���τ����J}Rd��m���w���x@j|�=��WA��&ʍ_��+�}ITjF��՟��S��[�$�#���5C�PŦ�ꫫ�l%\'��E]Q��5WG����c

��\0���j�����#�;i!�&�95���\"�r��}�-��T�]4��`@P�f�J��&Ok��\0.%MU�GS��\0
W������E�@���}S�i~\"����Hu]D��;+��b ��]Zf���cR7�j�`v���U�d(_^L���l���V�Z?�;�X��)~X�O�N�ue{T�_���u��N�N�읦���6���7)p�;\'1�gE�O1����-]��R��-TL�6R�T��}���5�H�~R�H�:�R4S2�~��jn�~�\'�t�4X�H��a�-4����+%#bV�;�^�q�֚��
ˉq��Nt��#�D��S�%��0ɋ�
�_���eo=�����X�*>M�ۥ9�3�V��%���l�Nv����ˀ�enw��h�9�; ..�$�t��`�9ֵ�[�(�^K/uPE�{�Bj_d%����R�/v(MN[M�d&��l���h3�4T_�	�KuB�[��s��Ȧ���P�5����ϲ��e��g\"pR9�-��F��>h4
�Q
�@H�
�/yF*#X�2���jI������q���F�EI�G�k*	𲊳b.��9�4���v��Mmh2e���j�s+^O�X���T��T���7�����T��U��61�6T�3j_X��F$o�͋+e:���5�o{,M��jSUgM�*u�<l�N��6�}/E*��2#~�.܅:��LmI�+[T��Y���ڰ�ڤH#��ڷLe_�k�·2��c�skv1�D���T\0�N���j��7߾��k�#b�
�}�Ѳ��
uH3b�b����X���)�^ʍB&�DٽS�Ϻ!ZB�珢T4���m}k��uN�h��)��(kGpM���c���spVcV7(MRF�i�ZX�S�o	F�q��:�0�c6����vM]	?T�f� !s�䦒�MQ�JuXv�۲[�}P:��g쌌Ֆ�(�|!5Lh�R�
�a��F7�������W�|��P����<���[k�%��t�Un�=ﶺ�e�A�!c����o�+0T�w�О1�Ƀc@��~���\0Rx��_���Z�Uq}.S�Ƈs��j���\0) :���5���
��Z\\�e�}_���W�Y���M�̯��9if8
��Z�:��i����]h���O��8�W��sA�m�=�bI:�\\v?uQ�:�X��Q}LeG��_��;��#UԪRwpZE��z�\0~58˃X(�t�q����U�/�=�;��%�O��n;ZvT_���X�g�������}����낽B�S¾I���p��F��~J��6�J�<&5��������[/�V�6��V�N��sj4W!��_�pLdY�m�Ң�Q�(W&��4�i�Dm�園�1�t�\0�r��c���0�cq� ��<��\00+�~�r���W��R�\\�\0���e�
�w��v���T/��H��zH+�h�>ے��F��%>�{!m^k�S�Z9��\\�u��j�֋�hR��Nx&\\?u��}Tuhܫ�jK}�s�u!!դn��ͽ��l/��R7)F�\0�a�4�p�����$��o�R�ꬁ榷@���jirI@j�?e{VC][��U\0�)�yD�C��<Ge{V��#O(MH̤���>�P��u{T�U���	� ��a	�;�6W�Z:�=��{�׃a�\\��v���S����Hi��L����k�j�l\"��>����J�ٓ���NlD\0Ge�

_4E��BLL�!���\0��6� {���Oq2!�4*=�k{ &Ҭ�Z5(�\0��:�%9�0.�#��MG�}���c�$=�y��ۺ���Yw)n2 ^U�ŷ���S���=��@I�)��� YjAO X[d��axԫ{�0�7K�����i�ln��r�T�mct�
�v���&�V��Fvk�A�� u]AײOZw_TF�gA�O�A����I�Gd�ֵ��)����o�l�S;��:��%&�BL��N�T>n�թ:
�16.�Y�纺b��
%�\04�����U��
a�1�na����\0�#���}#�y�.��qXڭ���P~+�@
��M2�,�F���!cie\0���e�e�53
@��n�>1�Y��	2�:�+�p��_	<����f�\0��+�����]`�evV^(��	~&�@�^�x�l�;�_��T3�,T���]��s�o�_A���9�;B��̫R�\0ƹE:���Űr�B�/�.8�O�y��L������s�Ɏs99�^)���湸u�c��Aɮ,\'���ͱ�<f+D�,G-f��=���\\.]�kC ̺,�E���_�W憫jT�xc.��]�,ƻ�!rTM�Ôʜ��|=�,���}���|�3�Yx�a�\0�q3�^犢1�#���^5�Xn\\_,wY��m�XJ����#�}7O�h�^K��<��A��n
�L�
�ިp��ק�����.;-���8w9���2���.5X�4J�-�.mO��z�F���#���)���^���?D��C�������s��\0S�b*7��h�
�x��a�x�D�4 ��z��p�J�\\+1xY,���%��.��4��_z��3����889�r����rj���k+�K�/y
չ��\"�NP�?t]��I&=��V��4;삥i76�ElG\'y:J���\"��
���E����;y-\";��N�/5[)c{��:I�%���V�o���.*i����\0q	�|�E�!e�P6�����
�cS0{��|�L��M�K�}\'^V�w ��}\"w�e���I�o���E7��iX���CG���r��\\�)��Hn.�F�N����9����2��SX����~ɡ�~�;����d�:vX�CL�)�t��>ot�;�k\0�40K\0~ɴ]���u����	�\'1���e44�-�c�Ia��F�\0n	���8�tMq��`o6(��� hw�[u�Pq�]i�B�wW0�__�U`�͈PH-&�Cɝ%N���<���RH(C��²�60�����TlE��y㵕�l�\'��	@�@쨺�$���D/�\'D�>6V�s&�*?�Q��~�wKs�m�ʷ�����F�dG�蹸Qϱۺ��+X�/��R�;�\'unt�`�;p-�Ъ��@�)�!�D�͆�n�O;	-ԭFh*:o��/(�nQ>���S��u�V^KH@�@�w�G��{���Ƨ�s�\0�R��bs�\0@]7��3�����%��/xEO;wKs��t[��K�� /$�,9�ks��:�T[��t������s�->�e�<�����H�D���	�:�Ͼ�JgTF��訾�D�=��T:�@�w8�쫞�7J�#s�W<�����_���ߘwH��,|�mP7�5
��ö����d��#^L4:>��R���e6�kH�jX_��>5��Fڶ�\"�
��B&Խ�;j�������L�ƫ+�Rw���m^�O��*v3�LeK�\0%���\'3H;�,-�pL�ꍕ��!K�2���k*�����G���N�^O�Ǖ��T�O�Lu�~�+X����,ز�2��ot�u��X�A{n����;�魷ӭ	����+��%1��w��X�E�|�&V��qI��0V�\\�YX���F*I��,B����F1\0��6
`��x~�he�w3��	|���s�W�fkPQ�u��tN����!�X�a��6�Mxw4�����ڂ�6cq�z��ͭN���gm粜�Xo�}_�\\q��_�G|�zY_J�>^V�c�\\�us>a<ڮ��\"hgR��؛��� ��P��5�i�9�t�����\\�Ă��i�~��ql��y�T�e�`̘eJ�@$��c�}b�D�XF�<�0����3�p��+k\0Ra$L@�Wk�eK���1�于Ǎ�G�ۯ:��ּ��<��ᇯU����l^.��a�\0q�^�w㛉x����+��;�,ƴ��{r�Jw���xv)������Z�+�q}Z�꺥Gs�8���o�>g��IÆ��u��;���&�e��Xz����ʙ~�Ⱡ�� |Z[��iԒ����h�c)S`���
A�S=C��K�l�2�j�;µ��e����z�:�\\��� \0�{�9��$�t/z��1
pdr����~��\'(i���2�y�[��L����&��ң�[�-�hUI�F���8ʈ��\"dH����\0��3�3z���Q_��G&�y��9\\<�xe?j������
O\"9���@?�6O5���&�+d�\'�!�jO��Ɵ浂LA�X�ޘ�c�t�a%�1t|��^aM#��>?�=2�#��n)ܝ<^	�5��-��y\\
��0��܍��ޙ篪�1�C�~�/�>�qT�^��?�5u�߄��潏�-��s��x�+8���e�t_8~;��C��A�4(f\\
��J��%x�r��P��7]\'5�7b3nƷ��X
�f�)=v򴃱� ������.;���ܢ.H��pDO���qY=\\V]�\0��\'���q�1i��sJ�����W�6YuF��߽������/>���\\��!���2�(c�k�mRjb$�R�V�)/�}J��pʵ�)�>��I�\0E��#�ku�
�ty��0�Ԕ�T�����euWF���\0$=BN���:����o��Ⱥ5�\"d������OTx@kOr�����!5nD������Tī���m��
�4Y�X���
��%{V=N���O��#����M����;��<�0L�i�S���88���I����D��l�41���w;��ִH��s��F�:c�}\'>DwYi~�������4�3#hZ)�u�e�`�HZ);�/m4��TOb�R}�mF`���g���;�:�T�H���N��VzO��Jsy殺+S~�\'�|m1u���Ŗ�N�5���ʶR��[��N�g,�I&cD�nZV(��\"f��5����~�\0����,ef�,p�	�y Z�57#�d�:��
k��dic��w�5�%���+jn黨��p�J4�qv���1�H�P���6�Y�C^\0��i��%��x��8�Dʁ�!���$��6>�\0�=�����; <L¹��!\\Hإ���TT~�>eI�
L
{��	nxLu���2/�j2�tA��[�[�2��\0�=�kw+H�Ճ�Ҝ�;�V�y�S��7\0w�Y}KX� uP-��N<���{Zw[�F���ݐs�A�B^����7$����J�rH�-�2o%B�0\\JԊa&	�*����_8�b��)�_mD+/\" ϺL�y?E&m1�hhmY3{h���9��udY4ԭb�\'p:uo2���@�ӭap~�=���֙?�Ѳ�ͤ
�P_hY�
���
��M�=��|M���\\��c�Z�Ο�!8c)��\0��F�d��^�]b����R`�����t#���Mc+�o������}��<~2�Zx����,�IO8ò�HuW�^�o4��ʒ�ѢW�<D�����nq~S��֟����N1���S�jb�[�������\0�K���U�����-u\"A�u��/��������W+�X�ON�	������Đ>���|��,.<�F���~��G\\�42���{W����0��8D1u�L��,�Կ�c��[�?�{H ����p\\��r9��G���CԢ&�����n+.y�����Z�i������^ZZ��x�7.m,���y��z?�������ga�hp#��x��.%�@�.���(�&��)ܴ��ʖ��\'����� ���ǁ5��.�ۄ3wo6��[���{v{D;-�-��#��oW��z+�S���s�G�\0��2�3���\0W�G
���2���Ý{�j��bW���\0�̒9�����\0�r$��+O̯���\0H�_{ϱ�́1�[K�Ѐ��GudB�3E�!,: �ut쯈�Ӳ�c�?��ң�S~/*Ļ��i
��i�w4�5��M�c�^ߤ����q����U��
y�Q]��>ΦLU���^�v�ۮ�¼V�i<�L�r�����>�e�Re��ɜe�8sZg��𻷅�p�vh��
�->#�
螝g����䖖��?��/]�)��2@�48Ul�n�4����_�;�1�ΰ��̟�<��a��e,Hh���:=�j}BF��H+�*Ue������L����B֓_�8����f�A3ڽ&r�q_#T�7eq|�pN.�)=����h	.�`�\0�[�y�����V������\0��/�3tkr��5��{�uZ��ر����*��G��&5��>E���M/�=�tI{���J����	���-LM��BLBEW��y\'Y����#�m%]]�n׈�/rl���6
�[�ѫU�L����\0X�6MX��%g���=-�$|�R�nlXf?�7��}�
0>���e�\"�v�\0���\'o�^\'YuCz:b��y����>~\0ǒ�h��v �>�u�F��������ׅ5�9̃Z\\.
�Y)���WS��JH7�MK�	��!�ʺ����u>+�V�d�\'h{�-�B*	.�<�&�n���Oe
���5�t�t�� k�S�@���])����.ql��K��V�6&�Y����s��\'�R^�!5��W�t{�����MY��f5��F��~�j����J��n�uH���
Ѵ���4�
o����$�Vod�/\"
,h<�1P��/S�(��-���
�\"J&��Y[S[�\0TB�q2��mm[��S����
�ں�&2��̓cjn-�1Roh��Ju��\0p���[��YjV�՝d�2���u���拪DL�4�cj��ڻ�0�2���0V���#{k_�|�m:��H\\{k@����\0/u,�j�{�\04B�[�M�H�1ZGe����a�F*	�	���U��kf���}��!V��6��D]a߼,ػkmx2
`�Ic�ufҮ�i��X���:`��QDm�X������V;,�on#�X��b���k�,L����m1�)`�j�
�i��\05ΗfT*��DZ��n��p�̫�6W�x<Ŕ*>A��O�_}zaK���OM��cX���TX�`����2�Q��������e��=\'��9�^�-�@�W���,���]�ki�Oe���e��i��^����g������|=R�}��E�y��3:�����&a3�p���.���*:O4���\\��i�5��@<��Z����w5NqLk�v������+*˛�eT�r�<	t��R���2Â��G� ���Yu�\'ΪqlLE6�,n�%�e�-����$p�A��
�l�}!�8��\'1������+��F3�����gqNY��-��}�8�%û��D��h��{�CZ7$.�W_9�S�a���
bUÙ��|#E�p�=l-\"d�J��fǸe�&��=́;���fW{����]��q\"�MF�
��7�F#N��r{�W�+�������z�U�,SyD�\\����fY�Z�w�LF�5��J���\0�_�|H�ĕ�X_H����Y��6��WU�%�輫�~G��\0�mP.�����
�	1���a��4V�[����?��ø�\\�{��+@x��:�5�`�������Չ�=����
�MÔ
�p���uf� !5m���-<���KuNa�e%յ&�Q�&n���T���\0�i�(����K����&�;�&���-���%�|�YgIi�N�����MO&��sb�L�q�M����/e��\'������LS�T
�J��fԤ�2�#����<��\0z%��<�5��sڎ��,�
a�whl��M���>��rs�?g�^��b�ؒ��I��ouӽx��g����;���˼�i\\`�2�B�ا�	�9exg��x����#�o�y��^s�_-8�CA������d
�I��R�Aq �������
��\0L@���jT���s�tO\\�0	�7+�>�����>�/���n�?��:��J}K�%���\0_+�M�Ցbn��u�)&����&�4���I�Z�Oe�Փ;�5m����V�
�X���X���4	�H�?��
���VsX��j�Z&�����:����|�k�uR
ˈ����n��=�5/ L�B�0{��Gc
uoyM
�n~j�P^�;j�1 �� �_쥍J�*OdB�A ���t�6���gM66�\"��Dڰo`v�cmM&�5��R�̓cj��}�1R-$�
�`A�h�[��,��6�ʰ�x�6T\0�l�6�1�l-����f��[*���1V�?]�V�[�um�bO�)b��V��`�lO�amX��F��mB�[\\��e{�����
3iΩbA<�MY��F�6���&�7�\"�����T��
_W���.�Mo��3i����t���$��;��Bk@�M��d�\\��
��bֵ��R�]�ŷ�V��O)7�6+�ٌ��J��8;8�~{�]d��om��	�o��k� ����΄`�7>7v<�������]7ҭ�V�<F�:�����]:��E�����\\��=e� � ���g���������5p�#X4�,�a^��˳��h�[������ÿ��\'�f��C�x⛸o8��N�R?\'�wrʠ2�
ӤۺƆ�PF����X��Y�����}��<ց�ʣZ��:�:�H� uI�)�4�����Aԍ���MP
�c%!�����\0�ۦ�F��2E�>��RMO7�!5o*��ⱟuF��]X�̡5~-SJ�o	n�s&G��������oSM!WWpD�$�
{A�w�Sx>����6�@ef���?�s �+w����p�45ŧx�M�m�v�;��]6X�ik��t�<��Y�S��#k��xQZ��˭��A��;^N��BBň�*^�#���+8\'b
0���A��N��;\"mPM���e���0<�o(46�:e{��A���&¾k����ES:+뙎RJ��7�B��әM��žR��\\���f��CY�W	��w�`%Ѭ��It���Na��.s%	�|(��ǹ&��uP��A�~�:���	|k+I��O�~�f�*5~�n~�%D����K{�;ξʋ�i>�O|��\'~��[�0d�RjT��\0Q﶐��Iq6������1t���r��\'No��K����-��1�I{˚E�V�j\'T�8L��ZE��L*��F�+{�h��K��:-b���w�g{���LAI{�u�Q�\"d��oxQ�h?t�:.~�qV�yХ�ə�?��Kq���UPN��������y���@���L��Q�	׺[��ʢ�b�\0�-��!��T�H���P�-�΍nJY~�����J��ؘK�3`����Cz�Us�RK�Kn���j��_�_V��9ʶ�A \0���O*s�fݒK_@�9�Ѷ�Ս	PU.����.������TV�RG��Ջ\\J��K���	�%4��?�
.�洬��wb��>HQ�Z�Y��U$j�� �]�lV�Ճs�Fڤho�X�T��b���Y�mmY���[ĘX[W��5�b�G�b��շp|�6�� ��j�u��Dړ��Y�Z��b�V�H�X�k^}���o��e[Y�Պ�.D�U�/;�L���/��^��eb��� �gmtVʱ:�Sm�����3�~~򰶼��Z��b�k5@�M¾��{��C;��b.#�=�45u�\0�u�7+!�K��k]A]�t�7SL��U�o毫�2J�*�ʱZ#u�v�ԑ�v�F��Y��`@�դ�m����hUՑ��9�;]S�ɝ>k:f�ԓ\0|�>���?ދ3����U
�\'����h/�P:��#�GW�7$�uxF��^�\\�\0�[���k�J}REς�ꝅ����i����s�1\'��:��@�ȿeY4�DN�n�m�KuI�A��`������b����h���ԑ{�d��;��>��P��#_�T�L�\0$�b{���9�k%�A�JT��\'�u�wӲ=�8�8E�K�_K�*��x��4�{�:�<�� /��KuI:��\"j��r�_�<�k�5$�(
��qd.|�R�R$�.w7�ԟv�0�)�g#��P��)�\">�ukmp��c�z碿�)�_�j��7K��E�5�Zؓ���?�F��$�\0���N�h���+���I����8�e٫�hc(f��W �o��k�~w�lL�|,����Eu@�9��n����_��:]�:i0�X����Zi���p��k�\\_�xF��_^�iE�i��t����\0S��O�N��nA��}Q͘���0�0�yc���I�\0��\'�6��+���
�r�-7�Ȧ&V��.\"����z9w|��ߊ9��2~��X�G~7=I�RЫ�gy���S��5�U�G�ht��H��v��C&`A���0�k(�m*t���4Y�`=�u��`UH�O�ܒc5#繺�^l��2�1��\'��\\7Y)&���&�S���=��TƁQ�\"Ɖ&�>�~a��E^ּ�4���Np.c����i2}�F�59�X7�B�K�!ے~�s�LjQt�����?���S������8�J�WM���L���}O�T4s���_a_����p�L@��+�Ͱt��\0��q�9N��}���_z�����\0�\'��\\���=�������n����ŋ)oe��bM,�,]�7^���ܭ�y0�.$�p�<Y<S��f_P���Sؕ�}%�Fl�HO��x�j攨6yC��p���@�kf����%��q�ф|��%�F�,/3�\"�Jo�v+0mD��A=���)��i�7Y�b1.��Is�ˏ���/$<��c�n�����_�/�`�cMP=[el�-u*�������\0;�~��\0M�M����}�qN]��El�8�R���s��qUIk0�jm/�P��\0XI����[���?���Լu<F.�Sn[�Yu`�(���L iR����\0���.�E��g�}������8.8���O�t
�S����3����m*L�ƈ�_%\'a��E��3��t�	�T��O�p��M@bf\"ְD�Ǜ�e����mh��dmsu2ad�P��LmV̍W�Jfa�ng���y{[U�s4Øvp=�\0����>�@��V�2l�Q���y��#k�[�4Z:x�;U�Z�$���:�5��W�~?�)��G1�j���YI�G5�[����G��zO!�nG�J�xL��}ާ�u������+����g`�!��$x^���ϸV�)�e�{X/#��95���V�v����*�p�k�ݤA^���|ڙC(��.h �
�r�x���➤�NQ�f����v�s1�����CyA����7~B�&�@�y��X�̙GR�Bַ��	��\0{�ʻ{^\"���\"�Zè���~4���s_����2�p^di���p䵣{��/8�w�n\\\"���	�\07������ē\\��������2���4�M�a�3-�8v����=��^���}P<�_��o�ɝS��R�e�x~#^��N�K�\\{r���3�~��d�N\"�l}:�1�i�b��ѩS��;+�.�H�~Ja���st�{�����c��o�+�=�{j��q2#��n��\'i��T�Yv�����y񲳉1�ưs���N�u���j���O�W�I�\0vY$���:�����{F���I!	ĝ��d}kZt�I����l8�=��$��������\0{�ur\0i5���M�����E���^��E������^-�H}{v)n���LV�����O��{I&˭��1C\\��R�X�P�m�t���ܫ1uBOhA����WZd�@j�����\"�F��~�F�o�[�ȍ}Ր9��!*�x:�K�C��.�}-LC_\\M��J�\\�K59O}��TD̐���Z�MJ��O�
�R@&g�]5!桝��RK�m�PT$n�#����9��=��a:m��n˚ǂ{\\$�8k�fc��$Ȑ��I�
��E�-���<<@06X�4$��-qpu(�M��\"��6��Y)�7���w{,
��M����Pt7Qm�3�&�(���W8�꨾5��h�<8몍��+�̀S�mH� x���*\"p�7�+��)��:���M����IеX��t��H|�V*@Ԁ���u>��I�@�ں�c����,�t�\0�!W�K��>h��A��;{��>�,��kmPmp<�u\0܈���ڱ\'A�j�{yYF���n
�%��I�=������`�,I#扵
�LD
�j���?en��;�Y5{�������I/�!��vFr<��B_�t�Tc;���!Ƥ����������/��Lu@H�� 5,;�59�|�>�	���Q��*����]i����f!�Lƅ5��p�^�*uC�p��8�flP����=ɐJ23S�!S� ��%�����mu@e�����N�:���	w�~Ț|�*�M���I,�;!s��̐��uH�n���d۠uKPd{-H�{�6���\\�kϲTx=�@�+R�i�T�T��B��\0�����Po�\\�k�Xc�I6�T/|juA��,8��&��D_\"N�����q��K�h�vA���X�D��ʺ�$P9��*���\0
��s�*5	�ŵK/���T_{H
�N�cYA�I {B>�r;�s�1{�Z]�$	�����	Nv�	C�SMc�7�\\ŕ����$�AA7��`;J�nC��na=�u,澺��{��5ײ�\0g���
p�N��OT�0����y0���]��n�����ɯ����2�TlZ\'�,���Ӥ�>��ִ\\��ef���j�E�/���\0hU?������G�/�̞��{8[
~渡��1B��G�k�\\Yr�0���χ��#��\0���8�<��x�,uGeyN\"�3�\\n��b[S
�j��a��n%���<����x�V��b?ٺ����1��?�~�uE�i�6���b�|\"ē?谶��
�C�Ut�i���t��f�&��M��sj��o�)ϙ?��R���Fu\0��(K�%:�,�>��_P{ʫ��Y�2|h��GxI5\'C*�]/Ȳjv��>ZwK/���	�:IWK5@���&�N�f��!5DҘ��L!I=�OP��U�i�>��48@�?��צ���;�Ok�w?�m3\"F�;m!5�Ћ΁b��I��>��M�����he:���Ѕ�u��i��{���O���F�o6
�R�`�u���Uu\0���y�n�Ԙ�3�J/\0��
����l����T|_�[�X�*������#IB��6���^cd��$�\0h�f�Ԑ �rR_Pؑ��*�Pș��]J����i*�Tn�Y|�P���O���.�|�t��y���.pa-�:������d_d�����Qu�^R��\'yԝ�fԪ�ݤ���eu*@�bw)pu��3�{��	oq���*:�M�%9�S��[�Zv.=���M��R�]-��#��tw�t/��m�@_�\'ͬ�KV��{��)�\"\'�>�,�\\vK{�r{��Ox���S�]�O��Kq��֤6\'T�<����eOt�5@盍��(��&J��M�YxJ�8ɒ`����B�>i\\���V���l������=쇚څC��reW8�%s`EʝB �қ�&n��˱J�Oea�{ʍ\'C;�X�\"ĈY���
�Ck�襃KjiX|w�	��=���\\�ۺʴ2��J!R{�T�2�=���!P_C+8�~��_S̬ز�
��
c*v׿u�T��[jȋ��[ln	 Ť#mhAT�\0��6�;��m��ncdM�F�\0U��#];���d,i[Vފ�[�+�M�)�^X��Y�6�*˵�a�mJ�*H�+�Z��(o᧪\0�[j��ums�eb���쳤�H�-�-�Y�F�\0U����u.cU��OP�N�]Ru�	\"�v�B���6���*��
i�MNhe
����N� 5&uB��+���3��TI�(I���.E֣X��4�o�]��u,���@&.}ѽ�3c�9�;�����eRobN��q�H��	p:�!Qu��uE�b����6�oe��Y�1��\0@8���4����N_��j�xN�,�kPŒ�
�q�����];�\\�a�K�<��tX�5;/�o����_�܋����s~4�	m,�>��\0��p���>� �Lr�8=�D���w���OSr�d��p�Qw�0��6#�cA�4j4��PI;J�ޯ���˄�~����Oφ��~���?\\2�	ð\0&G�ڛ���S�C��5?%��]����a���Z��p��{�bjT
l����ƀ�Z�\'3���f;5�sJ���1��bq��c�Z�]�=ǹ�em{bn	�b����p�Ƿ�����uy���{F�U�7�l���΂�%:�L��Gy�.{k`�[�����n�6��i��>���ҵ���1�6�0��M�V���\"D�3�4�B��$��V�&?e����m^S�V�T-\0̣`��������T�Ӻ�#X��en`�_Y��N��ka��qe\\=F�����p�a^]ۺ#^Ou5U��ک��y��ʽA�1\\[���Rfu�Te,ͭ֢��\\�|M-w����\0����vEO
�Q2l�A��pٰ����Շ��$������[c6�ek�Kd�3�����6�V=���:�)1�T�ߥ<m����9V+(�q}Σ(�X��Uq
`�P6X�M����O�g�=_�u��]�?f�\\�7?��HQ�f5$n����e���ZEb��+mM��VQ^	��)�����k5�M�^7�YMa2!X^L������ʝr��d8��*�P��6���]�-�t,���4M[jPk8�u?t/�\'a>n��@�W�L覆����^�G4xHuY�����]
���u_q(
ȧ:�
�7�LsG+�aG9�y\\@�/�V\\A�E�\'㕥��P��3�/+�G�N��:/���:[�,Dk(�\0�T$�ꖱ�]�gF9��<*���j�l��Z��.�5�*5gܤ���:�ʝT�j�v�j�{��miH�i�Tjnt�M,����ς?�#�s���� c�ȳ������N��uí\'͐s������GRݕ��xY�r�T�ď{&�U�� \\�ԍ�sRF�!.�1:�h���}Uu�2$�u �WV;����R�	B��w�$:����o��ɥ�Ωy�!�N�{l�_Q�#s*Ⱥ0ԍ !s��\02��/d%�}�W�L5�К�\"c�-�m��5;�U��:gd.��\\��	���E�0�3��!.�@j^\0T]J5<�;G��S�I�N��*[o����X�Y���k%r>m���w�1��Vv:��sZҥ��p�t�w+3�D�?e���Ӿ�����s{�>��t��m�S��i�9�u���5���S]��gI	��6�첲���Mc�\0E�
]G�;-&����A�����H@��O��0�Դ���~�K쀾wVuN�\'t�T��eO|�`�αcu��_\0�r5K{�Mչ�-`����Ѫ��Tx$�a�K�L�!]W��������-�Ty�?N�Ntjd�s���[�:�A��[�k*{�k��ot�贊s��@����;衩�@�F��h�	����R�.4Q����Qx#�f�q6�:�,��
��nl�癉Z�v�:g����ϔ��q�Twk�q�
��d�o����=�Դ!s����,��$�*�xAϹ�UԾ��3P��wmPs�6ײ��׍s�7���[�����/�{)���-��y�)�
,����3�\";�0�\0��s��Y���!PοU��<�
�N��TV���_��Y���=��55;+,.
��V�����M.G�X�J�ם�(�A���v�*F��6U���Y[SqxE��Y۲��ں�6��Q2��o�emb�2��e�-yR��[k��|�mPbH��+|PN��P�$<,�H|le�b��TĐ�ȒTe��w���6����|�s��V*�
������O):�A�h�RO�=�M��1h���%�Z�ce:�`I&��*�\0Y�꺗�#إ	�GT�u������T^��9��n�<Ou�p�
���)�\'p%B�+6%0���MK^���υN|��Fi�����s�0qĠ5	��dCy�ؠ/�o�;�d$�c)�E�|��Ο�mи�X�/��{����H7�O��P����6;����֐}Q1�	|���
T�I�	 \'8�@@]gT%��T_�O6�\0eDs�7A�H*���B_92\"�R*�Rd\0��1oꀸ<��нրO���� ��@���eEЩ��+�����ҩΙB]\0�I�A��!/{���IC�\0y�]�u:!.&6��?�L� s����	�\0��.7�Q|���΍\"w𩥗ŉ�\0UE�_�,���(�jgDnJ���wU�:��и����audjU��gD&/�vBHv�I�Q �IWK��C��*uH6�t��P��%ju@\'Q*��:�5D�[e\\��p��j-\0vP��!ÑQu��W�LmB7��PգJ��_F���X	T<���ʺ���4��
|����S:��:�_.J��N����
�P��>��ɇa�~�X�mB��\0�mp.�,���
6� X��퍵���sYj��#��*�V���Y���X�tL�DN��AT҉����d�SkonQ
�j?��+	��N���M4���m���x�6������h�+�A �m_�nVԏ
ú�
ā��g�>c=����u�Y���e��ZD̐TH�L,°6�]S��`�֒ �MC`bBGPnuY��v���,ꫭ�<����6Bj�gE��W�ϕ
�V����U*L��H�R-k-LZ��Ս���\"�x2f
p�RcAX�����,t\\I�_A��\0wC��\0u�����)n�ͷJ5	7@^\0�Ϋ��v`s�l@�rt��$Ĩ�ΐm��M���6d����@:ͬ�^H�&9�6WK��P��I
��/�$�� �W�\'�itgT�\'�����sȃ�ʹ�\\�id7��0P��7�K�Qx��*HwVo2�<�r�\\�+5�
�4g7�̪�\0��n�j\0\"�CP���7�7T_�N�F���	�\"N���B_7��R�.Ʀ��(MKA�	F��Bj�0K!�y�I@jhnN�9ɶ���(ԃ/��W9>%6��lotQL�D.x��LZe<�{+�A��h��\"L%���y��
Ⱥ0�
H֟M��{�Lk�N�t�<O�����:J��Z=��\'1�c�����G�M����Mm�k]2�����eeBD�6Mk�x��lM5�|\\G�ֿH:�����v#t�n�7YF�T3����T��7_�)���;�e,Vּ��i�`Zv\'u���1&v�ʒL|���?� ��ɭx.o���
�������9�;>ڬ4�\\�)쩶�@�b61��;k�1��ˉ�$���a<����E�i#S[o�kj���,�|����&6��~ab�c*��D�Ԙ���\"\0���YS]O�Y�T�`��V�VFU k�Lm_��)b5��׺{j|ZD�,�2
�H�Y��,d\"k���e�y�[�y6Y��d���e�RN�
�t��lX�:H��T�KM/��N��������Q�LSL�jeE䋛%�v���6P0�w�N���\0�շ���
ȃ}H��a�N��N���<M�)Ԕ���ekLZ.q�ӹ@^f;�к��>H��:*�5	B�F�vA$�@_�D\\���i&�D���rd�:����Vj=���*��I�`��	����ju;J���S���)��ʧ>���-η�[�ğ�S�E�{��-Ε��톿�S�H�����p����l4ZeN�@��9�1`���`���?�oI�=ę6��ē�e��\0����N��P[�6۲Y}���Q�\']6K{�m\\L��B����d.y\"�!s�&��|���T�r��5�����\"�$�o(9���K��\\�=��]����샚�Q�w3%V��N깄Ωf��.E<(^g�%E�WS�jik�;\\�u;|�;�S[P�E�me$<��W�=�S���J���\0�I}��<y�*ÛR׸�6��Y�������rD���$>]���lmh��&����Y��0�bdM��6Dא�C\\Dt\\�\'��6�$�
���Y���9�B�55��;�mPL����sn�N��AY�Q�3�Vڷ7�\0E�U��A��Q���B�PsY�4I=�y7������2 ��p�\0#�@�	���$X���)��@<ʁ�E���\"N��P��g=�s���/�Z�*�w�b���:}��|����;yD�±q�q�\0�G4���}Q6i5��S�06K�*s�i�E�3F����.&|胘4�P���L�DyTN��畲$�Nx�=�et�/\'��.�x������s���s�Nu�!/��a�U�ct��>�G:
;S&�\0tU�&�o�S�	Ot^V�?���%��s���E��@�\"/Z\"���Л��>��k�#�Ԃ�e�l��}�x�-�@B^7��>-���Y�:|���/ �(
)�A��6S�m�n�nW*:��H�쮃��\0ފuA&�?\\����
�h�ˣ`����*\'kJ���?,�\0�M.�_�@:�GQ
P�ZBT3e$S\\�������J8���*uQ�ek@���~J��6�t����1�]�� .����7�%Ѧ��捥S�t?I@\\F�	����uN�\'�%���T{�B����;�H�u�T���ƞ��r>h�?�#m�X�1ؤ4�[}�F���3}G�9����dc��ɍ� �G���������\'shX�S�����ȸ��̓[h��M������},�����+)��?�G�	�~�������w��X���:,XH�ǈ�u�Rw�2�S�\0}�YRr�ﾡ_q}4Y����Bc*I��s,�5ӫ�}�)��A.5*]4�m:�N�b���˝&��N�Rd��X�՗8���5�O,��6#`�\0p)��&�?��י�q�k_h\"ce��u-���5�\".Oc��ʐ�v�P����gJ��Ǐئ�����ʡ���͊c*[�ԱW�Yj[U��`\\��vLeY���#e:��6�6�O�b�6�&����;ς��s*���`F�#kO��
���`j�H�ԛ���;j@���Q
��}��h�2�>Gs��
�l�<xPhk�^ocu}Bw%!�D��W��DJ3O!ڛ�/� �I���T�%1�\0$Y��nL��F��_�Tj�	�M؁4�	�.\'iKs�i��@�۪�f�6\"\0K��t�0@@�I\'�H���:�	~�n���4%	|�Րy�l7@_\0��Q2$�@j�؀���s���@���$臞t|\\��V��/��U��%[����5�+Q��$�-��J9�r��F���nq�oqhHQ�\"���ot|��{�I��o�����r�2wU�B�$�\0�%=ě+q�Z�Oyp�\0>�PG�M�[�G{��fG��j�i�������*sˌhB� ��,�I	N<�������m���[!.��� /\'[%Nq.���X,��ׁ��ɹB_\\�	��OG�q��C;�?�t%�&�\0�]�d���S�<]	:��Dt*�P[p�ς
~S����-�(�ɛ��U�M�@�;�.r)��o�Q�%s���y��jitp�#p�>@�t�R�U��p�M�H�����Hi6�.bݾ�,=��\0�S����tE�p��(�·�U������}�s����6��X�U��`��-��|��
�H����b���t��+	�����\0����H%�Ĭ��c�D��H��)F���X�/�K]3x�b� ΁`��ѩ��
��_[Gu�8�ǔmx����4�6��_=�����^�AP���\'y���i%r��%f�$�R���;E9���ImX:�nʃ���f�N%�!Ny��)R�@TC�i*L��o�k�U$�J&��M���@�͒�� *����D4��%Q|n �I�U�{G�n~�B_������ʋ���&�	Ͻ������ϸ쨸Be�\"�Ϸp|�/�`�	tL��S(K�a������:g���s��(^�\'[}���\0B��TB��
KJ�0.��iD�*��h�Q�1p�-y��[�6����	�����@�Lj���K/����?�0���wKs����s��<��}��N��7L�t.�%I��-��E�nw(����\0��\"�J�`/�[�t3r���\0���d/�\"�U��/�ƛ�5 �$�<��M� {�{�ȣs��4%ĝP9�����P�q���WP�$��_?)��UԼ�$�h���H>� U屃���E�L�jF�Z����,�[�*�������N��[^Z<vY:�	�jι�*v�k/��8v�[,�c��������y����������8IE�N�y1����;��Ny��$uN�HV^��<L)��mC�W��Ǆ�<�`��_R��J����#x��[@~�0}��\"�	���T�$M���V}�&�3��F��c�X����&紒���\"{�D*m6u���\0!�{�\0��*s���)�1�#�.�.����
�ة`wV���_9��H. �+�#�A��$΅@�V~�$꠪~�hhꐨT�3�I�\\̩� ��hx��@T��{��\'�P��4֋���k7+9�J����y�sr��[����ZUu;���Aέ;��}�ĥ:�ir6Tjv	��T�k~�]P�ob����>�^ѠM.�/�JTGs�$�\0��@�@,7�]U�:�7��Y�k��\0B>L؝��&\':����W�\"D����@��u�
鹉�+ˉ���,�7�R�S��d|[��ԏod���t��(Z�	��Ȣu^_�UJ���ԃc���6Z��O�\"�Q�5�ԡ}_6	/� ���-*�S{��ɽ���W{�T�f
܊���bm�H�Vu�UR��&�^\\���3fN�;��Zڮ�Y���\"
�;��5�Il���b56��y��1�&����Fԑ�6<wXT�i �2�\'m
�*�ZM� wR��T�`�em��첶�������ʞEՊ�5�0�m�jN�4����F��?<w�+mNm�
iz�@����e�M��0Y��y��V4�yY�v�&|����Q�y&U�1r�j\06PIr:�4�����@\\�=�:��udf���jP��H�D��ʋ�ꮙ|YWS@,��e9��1?%bU��:�Oa���Pdx�����?�Vh��v����t.v�@��\0\")��$��&I?�\'T�@�MC�䕸#�s&P9�s�T�\0￺Yt�Lʰ[���w��Q%-�BJ�(�m)ot�P�N�n|��VCQ֝%(���s�T��]e�E9���Ǜ̫{��%9��6���{�THh�{�t��-Ae��>�y��*�d���;���遠BL{�}H�H��Ant
�Dh��f��������_���)����U9̥�C��ւ�mC\"Ѝ�d�
��I��;�nH��-K.Fȹ����E9��\'E�:���/���A���|^�T��pF�¿��[\\btP���4:M�*Ƀc̖*�Tk�E��5��y�QN��mR��a�;e�f���b�y��m)
�b�i=��]ȁqe@�¢o�.$��V]�t�rO�����L(��\0�a�uEѮ���L6���ύ�U<�����#C=Պ��f�*�D���솣���E��\"�\0�)otw���蹂tTꗵ��!6(K�n{�0;��s����7>P��{���܄	�V��@��;�Nr�U�%׀tP�otwu����@�H6
�|��q�y��D��I�9�DL(]��Qp5Y6Ԉ^��vT�@���T�1s�[��{~�m�{���
���(�Ș=�%ęܭHi&n��\0`ۺ�:�h��\0�B܍E���t���iT����/�[��|��蘙*r�\'T$���>�K�u�����?1���F�EN����!s�ܥ�ܢҫZ0��:CԸ���F�Ed����h|�yS�Z4��@��L��Dj�ܛx*�_��uI�����X����@��R:���T�`�mMH1���L���\\u�a�c����KO�棱/P�L�m�\"�
�W�
�$G�g�
�k�yO�^q��t�߲�^�ψ\0M�<n���&���L)ȦO�1�W�|%K�,�9c�	>�x�p�t��?u�7\0����+�K��\'�C��2�-����>\'}�?�-T�(��n�\0�|�����0�����G��t��#��I2��$Y\'�B^�쫘�x�.�И���\'^�˃LΉ|���U5����i�C�����Wm�sԢ��rd��S��\"�\\�L���*�P��y�߲_1���MF�i���TBY�@7�B^�h����J��R�����j,n���K�Z}��Ï�U�ʺYL&eW7{�&��\0U$��Wɡ��
�����Rb�f���-yF*M�P�6� �1S��66���;�F*F�=�
����S���o��
uS$���<�4E���A�B�Ш�4�ӹ���,�$�
��>UsF�EE�o(�X|ƿ%E��Q ���D�}�ڌ�p���	~� �/\'��&�>h�ګ�
[�͡*�B�0�m1+��:%�K�PX�]�\"k��%�w�e-O��&R�Bl�A��memq ����:\\\"�ɾ�\0D�g8q���A���t�k����jlֻ�>-\0��/#^��
���L�ʶ�
��oot/tk�<�e	tD�
s�����7�B]�*����y���������\'��Q]sr6@_���!/!�-P�OiZU�:�꨸���$�bR(����y�711�*2|��0���P�|�9�[Y�\0�쪩�\0*\"�T}�B]7�²���8(�n��X�-���*���@Ly*�܋i�o��{�Q�Lw@\\<��QV���:��)R�4�[�	�ܟqSO{�s��UL�/}�?�nE�f�T�;����u��M��Ri�q���I#UE�3\\���Qo=����*9�ݮ��$�\0������(\\��t.x�U��ƈK�I�.t直�=���\0�Z!�o��s�fl���{�V]\'�Bj	��{+ھh��N��s)}M��A����3��#�H� %��t2���M)�I�C��t���s��>>-�.c�*�]/�N{y�K��>U����Id�~S��W����DڞuY�P6ڔb���V��^1��D�,��A��b�ʀ�Y�� B��ۄ���F�a��iu��AP{I�[_��.~Pl
�)����_<:�t��\"A
���I\"Vti���Vʑ7�+0|��}BO��,ٳMb�	�Ny���� �ϑVk�AY�F����X��`���4�����J���g�$u�Z�ur�!���C�T\\O���_�St=^i�J�]�ȹ$�ʋ��<�,;x��D�T�!�y�<�)E�-��S��M-1ω�$!s���T�:�N�
�@]	\'���f�S��Yv������K�U�ISbӪ�:��7Q6>�k��mv�\'�H>V��Q�V45�y��M���Y���_dM41�\'��eH�߲�6��c_ܢ{��|{~ȃ��\0�,�t�0��/��c^`\'���$I������j�&��Vp6<�M�)�|:l�m�P3>SH�c����l����Į1��=�iԝD�\0%��Kئ6�ctJ�ڠy�L�����l� d�Ԙ\0]q�[^<�#�n<jVT ܦ2��I���l�SjLD��N�$������l{�Ncc��؍��#a;&Ҩ9H\'��N����N��c�̓s*�<#�P {���\0?K��R@2.:�B��d(��	;jG�!R��X4���\"���R�++jG����5�u��#mH;��v����R#��,�56������QPF�{#k�x?U��U�a(��?��
�*��Gb��4�
iEK��<��f\0�^ۢc��\0�4jL�b���&B��&�����{)�:�ݒz���eSm!D<�&�,�԰��z�������4�{�/���t�s����:M�2d�M��9ք�5��������Rgn꺗 (:�Z%�O�3F�`\\G�N�,t�I;}�:�u�Denx7�t�7���{�c���:�&�84�:�.\"f��T�rE���樎|��O�����\0�uFj<�����Q�k!$���M����5��(��j���L��� J����*������UGmk&T+f`�
��I�����벢�K��$J�3d� +E��{�&dŻ(\\\\F�%ܢ��jQo1�u5 ��0�<�~9P�_��m�s�����Ӫ�e%S�\0�4��GpJ��d&;�`��߲��L�x�H@[�`��AC�LY[]#o老 ��&U�X �o+6��.hm���$\\!�
���j
��M�B;�T�I L!疞�����AZE�����/*�L[T%�͑P�d$������v[���	\"f�G�@_�eZ�@��;�u���� ��#H��qy�K��7�:��D%8��ҷ8����R˯su�0N�
���L�Qt\'T$�E�=�n�|n���MͶ�A�\'H�WK!�;|�[��n!$�y�!sˍ͆�]4c����Y��>R�Tii�K5$�2�,1�d[t�S��}�n��m\'��LZ�o�| 5\"6)n������UFj)N�mA��b�Dq�tjb\'<��-�j !{�$ԫi��
C�\0�d��$�>�/|
&.��
�5*�XI�#Ua��n���}�
���@d��i���>��&�T�.�i�o0 �P���&�KΠ�e9�:M���M����S9ɰꋋ��Od�i=�����i2P9�E�;�u@�2l��$�R\"�;�ۡs����I~���Y�h[�\0��\0(�mTs��Yw�wB��m����[��Ͳ�o\0#.�a(A��s�Od:��[E=�XAA��ݻ)��ǘ���	�:���l�\'�-���Qw3��d�Η�鄐\'�A��H�\0��\0��L6�\" =Ē`��Ѿ�{M���䈘=��[�p�}Lƪ��@b��:��Nt�\0�S���%	(��&��&��9v(&;�Nx��K�jM)�
�A�\0�\\@�����^�Z��j��$��jx�@�#�ʍK�Dتt�=�Snu��4�k�@2�t5�b\0#HJ�eM�J �g@�(\"v���?u��i�!�-��c7�P0C��Mɲ�yv��\"A��]ɿ�C<�H@D�i�{*0F�^�yᶒ�-�M������*. ����N��%R�,\0.P���q��7��U��@?D2]����ψ�Wb6�n�T���<��U�/���@L*s��D.�T_9 �y�
���)|�\0\"\0쯞L�%�gh
A��S���SDђ]�\0%b�l;n�$��u�U5�]U�gHJ��&�V�=�� Zݽ����4Y���ԝ�Ҵ�β>r���ͨ���6�lk���\"�;kK��6D_�M&����)���u�6SJS�Q�O��H�H���	�M&��3p$���:�s�����S
I:�!.��x��\0T%��U �����4�f�ք/%Q�����US솅0��<�6:������T��;��0��;\"����t�P͉W1�v�<�m2+w,�\'�2�D&�E&O��ߺ��j�1�����Q9�u\\�\"���}�|Bu\0 �[Hq��5��F\0�4J�1m�Y�9�M����=������cu���{\"c�w�Zb!\\|}e������a�vHk��&N���cC�;�;��ڐ ���9D�7Y�{*A��2�C�m��0!�ڣ]{��Ly$E��&���߷��ʑbo�	��F�b��[W��^E�VT�l�׉��,
������l�Q��6��V���wX��Mm[�ϕ�>�`t�&����y�����o2<��ik���A���a���;�X4����6�\0���8�&��ө:�}
��M��_dmu�����!��Fʖ����x��Fא,f��ځͱ�X~�@+(��\"�xY��{�D�@�{ ppt�$RN�p�i�L��&���\'��I�����\0�ơI�O1Ԫ�1�\\�����M!�A�)�vJ.3e��r�d�H�\"	�IK5I�«�׹*i)��\0 s�qt\'S�����nyr�Q���Q|��T[�\\uB�\0;B�v�$�L�;S��\0\\b�\0�(�X�P8΅�кM�Γ1��t�&$�����P��f�j��H���}{�{�,I�]�X�y�b�E�H�����t����7�+��$��8\0@!	�5�=���y@�{�
����Y{J��lVc2�&�_��M4���k��C�au��@�{hO�?t��P�;�!���[T���F���-e4���J���%��	xʚjHc�BT%���\\������K_~��,6��Y�\0�\'�@��1SK�atM�}к���t�R�1#T�/�׹쮚��<���/�_7\"l��C�w{�..��t\'T��6ײD�ͧ�S�v�n�^@��h�T=����|o%yI�K}@;���d2�C��A�ҟP8L�B�|3\";%9���r
1R|,�t��JcjDͻ,��錩��͈��@�ڂ&�#j@y�&5�>VY�M�#�!VөY����0�,F����S�hF��SR��\0�vMc�O�_\'p{wM���M�lP��
�YӺ�ږԦ��F��v�\0�^/?b�5���\0tltHX�IZ���(����u��������t�¦�H�0��ڄ�Fڀ���;CC�\"�\"]M��C� ̫��>�:JxqP@��/�Dl�&�*�H�\'�h+����ni��js��!���p�q��Ϡ�BIРi�bU\0�n{%徭�ja�]S3�B�A��@jN�^�C�tdW�\\�d�I�S�d��*s���fU�6��tB]i�rT&,
%�1Y6��S�.�T�r�Sm#�5�d!ЪISX�w&U�T���As$<�­TWb�d�꭮�j�m�*(����*wA���U;�4�RЩ��ef��@���7�#�C�J荕��Ձ�uV\\�=�����T��*��;���R�m�V�k����4F0:T�	�-#TF����b�����oh(Gr��7:�ڂ恡���i�W}B�c\\-�egK��8���=������ʿⷰ�M��
_s�T����m>��;*uX�.�S��Ԋ��$�
�>T�Ot%�|�D&�B`��%Nxv��	#�f�S��|(I\'T%ܣ�Ч8t�	�BL²LD廊�>��=�O*s�	�I��Γ�@LjS[r,�����bU����t�.@/y\0܏	o<��ΒE�Js�߿`��Ž��P���ʜ���D�jF��:I\'D���%[�D	����-��\0k���S�<�/1&n�\"���\0��͢[�$����?t. \0�s���к!B`v��1�j� ��5K\"E͔y-t �si�ԍ#�kl~ �Ć}����17�k�F\\]���Tj
�lB�/i��T�K��a@���O�ES��s��.��d@��)��c/;��$BHw��e}An�i�ڦDE�����#q!#�t]rH�%gTѣKD�*��w�%�F��;H�]TѣEYG�w1�,���{�4$���T�d�9���҈�{�
���B�k����i*h\'�S�F�|�/���j���Ő��-�9�kΨ��?t��gTͶ�5	7����ۺ�L�*i�R���u��ȁ��BIftYj�f;h���nPP����!�A\'�;��\\at��u\0�#�VI��@�u}���-hn��%:�^��Ԫs��O����)��}��ρ���5~h��֚�H�\"�KZ,��H��,�0bЬ���y��w���k̏�Թ����N�h�)�\0�P�oy	ox��V��=����s�C�[�����,�G���\0���\0�[�\0�����mɤ���\'�d���V��Āb�n6��\"S2�t[)�D��1�P���4�i0�s���]�	�y}21���	خ�����$\0
���駿���A��h��5�|�n�[��=��ʒ� �/��=�]�a�1���~��Z���\\���^��ÀF�E��d��_�#��\"��\0�����q�\0�e|]]���K/��T�c$�Ԉ��0��|_Q�����K���O�u�t ɾ��L�1��
Tt<F�!u�
��A*�~�1e{A�
��{*���q��P�Ok��=��m ���d؂~�m���?8���0{H�}{���_{���Ȳ\'���y�\"k�ۺXt��t��K����4\0�(����1�H������YC\0wD�r�v����:5Y
���ਇ5��ʗ��k�fc�����$%DjeaM�MeO�+_����ƽ��X51ǽ��b���������k�A�DjeB�O�&1����vN�WH���,f�5��{�eHu���p�Gta�|�F�<)�}�v<5Q����̓Kj
�\"کh�u�*����d74�D\0����0h(�*	&�����B\\f��,ڔ�]�][Ik��>��o��y\\/�M�2$Z�*$���Gu�m#�uV�b�X@t\"�xAdw%,;��ǲf��Q�ޙ�*@��7���*��!KScn��5�8�r�}��(&�hﭐ��+k��r���0���>J̈́���+_ugM *\"�V`��M�`��j{e�j�N����m=�ANw�(�Yt{n�ĸ^o�Tj6*�D��WV*���
�
I
�u9��}����:ā<��,.;Y}W��xt�N�����!Q0�}5U��
����xD�h@��X�T�4B��\0H*v��DX^�X��
��͑A���e�k��3�&���~��u0=�4cM��U�@��P5�o�F��?qyV�͵K��a�<ꧻ:4�h�;���o�D���S�C�tA�D�?�Pwp%u��xYk����V���� ��ta�^�ڶ��+�?��Od���}�\"4�͌�F�i�涉A�������:��X{jL>S�:�Y��u�}BkL
q��
�33�<�X�����tŢ���U�CȀ�dS��c�,Q�T(���	7�M�9��?E���=�Xߕ�(|)>�+h�(�bl�!1�^Ҫ����u;����%�(*@�Y
`	�+��;��M��	�Q@\'���Ʒ
w�y]:(Aq�uM�>tE-��Z���E��*��-͢�h?U���`�Gj	�R�k��� �Ki�i�9��g�p�xRfҀ`�[d�*ɁvVI��}Չ����i��@��2��hSy�N�*L^&X�����S�\"@��\\�o�U6��P�E�{���eD�ۺ���i|�1eC[I�>n���2LvT�����[��`�Ve�N��H�[m��5M�Z��vT^}�H#x򣌞�QJ��Q$�(���HA2��@���\'��/v�U�7��-�_�8���M���
\\�ea�F��tj\\B���{%�n�ĝ�{(�/�eGSk �=��N���Eܦn����@7�n�8�o!M�q����`��I;*$s*iu�[��xRb7~�Y�1	��2����@]i�*.\0_�B�IR����>��B����B\\;�Ÿ�u����XO�9�5;���\'�07����I�*s�s�F��|�;.yv��s���
��|D�^�Ìk�zo-/����)
�䯨�_�_K�_��~H� �(�
��{R;�#I:+2O�\0I���Շ˛�굥�F�u�+$����(@���u���l��<��K����\'�#d5��\"�U
3f��J�p�� �ʵ� e��d�#�S�,uM&>JI��:Z;�!�\0�(�UweT@��K~�c�$Ǜ+c�0��T γ�(�R�
�{|�\\�Z\\)�;`~J�=̩�#���A���\0�!����c%q��bu�P���섻~k�j�_�$�
~���Z����MD͑(��f�vV�h�t�b���];YM\'��;»J\0o��Li?�%��L�ԅa�O�{���\0��Pɸ�_q)M3(���@ك��c�+o�J����.������<��
��b�c�����Ϊ�*́�2�)k*;(]fJ2�5|䘁uQc��V���9��̩<�?���d\\YV���6��A�Q���>\".a[�ib�YD��C���͈P�26T�>�zo�$���b;B��T>K7�8ȕs\'ߺ��\\�q��<������<�7��\'ir���{\0��q�tD�i�
�hcM���Dʳ�@���k~W_*\'R>h
[�\0������m�LB��F�
��*���Ϻ�耀����@Brn�6�v@T�����6�mq�h�
8�ʚ-�Sh�iR@��\0��[�Rd�
JSr�Oe\\�W�VQf�)#Y!M5�Q�M��R��`B
y%�\"�6To�B��	t4���s�&=Ø4ZPŻ-�@0���N7��
�!Q����(y@���P�Ø���rl�Ǖ��[ȝ4[�)ǔ�Ku�l��.�	���dHP�&׿��1��V��[�6��\\	���晴P��*�\0ɍP�b��B�7!N~Qm��Z�Qe�\05��;�)��d*0�:�ʴ\"l�Ե��q.��Ba9��O�/�x��q\'[�˧xB]:��){��Hiv�Ы�1$^?e9�Ԁ�Q9�7���Z�UH[���������=�.�y��TA\"�R�x��\0�m��ĩa�f�0�4�uK7ܦ5����D$Gm�k��e�^l5VZ�>��P{�{G�)�>�Dc���62=���hUw�P3qm�tv�M�.�gsu��e{G @�����Ŭ|�s��.�ˏeR�L�����EЋɶ�\\bo�B��o*�{�,Y|� sȍ%S�� L yetԋs�I� s���B�<�ܠ}�C䊅����s�K��y@��č,�Nh�P=֋AQ�������E��B_$�U�	���}wT����\0n��-�����`^�DrŒZ��]G��oenu�Kq�7�슕��%��ΒH�[�(:J�nD{�L�ΰ�;]��{~��Q�.\"��$�s�3��
:���_e�]WC��z�M&�8$���{vD�\\I�\'�cӚ�)kp
�l�t���o+��5���4~6\\]���y3�����C��o�R�STjc�1�f�/��<>_O���EhM���s�#���0�l�0 o�^��W�`�U4�OuM$��4?E ����XWj.b*����f&{�y�s����QP:i�7CTÀ1qXx.�!Yh��i�|�h�DO3��Z!���Ze*¹KD�!X7��E�eS.��,��0��rąRA�����(��\0@�P/����c���`����\'N�4�bU8A&T}�芚\\؅Ws�B���P�4A��
��4������F;�w/�\\ɍԙ��9���H�h�PBߢ��l���@:� ��c��/\'x��H� �@�t>�]K
c]��i�`B@��ҳXH��dw��_�G�1��,���d�>[:�-��1�\0L{,�2���3�[��o�eM�{�)�\0�o��~�a<׏�K��-��O��ӎ�VP6ĶQ6w�B����T���֓\'Q��X�\'U_��]�k	���`�#���K�mfI�(�n�)�5[dJ���B�N�P3Dn�h�����vS�w��~���:����6�V?�d-�\0�UI���A`?��;�)������B1�B���1S�m<�����	��	��۹B�s��>ʿ��\0�\'�7��\0��Gm���6������?�x���\0�A���ecT;������CW��d�� ��;���R�ݜj��� v��g�Uuo��@p�����
�� �yBm�D�P�Bkez���SYAm��F,w@���u����( ��aM���\0��� ���H�;�n��d���D(��C���v�����uoT�\0�Vr��m�wB�߬��l���e�
���~釴�-��cR������[Nײ���L���]���_Z�(�J��u+7�]���j
�n���F蠼��\0tG@����)�U��=���ACO�_\\�}Н���t]�U������.����h�3��F�T.�\0Z4@�����������f��7��*w�{�g�)�8�Blm�����X��D׷�X���UW��u\0ߴ5�d[�v�ت��t.��پ�j�\0$j�1ܠ���M?�%G�(�ʞ��
����)Vx�i�[�[�:�����J��� q�����WEcx�;��]�O�_��F��\\k���Ϻ]]g�	7�.���DcB��_ﺭ��������V5(G�M�M��O11~����T���5��	2|$�L��~��R��ʵ!UZ,&R\\O0kjߚK�\0P�\"�i-���]����`0|.��o����%�ȯ���\0�U�2�K���|�w�W�jB.I6]\'(�C��.��_��������}��M�b��^ŗ�?�h0-��^;�ꤽr��\0{?�E�������ߍ\\Hf���
����X��Y�	*ȴ���g�{5u?O�{���ʌ����\0U�>�@�ud�M�T��}�SѾ�T��.���r�3�Bu*�F�@��W-�\0UO�{!@f�(k!���Q��r��dnk�E��@@@N�>ʄG��\0����
INSERT INTO tbl_users VALUES("S139-886-833","M","Umer","Male","06/02/2022","House#57 St#2 Abdullah Chowk, New Lasani Town Sargodha Road, Faisalabad","umerm6921@gmail.com","03025701864","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S514-388-386","Rashid","Ali","Male","01/01/1994","Asd","rashidrasheed1125@gmail.com","03466912456","Biomedical","Civil Engineering Diploma 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S738-929-281","Arsam","Student","Male","06/02/2022","Taddress","arsam@gmail.com","3234323","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S739-434-648","Muniim","Student CS","Male","06/02/2022","Gulberg","munim@gmail.com","42432432","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("S880-800-739","Munim","Jutt","Male","06/04/2022","Sahiwal","munimmystudent@gmail.com","3232323","Computer Science","IT","e10adc3949ba59abbe56e057f20f883e","student","0","","1");
INSERT INTO tbl_users VALUES("T730-396-348","Ahmad","Teacher","Male","06/02/2022","Makkah","ahmadteacher@gamil.com","75656565","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");
INSERT INTO tbl_users VALUES("T804-593-153","Umer","Teacher","Male","06/09/2022","LAsani","teacher@gmail.com","43432423","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");
INSERT INTO tbl_users VALUES("T912-053-719","Ali","Teacher","Male","06/02/2022","Madina","ALiteacger@gmail.com","43432131","Computer Science","Computer Application 1","e10adc3949ba59abbe56e057f20f883e","teacher","0","","1");


