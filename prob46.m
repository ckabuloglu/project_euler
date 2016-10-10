function [ out ] = prob46(lim)

list = primes(lim);
i = 3;
found = false;

while ~found
    i
    
    root = 1;
    squared = false;
    
    if ismember(i,list)
        i = i + 2;
        continue
    end
    
    while ~squared
        sqr = root^2;
        now = i - 2*sqr;
        if sqr >= i
            found = true;
            out = i;
            break
        elseif ~isempty(list(list==now))
            squared = true;
            break
        else
            root = root + 1;
        end
    end
    i = i + 2;
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
