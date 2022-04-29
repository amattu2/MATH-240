%% Math 240 Matlab Project 3
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
% Problem #40, P. 239 Ed. 6
%%
%
% (a) Let H = Span{ $v_1$, $v_2$, $v_3$} and $\beta$ = { $v_1$, $v_2$, $v_3$}
% show that $\beta$ is a basis for H and x is in H, find the
% $\beta$-coordinate vector of x

%%
% Given $v_1$
V_1 = [-6 4 -9 4];

%%
% Given $v_2$
V_2 = [8 -3 7 -3];

%%
% Given $v_3$
V_3 = [-9 5 -8 3];

%%
% Given x
x = [4 7 -8 3];

%%
% Form { $v_1$, $v_2$, $v_3$} into an augmented matrix (With X)
A = [-6 8 -9 4; 4 -3 5 7; -9 7 -8 -8; 4 -3 3 3]

%%
% Perform RREF on A to determine if the columns are linearly inde or depe.
rref(A)

%%
% Given from the result, the vectors are independent
%%
% $v_1$ = 3
%%
% $v_2$ = 5
%%
% $v_3$ = 2

%%
% And the basis vector is [3; 5; 2]

%% Problem 2
% (a) [See Q2.. Too long to transcribe]
format short;
C0 = cos(0);
C01 = cos(0.1);
C02 = cos(0.2);
C03 = cos(0.3);

A = [1 C0 (C0^2) (C0^3); 1 C01 (C01^2) (C01^3); 1 C02 (C02^2) (C02^3); 1 C03 (C03^2) (C03^3)]

%%
% (b)(i) Compute RREF(A)
rref(A)

%%
% (b)(ii) Compute DET(A)
det(A)

%%
% (c) BRIEFLY show why RREF(A) and DET(A) both show A is invertible
%%
% The result of RREF(A) has (1)s in it's diag. entries (full rank)
%%
% The result of DET(A) is not zero

%%
% (d) Repeat the computations of (a) with slightly larger values
C0 = cos(0);
C01 = cos(0.2);
C02 = cos(0.5);
C03 = cos(1);

A = [1 C0 (C0^2) (C0^3); 1 C01 (C01^2) (C01^3); 1 C02 (C02^2) (C02^3); 1 C03 (C03^2) (C03^3)]
det(A)

%%
% Seeing the result above reduces suspicion of a rounding error.

%%
% (e) Trig identity ${\sin}^2(t)$ + ${\cos}^2(t)$ = 1

%% Problem 3
% Problem #54, P. 249 Ed. 6

%%
% (a) Write the $\beta$-coord. vectors of the vectors in C, and show that C
% is linearly independent
%%
% To prove C is linearly independent, 
%%
% Let VSET = [ $V_0$ $V_1$ ... $V_6$]
%%
% and
%%
% CSET = [ $1_{\beta}$ ${cos(t)}_{\beta}$ ... ${cos(6t)}_{\beta}$ ]
%%
% and A is the matrix with ([VSET * CSET] * [1; cos(t); cos^2(t); ...  cos^6(t)])
%%
% ... Jumping forward, there are 7 pivots in A, which leaves no nullspace.
%%
% Since there is a pivot in each column (and row), thus, C is linearly
% independent in H

%%
% (b) Explain why C is a basis for H
%%
% Given that C = {1, cos(t), cos(2t), ..., cos(6t)} is lin-independent
%%
% and the dem of H is 7, C spans H, and is a basis for H.

%% Problem 4
% (a) Given the matrix A (See below), compute RANK(A)
format rat;
A = [-2 2 1 8 2; 1 -10 22 11 11; 1 -4 7 1 3; -2 -4 16 18 10]
rank(A)

%%
% (b) Given the rank of A, see below
%%
% (b)(i) Find the value of dim(Nul A)
%%
% Per theroem #14 (P. 244, Ed. 6th),
%%
% Rank(A) + Nul(A) = Number of columns in A
%%
% 2 + dim(Nul A) = 5
%%
% dim(Nul A) = 3
%%
% Answer = 3

%%
% (b)(ii) Find the value of dim(Col A)
%%
% dim(Col A) = Rank of A
%%
% Answer = 2

%%
% (b)(iii) Find the value of dim(Row A)
%%
% Dim(Row A) = Dim(Col A) = Rank(A)
%%
% Answer = 2

%%
% (c) Compute RREF(A) and use it to compute Nul(A), Col(A), and Row(A)
rref(A)

%%
% (c)(i) Nul(A)
%%
% The basis for Nul(A) is the following set of vectors with their entries
% separated by a comma. These are the columns without a leading 1 (pivot)
%%
% $V_3$ = [3, 5/2, 1, 0, 0]
%%
% $V_4$ = [17/3, 5/3, 0, 1, 0]
%%
% $V_5$ = [7/3, 4/3, 0, 0, 1]

%%
% (c)(ii) Col(A)
%%
% The basis for Col(A), determined by RREF of A, is $C_1$ and $C_2$
%%
% Aka
%%
% (2, 1, 1, -2)
%%
% and
%%
% (2, -10, -4, -4)

%%
% (c)(iii) Row(A)
%%
% the basis for Row(A), determined by RREF of A, is $R_1$ and $R_2$
%%
% Aka
%%
% (-2 2 1 8 2)
%%
% and
%%
% (1 -10 22 11 11)

%% Problem 5
% (a) Enter into MatLab the given vectors P1..P5
V1 = [4 3 7 3];
V2 = [2 1 1 -1];
V3 = [1 1 3 2];
V4 = [-3 5 8 1];
V5 = [5 3 5 0];

%%
% (b) Given the above vectors, create a Matrix with [V1 ... V5]
A = [V1; V2; V3; V4; V5]
%%
% Observe that Span{V1 ... V5} is Col(A)
rref(A)
%%
% The rows (and columns) 1-3 form a basis for W

%%
% (c) The basis for W is $V_1$, $V_2$, $V_3$ (3
% linearly-independent vectors)
%%
% $V_1$ = (4, 3, 7, 3) = 4 + 3t + 7t^2 + 3t^3
%%
% $V_2$ = (2, 1, 1, -1) = 2 + t + t^2 - t^3
%%
% $V_3$ = (1, 1, 3, 2) = 1 + t + 3t^2 + 2t^3
%%
% The dim of W is 3 (See the basis above)

%%
% (d) Is W = $P_3$
%%
% No. Dim of W is 3, Dim of $P_3$ is 4.

%% Problem 6
% (a) Enter the given vectors into matlab as $A_x$
A1 = [2; -3; 4; -2; 1; 2]
A2 = [0; -4; 0; -3; 2; 1]
A3 = [2; 0; 4; 5; -2; -1]
A4 = [1; -12; 2; 3; 2; -2]

%%
% (b) Show that $A_1$ ... $A_4$ are linearly dependent vectors
%%
% Let [A1; A2; A3; A4; A5] = AC
AC = [A1 A2 A3 A4]
rref(AC)
%%
% Given that there are only 3 pivots, the vectors are linearly dependent

%%
% (c) Express one of the matricies as a linear combination of the other
% three.
%%
% From part 6(B) we can see that $A_4$ = -2*A1 + 4.5*A2 + 2.5*A3
%%
% Given that A4 =
A4
%%
% Proof =
-2*A1 + 4.5*A2 + 2.5*A3

