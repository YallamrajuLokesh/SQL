Create table Employee(
  Fname Varchar[20],
  Lname Varchar[20],
  SSN Int Not Null,
  Addrs Varchar[25],
  Sex Varchar[20],
  Salary Float,
  SuperSSN Int,
  Dno Int,
   PRIMARY KEY (SSN),
    FOREIGN KEY (Dno) REFERENCES Department(Dnumber) on update cascade on delete cascade
  
  );
  
create table Department(
    Dname varchar[20],
    Dnumber int primary key not null ,
    MGRSSN int,
    MgrStartDate date);
    
    
    
    create table Dependent(
      Dno int  not null,
      ESSN int not null,
        FOREIGN KEY (Dno) REFERENCES Department(Dnumber) on update cascade on delete cascade,
        FOREIGN KEY (ESSN) REFERENCES Employee(SSN) on update cascade on delete cascade 
      );



Insert into  Department values("cse",1,12,'12-07-2004'),
      ("ise",2,13,'12-09-2003');

Insert into  Employee values
     ("yallamraju","lokesh",1,"yelahanka","male",30000,1,1),
     ("uthkarsh","pratap singh",2,"sahakar","male",40000,2,1),
     ("iron","man",3,"bangalore","female",50000,3,2),
     ("loki","odinson",4,"mg road","female",60000,4,2),("odinson","thor",5,"majestic","male",70000,5,2);*/
     
      create table Dependent(
      Dno int  not null,
      ESSN int not null,
        FOREIGN KEY (Dno) REFERENCES Department(Dnumber) on update cascade on delete cascade,
        FOREIGN KEY (ESSN) REFERENCES Employee(SSN) on update cascade on delete cascade 
      )
      
    
     Insert into Dependent values
     (1,1),
     (2,4);