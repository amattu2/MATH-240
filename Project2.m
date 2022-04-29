%% Math 240 Matlab Project 2
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
% (a) Enter A = $R_\theta$ with $\theta$ = $\pi$/5
%%
% Setup the equation 
syms theta;
format short;

[cos(theta) -sin(theta); sin(theta) cos(theta)]
A = [cos(pi/5) -sin(pi/5); sin(pi/5) cos(pi/5)]
Vector = [-3; 3]

%%
% Multiply A * Vector
A * Vector

%%
% (b) Given that B = $R_\theta$, and $\theta$ = $\pi$/13, find determine AB
% = BA
%%
% Setup the equation
B = [cos(pi/13) -sin(pi/13); sin(pi/13) cos(pi/13)]
%%
% Find AB
AB = A * B
%% 
% Find BA
BA = B * A
%%
% Compare the result (Save as C for later)
C = AB;

%%
% AB does equal BA in this case
%%
% (c) Since AB = BA, if we rotate by A (or B) then B (or A), it will yield
% the same results.

%%
% (d) Given that C = BA, Determine t by switching to format rat and compute
% $t/\pi$
format rat;

t = acos(C(1,1))
t/pi

%%
% (e) Determine if the inverse of $R_\theta$ is - $R_\theta$ when $\theta$ =
% $\pi$/5
format short;

R_Negative = [cos(-pi/5) -sin(-pi/5); sin(-pi/5) cos(-pi/5)]

%%
% Determine if R_Negative = inv(A)
A_Inv = inv(A)

%%
% They are identical and equal

%%
% (f) Compute $L_\theta$ for $\theta$ = $\pi$/5
%%
% $L_\theta$ is given by
L0 = [1 0; 0 -1]
R5 = [cos(-pi/5) -sin(-pi/5); sin(-pi/5) cos(-pi/5)]

%%
% We have to multiply $R_\theta$ * $L_0$ * $R^{-1}_\theta$
L5 = A * L0 * R5

%%
% (g) Determine if $L_\pi$ * $L_0$ = $L_0$ * $L_{\pi/5}$
L05 = L0 * L5
L50 = L5 * L0

%%
% They are not the same, L0 * L5 != L5 * L0
%%
% (h) Determine the angle of rotation for $L_{\pi/5}$ * $L_0$
format rat;
t = acos(L50(1, 1))

%% Problem 2
% (a) Put A into a augmented matrix [A $I_3$]
format rat;
A = [8 1 2; 1 2 2; 4 1 3]
M = [A eye(3)]
A_Ref = rref(M)

%%
% (b) Find the inverse of A using inv(A)
inv(A)

%% Problem 3
% (a) Compute the determinants of A and B (see below)
format rat;

%%
% Determinant of A
A = [6 17 0 11; 0 1 4 3; 0 0 -5 -1; 0 0 0 2]
det(A)

%%
% Determinant of B
B = [3 3 1 -1; 3 1 2 0; 1 3 -1 1; 0 -1 0 1]
det(B)

%%
% (b) Matrix A is a upper triangular matrix, so as with part (d), we can
% just multply the diag. entries (6 * -5 * 2 = -60) (Left out entry 1 because it
% doesn't change anything in this case)

%%
% (c) Compute C = AB and find the determinant of C
C = A * B
det(C)

%% 
% (d) Matrix A is a upper triangular matrix, so we could have multiplied
% the det(A) with det(B) and gotten the same answer (-60 * -6 = 360) (3.2
% Theorem 6)

%% Problem 4
% (a) Given the matrix A, find the determinant
format rat;
A = [-1 1 7 0; 4 0 6 -1; 1 8 0 2; 1 8 2 5]
det(A)

%%
% (b) See the following subsections

%%
% (b)(i) Given by the book, when two rows are interchanged, 
% the sign will change (-868) (Theorem 3, Part B)

%%
% (b)(ii) Given by the book, if you multiply a row [...] the det gets
% multiplied as well (1736) (Theorem 3, Part C)

%%
% (b)(iii) Given by the book, (Theorem 3, Part A) the determinant won't
% change because $-R_3$ is added to another row ($R_4$) (868)

%%
% (c)(i) B is obtained through swapping $R_1$ with $R_3$
B = A;
temp = B(1, :);
B(1,:) = B(3, :);
B(3,:) = temp;
B

%%
% (c)(ii) C is obtained through multiplying $R_4$ by 2
C = A;
C(4, :) = 2 * C(4, :);
C

%%
% (c)(iii) D is obtained by subtracting $R_3$ from $R_4$
D = A;
D(4, :) = D(4, :) - D(3, :);
D

%%
% (d) See the following subsections
%%
% (d)(i)
det(B)

%%
% (d)(ii)
det(C)

%%
% (d)(iii)
det(D)

%% Problem 5
% (a) Define the symbols a, b, c, d and declare a matrix using them
syms a b c d;
A = [a b; c d]

%%
% (b) Using inv(A), find the inverse of the matrix
inv(A)

%%
% (c) Define a additional 4 symbols and declare a matrix using them,
% compute the inverse
syms e f g h i;
B = [a b c; d e f; g h i]
inv(B)

%%
% (d) Multiply $B^{-1}$ by the scalar det(B)
C = det(B) * inv(B)
