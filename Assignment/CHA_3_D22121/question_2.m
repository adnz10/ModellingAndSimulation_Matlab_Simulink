clc,clear,close all

syms m1 m2 m3 k b1 b2 s F

D11 = m1*s^2 + b1*s +2*k;
D22 = m2*s^2 + b2*s +2*k;
D33 = m3*s^2 + b2*s +2*k;
D12 = 0;
D21 = D12;
D13 = -k;
D31 = D13;
D23 = -(b2*s+k);
D32 = D23;
D = [D11 D12 D13; D21 D22 D23; D31 D32 D33];
b = [0;0;F];

D1 = D;
D2 = D;
D3 = D;
D1(:,1) = b;
D2(:,2) = b;
D3(:,3) = b;

x1 = det(D1)/det(D)
x2 = det(D2)/det(D)
x3 = det(D3)/det(D)

det(D)