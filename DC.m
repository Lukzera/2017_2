function [dx] = DC(f,x,h)
dx = (DR(f,x,h)+DP(f,x,h))/2;
end

