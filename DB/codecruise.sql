create table courses(
id bigint primary key auto_increment,
name varchar(255),
description text,
course_banner varchar(255);
is_active boolean,
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp
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