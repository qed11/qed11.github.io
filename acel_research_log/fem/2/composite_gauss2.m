function q = composite_gauss2(f, a, b, n)
    x1 = -1/sqrt(3);
    x2 = 1/sqrt(3);
    w = (b-a)/(2*n);
    x = linspace(a, b, n+1)';
    sums = zeros(n,1);
    for i = 1:n
        c = x(i);
        d = x(i+1);
        x1_new = c + (d-c)./2 .*(x1 + 1);
        x2_new = c + (d-c)./2 .*(x2 + 1);
        sums(i) = w .* f(x1_new) + f(x2_new) .* w;
    end
    q = sum(sums);
end

