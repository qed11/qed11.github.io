function error_functional
clear
n = 8;
err = zeros(n, 1);
dof = zeros(n, 1);
mu = 1/100;
for i = 1:n
    dof(i) = 2^i;
    [~, ~, fu, ~] = FEM(2^i, mu);
    s = s_composite(fu, 0, 1);
    ftrue = @(x) 1 - u_true(x, mu);
    strue = composite_gauss2(ftrue, 0 , 1 , 10);
    err(i) = abs(strue - s);
end
figure
loglog(dof, err)
xlabel("Degrees of Freedom", "Interpreter", "latex")
ylabel("Error", "Interpreter", "latex")
title("Error of desired quantity", "Interpreter","latex")
saveas(gcf, "error_functional.pdf")
end
