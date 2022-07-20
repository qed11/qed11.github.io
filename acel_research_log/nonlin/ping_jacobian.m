function ping_jacobian

n = 5;
mu = 0.1;
u = 1 + 0.5*rand(2*n + 1,1);

del = 1e-8;
[~, J] = res(n,mu,u);
Jfd = zeros(2*n + 1,2* n + 1);


for j = 1:2*n + 1
    u(j) = u(j) + del;
    [r1, ~] = res(n, mu, u);
    u(j) = u(j) - 2*del;
    [r2, ~] = res(n, mu, u);
    u(j) = u(j) + del;
    Jfd(:,j) = (r1 - r2)/(2*del);
end
    full(J)
    Jfd
    norm(J - Jfd, 'fro')

end