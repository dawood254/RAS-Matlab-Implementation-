function y = modexp(a, b, n)
    y = 1;
    while b > 0
        if bitand(b, 1)
            y = mod(y*a, n);
        end
        a = mod(a^2, n);
        b = bitshift(b, -1);
    end
end
