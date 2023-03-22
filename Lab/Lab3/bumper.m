function dvdx = bumper(X,V)
global K m;
dvdx=-(K*V^2*(X+1)^3)/m;