function wqJ = wqJ2(n, a, b)
    c = (b + a)/2;
    K = [a c b];
    V = [ones(3, 1) K K.^2];
    %get all the coeffs for the basis poly: 3x3 matrix
    C = eye(3) / V;
    
    w = [-sqrt(3/5) 0 sqrt(3/5)]';
    x = [5/9 8/9 5/9]';
    

end

