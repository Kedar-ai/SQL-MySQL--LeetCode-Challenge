/*The Computer Store*/
use sql_exercise;

create table Manufacturers(
Code int primary key,
Name text not null);

create table Products(
Code int primary key,
Name text not null,
Price real not null,
Manufacturer int not null,
foreign key(Manufacturer) references Manufacturers(code)
);
/*desc Manufacturers;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| Code  | int  | NO   | PRI | NULL    |       |
| Name  | text | NO   |     | NULL    |       |
+-------+------+------+-----+---------+-------+

desc Products;
+--------------+--------+------+-----+---------+-------+
| Field        | Type   | Null | Key | Default | Extra |
+--------------+--------+------+-----+---------+-------+
| Code         | int    | NO   | PRI | NULL    |       |
| Name         | text   | NO   |     | NULL    |       |
| Price        | double | NO   |     | NULL    |       |
| Manufacturer | int    | NO   | MUL | NULL    |       |
+--------------+--------+------+-----+---------+-------+*/

INSERT INTO Manufacturers(Code,Name) 
VALUES(1,'Sony'),
(2,'Creative Labs'),
(3,'Hewlett-Packard'),
(4,'Iomega'),
(5,'Fujitsu'),
(6,'Winchester'),
(7,'Bose');

INSERT INTO Products(Code,Name,Price,Manufacturer) 
VALUES(1,'Hard drive',240,5),
(2,'Memory',120,6),
(3,'ZIP drive',150,4),
(4,'Floppy disk',5,6),
(5,'Monitor',240,1),
(6,'DVD drive',180,2),
(7,'CD drive',90,2),
(8,'Printer',270,3),
(9,'Toner cartridge',66,3),
(10,'DVD burner',180,2);

/*select * from Manufacturers;
+------+-----------------+
| Code | Name            |
+------+-----------------+
|    1 | Sony            |
|    2 | Creative Labs   |
|    3 | Hewlett-Packard |
|    4 | Iomega          |
|    5 | Fujitsu         |
|    6 | Winchester      |
|    7 | Bose            |
+------+-----------------+
select * from Products;
+------+-----------------+-------+--------------+
| Code | Name            | Price | Manufacturer |
+------+-----------------+-------+--------------+
|    1 | Hard drive      |   240 |            5 |
|    2 | Memory          |   120 |            6 |
|    3 | ZIP drive       |   150 |            4 |
|    4 | Floppy disk     |     5 |            6 |
|    5 | Monitor         |   240 |            1 |
|    6 | DVD drive       |   180 |            2 |
|    7 | CD drive        |    90 |            2 |
|    8 | Laser Printer   |   270 |            3 |
|    9 | Toner cartridge |    66 |            3 |
|   10 | DVD burner      |   180 |            2 |
|   11 | Loudspeakers    |    70 |            2 |
+------+-----------------+-------+--------------+*/
