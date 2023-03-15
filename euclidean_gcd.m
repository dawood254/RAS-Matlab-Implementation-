function d = euclidean_gcd(a, b)
    while b ~= 0
        q = floor(a/b);
        r = a - q*b;
        a = b;
        b = r;
    end
    d = a;
end
