Create Table  if not exists `student`(

	`student_Id` VARCHAR(6) NOT NULL,
    `student_name` VARCHAR(50) NOT NULL,
    `degree_scheme` VARCHAR(30) NOT NULL,
    
    PRIMARY KEY (`student_Id`));

Create Table if not exists  `module`(

	`module_Id` VARCHAR(6) NOT NULL,
    `module_name` VARCHAR(30) NOT NULL,
    `credits` INT(2) NOT NULL,
    
PRIMARY KEY(`module_Id`));

Create Table if not exists `staff`(

	`staff_Id` VARCHAR(6) NOT NULL,
    `staff_name` VARCHAR(20) NOT NULL,
    `grade` VARCHAR(25) NOT NULL,

PRIMARY KEY(`staff_Id`));


Create Table if not exists `registered`(

	`student_Id` VARCHAR(6) NOT NULL,
    `module_Id`  VARCHAR(6) NOT NULL,
    
PRIMARY KEY(`student_Id`, `module_Id`),
	
CONSTRAINT `fk_registered_student`
	foreign key(`student_Id`) references `student`(`student_Id`)
	ON DELETE CASCADE,
CONSTRAINT `fk_registered_module`
	foreign key(`module_Id`) references `module` (`module_Id`)
	ON DELETE CASCADE);
    
    
Create Table if not exists `teaches`(
	
    `staff_Id` VARCHAR(6)NOT NULL,
    `module_Id` VARCHAR(6)NOT NULL,
    
PRIMARY KEY(`staff_Id`, `module_Id`),
CONSTRAINT `fk_teaches_staff`
	foreign key(`staff_Id`) references `staff` (`staff_Id`)
	ON DELETE CASCADE,
CONSTRAINT `fk_teaches_module`
	foreign key(`module_Id`) references `module` (`module_Id`)
	ON DELETE CASCADE);