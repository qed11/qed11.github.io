function q = s_composite(f, a, b)
%{
    f: (n, 1)
        a cells of functions that defines the piecewise linear function
    a: start of domain 
    b: end of domain

%}
    n = size(f, 1) + 1;
    x = linspace(a, b, n)';
    q = 0;
    for i = 1:n-1
        func = @(x) 1 - f{i}(x);
        q = q + composite_gauss2(func, x(i), x(i+1), 10);
    end

end

