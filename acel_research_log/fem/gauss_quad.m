function q = gauss_quad(f, a, b)
    x1 = -1/sqrt(3);
    x2 = 1/sqrt(3);
    w = (b-a)/2;
    x1_new = a + (b-a)./2 .*(x1 + 1);
    x2_new = a + (b-a)./2 .*(x2 + 1);
    
    q = w * f(x1_new) + w* f(x2_new);
    
end

