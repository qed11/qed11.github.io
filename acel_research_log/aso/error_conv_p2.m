dof = 4608 * 4.^[0 1 2 3];
optim = [7.919e-4 2.0889e-4 7.652e-5 3.464e-5];
param = [6.57e-3 6.485e-4 3.234e-4 1.402e-4];


figure
loglog(dof, optim)
hold on
loglog(dof, param)

% =====================================================
%{
adapt_err = readtable("error_csv/errors_orig_1.csv");
loglog(adapt_err{:, 1}, adapt_err{:, 2})
loglog(adapt_err{:, 1}, adapt_err{:, 3})

adapt_err = readtable("error_csv/errors.csv");
loglog(adapt_err{:, 1}, adapt_err{:, 2})
loglog(adapt_err{:, 1}, adapt_err{:, 3})
%}
%======================================================
loglog(dof, sqrt(1./(100.*dof)),"-.")
loglog(dof, 5./dof,"-.")
loglog(dof, 0.5./dof.^(2/3), "-.")


title("Error convergence rate on uniformly spaced mesh", "Interpreter","latex")
xlabel("Degrees of Freedom, \(N\)", "Interpreter","latex")
ylabel("Error", "Interpreter","latex")
legend("Pressure Matching Error", "Parameter Error Norm", ...
       "\(N^{-1/2}\) Convergence", "\(N^{-1}\) Convergence", ...
       "\(N^{-2/3}\) Convergence","Location","best", 'Interpreter', "latex")
saveas(gcf, "result_uniform_mesh/error_conv_p2.pdf")