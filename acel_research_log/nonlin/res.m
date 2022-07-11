function [r, J] = res(n, mu, u)
    %integration matrices
    [w, phi] = gmat(n);
    
    %stiffness matrix
    [~, A2] = amat(n);
    
    %load vector
    L = lmat(n);
    
    % computation of the residual -- derivation on onenote
    r = mu * A2 * u + ((phi * u).^3 .* phi)' * w - L;
    %r = mu * A2 * u;% + phi' * ((phi * u).^3 .* w) - L;
    
    % helper function that creates a matrix that is convenient for
    % integration
    wq = 3 *  w .*  (phi * u).^2;
        
    %wq = 3 * (phi * u).^2;



    wqs = spdiags(wq, 0, size(wq, 1),size(wq, 1));
    %computation of gradient of r wrt u - dR/du
    
    J = mu * A2 +  phi' * wqs * phi ;

end

