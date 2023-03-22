clc,clear,close all

%% Assignment Lab 01 

%% Question 2:Calculate 
A = [1 1 0; 0 1 1; 0 0 1];
B = [1i 1-1i 2+1i; 0 -1 3-1i; 0 0 -1i];
C = [1 1 1; 0 sqrt(2)*1i -sqrt(2)*1i;1 -1 -1];
Q2_1 = A*B-B*A;
Q2_2 = A^2 + B^2 + C^2;
Q2_3 = A*B*C;
Q2_4 = sqrt(A) + sqrt(B) + sqrt(C);
Q2_5 = eps^A * (eps^B + eps^C);

Q2_rankA = range(A,'all')
Q2_rankB = range(B);
Q2_rankC = range(C);

Q2_invA = inv(A);
Q2_invB = inv(B);
Q2_invC = inv(C);

Q2_trcA = trace(A);
Q2_trcB = trace(B);
Q2_trcC = trace(C);

Q2_detA = det(A);
Q2_detB = det(B);
Q2_detC = det(C);

Q2_conA = cond(A);
Q2_conB = cond(B);
Q2_conC = cond(C);

Q2_singA = svd(A);
Q2_singB = svd(B);
Q2_singC = svd(C);



