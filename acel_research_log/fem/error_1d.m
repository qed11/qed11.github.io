function error_1d
clear
n = 8;
err = zeros(n, 2);
dof = zeros(n, 1);
mu = 1/100;
for i = 1:8
    dof(i) = 2^i;
    [u, du, fu, dfu] = FEM(2^i, mu);
    
    %Implement Gauss Quadrature method to it
    l2 = l2norm(fu, 0, 1, @u_true);
   
    h1 = l2 + l2norm(dfu, 0, 1, @du_true);
  
    err(i, 1) = sqrt(l2);
    err(i, 2) = sqrt(h1);
end
figure
loglog(dof, err(:, 1))
hold on
loglog(dof, err(:, 2))
hold off
end
