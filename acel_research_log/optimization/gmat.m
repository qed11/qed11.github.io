function g = gmat(n, mu)

setup;

u = fem_p2(n, mu);

x = linspace(0, 1, size(u, 1))';

ww = zeros(3 * (n + 1), 1);
phi = zeros(3 * (n + 1), size(u, 1));

for i = 1:n+1
    [w, philoc] = wqJ2(x(i), x(i+2));
    ww(3*i - 2:3*i) = w;
    phi(3*i - 2:3*i, 2*i-1:2*i+1) = philoc;
end

g = ww' * phi;

ftrue = @(x) u_true(x, mu);

disp(ww' * phi * u)
disp(composite_gauss2(ftrue, 0, 1, 10))