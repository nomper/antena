clear
dx = 0.02;
L = 10;
x = -L:dx:L;
y = -L:dx:L;
z = -L:dx:L;
x = x + (dx/2);
y = y + (dx/2);
z = z + (dx/2);
% [X,Y,Z] = meshgrid(x);
[X,Y,Z] = meshgrid(x,y,z);
% R = sqrt(X.^2+Y.^2+Z.^2);
invR2 = 1./(X.^2+Y.^2+Z.^2);

Ep1 = X * 0 + 1;
Ep2 = Ep1;

% Z1 = and(Z>=0.5, Z<=1);
% Ep2(Z1) = 4.01;
Ep2(and(Z>=0.1, Z<=0.6)) = 4.01;


% Ep1c = Ep1.*invR2;
% s1 = sum(Ep1c,"all");
% 
% Ep2c = Ep2.*invR2;
% s2 = sum(Ep2c,"all");

sum(Ep2.*invR2,"all")/sum(Ep1.*invR2,"all")
clear





        
