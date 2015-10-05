with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
   matriz1 : array(1..500,1..500) of Integer;
   matriz2 : array(1..500,1..500) of integer;
   matriz3 : array(1..500,1..500) of integer;

begin

    for i in 1..500 loop
      for j in 1..500 loop
        matriz1 (i,j):= 2;
        matriz2 (i,j):= 2;
     end loop;
    end loop;


    for i in 1..500 loop
         for j in 1..500 loop
           matriz3(i,j):=0;
      end loop;
      end loop;

   for i in 1..500 loop
     for j in 1..500 loop
         for k in 1..500  loop
     matriz3(i,j) := matriz3(i,j) +  matriz1(i,k) * matriz2(k,j);
         end loop;
      end loop;
   end loop;

   Put_Line("El resultado de la multiplicacion de la matriz es :");
   Put_Line("");
   for i in 1..500 loop
      for j in 1..500 loop
        Put(matriz3(i,j));
      end loop;
      Put_Line("");
   end loop;

end Main;
