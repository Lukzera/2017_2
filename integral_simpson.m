function [I] = integral_simpson(f,a,b,N)
h =(b-a)/N;
I=f(a)+f(b);
for i =1:N
I = I +4*f(a+h*(i-1/2));
end
for i =1:N-1
I = I +2*f(a+h*i);
end
I = h/6*I;
end

