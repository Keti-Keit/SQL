create table employees ( 
  id serial primary key,
  employee_name Varchar(50) not null
  )
  
  select * from employees;
  
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
      
      
create table salary ( 
  id serial primary key,
  monthly_salary Int not null
)

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
      
      
create table employee_salary1 (
 id serial primary key,
 employee_id Int not null unique,
 salary_id Int not null
 );

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

create table roles (
 id serial primary key,
 role_name varchar(30) not null unique
 );
      
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
       (11,9);
select * from roles_employee;

 create table phones_apple (
 id serial primary key,
 model varchar (40),
 ram int not null,
 front_camera int,
 price int
 );

insert into phones_apple (model, ram, front_camera, price)
values ('X', 4, 8, 400),
       ('11', 6, 10, 700),
       ('12', 8, 12, 1000),
       ('7', 4, 12, 400),
       ('XR', 6, 12, 800),
       ('XS', 6, 12, 1000),
       ('13', 6, 12, 1500),
       ('8', 4, 10, 700),
       ('SE2020', 6, 8, 700),
       ('X65', 6, 10, 350),
       ('X75', 8, 10, 450),
       ('X85', 4, 16, 550),
       ('X95', 12, 10, 650),
       ('X105', 8, 12,760),
       ('X115', 6, 10, 820)
       ;
       
 create table phones_samsung(
  id serial primary key,
  model varchar(40),
  ram int not null,
  front_camera int,
  price int
  );
    
 
insert into phones_samsung (model, ram, front_camera, price) 
values ('A50', 6, 10, 300),
       ('A50', 8, 16, 400),
       ('A52', 8, 16, 500),
       ('S20', 8, 24, 1500),
       ('S21', 8, 12, 1000),
       ('S22', 6, 12, 1200),
       ('A71', 6, 12, 1200),
       ('A91', 4, 12, 1900),
       ('A57', 8, 8, 900),
       ('A32', 8, 4, 800),
       ('A33', 8, 5, 750),
       ('A43', 8, 5, 850)
       ;
      
insert into phones_samsung (model, ram, front_camera, price) 
values ('A65', 6, 10, 350),
       ('A75', 8, 10, 450),
       ('A85', 4, 16, 550),
       ('A95', 12, 10, 650),
       ('A105', 8, 12, 760),
       ('A115', 6, 10, 820)
 ;

create table samsung_orders(
id serial primary key,
phone_id int
);

insert into samsung_orders(phone_id)
values (2),
       (1),
       (5);
      
create table apple_orders(
id serial primary key,
phone_id int
);     

insert into apple_orders(phone_id)
values (3),
       (9),
       (5),
       (1),
       (4);
   
select * from samsung_orders;
select * from apple_orders;
select * from phones_apple;
select * from phones_samsung;

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name ,
salary.monthly_salary 
from employees join employee_salary1
on employee_id = employee_id
join salary
on salary_id = salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select e.employee_name, s.monthly_salary from employees e
join employee_salary1 es on e.id = es.employee_id
join salary s on s.id = es.salary_id
where s.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)


select employee_id, monthly_salary from employees e 
right join employee_salary1 es on e.id = es.employee_id 
join salary s on es.salary_id = s.id 
where employee_name is null;

--4 Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary 
from salary left join employee_salary1
on salary.id = employee_salary1.salary_id
left join employees 
on employees.id = employee_salary1.employee_id
where employees.id is null and salary.monthly_salary < 2000;


--5. Найти всех работников кому не начислена ЗП.

select e.employee_name, s.monthly_salary from employees e
left join employee_salary1 es on employee_id = e.id
left join salary s on salary_id = s.id
where salary_id is null;

--6. Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles r on r.id = re.role_id;

--7. Вывести имена и должность только Java разработчиков.

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Java developer%';

--8. Вывести имена и должность только Python разработчиков

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Python developer%';

--9. Вывести имена и должность всех QA инженеров.

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles r on r.id = re.role_id
where r.role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles3 r on r.id = re.role_id
where r.role_name like '%Manual%';

--11. Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name from employees e
join roles_employee re on re.employee_id  = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Automation%';

--12. Вывести имена и зарплаты Junior специалистов

select e.employee_name,r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов

select e.employee_name,r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов

select e.employee_name,r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков

select r.role_name, s.monthly_salary from salary s
join employee_salary1 es on es.employee_id = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Java developer%';

--16. Вывести зарплаты Python разработчиков

select r.role_name, s.monthly_salary from salary s
join employee_salary1 es on es.employee_id = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Middle JavaScript%';


--19. Вывести имена и зарплаты Senior Java разработчиков

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Senior Java%';

--20. Вывести зарплаты Junior QA инженеров

select s.monthly_salary from salary s
join employee_salary1 es on es.employee_id = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior QA%';

--21. Вывести среднюю зарплату всех Junior специалистов

select avg(s.monthly_salary) from salary s
join employee_salary1 es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков

select sum(s.monthly_salary) from salary s
join employee_salary1 es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%JavaScript developer%';

--23. Вывести минимальную ЗП QA инженеров

select min(s.monthly_salary) from salary s
join employee_salary1 es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

select max(s.monthly_salary) from salary s
join employee_salary1 es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%QA%';

--25. Вывести количество QA инженеров

select count(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like '%QA%';

--26. Вывести количество Middle специалистов.

select count(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like '%Middle%';

--27. Вывести количество разработчиков

select count(role_name) from roles r
join roles_employee re on r.id = re.role_id 
where r.role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(s.monthly_salary) from salary s
join employee_salary1 es on es.salary_id  = s.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
order by s.monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where s.monthly_salary < 2300
order by s.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary from employees e
join employee_salary1 es on es.employee_id = e.id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;








