function [ out ] = prob35( in )

list = primes(in);
main = 0;

for n = list
    n
    count = 1;
    str = num2str(n);
    len = length(str);
    
    if len == 1
        main = main + 1;
    end
    
    for m = [1:len-1]
        hold = str(1);
        str(1) = [];
        str = [str hold];
        now = str2num(str);
        
        if ismember(now,list)
            count = count + 1;
        else
            break
        end
        
        if len == count
            main = main + 1;
        end
    end
    
end

out = main;

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

