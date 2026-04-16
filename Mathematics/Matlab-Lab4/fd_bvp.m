function y = fd_bvp(p,q,r,a,b,alpha,beta,N)

h = (b-a)/N
x = linspace(a,b,N+1)
A = zeros(N-1,N-1)
B = zeros(N-1,1)

for i = 1:N-1
    xi = a + i*h
    A(i,i) = -2 + h^2*q(xi)
    if i>1
        A(i,i-1) = 1-(h/2)*p(xi);
    end
    if i<N-1
        A(i,i+1) = 1 + (h/2)*p(xi);
    end
    B(i) = h^2*r(xi)
end

B(1) = B(1) - (1-(h/2)*p(a+h))*alpha;
B(end) = B(end) - (1 + (h/2)*p(b-h))* beta;

y_inner = A\B;

y = [alpha;y_inner;beta];

end
