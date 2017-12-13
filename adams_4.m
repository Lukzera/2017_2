function [y,t] = adams_4(f,t0,y,h,N)
t=t0:h:N*h;
y = runge_kutta_4(f,t0,y,h,3);
for i =4:N
k1=f(y(i),t(i));
k2 = f(y(i-1),t(i-1));
k3 = f(y(i-2),t(i-2));
k4 = f(y(i-3),t(i-3));
y(i+1) = y(i) +h*(55*k1/24 -59*k2/24 +37*k3/24 -9*k4/24);
end

end
