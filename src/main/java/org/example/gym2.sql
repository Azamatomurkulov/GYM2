CREATE TABLE public.type_of_sport
(
    id integer NOT NULL,
    name_of_sport character varying,
    salary integer,
    PRIMARY KEY (id)
);

CREATE TABLE public.coaches
(
    id integer NOT NULL,
    coach_name character varying NOT NULL,
    id_type_of_sport integer NOT NULL,
    phone character varying,
    personal_number character varying NOT NULL,
    PRIMARY KEY (id)
);

alter table coaches
    add unique (personal_number);

alter table coaches
    add foreign key (id_type_of_sport)
        references type_of_sport (id);

insert into type_of_sport (id, name_of_sport, salary)
values (1,'swimming',3500);

insert into type_of_sport (id, name_of_sport, salary)
values (2,'basket-ball',4500);


insert into type_of_sport (id, name_of_sport, salary)
values (3,'JUDO',5000);

insert into type_of_sport (id, name_of_sport, salary)
values (4,'FOOT-BALL',6000);

insert into type_of_sport (id, name_of_sport, salary)
values (5,'DANCE',300);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (1,'Jimmy Wong',1,'543757',52);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (2,'Edwin Marks',2,'543987',12);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (3,'Cason Wids',4,'432987',9);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (4,'Caden Tyler',5,'876432',90);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (5,'Bruce Lee',3,'764215',198);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (6,'Gerald Stephens',1,'764215',7623);

insert into coaches (id, coach_name, id_type_of_sport, phone, personal_number)
values (7,'Alistair Mitchel',2,'765321',59);

select public.type_of_sport.salary, coaches.coach_name
from coaches
         join type_of_sport on coaches.id_type_of_sport = type_of_sport.id
where salary>500;

select * from coaches
where coach_name like '%a%';

select * from type_of_sport
where name_of_sport like '%BALL';

select public.type_of_sport.salary, coaches.coach_name
from coaches
         join type_of_sport on coaches.id_type_of_sport = type_of_sport.id
order by salary desc;

select * from coaches
order by coach_name;

update coaches
set coach_name = 'Карло Анчелоти' where id = 1;

update type_of_sport
set salary = salary * 2;

delete from coaches
where coach_name = 'Bruce Lee';