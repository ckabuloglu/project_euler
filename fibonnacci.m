function [ out ] = fibonnacci( in )

mat = [1 1];

for n = [3:in]
    a = mat(n-2);
    b = mat(n-1);
    mat(n) = a+b;
end

len = length(mat);
digit = 1;
digits = [];
count = 0;

for n = [1:len]
    now = mat(n);
    if log10(now) < digit
       count = count + 1;
    else
        digits = [digits count];
        count = 1;
        digit = digit + 1;
    end
end

len = length(digits);
count = 0;
counts = [];

for n = [1:len]
    now = digits(n);
    if now == 4
        counts = [counts count];
        count = 0;
    else
        count = count + 1;      
    end
end

out = counts;

end

