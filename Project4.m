%% Math 240 Matlab Project 4
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
% (a) Enter the matricies for P = P(E<-B) and Q = P(E<-C)
format rat;
P = [1, 2, 2, 1; 0, -2, -1, 2; 0, 0, -1, 0; 0, 0, 0, 1]
Q = [1, 2, 0, 0; 2, -1, 3, 1; 0, 0, -4, 0; 1, 0, 1, 0]

%%
% (b) Use P and Q to compute R = P (E<-C)
R = inv(Q) * P

%%
% (c) Compute the C-coord vector for the polynominal $t^3$
C = inv(Q) * [0; 0; 0; 1]

%%
% (d) Suppose p(t) is the polynomial for which [p(t)]B = [0; 3; 2; 1]
PTC = R * [0; 3; 2; 1]

%%
% (e) Let p(t) denote the polynomial from the previous part. Express this
% polynomial in the form p(t) = a0 + a0t + a2t2 + a2t3
%%
% p(t) = 0 + 0.5t + $5.25t^2$ + $0.5t^3$

%% Problem 2
% (a) Execute [P,D] = eig(A)
format short;
A = [163 34 -8; -522 -108 26; 990 210 -47]
[P, D] = eig(A)

%%
% (b) Verify A = PD(inv(P))
B = P * D * inv(P);

%%
% Does B = A?
A
B
%%
% Yes it does, thus A = PDP^-1

%%
% (c) Give an eigenvector for each eigenvalue
%%
% Eigenvalues (Given by diag of D): 1, 4, 3
%%
% Eigenvectors (Given by P):
%%
% 1: [-0.1229; 0.3686; -0.9214]
%%
% 2: [0.1617; -0.5659; 0.8085]
%%
% 3: [-0.1961; 0.7845; -0.5883]
%% Problem 3
% (a) Compute $A^n$ from 2-8
A = [-23 -32 -10; 11 15 5; 18 26 7]
A^2
A^3
A^4
A^5
A^6
A^7
A^8
%%
% Every power divisible by 4 (I.E. 4, 8, 12) is the identity matrix

%%
% (b) Produce invertible P and diagonal D such that A = PD(inv(P))
B = P * D * inv(P);
[P, D] = eig(A)

%%
% Does B = A?
A
B
%%
% Ignoring the imaginary numbers, yes A = B
%%
% (c) Describe the pattern that emerges with $D^n$
%%
% Very similar to $A^n$, on powers divisible by 2 (Aka even powers) (I.E. 2, 4, 6, 8), we get
% the identity matrix. 

%%
% (d) Determine $A^{20000001}$ without MATLAB
%%
% Because 20000001 is an odd number, we can safely assume A^20000001 is
% just equal to A

%% Problem 4
% (a) Execute [P,D] = eig(A)
A = [3 1; 0 3]
[P, D] = eig(A)

%%
% (b) See if A = PD(inv(P))
B = P * D * inv(P);

%%
% Does A = B?
A
B
%%
% Although very close, A does NOT equal B

%%
% (c) Find the basis for the eigenspace of A
%%
% The basis is (1, 0)

%%
% (d) Is there a basis for $R^2$ consisting of eigenvectors for A?
%%
% There is no bases for $R^2$ because the vector set {(1, 0) and (-1, 0)}
% are lin-dependent 

%% Problem 5
% (a) Enter the above vectors in MATLAB as v1, v2, v3, v4
v1 = [9 14 -11 3 0]
v2 = [-14 -4 -10 9 -5]
v3 = [1 -10 4 -7 5]
v4 = [6 8 -1 -12 -8]

%%
% (b) Let A = [v1; v2; v3; v4]
A = [v1; v2; v3; v4]
rank(A)
%%
% Because there are four vectors and the rank(A) is 4, all four are
% linearly independent... Forming a basis for W

%%
% (c) Apply the Gram-Schmidt Process to produce a orthogonal basis
w1 = v1;
w2 = v2 - ((dot(w1, v2) / dot(w1, w1)) * w1)

%%
% (d) Continue with (c) for {w3 w4}
w3 = v3 - ((dot(w1, v3) / dot(w1, w1)) * w1 - dot(w2, v3) / dot(w2, w2) * w2)
w4 = v4 - (dot(w1, v4) / dot(w1, w1))*w1-(dot(w2, v4)/dot(w2, w2))*w2 - (dot(w3, v4)/dot(w3, w3))*w3

%%
% (e) Rescale each vector of the orthogonal basis
u1 = w1 / norm(w1)
u2 = w2 / norm(w2)
u3 = w3 / norm(w3)
u4 = w4 / norm(w4)

%%
% (f) Enter the produced vectors above (u1...u4) as a matrix Q
Q = [u1; u2; u3; u4]
Q' * Q

%%
% (g) Compute R = $Q^t$A
R = Q' * A

%%
% Does A = QR
A
Q * R

%%
% (h) Enter [Q1, R1] = qr(A, 0)
[Q1, R1] = qr(A, 0)

%% Problem 6
% (a) Enter the five given vectors into a matrix A and compute its Rank
v1 = [5; -5; 0; -4; -3; 4];
v2 = [9; -12; 2; -3; -7; 2];
v3 = [-2; -4; 4; 10; -2; -12];
v4 = [2; 3; -2; -4; -2; 7];
v5 = [-1; -2; 2; 5; -1; -6];
A = [v1, v2, v3, v4, v5]
rank(A)
rref(A)

%%
% (b) Find the basis for W
%%
% The basis is V1, V2, V4 (See RREF)
%%
% Given from the RREF form of A, the vectors 1, 2, 4 serve as the basis
%%
% (Basis 1)
v1
%%
% (Basis 2)
v2
%%
% (Basis 3)
v4

%%
% (c) Enter the orthogonal basis for W as columns of matrix B. compute B = QR
B = [v1, v2, v4]
[Q, R] = qr(B)

%%
% (d) Let E = QQ^T as a linear transformation on $R^6%. Compute the
% orthogonal projection onto W with the vector (1, 1, 1, 1, 1, 1)T
E = Q * Q'

%%
% (e) Find a basis for W-Perp (W-Perp = Null(B'))
WP = null(B')

%%
% (f) Find an a orthonormal basis for W-Perp
[Q, R] = qr(WP)

%%
% (g) Compute the matrix F for orthogonal projection onto W'. What is E +
% F?
F = WP * inv(WP' * WP) * WP'
E + F