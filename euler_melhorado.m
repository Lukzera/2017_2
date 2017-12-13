function [y,t] = euler_melhorado(f,t0,y,h,N)
t=t0:h:N*h;
for i =1:N
k1=f(y(i),t(i));
ytil= y(i) + h*k1/2;
k2 = f(ytil,t(i)+h/2);
y(i+1) = y(i) +h*k2;
end

end
