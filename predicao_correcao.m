function [y,t] = predicao_correcao(f,t0,y,h,N)
t=t0:h:N*h;
for i =1:N
k1=f(y(i),t(i));
ytil= y(i) + h*k1;
k2 = f(ytil,t(i)+h);
y(i+1) = y(i) +h*(k1+k2)/2;
end

end

