function [gcd, x, y] = extended_euclidean_algorithm(a, b)
    if b == 0
        gcd = a;
        x = 1;
        y = 0;
        return
    end
    
    [gcd, x1, y1] = extended_euclidean_algorithm(b, my_mod(a, b));
    x = y1;
    y = x1 - floor(a / b) * y1;
end
