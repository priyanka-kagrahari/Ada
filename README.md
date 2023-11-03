# Ada Programming : 
The Ada program has two parts:
1. A package for performing concurrent matrix multiplication.
2. A main procedure, AssignmentMain, containing tasks for reading in matrix data, invoking the matrix multiplication, and displaying the results.
Package for Concurrent Matrix Multiplication:
The MatrixMult Package Specification: Defines a package called MatrixMult that exports (i.e. declares in its specification) the following:
•	An integer constant SIZE define to be 10. 
•	A type that defines the type of a matrix, e.g. a two dimensional array of integers. The size of the array should be SIZExSIZE (i.e. a square matrix).
•	A procedure MatMult(A,B,C), where A and B are input parameters of the matrix type defined, and C is an output parameter, also of the same matrix type.
The MatrixMult Package Body: Within the body of the MatrixMult package, we will define the MatMult procedure. 
•	This procedure should multiply the matrices A and B and write the result to C. 
•	Two-dimensional array of tasks, where each task computes one element of the result matrix C. 
The AssignmentMain Procedure
The procedure AssignmentMain has three matrices of the type defined in the MatrixMult package, read in the values for the first two matrices, call MatMult so that the third matrix contains the results of multiplying the first two, and then print out the third matrix which uses below 3 tasks for doing that:
•	Reader1: This task read in SIZE2 integers from the terminal and write them into the first matrix (in row major order -- i.e. going across the rows of the matrix).
•	Reader2: This task also read SIZE2 integers from the terminal and populate the second matrix in row major order. Reader2 doesn't start reading until Reader1 has finished.
•	Printer: This task print the third matrix after it has been computed using MatMult. 
•	The call to the MatMult procedure is from the body of the AssignmentMain procedure.
To run the program: Download all the 3 files in your local system and simply create an input file containing the 200 integers, separated by spaces. Then, when you run your program, redirect that file to the standard input by typing
./assignmentmain < input.txt
where the input file is called input.txt. The attached input.txt file has 200 integers to run this program. The output of your program for this input file should be:

    6176    7286    6406    5358    9562    5972    8671    6089    5728    9108
    4668    4819    4289    4838    5948    3677    5852    4109    5190    6052
    5979    6333    5911    5554    7202    5188    6844    4932    5381    6333
    6464    6629    6861    4698    7022    5642    6976    3787    5649    7137
    4339    4917    4467    4928    5126    4777    7414    4229    5538    6542
    3855    4845    4822    4171    4908    4482    6980    4014    5050    6493
    6491    5835    5159    5300    7143    6014    8103    4480    5676    8752
    4885    5314    5610    5608    7061    4967    8495    5887    4564    7556
    5009    6278    5426    4930    7372    5342    7940    5344    5750    8158
    7647    8076    7403    7262    8360    8431   12179    6902    8108   11189
