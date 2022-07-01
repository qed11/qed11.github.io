function [ww, phi] = gmat(n)

setup;

x = linspace(0, 1, 2*n + 3)';

ww = zeros(3 * (n + 1), 1);
phi = zeros(3 * (n + 1), 2 * n + 3);

for i = 1:n+1
    [w, philoc] = wqJ2(x(i), x(i+2));
    ww(3*i - 2:3*i) = w;
    phi(3*i - 2:3*i, 2*i-1:2*i+1) = philoc;
end

phi = phi(:, 2:end-1);

