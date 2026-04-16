function result = isPrimeNum(n)
% Checks if a number is prime
% Returns 1 if prime, 0 if not

    if n <= 1
        result = 0;
        return
    end

    for i = 2:sqrt(n)
        if mod(n, i) == 0
            result = 0;
            return
        end
    end

    result = 1;
end
