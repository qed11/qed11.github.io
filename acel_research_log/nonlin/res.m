function [r, J] = res(n, mu, u)
    [w, phi] = gmat(n);
    [~, A2] = amat(n);
    L = lmat(n);
    
    r = mu * A2 * u + ((phi * u).^3 .* phi)' * w - L;
    
    wq = 3*(phi * u).^2;
    wqs = spdiags(wq, 0, size(wq, 1),size(wq, 1));
    J = mu * A2 + phi' * wqs * phi;
end

