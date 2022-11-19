--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null


create table employees ( 
  id serial primary key,
  employee_name Varchar(50) not null
  )
  
  select * from employees;
 
 --Наполнить таблицу employee 70 строками
  
 insert into employees(employee_name)
 values ('Keyt1'),
        ('Keyt2'),
        ('Keyt3'),
        ('Keyt4'),
        ('Keyt5'),
        ('Keyt6'),
        ('Keyt7'),
        ('Keyt8'),
        ('Keyt9'),
        ('Keyt10'),
        ('Keyt11'),
        ('Keyt12'),
        ('Keyt13'),
        ('Keyt14'),
        ('Keyt15'),
        ('Keyt16'),
        ('Keyt17'),
        ('Keyt18'),
        ('Keyt19'),
        ('Keyt20'),
        ('Keyt21'),
        ('Keyt22'),
        ('Keyt23'),
        ('Keyt24'),
        ('Keyt25'),
        ('Keyt26'),
        ('Keyt27'),
        ('Keyt28'),
        ('Keyt29'),
        ('Keyt30'),
        ('Keyt31'),
        ('Keyt32'),
        ('Keyt33'),
        ('Keyt34'),
        ('Keyt35'),
        ('Keyt36'),
        ('Keyt37'),
        ('Keyt38'),
        ('Keyt39'),
        ('Keyt40'),
        ('Keyt41'),
        ('Keyt42'),
        ('Keyt43'),
        ('Keyt44'),
        ('Keyt45'),
        ('Keyt46'),
        ('Keyt47'),
        ('Keyt48'),
        ('Keyt49'),
        ('Keyt50'),
        ('Keyt51'),
        ('Keyt52'),
        ('Keyt53'),
        ('Keyt54'),
        ('Keyt55'),
        ('Keyt56'),
        ('Keyt57'),
        ('Keyt58'),
        ('Keyt59'),
        ('Keyt60'),
        ('Keyt61'),
        ('Keyt62'),
        ('Keyt63'),
        ('Keyt64'),
        ('Keyt65'),
        ('Keyt66'),
        ('Keyt67'),
        ('Keyt68'),
        ('Keyt69'),
        ('Keyt70');
       
       select * from employees;
      
 --  Создать таблицу salary
-- id. Serial  primary key,
--monthly_salary. Int, not null

      
create table salary ( 
  id serial primary key,
  monthly_salary Int not null
);

--Наполнить таблицу salary 15 строками

insert into salary(monthly_salary)
 values (1000),
        (1100),
        (1200),
        (1300),
        (1400),
        (1500),
        (1600),
        (1700),
        (1800),
        (1900),
        (2000),
        (2100),
        (2200),
        (2300),
        (2400),
        (2500);
       
       select* from salary;
      
-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
--salary_id. Int, not null
     
create table employee_salary1 (
 id serial primary key,
 employee_id Int not null unique,
 salary_id Int not null
 );

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary1 (employee_id, salary_id)
 values (1,1),
        (2,3),
        (3,7),
        (49,8),
        (52,10),
        (76,4),
        (40,1),
        (95,5),
        (30,9),
        (25,7),
        (75,22),
        (44,6),
        (4,2),
        (80,4),
        (50,8),
        (5,24),
        (7,7),
        (99,12),
        (6,14),
        (21,16),
        (31,15),
        (47,9),
        (97,13),
        (37,14),
        (66,3),
        (17,18),
        (22,9),
        (87,17),
        (28,6),
        (78,9),
        (86,10),
        (20,4),
        (13,21),
        (29,35),
        (77,14),
        (19,28),
        (11,11),
        (9,8),
        (8,33),
        (33,67);
        
select * from employee_salary1;

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
 id serial primary key,
 role_name varchar(30) not null unique
 );
      
--Наполнить таблицу roles 20 строками:

 insert into roles (role_name)
 values ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java develope'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer');

  select * from roles ;   
  
 drop table roles_employee;

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table  roles_employee (
 id serial primary key,
 employee_id Int not null,
 role_id Int not null,
 foreign key (employee_id)
 references employees (id),
 foreign key (role_id)
 references roles (id)
 ); 
 select * from roles_employee;
 
--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (70,2),
       (3,1),
       (7,4),
       (9,3),
       (10,6),
       (4,5),
       (5,8),
       (7,7),
       (9,10),
       (6,11),
       (21,13),
       (31,12),
       (47,14),  
       (8,15),
       (6,17),
       (20,16),        
       (29,18),
       (7,19),
       (19,20),
       (11,9),
       (10,2),
       (17,1),
       (67,4),
       (69,3),
       (15,6),
       (44,5),
       (55,8),
       (43,7),
       (19,10),
       (36,11),
       (61,13),
       (21,12),
       (67,14),  
       (18,15),
       (36,17),
       (68,16),        
       (29,18),
       (17,19),
       (19,20),
       (10,9);