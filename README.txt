Attention!!
This is a repository 4 storing class tips n tricks for "Cálculo Numérico" 
function [resp] = bissecaoite(f,a,b,n)
for i =1:n
    p =(a+b)/2;
    if(f(a) * f(p) < 0)
        b = p;
    else if(f(b) * f(p) <0)
            a= p;
        else if(f(p) == 0)
            break
            else 
                disp('intervalo errado bad 4ya fellin sad');
                break
        end
    end
end
resp = p;
end
end
----------------------------------------------------
function [resp] = bissecaopre(f,a,b,e)
    resp = 0;
    p = (a + b)/2;
    aux = f(p);
    c = f(a);
    d = f(b);
    precision = e;
    if(aux <= precision && aux >=( precision * -1))
        resp = p;
    else if(c*aux <0)
        resp = bissecaopre(f,a,p,e);
       
        else if (d*aux <0)
        resp = bissecaopre(f,p,b,e);
       
            else
                disp('intervalo errado');
               
            end
        end
    end
end
--------------------------------------------------------
