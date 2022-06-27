function adjoint_optim
    mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
    ftrue = @(x) 1 - u_true(x, mu_true);
    starget = composite_gauss2(ftrue, 0 , 1 , 10);
    
    tol = 1e-4;
    step = 0.1;
    mu = 1e-4;
    while true
        dJ = dJdmu(starget, 9, mu);

        curr_step = step/dJ;
        mu = mu - curr_step * dJ;

        if abs(dJ) < tol || mu < 1e-4 || mu > 0.1
            break
        end
    end

    disp([mu,mu_true])
end