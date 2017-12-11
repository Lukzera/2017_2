function [y,t] = euler(f,t0,y,h,N)
t=t0:h:N*h;
for i =1:N
y(i+1) = h*f(y(i),t(i)) +y(i)
end

end

