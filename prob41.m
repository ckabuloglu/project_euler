function [ out ] = prob41( digit )

up = 10^(digit)-1;

list = primes(up);
new = [];
for n = list;
    con = pan(n);
    if con
        new = [new n];
    end
end

out = max(new);

end

function [con] = pan(num)

str = num2str(num);
len = length(str);

for n = [1:len]
    m = num2str(n);
    if ~isempty(str(str=='0'))
        con = false;
        break        
    end
    
    if isempty(str(str==m))
        con = false;
        break
    else
        con = true;
        continue
    end
end

end

function [out] = primes(until)

list = [1:until];
list2 = [2:until/2];

for n = list2
    n
    cur = [n*2:n:until];
    list(cur) = 0;  
end

list(list==0) = [];
list(1) = [];
out = list;

end
