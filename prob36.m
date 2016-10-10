function [ out ] = prob36( until )

arr = [1:2:until];
sum = 0;

for n = arr
    n
    m = dec2bin(n);
    con1 = palin(n);
    con2 = palin(m);
    if all([con1 con2])
        sum = sum + n;
    end
end

out = sum;

end

function [out] = palin(num)

hold = num2str(num);
rep = hold;
rep = rep(end:-1:1);

out = strcmp(hold,rep);

end

