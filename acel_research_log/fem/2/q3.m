%Question 3b
format shorte
points = [1e-2 1e-5 1e-8]';
f = @(p)adaptive_gauss_kronrod(@(x)2 * sqrt(1 -x^2), -1, 1, p);
[q, e, cnt] = arrayfun(f, points);
ans_real = pi;
err = abs(q - ans_real);
disp('value(Q) Error(|I - Q|) Estimated Error(E) Function Interation');
disp([q err e cnt])

%Question 3c
f = @(x) ktgeom(x);
[v, err, count] = adaptive_gauss_kronrod(f, 0, 1, 1e-5);
disp('   value(Q) | Estimated Error(E) | Function Interation');
disp([v*2 err count])