function [w, phi] = wqJ2(a, b)
    
    
    c = (b + a)/2;
    K = [a;c;b];
    V = [ones(3, 1) K K.^2];
    %get all the coeffs for the basis poly: 3x3 matrix
    C = eye(3) / V;
    
    x0 = [-sqrt(3/5); 0; sqrt(3/5)];
    w0 = [5/9; 8/9; 5/9];

    x = a + (b - a)/2 * (x0 + 1);
    w = (b - a)/2 * w0;

    phi = [ones(3, 1) x x.^2] * C;

end

