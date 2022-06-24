function  gmat

setup;
mu = 0.01;
n =3;

u = fem_p2(n, mu);

K = n+1;
x = linspace(0, 1, size(u, 1))';

ww = zeros(K, 1);
gg = zeros(K, size(u, 1));

for i = 1:2:size(x, 1) - 2
    [w, g] = wqJ2(x(i), x(i+2));
    ww(i:i + 2) = w;
    gg((i+1)/2, i:i+2) = w' * g;
end

disp(ww)
disp(gg * u)

ftrue = @(x) u_true(x, mu);

disp(composite_gauss2(ftrue, 0, 1, 10))