function y = modinv(a, m)
    [g, x, y] = extended_euclidean_algorithm(a, m);
    if g ~= 1
        error('No inverse exists')
    else
        y = my_mod(x, m);
    end
end