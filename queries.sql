select *
from `module`;

select *
from `teaches`;

select *
from `student`;

select *
from `registered`;

select *
from `staff`;

delete from `student`
where `student_Id` = '4665';

show warnings;
 -- first cartesian join -- 
 
select teaches.module_Id, module.module_name
from teaches
inner join module 
on teaches.module_Id = module.module_Id
where staff_Id = (select `staff_id` from `staff` where `staff_name` = 'Alan Turing');

-- second join -- 

select registered.student_Id, student.student_name
from registered
inner join student
on registered.student_Id = student.student_Id
where module_Id IN (select `module_Id` from `module` where `module_name` = 'Computer Architecture');

-- third join -- 

select `r`.`module_Id`, `t`.`staff_Id`, `st`.`staff_name`
from `registered` `r`
inner join `teaches` `t`
	on `r`.`module_Id` = `t`.`module_Id`
inner join `staff` `st`
	on `t`.`staff_Id` = `st`.`staff_Id`
where `student_id` IN (select `student_iD` from `student` where `student_name` = 'Sian Evans');

-- fourth join who teach more than one module-- 

select teaches.staff_Id, staff.staff_name
from `teaches`
inner join staff
on teaches.staff_Id = staff.staff_Id
group by `staff_Id`
having count(staff.staff_Id) > 1;
