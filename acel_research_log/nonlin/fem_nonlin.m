function u = fem_nonlin(n, mu, tol)
    %just an initial guess, seems like a good place to start with
    u = fem_p2(n, mu);

    % Newton's Method - Taken straight from AER336
    while true
        [r, J] = res(n, mu, u);
        du = J\(-r);
        u = u + du;
        if norm(r) < tol
            break
        end
    
    end
end
