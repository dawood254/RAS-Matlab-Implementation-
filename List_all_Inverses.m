function output = List_all_Inverses(m)
x =1;
j=1;
while x<m
    [g,a,b]=extended_euclidean_algorithm(x, m);
    if g==1
        X(j)=modinv(x, m);
        j=j+1;
        x=x+1;
    else
        x=x+1;
    end
end
output = X;
