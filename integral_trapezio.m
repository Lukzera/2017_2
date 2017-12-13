function [I] = integral_trapezio(f,a,b,N)
h =(b-a)/N;
I=(f(a)+f(b))/2;
for i =1:N-1
I = I +f(a+h*i);
end
I = h*I
end

