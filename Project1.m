%% Math 240 Matlab Project 1
% Fall 2020
%
% Section 0311
%
% Author: Alec K. Mattu
%
% Group members: N/A
%
% *Type/paste Matlab commands for a particular problem/part right below*
%
% *the correspondingly labelled line, above the next double % sign.*
%%

%% Problem 1
% (a) Given the system of equations:
%%
% 
% $$x_1 + x_2 + 2x_3 = 5$$
%%
%
% $$-2x_1 - 7x_2 - 2x_3 = -14$$
%%
%
% $$3x_1 - 2x_2 + 5x_3 = 32$$

A = [1 1 2 5; -2 -7 -2 -14; 3 -2 5 32]
%%
% (b) Given the augmented matrix _A_ , use elementary row operations to reduce
% it to row echelon form
%%
% b1) 2*Row1 to Row2
A(2,:) = A(2,:) + (2 * A(1,:))
%%
% b2) -3*Row1 to Row3
A(3,:) = A(3,:) + (-3 * A(1,:))
%%
% b3) Multiply Row2 by (-1/5)
A(2,:) = A(2,:) * (-1/5)
%%
% b4) Multiply Row2 by 5 and add to Row3
A(3,:) = A(3,:) + (5 * A(2,:))
%%
% b5) Multiply Row3 by (-1/3)
A(3,:) = A(3,:) * (-1/3)
%%
% ...Alas, row echelon form
%%
% (c) Given the current state of A (See Problem 1. B5), continue operations to reach
% reduced row echelon form
%%
% Add (2/5)*Row3 to Row2
A(2,:) = A(2,:) + ((2/5) * A(3,:))
%%
% Add -2*Row3 to Row1
A(1,:) = A(1,:) + (-2 * A(3,:))
%%
% Add -1*Row2 to Row1
A(1,:) = A(1,:) + (-1 * A(2,:))
%%
% ... Reduced row echelon form
%%
% (d) Augmented matrix of A as proved above
[1 0 0 21; 0 1 0 -2; 0 0 1 -7]
%%
% Using RREF
rref([1 1 2 5; -2 -7 -2 -14; 3 -2 5 32])
%%
% Solution to system of equations
%%
% 
% $$x_1 = 21$$
% 
%%
% 
% $$x_2 = -2$$
%
%%
% 
% $$x_3 = -7$$
%
%% Problem 2
% (a) Enter the following system of equations into augmented matrix form
B = [1 -2 0 4 -1 4; -3 3 12 -17 5 -9; 2 -4 0 11 4 17; 1 -20 72 -32 -1 4]

%%
% (b) Given the augmented matrix _B_ , use elementary row operations to
% reduce it to row echelon form
%%
% Multiply 3*Row1 and add it to Row2
B(2,:) = B(2,:) + (3 * B(1,:))
%%
% Multiply -2*Row1 and add it to Row3
B(3,:) = B(3,:) + (-2 * (B(1,:)))
%%
% Multiply -1*Row1 and add it to Row4
B(4,:) = B(4,:) + (-1 * (B(1,:)))
%%
% Divide Row4 by -18
B(4,:) = B(4,:) * (-1/18)
%%
% Multiply Row4 by 2 and add it to Row2
B(2,:) = B(2,:) + (B(4,:) * 2)
%%
% Add Row2 to Row4
B(4,:) = B(4,:) + B(2,:)
%%
% Divide Row3 By 3
B(3,:) = B(3,:) * (1/3)
%%
% Multiply Row2 * -1
B(2,:) = B(2,:) * -1
%%
% Multiply Row3 * -1 and add it to Row4
B(4,:) = B(4,:) + (-1 * B(3,:))
%%
% ... Row echelon form 
%%
% (c) Continue row operations to produce a RREF augmented matrix
%%
% Multiply Row3 * -1 and add it to Row2
B(2,:) = B(2,:) + (-1 * B(3,:))
%%
% Multiply Row3 * -4 and add it to Row1
B(1,:) = B(1,:) + (-4 * B(3,:))
%%
% Multiply Row2 * 2 and add it to Row1
B(1,:) = B(1,:) + (2 * B(2,:))
%%
% ... Row reduced echelon form
%%
% (d) Using the original augmented matrix, use RREF to calculate RREF
rref([1 -2 0 4 -1 4; -3 3 12 -17 5 -9; 2 -4 0 11 4 17; 1 -20 72 -32 -1 4])

%%
% (e) Give the solution to the system in parametric vector form
%%
% Equation 1
%%
% 
% $$1x_1 + 0x_2 - 8x_3 + 0x_4 - 17x_5 - 20x_6 = 0$$
% 
%%
% 
% $$x_1 = 8x_3 + 17x_5 + 20x_6$$
%
%% 
% Free variables:
%%
% 
% $$x_2 = x_2$$
% 
%%
% 
% $$x_4 = x_4$$
% 
%%
% ---------------------
%%
% Equation 2
%%
% 
% $$0x_1 + 1x_2 - 4x_3 + 0x_4 - 4x_5 - 6x_6$$
% 
%%
% 
% $$x_2 = 4x_3 + 4x_5 + 6x_6$$
% 
%%
% Free variables:
%%
% 
% $$x_1 = x_1$$
% 
%%
% 
% $$x_4 = x_4$$
% 
%%
% ---------------------
%%
% Equation 3
%%
% 
% $$0x_1 + 0x_2 + 0x_3 + 1x_4 + 2x_5 + 3x_6$$
% 
%%
% 
% $$x_4 = -2x_5 - 3x_6$$
% 
%%
% Free variables:
%%
% 
% $$x_1 = x_1$$
% 
%%
% 
% $$x_2 = x_2$$
% 
%%
% 
% $$x_3 = x_3$$
%
%% Problem 3
% (a) Augmented matrix (A) below (decimals)
format;
rref([8 3 -3 3; 5 -3 -7 2; 5 6 -5 -6])
%%
% (b) Solution set of (A)
%%
% 
% $$x_1 = 1.1856$$
% 
%%
% 
% $$x_2 = -1.1203$$
% 
%%
% 
% $$x_3 = 1.0412$$
% 
%%
% (c) Give the RREF of (A) in fractions (format rational)
format rational;
rref([8 3 -3 3; 5 -3 -7 2; 5 6 -5 -6])
%%
% (d) Solution set to (A) in fractions
%%
% 
% $$x_1 = 115/97 $$
% 
%%
% 
% $$x_2 = -326/291$$
% 
%%
% 
% $$x_3 = 101/97$$
% 
%% Problem 4
% (a) The fan wants to limit her intake to 400 calories, 30g of protein,
% and 10g of fiber. 
%%
% Mac and Cheese Nutrition [Calories Protein Fiber]
%%
% [270 10 2]
%%
% Broccoli Nutrition [Calories Protein Fiber]
%%
% [51 5.4 5.2]
%%
% Chicken Nutrition [Calories Protein Fiber]
%%
% [70 15 0]
%%
% Which results in the following matrix [Mac and Cheese, Broccoli, Chicken]
format;
A = [270 51 70 400; 10 5.4 15 30; 2 5.2 0 10;]
%%
% To solve this fan's problem, we take the RREF of the matrix A
rref(A)
%%
% The results and servings:
%%
% Mac and Cheese: (1 serving)
%%
% 
% $$x_1 = 0.985$$
% 
%%
% Broccoli: (1.5 servings)
%%
% 
% $$x_2 = 1.543$$
%
%%
% Chicken: (~0.8 servings)
%%
% 
% $$x_3 = 0.787$$
%
%%
% (b) This fan switches Mac and Cheese to just plain Shells. Simply switch
% Mac and Cheese for Shells (Whole wheat)
%%
% Shells [Calories Protein Fiber]
%%
% [260 9 5]
%%
% Broccoli Nutrition [Calories Protein Fiber]
%%
% [51 5.4 5.2]
%%
% Chicken Nutrition [Calories Protein Fiber]
%%
% [70 15 0]
%%
% Which results in the following matrix [Whole wheat shells, Broccoli, Chicken]
format;
B = [260 51 70 400; 9 5.4 15 30; 5 5.2 0 10;]
%%
% To solve this fan's problem, we take the RREF of the matrix B
rref(B)
%%
% The results and servings:
%%
% Whole Wheat Shells: (1.1 servings)
%%
% 
% $$x_1 = 1.08$$
% 
%%
% Broccoli: (~0.9 servings)
%%
% 
% $$x_2 = 0.87$$
%
%%
% Chicken: (~1 servings)
%%
% 
% $$x_3 = 1.03$$
%
%% Problem 5
% (a) To determine if [24.1 17.9 24.7] is in the span of [25.1, 20.9,
% 27.7] and [26.1 15.9 23.7] we create an augmented matrix A which includes
% the given vector (B) as the solution
A = [25.1 26.1 24.1; 20.9 15.9 17.9; 27.7 23.7 24.7;]
%%
% Given the augmented matrix (A), we use RREF to determine if it has any
% solutions
rref(A)
%%
% Based on the output of RREF, we can see it does...and the given vector is
% in the span of the matrix
%%
% 
% $$x_1 = 0.5738$$
% 
%%
% 
% $$x_2 = 0.3716$$
% 
%%
% (b) The given vector [24.1 17.9 24.7] IS IN THE SPAN of [25.1, 20.9,
% 27.7] and [26.1 15.9 23.7] by the fact that it is NOT a inconsistant
% matrix, and does have a solution set (where the vectors intersect)
%%
% (c) Linearly dependant. Because the single vector is in the span of the
% other two, they can't be linearly independant.
%% Problem 6
% (a) Declare the given variables (a, b) as symbolic variables
syms a b
%%
% (b) Define the given vectors as a matrix and perform RREF
A = [8 -5 a; 4 1 b]
rref(A)
%%
% (c) Find $w_1$ and $w_2$ such that [a;b] = $w_1$[8;4] + $w_2$[-5;1]
W1 = a/28 + (5*b)/28
W2 = (2*b)/7 - a/7
%% Problem 7
% (a) Enter a matrix (A) which can help show the set of vectors
A = [7 6 7 9 -7 0; 1 -2 5 11 0 0; 4 -2 8 20 4 0; 2 -3 1 11 -5 0]
%%
% Perform RREF(A)
rref(A)
%%
% (b) You can tell a matrix is linearly independant if each column has it's
% own leading 1 in RREF (Hint: It doesn't) $x_4$ is the only column without
% a leading 1. (ALSO see Theorem #8, Pg. 63 Ed. 6)
%%
% (c) Give a nontrivial linear combination of the vectors that yields 0. 
%%
% $x_1$ = -2
%
% $x_2$ = 2
%
% $x_3$ = -1
%
% $x_4$ = Free
%
% $x_5$ = 0
%%
% (d) Find a theorem in §1.7 which allows us to conclude, without doing
% any of the previous computations, that this set must be linearly
% dependent.
%%
% Theorem #8 (Pg. 6e, Ed. #6) If a set contains more vectors than there are
% entries in each vector, then the set is linearly dependant.
% There are 4 entries in each vector, and 5 vectors. 
%%
% (e) Does this set of vectors span $R^4$? Justify your answer.
%%
% A set of vectors { $v_1$ ... $v_n$} span $R^n$ if and only if, the matrix A =
% [ $v_1$ ... $v_n$] is consistent for every v in $R^n$.
% 
% Thus, yes. The given vectors are consistent, and so they span the space of $R^4$
