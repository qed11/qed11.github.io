setup;
mu = 0.01;
n =3;

u = fem_p2(n, mu);

K = n+1;
x = linspace(0, 1, size(u, 1))';

ww = zeros(size(u, 1), 1);
gg = zeros(size(u, 1), size(u, 1));

xx = zeros(size(u, 1), 1);

for i = 1:2:size(x, 1) - 2
    [w, g] = wqJ2(x(i), x(i+2));
    ww(i:i + 2) = w;
    gg(i:i+2, i:i+2) = g;
    xx(i:i+2) = w' * g;
end

ftrue = @(x) u_true(x, mu);

disp(composite_gauss2(ftrue, 0, 1, 10))