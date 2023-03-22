clc,clear,close all

syms m1 m2 m3 k1 k2 k3 c1 c2 c3 c4 c5 s F

D11 = m1*s^2 + (c1+c2+c5)*s + k1 +k2;
D22 = m2*s^2 + (c2+c3+c4)*s + k2 +k3;
D33 = m3*s^2 + (c3+c5)*s + k2;
D12 = -(c2*s+k2);
D21 = D12;
D13 = -c5*s;
D31 = D13;
D23 = -(c3*s + k3);
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
