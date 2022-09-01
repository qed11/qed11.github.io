dof = 4608 * 4.^[0 1 2 3];
optim = [7.919e-4 2.0889e-4 7.652e-5 3.464e-5];
param = [6.57e-3 6.485e-4 3.234e-4 1.402e-4];


figure
loglog(dof, optim, "o-", MarkerSize=5)
hold on
loglog(dof, param, "+-")

% =====================================================

adapt_err = readtable("error_csv/errors_orig_1.csv");
loglog(adapt_err{:, 1}, adapt_err{:, 2}, "*-")
loglog(adapt_err{:, 1}, adapt_err{:, 3},"x-")

adapt_err = readtable("error_csv/errors_orig_2.csv");
loglog(adapt_err{:, 1}, adapt_err{:, 2}, "^-")
loglog(adapt_err{:, 1}, adapt_err{:, 3}, "p-")

%======================================================
loglog(dof, sqrt(1./(100.*dof)),"-.")
loglog(dof, 5./dof,"-.")
loglog(dof, 0.5./dof.^(2/3), "-.")


title("Error convergence rate on uniformly spaced mesh", "Interpreter","latex")
xlabel("Degrees of Freedom, \(N\)", "Interpreter","latex")
ylabel("Error", "Interpreter","latex")
legend("\(C_p\) error, uniform", "\(\mu\) Error, uniform", ...
       "\(C_p\) error, AMR with init fineness 1 ","\(\mu\) Error, AMR with init fineness 1",...
       "\(N^{-1/2}\) Convergence", "\(N^{-1}\) Convergence", ...
       "\(N^{-2/3}\) Convergence","Location","best", 'Interpreter', "latex")
saveas(gcf, "result_uniform_mesh/error_conv_with_r1_adapt.pdf")