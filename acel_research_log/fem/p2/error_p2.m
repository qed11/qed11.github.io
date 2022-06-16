function error_p2
clear
addpath '/home/qed/git/qed11.github.io/acel_research_log/fem'
n = 10;
errp1 = zeros(n,2);
errp2 = zeros(n, 2);
dof = zeros(n, 1);
mu = 1/100;
for i = 1:8
    dof(i) = 2^i;
    
    [~, ~, fu, dfu] = FEM(2^i, mu);
    
    ftrue = @(x) u_true(x, mu);
    dftrue = @(x) du_true(x, mu);
    %Following done via Gauss Quadrature:
    l2 = l2norm(fu, 0, 1, ftrue);
    h1 = l2 + l2norm(dfu, 0, 1, dftrue);
    
    errp1(i, 1) = sqrt(l2);
    errp1(i, 2) = sqrt(h1);


    [~, fu, dfu] = fem_p2(2^i, mu);
    
    ftrue = @(x) u_true(x, mu);
    dftrue = @(x) du_true(x, mu);


    %Following done via Gauss Quadrature:
    l2 = l2norm(fu, 0, 1, ftrue);
    h1 = l2 + l2norm(dfu, 0, 1, dftrue);
    

    errp2(i, 1) = sqrt(l2);
    errp2(i, 2) = sqrt(h1);
    %=====================================

end
figure
loglog(dof, errp1(:, 1))
hold on
loglog(dof, errp1(:, 2))
loglog(dof, errp2(:, 1))
loglog(dof, errp2(:, 2))
hold off
legend("L2, Linear", "H1, Linear", "L2, Quadratic", "H1, Quadratic", "Location","best")
xlabel("Degrees of Freedom", "Interpreter", "latex")
ylabel("Error", "Interpreter", "latex")
title("Error \(H^1\) and \(L^2\) norms", "Interpreter","latex")
saveas(gcf, "error_quadratic.pdf")

end
