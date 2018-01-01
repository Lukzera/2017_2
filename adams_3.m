function [y,t] = adams_3(f,t0,y,h,N)
t=t0:h:N*h;
y = runge_kutta_4(f,t0,y,h,2);
k1=f(y(3),t(3));
k2 = f(y(2),t(2));
k3 = f(y(1),t(1));
for i =3:N
y(i+1) = y(i) +h*(23*k1/12 -16*k2/12 +5*k3/12);
k3 = k2;
k2 = k1;
k1 = f(y(i+1),t(i+1));

end

end
