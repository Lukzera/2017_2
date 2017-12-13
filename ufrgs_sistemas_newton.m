function [x] = ufrgs_sistemas_newton(J,F,z,N)
for i =1:N
h = J(z)\-F(z);
x = z + h;
z=x;
end
end

