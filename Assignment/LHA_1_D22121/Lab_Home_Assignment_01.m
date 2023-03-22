%% Assignment Lab 01 :Due date 08/02/2023

%% Question 1: 
% Generate a vector d of 20 random integers in the range 1 to 6
ranges = [1 6];
sizeOfMatrix = [1 20];
disp('Generate a vector d of 20 random integers in the range 1 to 6')
d = randi(ranges,sizeOfMatrix)

%% Question 2:
A = [1 1 0; 0 1 1; 0 0 1];
B = [1i 1-1i 2+1i; 0 -1 3-1i; 0 0 -1i];
C = [1 1 1; 0 sqrt(2)*1i -sqrt(2)*1i;1 -1 -1];

% Calculations
disp('AB-BA')
Q2_1 = A*B-B*A
disp('A^2 + B^2 + C^2')
Q2_2 = A^2 + B^2 + C^2
disp('ABC')
Q2_3 = A*B*C
disp('sqrt(A) + sqrt(B) + sqrt(C)')
Q2_4 = sqrt(A) + sqrt(B) + sqrt(C)
disp('e^A*(e^B + e^C)')
Q2_5 = exp(A) * (exp(B) + exp(C))
% Rank
disp('Range along all Dimensions')
Q2_rangeA = range(A,'all')
Q2_rangeB = range(B,'all')
Q2_rangeC = range(C,'all')
% Inverse
disp('Inverse')
Q2_invA = inv(A)
Q2_invB = inv(B)
Q2_invC = inv(C)
% Trace
disp('Trace')
Q2_trcA = trace(A)
Q2_trcB = trace(B)
Q2_trcC = trace(C)
% Determinant
disp('Determinant')
Q2_detA = det(A)
Q2_detB = det(B)
Q2_detC = det(C)
% Condition Number
disp('Condition Number')
Q2_conA = cond(A)
Q2_conB = cond(B)
Q2_conC = cond(C)
% Singular value decomposition
disp('Singular value decomposition')
Q2_singA = svd(A)
Q2_singB = svd(B)
Q2_singC = svd(C)

%% Question 3: 
disp('Random matrix of size 5x5 in range(0,1)')
Rm = rand([5 5]) % Random matrix of size 5x5 in range(0,1)
disp('Extraction of Submatrix')
subMatrix = Rm(2:4,3:4) %Extraction of Submatrix
% Delete 2 to 4 row and 5th column
delete = Rm;
delete(2:4,:) = [];
disp('Delete 2 to 4 row and 5th column')
delete(:,5) = []   
% Exchange First and last row
exchangeRow = Rm;
disp('Exchange First and last row')
exchangeRow([1 end],:) = exchangeRow([end 1],:)
% Exchange First and last column
exchangeCol = Rm;
disp('Exchange First and last column')
exchangeCol(:,[1 end]) = exchangeCol(:,[end 1])
% insert column of ones to right
onesC = ones(size(Rm,1),1);
disp('insert column of ones to right')
RMCR = [Rm onesC]
% insert column of ones to left
disp('insert column of ones to left')
RMCL = [onesC Rm]
% insert 2 rows of ones on top
disp('insert 2 rows of ones on top')
onesR = ones(2,size(Rm,2));
RMR2U = [ onesR; Rm]
% insert 2 rows of ones at bottom
disp('insert 2 rows of ones at bottom')
RMR2B = [ Rm;onesR]

%% Question 4: 
A = [2 6; 3 9];
B = [1 2; 3 4];
C = [-5 5; 5 3];

% Diagonal Matrix of A,B,C
disp('Diagonal Matrix of A,B,C')
G = blkdiag(A,B,C)
% Delete Last row and Last column
G1 = G;
G1(end,:) = [];
disp('Delete Last row and Last column')
G1(:,end) = []
% Extract First 4x4 submatrix from G
disp('Extract First 4x4 submatrix from G')
G12 = G(1:4,1:4)
% Replace G(5,5) with 4
G2 = G;
disp('Replace G(5,5) with 4')
G2(5,5) = 4
% Calculate Eigen Vector and Eigen Value
disp('Eigen Vector and Eigne Values of Diagonalised Matrix G')
[EigenVector,EigenValues] = eig(G)

%% Question 5: 
% Steady State Current
R = 5;
C = 10;
L = 4;
E = 2;
W = 2;
disp('Compute the Steady state Current')
I = E/sqrt(R^2 + (2*pi*W*L -1/(2*pi*W*C))^2)

%% Question 6:
% Population Forcast
t = 1790:10:2000;
p = 197273000./(1+exp(-0.03134*(t-1913.25)));
for i = 1:size(t,2)
    fprintf('Population of %d year = %d \n',t(i),p(i))
end
plot(t,p/1000)
xlabel('Years')
ylabel('Population in Thousands')
title('Population Forcast of US')

%% Question 7: 
% Evaluate the integral at m = pi/4
m = pi/4;
Km = @(theta) (1./sqrt(1-(m^2*(sin(theta)).^2)));
thetamin = 0;
thetamax = pi/2;
disp('integral at m = pi/4')
integrated = integral(Km,thetamin,thetamax)


%% Question 8: 
% Conversion table of Degrees to Radians
Degrees = 0:10:360;
Radians = (pi/180)*Degrees;
disp('Conversion table of Degrees to Radians')
DOC = [Degrees' Radians']


%% Question 9: 
% Calulate the value of function (x^2 + y^2) at x = 1 & y =2
fun = @(x,y) (x^2 + y^2);
disp('Calulate the value of function (x^2 + y^2) at x = 1 & y =2')
fun(1,2)

%% Question 10:
% Solve the differential Equation dy/dt = ty
syms y(t)
ode = diff(y,t) == t*y;
disp('Solve the differential Equation dy/dt = ty')
ysol(t) = dsolve(ode)




