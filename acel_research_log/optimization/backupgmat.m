function  backupgmat

setup;
mu = 0.01;

u = fem_p2(25, mu);

K = (size(u, 1) - 1)/2;
x = linspace(0, 1, size(u, 1))';

ww = zeros(K * 3, 1);
uu = zeros(K * 3, 1);
g = zeros(K * 3, size(u, 1));

for i = 1:2:size(x, 1) - 2
    [w, y, x] = wqJ2(x(i), x(i+2));
    s = w' * y * u(i:i+2);
    ww(i:i + 2) = w;
    g(i:i+2,i:i+2) = y;
    uu(i:i + 2) = x;
end

ww * uu; 
