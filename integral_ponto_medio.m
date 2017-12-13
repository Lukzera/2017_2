function [I] = integral_ponto_medio(f,a,b,N)
h =(b-a)/N;
I=0;
for i =1:N
I = I +f(a+h/2*(2*i-1));
end
I = ((b-a)/N)*I;


end

