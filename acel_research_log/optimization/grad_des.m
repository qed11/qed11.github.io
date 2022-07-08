function grad_des
    % implementation of my own solver for optimization
    % using gradient descent
   
    tic
    
    %compute analytical true s value
    mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
    disp(mu_true)
    ftrue = @(x) 1 - u_true(x, mu_true);
    starget = composite_gauss2(ftrue, 0 , 1 , 10);
    
    % set tolerance and step size, taken a bit from machine learning
    tol = 1e-5;
    step = 0.01;

    % randomize seed
    mu = 1e-4 + (1e-1 - 1e-4)*rand;
    counter = 0;

    % gradient descent calculation
    while true
        counter = counter + 1;
        fprintf("Iteration: %d, mu = %.7f\n", counter, mu)
        dJ = dJdmu(starget, 9, mu);

        mu = mu - step * dJ;

        if abs(step* dJ) < tol  
            break
        elseif mu > 0.1 || mu < 1e-4
            % constraint the mu value to be within the test domain
            % sometimes this results in very long computations 

            mu = 1e-4 + (1e-1 - 1e-4)*rand;
        end
    end
    
    %compare results
    fprintf("mu: %.7f, mu_true: %.7f\n", [mu, mu_true])
    toc
end