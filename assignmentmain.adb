with Ada.Text_IO, Ada.Integer_Text_IO, MatrixMult;
use Ada.Text_IO, Ada.Integer_Text_IO, MatrixMult;
with Ada.Command_Line; use Ada.Command_Line;
with GNAT.OS_Lib; use GNAT.OS_Lib;

procedure AssignmentMain is

cli_exception : exception;
Integer_File : FILE_TYPE;
Index        : INTEGER;

   task type PrintMatrix is
      entry print(inputMatrix : Matrix);
   end PrintMatrix;

   task body PrintMatrix is
   begin
      accept print(inputMatrix : in Matrix) do
         for i in 1..SIZE LOOP
            for J in 1..SIZE LOOP
               Put(inputMatrix(i,j));
               Put(" ");
            end loop;
            New_Line;
         end loop;
      end print;
   end PrintMatrix;

   task type Reader is
      entry read(inputMatrix : out Matrix);
   end Reader;

   task body Reader is
 input: integer;
	begin
	accept read(inputMatrix: out matrix) do
		for i in 1..SIZE loop
			for j in 1..SIZE loop
				Ada.Integer_Text_IO.Get(input);
				inputMatrix(i,j) := input;
			end loop;
		end loop;
	end read;
 end Reader;

   A : Matrix;
   B : Matrix;
   C : Matrix;
   Reader1 : Reader;
   Reader2 : Reader;
   Printer : PrintMatrix;

begin
   Reader1.read(A);
   Reader2.read(B);
   MatMult(A, B, C);
   Printer.print(C);
   GNAT.OS_Lib.OS_Exit (0);
end AssignmentMain;
