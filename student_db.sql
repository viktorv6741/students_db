create database students_db;

create table student(
    id int not null auto_increment,
    name varchar(30) not null,
    surname varchar(30) not null,
    age int not null,
    course varchar(30) not null,
    phone_number int,
    email varchar(30),
    primary key(id)
    );

create table subject(
    id int not null auto_increment,
    name varchar(30) not null,
    primary key(id)
    );

create table journal(
    id int not null auto_increment,
    mark int not null,
    primary key(id),
    student_id int not null,
    foreign key(student_id) references student(id)
    on delete cascade on update cascade,
    subject_id int not null,
    foreign key(subject_id) references subject(id)
    on delete cascade on update cascade
    );
