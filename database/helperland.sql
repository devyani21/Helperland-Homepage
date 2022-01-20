create database helperland;
use helperland;

create table users (
user_id int not null auto_increment primary key,
user_email varchar(50) not null,
user_password varchar(50) not null,
user_phone_no int(10) not null, 
user_type char(20) not null,
user_avatar blob,
user_status char(30) not null
);

create table customer (
customer_id int not null auto_increment primary key,
user_id int not null,
customer_first_name char(100) not null,
customer_last_name char(100) not null,
constraint foreign key (user_id) references users (user_id) on update cascade
);

create table service_provider (
service_provider_id int not null auto_increment primary key,
user_id int not null,
service_provider_first_name char(100) not null,
service_provider_last_name char(100) not null,
constraint foreign key (user_id) references users (user_id) on update cascade
);

create table address (
address_id int not null auto_increment primary key,
user_id int not null,
address_line1 varchar(100) not null,
address_line2 varchar(100),
city char(100) not null,
postal_code int not null,
state char(100) not null,
constraint foreign key (user_id) references users (user_id) on update cascade
);

create table service (
service_id int not null auto_increment primary key,
service_name char(100) not null,
service_type char(100) not null,
service_charge decimal not null
);

create table service_appointment (
appointment_id int not null auto_increment primary key,
customer_id int not null,
service_provider_id int not null,
service_id int not null,
appointment_date date not null,
appointment_total_time time not null,
appointment_status char(50) not null,
constraint foreign key (customer_id) references customer (customer_id) on update cascade,
constraint foreign key (service_provider_id) references service_provider (service_provider_id) on update cascade,
constraint foreign key (service_id) references service (service_id) on update cascade
);

create table billing (
bill_id int not null auto_increment primary key,
appointment_id int not null,
total_price decimal not null,
bill_status char(50) not null,
constraint foreign key (appointment_id) references service_appointment (appointment_id) on update cascade
);

create table rating (
rating_id int not null auto_increment primary key,
ratings int(5) ,
feedback varchar(500)
);

