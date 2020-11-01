-- EXERCISE 1

-- creates Teachers' table
create table Teachers(
	teacher_ID int(221) not null PRIMARY KEY AUTO_INCREMENT,
    teacher_Firstname varchar(256) not null,
    teacher_Lastname varchar(256) not null,
    teacher_gender varchar(99) not null,
    teacher_subject varchar(256) not null
);

-- creates Pupils' table
create table Pupils(
	pupil_ID int(221) not null PRIMARY KEY AUTO_INCREMENT,
    pupil_Firstname varchar(256) not null,
    pupil_Lastname varchar(256) not null,
    pupil_gender varchar(99) not null,
    pupil_class varchar(256) not null
);

-- this table helps to organize lessons with pupils
create table Schedule_of_lessons(
	lesson_ID int(221) not null PRIMARY KEY AUTO_INCREMENT,
    lesson_name varchar(256) not null,
    lesson_teacher varchar(256) not null,
    lesson_class varchar(256) not null
);

-- inserting teachers' info in teachers' table
INSERT INTO teachers(teacher_Firstname,teacher_Lastname,teacher_gender,teacher_subject) VALUES ('Nana','nanashvili','female','English');
INSERT INTO teachers(teacher_Firstname,teacher_Lastname,teacher_gender,teacher_subject) VALUES ('Levan','levanishvili','male','Sport');
INSERT INTO teachers(teacher_Firstname,teacher_Lastname,teacher_gender,teacher_subject) VALUES ('Merab','merabishvili','male','English');

-- inserting pupils' info in pupils' table
INSERT INTO pupils (pupil_Firstname,pupil_Lastname,pupil_gender,pupil_class) VALUES ('Giorgi','giorgishvili','male','C#3');
INSERT INTO pupils (pupil_Firstname,pupil_Lastname,pupil_gender,pupil_class) VALUES ('Nika','nikashvili','male','C#4');
INSERT INTO pupils (pupil_Firstname,pupil_Lastname,pupil_gender,pupil_class) VALUES ('Nini','ninishvili','female','C#3');

-- inserting lessons info
INSERT INTO schedule_of_lessons (lesson_name,lesson_teacher,lesson_class) VALUES ('English','Nana','C#3');
INSERT INTO schedule_of_lessons (lesson_name,lesson_teacher,lesson_class) VALUES ('Sport','Levan','C#3');
INSERT INTO schedule_of_lessons (lesson_name,lesson_teacher,lesson_class) VALUES ('English','Merab','C#4');

-- EXERCISE 2
-- selects teachers of giorgi
SELECT lesson_teacher from schedule_of_lessons WHERE lesson_class = 'C#3';
