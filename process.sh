g++ -o run main.cpp TestDataGenerator.cpp Utils.cpp
./run ./a/sql/a.a.sql 1 ./a/txt/a_create_table.txt
./run ./a/sql/a.a.sql 0 a 4 int float varchar datetime 0 800000
./run ./a/sql/a.a.sql 1 ./a/txt/a_alter_table1.txt
./run ./a/sql/a.a.sql 0 a 5 int float varchar datetime varchar 800000 800000
./run ./a/sql/a.a.sql 1 ./a/txt/a_alter_table2.txt
./run ./a/sql/a.a.sql 0 a 6 int float varchar datetime varchar int 1600000 800000
./run ./a/sql/a.a.sql 1 ./a/txt/a_alter_table3.txt
./run ./a/sql/a.a.sql 0 a 6 int float varchar datetime varchar int 3200000 800000

./run ./a/sql/b.a.sql 1 ./a/txt/a_create_table.txt
./run ./a/sql/b.a.sql 0 a 4 int float varchar datetime 4800000 800000
./run ./a/sql/b.a.sql 1 ./a/txt/a_alter_table1.txt
./run ./a/sql/b.a.sql 0 a 5 int float varchar datetime varchar 5600000 800000
./run ./a/sql/b.a.sql 1 ./a/txt/a_alter_table2.txt
./run ./a/sql/b.a.sql 0 a 6 int float varchar datetime varchar int 6400000 800000
./run ./a/sql/b.a.sql 1 ./a/txt/a_alter_table3.txt
./run ./a/sql/b.a.sql 0 a 6 int float varchar datetime varchar int 8000000 800000

./run ./b/sql/a.b.sql 1 ./b/txt/b_create_table.txt
./run ./b/sql/a.b.sql 0 b 4 int float varchar datetime 0 800000
./run ./b/sql/a.b.sql 1 ./b/txt/b_alter_table1.txt
./run ./b/sql/a.b.sql 0 b 5 int float varchar datetime int 800000 800000
./run ./b/sql/a.b.sql 1 ./b/txt/b_alter_table2.txt
./run ./b/sql/a.b.sql 0 b 5 int float varchar datetime int 2400000 800000
./run ./b/sql/a.b.sql 1 ./b/txt/b_alter_table3.txt
./run ./b/sql/a.b.sql 0 b 4 int float varchar datetime 4000000 800000

./run ./b/sql/b.b.sql 1 ./b/txt/b_create_table.txt
./run ./b/sql/b.b.sql 0 b 4 int float varchar datetime 4800000 800000
./run ./b/sql/b.b.sql 1 ./b/txt/b_alter_table1.txt
./run ./b/sql/b.b.sql 0 b 5 int float varchar datetime int 5600000 800000
./run ./b/sql/b.b.sql 1 ./b/txt/b_alter_table2.txt
./run ./b/sql/b.b.sql 0 b 5 int float varchar datetime int 7200000 800000
./run ./b/sql/b.b.sql 1 ./b/txt/b_alter_table3.txt
./run ./b/sql/b.b.sql 0 b 4 int float varchar datetime 8800000 800000



./run ./c/sql/a.c.sql 1 ./c/txt/c_create_table.txt
./run ./c/sql/a.c.sql 0 c 4 int float varchar datetime 0 800000
./run ./c/sql/a.c.sql 1 ./c/txt/c_alter_table1.txt
./run ./c/sql/a.c.sql 0 c 5 int float varchar datetime float 800000 800000
./run ./c/sql/a.c.sql 1 ./c/txt/c_alter_table2.txt
./run ./c/sql/a.c.sql 0 c 5 int float varchar datetime float 1600000 800000

./run ./c/sql/b.c.sql 1 ./c/txt/c_create_table.txt
./run ./c/sql/b.c.sql 0 c 4 int float varchar datetime 2400000 800000
./run ./c/sql/b.c.sql 1 ./c/txt/c_alter_table1.txt
./run ./c/sql/b.c.sql 0 c 5 int float varchar datetime float 3200000 800000
./run ./c/sql/b.c.sql 1 ./c/txt/c_alter_table2.txt
./run ./c/sql/b.c.sql 0 c 5 int float varchar datetime float 4000000 800000

./run ./d/sql/a.d.sql 1 ./d/txt/d_create_table.txt
./run ./d/sql/a.d.sql 0 d 4 int float varchar datetime 0 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table1.txt
./run ./d/sql/a.d.sql 0 d 5 int int float varchar datetime 600000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table2.txt
./run ./d/sql/a.d.sql 0 d 6 int varchar int float varchar datetime 1800000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table3.txt
./run ./d/sql/a.d.sql 0 d 6 int varchar int float varchar datetime 3000000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table4.txt
./run ./d/sql/a.d.sql 0 d 6 int varchar int float varchar datetime 4200000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table5.txt
./run ./d/sql/a.d.sql 0 d 7 int int varchar int float varchar datetime 5400000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table6.txt
./run ./d/sql/a.d.sql 0 d 8 int varchar int varchar int float varchar datetime 7200000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table7.txt
./run ./d/sql/a.d.sql 0 d 8 int varchar int varchar int float varchar datetime 9000000 600000
./run ./d/sql/a.d.sql 1 ./d/txt/d_alter_table8.txt
./run ./d/sql/a.d.sql 0 d 7 int int varchar int float varchar datetime 10800000 600000

./run ./d/sql/b.d.sql 1 ./d/txt/d_create_table.txt
./run ./d/sql/b.d.sql 0 d 4 int float varchar datetime 12600000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table1.txt
./run ./d/sql/b.d.sql 0 d 5  int float varchar datetime 13200000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table2.txt
./run ./d/sql/b.d.sql 0 d 6 int varchar int float varchar datetime 14400000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table3.txt
./run ./d/sql/b.d.sql 0 d 6 int varchar int float varchar datetime 15600000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table4.txt
./run ./d/sql/b.d.sql 0 d 6 int varchar int float varchar datetime 17200000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table5.txt
./run ./d/sql/b.d.sql 0 d 7 int int varchar int float varchar datetime 18400000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table6.txt
./run ./d/sql/b.d.sql 0 d 8 int varchar int varchar int float varchar datetime 20200000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table7.txt
./run ./d/sql/b.d.sql 0 d 8 int varchar int varchar int float varchar datetime 22000000 600000
./run ./d/sql/b.d.sql 1 ./d/txt/d_alter_table8.txt
./run ./d/sql/b.d.sql 0 d 7 int int varchar int float varchar datetime 23800000 600000