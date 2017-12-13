function [y,t] = runge_kutta_4(f,t0,y,h,N)
t=t0:h:N*h;
for i =1:N
k1=f(y(i),t(i));
k2 = f(y(i)+h*k1/2,t(i)+h/2);
k3 = f(y(i)+h*k2/2,t(i)+h/2);
k4 = f(y(i)+h*k3,t(i)+h);
y(i+1) = y(i) +h*(k1/6 + 2*k2/6 + 2*k3/6 + k4/6);
end

end
