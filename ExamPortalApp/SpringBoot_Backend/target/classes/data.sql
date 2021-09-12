INSERT INTO `exam`.`users` (`id`, `email`, `enabled`, `first_name`, `password`, `username`)
 VALUES (0, 'admin@examportal.edu', 1, 'admin', '$2a$12$okP1zv5qxKVJqyurIUOKuehpM05plmU9EKTsQRyLYhIc.HUkNBMj2', 'admin');

INSERT INTO `exam`.`roles` (`role_id`, `role_name`) VALUES (35, 'ADMIN');

INSERT INTO `exam`.`user_role` (`user_role_id`, `role_role_id`, `user_id`) VALUES (3, 35, 0);

INSERT INTO `exam`.`users` (`id`, `email`, `enabled`, `first_name`, `password`, `username`)
 VALUES (1, 'student@examportal.edu', 1, 'student', '$2a$12$1f3hbL2Q3RwBjcSMh5XW3ePU6wuVzq/VXq9reiHMHIQpkPLfHKwpO', 'student');

INSERT INTO `exam`.`roles` (`role_id`, `role_name`) VALUES (45, 'NORMAL');

INSERT INTO `exam`.`user_role` (`user_role_id`, `role_role_id`, `user_id`) VALUES (2, 45, 1);

INSERT INTO  exam.category(`cid`,`description`,`title`) VALUES (1,'Web related technologies quiz like html, css etc','Web Technology');
INSERT INTO exam.category(`cid`,`description`,`title`) VALUES (2,'Server related technologies like java, php etc','Server Side Technology');

INSERT INTO `exam`.`quiz` (`qid`,`active`,`description`,`max_marks`,`number_of_questions`,`title`,`category_cid`) VALUES (3,1,'HTML is the standard markup language for Web pages.\n\nWith HTML you can create your own Website.\n\nHTML is easy to learn - You will enjoy it!','100','10','HTML Quiz',1);
INSERT INTO `exam`.`quiz` (`qid`,`active`,`description`,`max_marks`,`number_of_questions`,`title`,`category_cid`) VALUES (4,1,'Java is a programming language.\n\nJava is used to develop mobile apps, web apps, desktop apps, games and much more.','50','5','JAVA Quiz',2);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (6,'Hyper Text Markup Language','<h2>What does HTML stand for?</h2>',NULL,'Hyper Text Markup Language','Home Tool Markup Language','Hyperlinks and Text Markup Language','Home tool mark language',3);
INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (7,'W3C','<h3><strong>Who is making the Web standards?</strong></h3>',NULL,'Google','Microsoft','Mozilla','W3C',3);
INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (8,'<h1>','<h3>Choose the correct HTML element for the largest heading:</h3>',NULL,'<head>','<h1>','<h6>','<heading>',3);
INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (9,'<br>','<p>What is the correct HTML element for inserting a line break?</p>',NULL,'<br>','<b>','<break>','<line>',3);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (10,'<a href=http://www.examveda.com> examveda.com</a>','<h3>What is the correct HTML for creating a hyperlink?</h3>',NULL,'<a>http://www.examveda.com</a>','<a name=”http://www.examveda.com”> examveda.com</a>','<a url=”http://www.examveda.com> examveda.com</a>','<a href=http://www.examveda.com> examveda.com</a>',3);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (1,'/','<h3>Which character is used to indicate an end tag?</h3>',NULL,'<','^','/','\\',3);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (3,'<title>','<h3>Which HTML element defines the title of a document?</h3>',NULL,'<head>','<meta>','<title>','<page>',3);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (4,'<alt>','<h3>Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?</h3>',NULL,'<src>','<title>','<alt>','<text>',3);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (5,'<required>','<h3>In HTML, which attribute is used to specify that an input field must be filled out?</h3>',NULL,'<required>','<form>','<validate>','<placeholder>',3);


INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (11,'System.out.println(\"Hello World\");','<h2><strong>What is a correct syntax to output \"Hello World\" in Java?</strong></h2>',NULL,'print (\"Hello World\");','Console.WriteLine(\"Hello World\");','System.out.println(\"Hello World\");','echo(\"Hello World\");',4);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (12,'//','<h3>How do you insert COMMENTS in Java code?</h3>',NULL,'--','#','\\','//',4);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (13,'<String>','<h3>Which data type is used to create a variable that should store text?</h3>',NULL,'Str','string','String','varchar',4);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (14,'length()','<h3>Which method can be used to find the length of a string?</h3>',NULL,'len()','getLength()','length()','size()',4);

INSERT INTO `exam`.`question` (`ques_id`,`answer`,`content`,`image`,`option1`,`option2`,`option3`,`option4`,`quiz_qid`) VALUES (15,'==','<h3>Which operator can be used to compare two integer values?</h3>',NULL,'=','==','equals()','<>',4);

