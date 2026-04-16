function x = gaussElimination(A,b)
n = length(b);
Aug = [A b];
for k=1:n-1
    for i = k+1:n
        factor = Aug(i,k)/Aug(k,k);
        Aug(i,k:n+1) = Aug(i,k:n+1) - factor*Aug(k,k:n+1);
    end
end

x = zeros(n,1);
x(n) = Aug(n,n+1)/Aug(n,n);
for i=n-1:-1:1
    x(i) = (Aug(i,n+1) - Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
end
end





