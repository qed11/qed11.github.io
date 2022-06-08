function [q,e,cnt] = agk_GPU(f,a,b,tol)
    cnt = 0;
    param = gpuArray(importdata('gauss_kronrod.dat').data);
    xi = a + (b-a)/2 * (param(:, 1) + 1);
    wi = (b-a)/2 * param(:, 2:3);
    q_gauss = f(xi') * wi(:, 1);
    q = f(xi') * wi(:, 2);
    e = (200 * abs(q - q_gauss))^(3/2);
    if e > tol
        c = a + (b-a)/2;
        tol_new = tol/2;
        [q1, e1, cnt1] = agk_GPU(f,a,c,tol_new);
        [q2, e2, cnt2] = agk_GPU(f,c,b,tol_new);
        [q, e, cnt] = deal(q1+q2, e1+e2, cnt1+cnt2);
    end
    cnt = cnt+15;

end