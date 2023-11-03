With Ada.Text_IO, Ada.Integer_Text_IO;

package MatrixMult is

   SIZE : CONSTANT Integer := 10;
   type Matrix is Array(1..SIZE, 1..SIZE) of Integer;
   procedure MatMult(A: in matrix; B: in matrix; C: out matrix); 

end MatrixMult;
