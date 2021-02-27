create table students (
name text,
section varchar(1),
primary key (name));

create table courses (
course_name text,
day text check (day IN ('Early Week', 'Late Week')),
class_time text,
primary key (course_name, class_time));


create table takes (
name text,
course_name text,
day text,
class_time text,
primary key (name, course_name),
foreign key (name) references students,
foreign key (course_name) references courses,
foreign key (day) references courses,
foreign key (class_time) references courses);

