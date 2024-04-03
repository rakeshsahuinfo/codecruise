create table course_type(
id bigint primary key auto_increment,
name varchar(255),
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp
);

create table courses(
id bigint primary key auto_increment,
name varchar(255),
course_type_id bigint,
description text,
course_duration varchar(255),
class_schedule varchar(255),
delivery_mode varchar(255),
course_fee decimal(11,2),
current_discount decimal(15,2),
course_banner varchar(255);
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
foreign key(course_type_id) references course_type(id)
);

create table course_modules(
id bigint primary key auto_increment,
course_id bigint,
name varchar(255),
description longtext,
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
foreign key(course_id) references courses(id)
);

create table course_schedule(
id bigint primary key auto_increment,
course_id bigint,
name varchar(255),
description longtext,
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
foreign key(course_id) references courses(id)
);

create table tech_stacks(
id bigint primary key auto_increment,
name varchar(255),
tech_stack_logo varchar(255),
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp
);

create table course_tech_stack(
id bigint primary key auto_increment,
course_id bigint,
tech_stack_id bigint,
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
foreign key(course_id) references courses(id),
foreign key(tech_stack_id) references tech_stacks(id)
);

create table modules(
id bigint primary key auto_increment,
name varchar(255),
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp
);

create table topics(
id bigint primary key auto_increment,
name varchar(255),
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp
);

create table course_module_topics(
id bigint primary key auto_increment,
course_id bigint,
module_id bigint,
topic_id bigint,
name varchar(255),
no_of_leactures int,
no_of_hours decimal(10,2),
description text,
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp,
foreign key(course_id) references courses(id),
foreign key(module_id) references modules(id),
foreign key(topic_id) references topics(id)
);