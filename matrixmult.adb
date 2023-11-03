With Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body MatrixMult is

   procedure MatMult(A, B : in Matrix; C : out Matrix) is
      
      task type matmul is
         entry prod(rowval : Integer; colval : Integer);
      end matmul;
      
      task body matmul is
         row : Integer;
         col : Integer;
         val : Integer := 0;
         product : Integer;
         
      begin
         accept prod(rowval : Integer; colval : Integer) DO
           row := rowval;
           col := colval;
      end prod;
      
      for i in 1..SIZE LOOP
         product := A(row,i) * B(i,col);
         val := val + product;
      end loop;
         C(row,col) := val;
      
      end matmul;
         
      matmultasks : Array(1..SIZE*SIZE) of matmul;
         
      begin
         for i in 1..SIZE loop
            for j in 1..SIZE loop
               matmultasks((i-1) * SIZE + j).prod(i,j);
            end loop;
      end loop;
      
      end MatMult;
end MatrixMult;
