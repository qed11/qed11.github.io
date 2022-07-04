function r = res(n, mu, u)
[w, g] = gmat(n);
[~, A2] = amat(n);
L = lmat(n);

w' * ((g * u).^3 .* phi)

end

