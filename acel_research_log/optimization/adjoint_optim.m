function adjoint_optim
    tic
    mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
    ftrue = @(x) 1 - u_true(x, mu_true);
    starget = composite_gauss2(ftrue, 0 , 1 , 10);
    
    tol = 1e-7;
    step = 0.01;
    mu = 5e-2;
    counter = 0;
    while true
        counter = counter + 1;
        disp(["Iteration:", counter, "mu = ", mu])
        dJ = dJdmu(starget, 9, mu);

        mu = mu - step * dJ;

        if abs(step* dJ) < tol  
            break
        elseif mu > 0.1
            mu = 0.075;
        elseif mu < 1e-4
            mu = 0.00025;
        end
    end

    disp([mu,mu_true])
    toc
end