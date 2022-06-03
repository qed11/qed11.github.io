function q = l2norm(f, a, b, ftrue)
%{
    f: (n, 1)
        a cells of functions that defines the piecewise linear function
    a: start of domain 
    b: end of domain

%}
    if ~exist('ftrue','var')
     % third parameter does not exist, so default it to something
        ftrue = @(x, mu) 0;
    end
    n = size(f, 1) + 1;
    x = linspace(a, b, n)';
    q = 0;
    for i = 1:n-1
        func = @(x) (f{i}(x) - ftrue(x, 0.01))^2;
        q = q + composite_gauss2(func, x(i), x(i+1), 10);
    end

end

