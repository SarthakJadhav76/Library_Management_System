use library;

select * from branch;
select * from book;
select * from employee;
select * from member;
select * from issue_status;
select * from return_status;


--1.Retrieve the book title, category, and rental price of all available books.

Query:
mysql> select book_title, category, rental_price from book;

Answer:
+-------------------------------------------------------+------------------+--------------+
| book_title                                            | category         | rental_price |
+-------------------------------------------------------+------------------+--------------+
| Where the Wild Things Are                             | Children         |         3.50 |
| To Kill a Mockingbird                                 | Classic          |         5.00 |
| The Kite Runner                                       | Fiction          |         5.50 |
| Charlottes Web                                        | Children         |         4.00 |
| A Game of Thrones                                     | Fantasy          |         7.50 |
| A Tale of Two Cities                                  | Classic          |         4.50 |
| The Histories                                         | History          |         5.50 |
| One Hundred Years of Solitude                         | Literary Fiction |         6.50 |
| Pride and Prejudice                                   | Classic          |         5.00 |
| Jane Eyre                                             | Classic          |         4.00 |
| The Guns of August                                    | History          |         7.00 |
| The Alchemist                                         | Fiction          |         2.50 |
| Sapiens: A Brief History of Humankind                 | History          |         8.00 |
| Animal Farm                                           | Classic          |         5.50 |
| Dune                                                  | Science Fiction  |         8.50 |
| The Diary of a Young Girl                             | History          |         6.50 |
| The Road                                              | Dystopian        |         7.00 |
| The Shining                                           | Horror           |         6.00 |
| A Peoples History of the United States                | History          |         9.00 |
| Guns, Germs, and Steel: The Fates of Human Societies  | History          |         7.00 |
| Harry Potter and the Chamber of Secrets               | Fantasy          |         6.50 |
| Harry Potter and the Prisoner of Azkaban              | Fantasy          |         6.50 |
| Children of Dune                                      | Science Fiction  |         8.00 |
| Fahrenheit 451                                        | Dystopian        |         5.50 |
| Moby Dick                                             | Classic          |         6.50 |
| Brave New World                                       | Dystopian        |         6.50 |
| The Great Gatsby                                      | Classic          |         8.00 |
| Dune Messiah                                          | Science Fiction  |         8.00 |
| The Catcher in the Rye                                | Classic          |         7.00 |
| 1984                                                  | Dystopian        |         6.50 |
| A Clash of Kings                                      | Fantasy          |         7.50 |
| A Storm of Swords                                     | Fantasy          |         8.00 |
| The Fellowship of the Ring                            | Fantasy          |         7.00 |
| The Two Towers                                        | Fantasy          |         7.00 |
| The Return of the King                                | Fantasy          |         7.00 |
| The Road                                              | Dystopian        |         7.00 |
| 1984                                                  | Dystopian        |         6.50 |
| Harry Potter and the Sorcerers Stone                  | Fantasy          |         7.00 |
| Beloved                                               | Fiction          |         6.50 |
| The Da Vinci Code                                     | Mystery          |         8.00 |
| Angels & Demons                                       | Mystery          |         7.50 |
| The Hobbit                                            | Fantasy          |         7.00 |
| 1491: New Revelations of the Americas Before Columbus | History          |         6.50 |
| The Stand                                             | Horror           |         7.00 |
| Foundation                                            | Science Fiction  |         6.50 |
+-------------------------------------------------------+------------------+--------------+
45 rows in set (0.00 sec)


--2.List the employee names and their respective salaries in descending order of salary.

Query:
mysql> select ename, salary from employee order by salary desc;

Answer:
+------------------+--------+
| ename            | salary |
+------------------+--------+
| Christopher Lee  |  65000 |
| Michael Thompson |  62000 |
| John Doe         |  60000 |
| Daniel Anderson  |  57000 |
| Mike Johnson     |  55000 |
| Natalie Walker   |  54000 |
| David Kim        |  48000 |
| Jessica Taylor   |  46000 |
| Jane Smith       |  45000 |
| Michelle Ramirez |  43000 |
| Sarah Brown      |  42000 |
| Laura Martinez   |  41000 |
| Emily Davis      |  40000 |
| Priya Mehra      |  39000 |
+------------------+--------+
14 rows in set (0.01 sec)


--3.Retrieve the book titles and the corresponding customers who have issued those books.

Query:
mysql> select b.book_title, m.member_name from issue_status i join book b on i.issued_book_isbn = b.isbn join member m on i.issued_member_id = m.member_id;

Answer:
+-------------------------------------------------------+----------------+
| book_title                                            | member_name    |
+-------------------------------------------------------+----------------+
| Animal Farm                                           | Frank Thomas   |
| One Hundred Years of Solitude                         | Grace Taylor   |
| The Great Gatsby                                      | Henry Anderson |
| Jane Eyre                                             | Ivy Martinez   |
| The Alchemist                                         | Jack Wilson    |
| Harry Potter and the Sorcerers Stone                  | Ivy Martinez   |
| A Game of Thrones                                     | Ivy Martinez   |
| A Peoples History of the United States                | Ivy Martinez   |
| The Guns of August                                    | Ivy Martinez   |
| The Histories                                         | Ivy Martinez   |
| Guns, Germs, and Steel: The Fates of Human Societies  | Jack Wilson    |
| 1984                                                  | Jack Wilson    |
| Pride and Prejudice                                   | Alice Johnson  |
| Brave New World                                       | Jack Wilson    |
| The Road                                              | Jack Wilson    |
| The Shining                                           | Bob Smith      |
| Fahrenheit 451                                        | Bob Smith      |
| Dune                                                  | Carol Davis    |
| Where the Wild Things Are                             | Dave Wilson    |
| The Kite Runner                                       | Eve Brown      |
| Charlottes Web                                        | Eve Brown      |
| Beloved                                               | Eve Brown      |
| A Tale of Two Cities                                  | Eve Brown      |
| The Stand                                             | Eve Brown      |
| Moby Dick                                             | Frank Thomas   |
| To Kill a Mockingbird                                 | Frank Thomas   |
| The Hobbit                                            | Frank Thomas   |
| Angels & Demons                                       | Grace Taylor   |
| The Diary of a Young Girl                             | Grace Taylor   |
| Sapiens: A Brief History of Humankind                 | Grace Taylor   |
| 1491: New Revelations of the Americas Before Columbus | Grace Taylor   |
| The Catcher in the Rye                                | Grace Taylor   |
| The Great Gatsby                                      | Henry Anderson |
| Harry Potter and the Sorcerers Stone                  | Ivy Martinez   |
| Animal Farm                                           | Jack Wilson    |
| Pride and Prejudice                                   | Ivy Martinez   |
| The Hobbit                                            | Henry Anderson |
| Guns, Germs, and Steel: The Fates of Human Societies  | Ivy Martinez   |
| The Stand                                             | Dave Wilson    |
| The Kite Runner                                       | Grace Taylor   |
| To Kill a Mockingbird                                 | Grace Taylor   |
| A Tale of Two Cities                                  | Eve Brown      |
| Dune                                                  | Henry Anderson |
| A Tale of Two Cities                                  | Alice Johnson  |
| The Stand                                             | Ivy Martinez   |
+-------------------------------------------------------+----------------+
45 rows in set (0.03 sec)


--4.Display the total count of books in each category.

Query:
mysql> select category, count(*) from book group by category;

Answer:
+------------------+----------+
| category         | count(*) |
+------------------+----------+
| Children         |        2 |
| Classic          |        8 |
| Fiction          |        3 |
| Fantasy          |       10 |
| History          |        7 |
| Literary Fiction |        1 |
| Science Fiction  |        4 |
| Dystopian        |        6 |
| Horror           |        2 |
| Mystery          |        2 |
+------------------+----------+
10 rows in set (0.00 sec)


--5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

Query:
mysql> select ename, position, salary from employee where salary > 50000;

Answer:
+------------------+-----------+--------+
| ename            | position  | salary |
+------------------+-----------+--------+
| John Doe         | Clerk     |  60000 |
| Mike Johnson     | Librarian |  55000 |
| Michael Thompson | Clerk     |  62000 |
| Daniel Anderson  | Manager   |  57000 |
| Christopher Lee  | Assistant |  65000 |
| Natalie Walker   | Librarian |  54000 |
+------------------+-----------+--------+
6 rows in set (0.00 sec)


--6.List the customer names who registered before 2022-01-01 and have not issued any books yet.

Query:
mysql> select member_name, reg_date from member m left join issue_status i on m.member_id = i.issued_member_id where reg_date < '2022-01-01' and issued_id is null;

Answer:
Empty set (0.00 sec)


--7.Display the branch numbers and the total count of employees in each branch.

Query:
mysql> select b.branch_id, count(e.emp_id) from branch b join employee e on b.branch_id = e.branch_id group by b.branch_id;

Answer:
+-----------+-----------------+
| branch_id | count(e.emp_id) |
+-----------+-----------------+
| B001      |               5 |
| B002      |               1 |
| B003      |               1 |
| B004      |               1 |
| B005      |               3 |
| B006      |               1 |
| B007      |               1 |
| B008      |               1 |
+-----------+-----------------+
8 rows in set (0.01 sec)


--8.Display the names of customers who have issued books in the month of April 2024.

Query:
mysql> select m.member_name, b.book_title, i.issued_date from member m join issue_status i on m.member_id = i.issued_member_id join book b on i.issued_book_isbn = b.isbn where monthname(i.issued_date) = 'APRIL' and year(i.issued_date) = 2024;

Answer:
+----------------+-------------------------------------------------------+-------------+
| member_name    | book_title                                            | issued_date |
+----------------+-------------------------------------------------------+-------------+
| Eve Brown      | A Tale of Two Cities                                  | 2024-04-01  |
| Eve Brown      | The Stand                                             | 2024-04-02  |
| Frank Thomas   | Moby Dick                                             | 2024-04-03  |
| Frank Thomas   | To Kill a Mockingbird                                 | 2024-04-04  |
| Frank Thomas   | The Hobbit                                            | 2024-04-05  |
| Grace Taylor   | Angels & Demons                                       | 2024-04-06  |
| Grace Taylor   | The Diary of a Young Girl                             | 2024-04-07  |
| Grace Taylor   | Sapiens: A Brief History of Humankind                 | 2024-04-08  |
| Grace Taylor   | 1491: New Revelations of the Americas Before Columbus | 2024-04-09  |
| Grace Taylor   | The Catcher in the Rye                                | 2024-04-10  |
| Henry Anderson | The Great Gatsby                                      | 2024-04-11  |
| Ivy Martinez   | Harry Potter and the Sorcerers Stone                  | 2024-04-12  |
| Jack Wilson    | Animal Farm                                           | 2024-04-13  |
| Ivy Martinez   | Pride and Prejudice                                   | 2024-04-14  |
| Henry Anderson | The Hobbit                                            | 2024-04-15  |
| Ivy Martinez   | Guns, Germs, and Steel: The Fates of Human Societies  | 2024-04-16  |
| Dave Wilson    | The Stand                                             | 2024-04-17  |
| Grace Taylor   | The Kite Runner                                       | 2024-04-18  |
| Grace Taylor   | To Kill a Mockingbird                                 | 2024-04-19  |
| Eve Brown      | A Tale of Two Cities                                  | 2024-04-20  |
| Henry Anderson | Dune                                                  | 2024-04-21  |
| Alice Johnson  | A Tale of Two Cities                                  | 2024-04-22  |
| Ivy Martinez   | The Stand                                             | 2024-04-23  |
+----------------+-------------------------------------------------------+-------------+
23 rows in set (0.00 sec)


--9.Retrieve book titles from the book table containing the category "history".

Query:
mysql> select isbn, book_title, category from book where category = 'History';

Answer:
+-------------------+-------------------------------------------------------+----------+
| isbn              | book_title                                            | category |
+-------------------+-------------------------------------------------------+----------+
| 978-0-14-044930-3 | The Histories                                         | History  |
| 978-0-19-280551-1 | The Guns of August                                    | History  |
| 978-0-307-58837-1 | Sapiens: A Brief History of Humankind                 | History  |
| 978-0-375-41398-8 | The Diary of a Young Girl                             | History  |
| 978-0-393-05081-8 | A Peoples History of the United States                | History  |
| 978-0-393-91257-8 | Guns, Germs, and Steel: The Fates of Human Societies  | History  |
| 978-0-7432-7357-1 | 1491: New Revelations of the Americas Before Columbus | History  |
+-------------------+-------------------------------------------------------+----------+
7 rows in set (0.00 sec)


--10.Retrieve the branch numbers along with the count of employees for branches having more than 2 employees.

Query:
mysql> select b.branch_id, count(e.ename) as Number_Of_Employees from branch b join employee e on b.branch_id = e.branch_id group by b.branch_id having count(*) > 2;

Answer:
+-----------+---------------------+
| branch_id | Number_Of_Employees |
+-----------+---------------------+
| B001      |                   5 |
| B005      |                   3 |
+-----------+---------------------+
2 rows in set (0.00 sec)



--11. List all books that have never been issued.

Query:
mysql> select b.book_title, i.issued_book_isbn from book b left join issue_status i on b.isbn = i.issued_book_isbn where i.issued_book_isbn is null;

Answer:
+------------------------------------------+------------------+
| book_title                               | issued_book_isbn |
+------------------------------------------+------------------+
| The Road                                 | NULL             |
| Harry Potter and the Chamber of Secrets  | NULL             |
| Harry Potter and the Prisoner of Azkaban | NULL             |
| Children of Dune                         | NULL             |
| Dune Messiah                             | NULL             |
| 1984                                     | NULL             |
| A Clash of Kings                         | NULL             |
| A Storm of Swords                        | NULL             |
| The Fellowship of the Ring               | NULL             |
| The Two Towers                           | NULL             |
| The Return of the King                   | NULL             |
| The Da Vinci Code                        | NULL             |
| Foundation                               | NULL             |
+------------------------------------------+------------------+
13 rows in set (0.00 sec)


--12. Find the total number of members registered in the system.

Query:
mysql> select count(*) from member where reg_date is not null;

Answer:
+----------+
| count(*) |
+----------+
|       17 |
+----------+
1 row in set (0.02 sec)


--13. Show all books issued by employee E106.

Query:
mysql> select b.isbn, b.book_title, i.issued_emp_id from book b join issue_status i on b.isbn = i.issued_book_isbn where i.issued_emp_id = 'E106';

Answer:
+-------------------+----------------------------------------+---------------+
| isbn              | book_title                             | issued_emp_id |
+-------------------+----------------------------------------+---------------+
| 978-0-09-957807-9 | A Game of Thrones                      | E106          |
| 978-0-393-05081-8 | A Peoples History of the United States | E106          |
| 978-0-19-280551-1 | The Guns of August                     | E106          |
| 978-0-7432-7356-4 | The Hobbit                             | E106          |
| 978-0-7432-4722-5 | Angels & Demons                        | E106          |
| 978-0-375-41398-8 | The Diary of a Young Girl              | E106          |
| 978-0-7434-7679-3 | The Stand                              | E106          |
| 978-0-06-112241-5 | The Kite Runner                        | E106          |
+-------------------+----------------------------------------+---------------+
8 rows in set (0.05 sec)


--14. Display the list of books returned in the month of May 2024.

Query:
mysql> select return_book_title, monthname(return_date), year(return_date) from return_status where monthname(return_date) = 'May' and year(return_date) = 2024;

Answer:
+-------------------------------------------------------+------------------------+-------------------+
| return_book_title                                     | monthname(return_date) | year(return_date) |
+-------------------------------------------------------+------------------------+-------------------+
| The Hobbit                                            | May                    |              2024 |
| Angels & Demons                                       | May                    |              2024 |
| The Diary of a Young Girl                             | May                    |              2024 |
| Sapiens: A Brief History of Humankind                 | May                    |              2024 |
| 1491: New Revelations of the Americas Before Columbus | May                    |              2024 |
| The Catcher in the Rye                                | May                    |              2024 |
| The Great Gatsby                                      | May                    |              2024 |
| Harry Potter and the Sorcerers Stone                  | May                    |              2024 |
| Animal Farm                                           | May                    |              2024 |
+-------------------------------------------------------+------------------------+-------------------+
9 rows in set (0.00 sec)


--15. Count how many books each member has issued.

Query:
mysql> select issued_member_id, count(*) as Number_Of_Books_Issued from issue_status group by issued_member_id;

Answer:
+------------------+------------------------+
| issued_member_id | Number_Of_Books_Issued |
+------------------+------------------------+
| C101             |                      2 |
| C102             |                      2 |
| C103             |                      1 |
| C104             |                      2 |
| C105             |                      6 |
| C106             |                      4 |
| C107             |                      8 |
| C108             |                      4 |
| C109             |                     10 |
| C110             |                      6 |
+------------------+------------------------+
10 rows in set (0.01 sec)


--16. Show the details of members who have never issued any book.

Query:
mysql> select * from member where member_id not in (select distinct issued_member_id from issue_status);

Answer:
+-----------+--------------+------------------+------------+
| member_id | member_name  | member_address   | reg_date   |
+-----------+--------------+------------------+------------+
| C118      | Sam          | 133 Pine St      | 2024-06-01 |
| C119      | John         | 143 Main St      | 2024-05-01 |
| C120      | Karan Mehta  | 789 Elm St       | 2024-04-15 |
| C121      | Linda Scott  | 321 Maple Ave    | 2024-03-22 |
| C122      | Ravi Patel   | 210 Oak Ln       | 2024-02-10 |
| C123      | Sophia Gomez | 101 Cedar Rd     | 2024-01-18 |
| C124      | Bruce Wayne  | 1007 Mountain Dr | 2023-12-12 |
+-----------+--------------+------------------+------------+
7 rows in set (0.00 sec)


--17. Find the earliest and latest book issue date in the system.

Query:
mysql> select min(issued_date) as Earliest_Issued_Date, max(issued_date) as Latest_Issued_Date from issue_status;

Answer:
+----------------------+--------------------+
| Earliest_Issued_Date | Latest_Issued_Date |
+----------------------+--------------------+
| 2024-03-10           | 2024-04-23         |
+----------------------+--------------------+
1 row in set (0.00 sec)


--18. Get the names of employees who issued books to member C109.

Query:
mysql> select emp_id, ename from employee where emp_id in (select issued_emp_id from issue_status where issued_member_id = 'C109');

Answer:
+--------+------------------+
| emp_id | ename            |
+--------+------------------+
| E102   | Jane Smith       |
| E103   | Mike Johnson     |
| E105   | Sarah Brown      |
| E106   | Michelle Ramirez |
| E107   | Michael Thompson |
+--------+------------------+
5 rows in set (0.00 sec)


--19. Display all books that have been returned along with their return dates.

Query:
mysql> select return_book_title, dayname(return_date), monthname(return_date), year(return_date) from return_status;

Answer:
+-------------------------------------------------------+----------------------+------------------------+-------------------+
| return_book_title                                     | dayname(return_date) | monthname(return_date) | year(return_date) |
+-------------------------------------------------------+----------------------+------------------------+-------------------+
| Animal Farm                                           | Sunday               | March                  |              2024 |
| One Hundred Years of Solitude                         | Monday               | March                  |              2024 |
| The Great Gatsby                                      | Wednesday            | March                  |              2024 |
| Jane Eyre                                             | Thursday             | March                  |              2024 |
| The Alchemist                                         | Saturday             | March                  |              2024 |
| Harry Potter and the Sorcerers Stone                  | Monday               | March                  |              2024 |
| A Game of Thrones                                     | Tuesday              | March                  |              2024 |
| A Peoples History of the United States                | Thursday             | March                  |              2024 |
| The Guns of August                                    | Saturday             | March                  |              2024 |
| The Histories                                         | Monday               | April                  |              2024 |
| Guns, Germs, and Steel: The Fates of Human Societies  | Wednesday            | April                  |              2024 |
| 1984                                                  | Friday               | April                  |              2024 |
| Pride and Prejudice                                   | Sunday               | April                  |              2024 |
| Brave New World                                       | Monday               | April                  |              2024 |
| The Road                                              | Wednesday            | April                  |              2024 |
| The Shining                                           | Thursday             | April                  |              2024 |
| Fahrenheit 451                                        | Saturday             | April                  |              2024 |
| Dune                                                  | Monday               | April                  |              2024 |
| Where the Wild Things Are                             | Wednesday            | April                  |              2024 |
| The Kite Runner                                       | Friday               | April                  |              2024 |
| Charlottes Web                                        | Sunday               | April                  |              2024 |
| Beloved                                               | Tuesday              | April                  |              2024 |
| A Tale of Two Cities                                  | Thursday             | April                  |              2024 |
| The Stand                                             | Saturday             | April                  |              2024 |
| Moby Dick                                             | Monday               | April                  |              2024 |
| To Kill a Mockingbird                                 | Tuesday              | April                  |              2024 |
| The Hobbit                                            | Wednesday            | May                    |              2024 |
| Angels & Demons                                       | Thursday             | May                    |              2024 |
| The Diary of a Young Girl                             | Friday               | May                    |              2024 |
| Sapiens: A Brief History of Humankind                 | Saturday             | May                    |              2024 |
| 1491: New Revelations of the Americas Before Columbus | Sunday               | May                    |              2024 |
| The Catcher in the Rye                                | Monday               | May                    |              2024 |
| The Great Gatsby                                      | Tuesday              | May                    |              2024 |
| Harry Potter and the Sorcerers Stone                  | Wednesday            | May                    |              2024 |
| Animal Farm                                           | Thursday             | May                    |              2024 |
+-------------------------------------------------------+----------------------+------------------------+-------------------+
35 rows in set (0.00 sec)


--20. Get the top 5 most recently issued books.

Query:
mysql> select issued_book_title, issued_date from issue_status order by issued_date desc limit 5;

Answer:
+-----------------------+-------------+
| issued_book_title     | issued_date |
+-----------------------+-------------+
| The Stand             | 2024-04-23  |
| A Tale of Two Cities  | 2024-04-22  |
| Dune                  | 2024-04-21  |
| A Tale of Two Cities  | 2024-04-20  |
| To Kill a Mockingbird | 2024-04-19  |
+-----------------------+-------------+
5 rows in set (0.00 sec)


--21. List the number of books issued by each employee.

Query:
mysql> select e.emp_id, e.ename, count(i.issued_book_title) from employee e join issue_status i on e.emp_id = i.issued_emp_id group by i.issued_emp_id order by e.emp_id;

Answer:
+--------+------------------+----------------------------+
| emp_id | ename            | count(i.issued_book_title) |
+--------+------------------+----------------------------+
| E101   | John Doe         |                          2 |
| E102   | Jane Smith       |                          4 |
| E103   | Mike Johnson     |                          4 |
| E104   | Emily Davis      |                          4 |
| E105   | Sarah Brown      |                          4 |
| E106   | Michelle Ramirez |                          8 |
| E107   | Michael Thompson |                          4 |
| E108   | Jessica Taylor   |                          4 |
| E109   | Daniel Anderson  |                          5 |
| E110   | Laura Martinez   |                          6 |
+--------+------------------+----------------------------+
10 rows in set (0.01 sec)


--22. Show members who have returned all the books they issued.

Query:
mysql> select m.member_id, m.member_name from member m join issue_status i on m.member_id = i.issued_member_id group by m.member_id having count(i.issued_id) = (select count(r.return_id) from return_status r where r.issued_id in (select issued_id from issue_status where issued_member_id = m.member_id));

Answer:
+-----------+--------------+
| member_id | member_name  |
+-----------+--------------+
| C102      | Bob Smith    |
| C103      | Carol Davis  |
| C106      | Frank Thomas |
| C110      | Jack Wilson  |
+-----------+--------------+
4 rows in set (0.00 sec)


--23. For each book, show how many times it has been issued.

Query:
mysql> select b.isbn, b.book_title, count(i.issued_book_isbn) from book b join issue_status i on b.isbn = i.issued_book_isbn group by b.isbn, b.book_title;

Answer:
+-------------------+-------------------------------------------------------+---------------------------+
| isbn              | book_title                                            | count(i.issued_book_isbn) |
+-------------------+-------------------------------------------------------+---------------------------+
| 978-0-06-025492-6 | Where the Wild Things Are                             |                         1 |
| 978-0-06-112008-4 | To Kill a Mockingbird                                 |                         2 |
| 978-0-06-112241-5 | The Kite Runner                                       |                         2 |
| 978-0-06-440055-8 | Charlottes Web                                        |                         1 |
| 978-0-09-957807-9 | A Game of Thrones                                     |                         1 |
| 978-0-14-027526-3 | A Tale of Two Cities                                  |                         3 |
| 978-0-14-044930-3 | The Histories                                         |                         1 |
| 978-0-14-118776-1 | One Hundred Years of Solitude                         |                         1 |
| 978-0-14-143951-8 | Pride and Prejudice                                   |                         2 |
| 978-0-141-44171-6 | Jane Eyre                                             |                         1 |
| 978-0-19-280551-1 | The Guns of August                                    |                         1 |
| 978-0-307-37840-1 | The Alchemist                                         |                         1 |
| 978-0-307-58837-1 | Sapiens: A Brief History of Humankind                 |                         1 |
| 978-0-330-25864-8 | Animal Farm                                           |                         2 |
| 978-0-345-39180-3 | Dune                                                  |                         2 |
| 978-0-375-41398-8 | The Diary of a Young Girl                             |                         1 |
| 978-0-385-33312-0 | The Shining                                           |                         1 |
| 978-0-393-05081-8 | A Peoples History of the United States                |                         1 |
| 978-0-393-91257-8 | Guns, Germs, and Steel: The Fates of Human Societies  |                         2 |
| 978-0-451-52993-5 | Fahrenheit 451                                        |                         1 |
| 978-0-451-52994-2 | Moby Dick                                             |                         1 |
| 978-0-452-28240-7 | Brave New World                                       |                         1 |
| 978-0-525-47535-5 | The Great Gatsby                                      |                         2 |
| 978-0-553-29698-2 | The Catcher in the Rye                                |                         1 |
| 978-0-670-81302-4 | The Road                                              |                         1 |
| 978-0-679-64115-3 | 1984                                                  |                         1 |
| 978-0-679-76489-8 | Harry Potter and the Sorcerers Stone                  |                         2 |
| 978-0-679-77644-3 | Beloved                                               |                         1 |
| 978-0-7432-4722-5 | Angels & Demons                                       |                         1 |
| 978-0-7432-7356-4 | The Hobbit                                            |                         2 |
| 978-0-7432-7357-1 | 1491: New Revelations of the Americas Before Columbus |                         1 |
| 978-0-7434-7679-3 | The Stand                                             |                         3 |
+-------------------+-------------------------------------------------------+---------------------------+
32 rows in set (0.00 sec)


--24. Find the most active member (who issued the most books).

Query:
mysql> select m.member_id, m.member_name, count(i.issued_id) as Issued_books_Count from issue_status i join member m on i.issued_member_id = m.member_id group by i.issued_member_id order by count(i.issued_id) desc limit 1;

Answer:
+-----------+--------------+--------------------+
| member_id | member_name  | Issued_books_Count |
+-----------+--------------+--------------------+
| C109      | Ivy Martinez |                 10 |
+-----------+--------------+--------------------+
1 row in set (0.00 sec)


--25. Display books that have been issued multiple times to the same member.

Query:
mysql> select issued_member_id, issued_book_isbn, count(issued_book_title) as Number_Of_Times_Book_Issued from issue_status group by issued_member_id, issued_book_isbn having count(issued_book_title) > 1;

Answer:
+------------------+-------------------+-----------------------------+
| issued_member_id | issued_book_isbn  | Number_Of_Times_Book_Issued |
+------------------+-------------------+-----------------------------+
| C108             | 978-0-525-47535-5 |                           2 |
| C109             | 978-0-679-76489-8 |                           2 |
| C105             | 978-0-14-027526-3 |                           2 |
+------------------+-------------------+-----------------------------+
3 rows in set (0.00 sec)


--26. Label books as Returned, Not Returned.

Query:
mysql> select i.issued_id, r.return_id, i.issued_book_title, case when r.return_id is not null then 'Returned' else 'Not Returned' end as Return_Status from issue_status i left join return_status r on i.issued_id = r.issued_id;

Answer:
+-----------+-----------+-------------------------------------------------------+---------------+
| issued_id | return_id | issued_book_title                                     | Return_Status |
+-----------+-----------+-------------------------------------------------------+---------------+
| IS106     | R101      | Animal Farm                                           | Returned      |
| IS107     | R102      | One Hundred Years of Solitude                         | Returned      |
| IS108     | R103      | The Great Gatsby                                      | Returned      |
| IS109     | R104      | Jane Eyre                                             | Returned      |
| IS110     | R105      | The Alchemist                                         | Returned      |
| IS111     | R106      | Harry Potter and the Sorcerers Stone                  | Returned      |
| IS112     | R107      | A Game of Thrones                                     | Returned      |
| IS113     | R108      | A Peoples History of the United States                | Returned      |
| IS114     | R109      | The Guns of August                                    | Returned      |
| IS115     | R110      | The Histories                                         | Returned      |
| IS116     | R111      | Guns, Germs, and Steel: The Fates of Human Societies  | Returned      |
| IS117     | R112      | 1984                                                  | Returned      |
| IS118     | R113      | Pride and Prejudice                                   | Returned      |
| IS119     | R114      | Brave New World                                       | Returned      |
| IS120     | R115      | The Road                                              | Returned      |
| IS121     | R116      | The Shining                                           | Returned      |
| IS122     | R117      | Fahrenheit 451                                        | Returned      |
| IS123     | R118      | Dune                                                  | Returned      |
| IS124     | R119      | Where the Wild Things Are                             | Returned      |
| IS125     | R120      | The Kite Runner                                       | Returned      |
| IS126     | R121      | Charlottes Web                                        | Returned      |
| IS127     | R122      | Beloved                                               | Returned      |
| IS128     | R123      | A Tale of Two Cities                                  | Returned      |
| IS129     | R124      | The Stand                                             | Returned      |
| IS130     | R125      | Moby Dick                                             | Returned      |
| IS131     | R126      | To Kill a Mockingbird                                 | Returned      |
| IS132     | R127      | The Hobbit                                            | Returned      |
| IS133     | R128      | Angels & Demons                                       | Returned      |
| IS134     | R129      | The Diary of a Young Girl                             | Returned      |
| IS135     | R130      | Sapiens: A Brief History of Humankind                 | Returned      |
| IS136     | R131      | 1491: New Revelations of the Americas Before Columbus | Returned      |
| IS137     | R132      | The Catcher in the Rye                                | Returned      |
| IS138     | R133      | The Great Gatsby                                      | Returned      |
| IS139     | R134      | Harry Potter and the Sorcerers Stone                  | Returned      |
| IS140     | R135      | Animal Farm                                           | Returned      |
| IS141     | NULL      | Pride and Prejudice                                   | Not Returned  |
| IS142     | NULL      | The Hobbit                                            | Not Returned  |
| IS143     | NULL      | Guns, Germs, and Steel: The Fates of Human Societies  | Not Returned  |
| IS144     | NULL      | The Stand                                             | Not Returned  |
| IS145     | NULL      | The Kite Runner                                       | Not Returned  |
| IS146     | NULL      | To Kill a Mockingbird                                 | Not Returned  |
| IS147     | NULL      | A Tale of Two Cities                                  | Not Returned  |
| IS148     | NULL      | Dune                                                  | Not Returned  |
| IS149     | NULL      | A Tale of Two Cities                                  | Not Returned  |
| IS150     | NULL      | The Stand                                             | Not Returned  |
+-----------+-----------+-------------------------------------------------------+---------------+
45 rows in set (0.00 sec)


--27. Use DENSE_RANK() to rank members based on number of books issued.

Query:
mysql> select i.issued_member_id, m.member_name, count(*) as Books_Issued, dense_rank() over(order by count(*) desc) as Ranking from issue_status i join member m on i.issued_member_id = m.member_id group by issued_member_id;

Answer:
+------------------+----------------+--------------+---------+
| issued_member_id | member_name    | Books_Issued | Ranking |
+------------------+----------------+--------------+---------+
| C109             | Ivy Martinez   |           10 |       1 |
| C107             | Grace Taylor   |            8 |       2 |
| C105             | Eve Brown      |            6 |       3 |
| C110             | Jack Wilson    |            6 |       3 |
| C106             | Frank Thomas   |            4 |       4 |
| C108             | Henry Anderson |            4 |       4 |
| C101             | Alice Johnson  |            2 |       5 |
| C102             | Bob Smith      |            2 |       5 |
| C104             | Dave Wilson    |            2 |       5 |
| C103             | Carol Davis    |            1 |       6 |
+------------------+----------------+--------------+---------+
10 rows in set (0.00 sec)


--28. Use PARTITION BY to show issue count per member with a running total.

Query:
mysql> select i.issued_member_id, i.issued_id, m.member_name, count(*) over(partition by i.issued_member_id) as Total_Issued_Books, count(*) over(partition by i.issued_member_id order by i.issued_id) as Running_Total from issue_status i join member m on i.issued_member_id = m.member_id;

Answer:
+------------------+-----------+----------------+--------------------+---------------+
| issued_member_id | issued_id | member_name    | Total_Issued_Books | Running_Total |
+------------------+-----------+----------------+--------------------+---------------+
| C101             | IS118     | Alice Johnson  |                  2 |             1 |
| C101             | IS149     | Alice Johnson  |                  2 |             2 |
| C102             | IS121     | Bob Smith      |                  2 |             1 |
| C102             | IS122     | Bob Smith      |                  2 |             2 |
| C103             | IS123     | Carol Davis    |                  1 |             1 |
| C104             | IS124     | Dave Wilson    |                  2 |             1 |
| C104             | IS144     | Dave Wilson    |                  2 |             2 |
| C105             | IS125     | Eve Brown      |                  6 |             1 |
| C105             | IS126     | Eve Brown      |                  6 |             2 |
| C105             | IS127     | Eve Brown      |                  6 |             3 |
| C105             | IS128     | Eve Brown      |                  6 |             4 |
| C105             | IS129     | Eve Brown      |                  6 |             5 |
| C105             | IS147     | Eve Brown      |                  6 |             6 |
| C106             | IS106     | Frank Thomas   |                  4 |             1 |
| C106             | IS130     | Frank Thomas   |                  4 |             2 |
| C106             | IS131     | Frank Thomas   |                  4 |             3 |
| C106             | IS132     | Frank Thomas   |                  4 |             4 |
| C107             | IS107     | Grace Taylor   |                  8 |             1 |
| C107             | IS133     | Grace Taylor   |                  8 |             2 |
| C107             | IS134     | Grace Taylor   |                  8 |             3 |
| C107             | IS135     | Grace Taylor   |                  8 |             4 |
| C107             | IS136     | Grace Taylor   |                  8 |             5 |
| C107             | IS137     | Grace Taylor   |                  8 |             6 |
| C107             | IS145     | Grace Taylor   |                  8 |             7 |
| C107             | IS146     | Grace Taylor   |                  8 |             8 |
| C108             | IS108     | Henry Anderson |                  4 |             1 |
| C108             | IS138     | Henry Anderson |                  4 |             2 |
| C108             | IS142     | Henry Anderson |                  4 |             3 |
| C108             | IS148     | Henry Anderson |                  4 |             4 |
| C109             | IS109     | Ivy Martinez   |                 10 |             1 |
| C109             | IS111     | Ivy Martinez   |                 10 |             2 |
| C109             | IS112     | Ivy Martinez   |                 10 |             3 |
| C109             | IS113     | Ivy Martinez   |                 10 |             4 |
| C109             | IS114     | Ivy Martinez   |                 10 |             5 |
| C109             | IS115     | Ivy Martinez   |                 10 |             6 |
| C109             | IS139     | Ivy Martinez   |                 10 |             7 |
| C109             | IS141     | Ivy Martinez   |                 10 |             8 |
| C109             | IS143     | Ivy Martinez   |                 10 |             9 |
| C109             | IS150     | Ivy Martinez   |                 10 |            10 |
| C110             | IS110     | Jack Wilson    |                  6 |             1 |
| C110             | IS116     | Jack Wilson    |                  6 |             2 |
| C110             | IS117     | Jack Wilson    |                  6 |             3 |
| C110             | IS119     | Jack Wilson    |                  6 |             4 |
| C110             | IS120     | Jack Wilson    |                  6 |             5 |
| C110             | IS140     | Jack Wilson    |                  6 |             6 |
+------------------+-----------+----------------+--------------------+---------------+
45 rows in set (0.01 sec)


--29. List members who returned books within 7 days of issue.

Query:
mysql> select m.member_id, m.member_name, i.issued_date, r.return_date from member m join issue_status i on m.member_id = i.issued_member_id join return_status r on i.issued_id = r.issued_id where datediff(r.return_date, i.issued_date) <= 7;

Answer:
+-----------+--------------+-------------+-------------+
| member_id | member_name  | issued_date | return_date |
+-----------+--------------+-------------+-------------+
| C106      | Frank Thomas | 2024-03-10  | 2024-03-17  |
| C107      | Grace Taylor | 2024-03-11  | 2024-03-18  |
+-----------+--------------+-------------+-------------+
2 rows in set (0.00 sec)


--30. Calculate the average time between issue and return for each member.

Query:
mysql> select distinct i.issued_member_id, m.member_name, avg(datediff(r.return_date, i.issued_date)) over(partition by i.issued_member_id) as Average_Book_Return_Time from issue_status i join return_status r on i.issued_id = r.issued_id join member m on i.issued_member_id = m.member_id;

Answer:
+------------------+----------------+--------------------------+
| issued_member_id | member_name    | Average_Book_Return_Time |
+------------------+----------------+--------------------------+
| C101             | Alice Johnson  |                  16.0000 |
| C102             | Bob Smith      |                  17.5000 |
| C103             | Carol Davis    |                  19.0000 |
| C104             | Dave Wilson    |                  20.0000 |
| C105             | Eve Brown      |                  23.0000 |
| C106             | Frank Thomas   |                  21.2500 |
| C107             | Grace Taylor   |                  22.8333 |
| C108             | Henry Anderson |                  17.0000 |
| C109             | Ivy Martinez   |                  12.8571 |
| C110             | Jack Wilson    |                  16.1667 |
+------------------+----------------+--------------------------+
10 rows in set (0.00 sec)

