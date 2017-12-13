function [dx] = DP(f,x,h)
dx = (f(x+h)-f(x))/h;
end

