function [ out ] = prob37( up )

list = primes(up);
total = 0;
new = [];

for n = list
    n
    str = num2str(n);
    len = length(str);
    
    if len == 1
        continue
    end
    
    for m = [1:len-1]
        str(1) = [];
        now = str2num(str);
        if ismember(now,list)
            flag = true;
        else
            flag = false;
            break
        end
    end
    
    if ~flag
        continue
    end
    
    str = num2str(n);
    
    for m = [1:len-1]
        str(end) = [];
        now = str2num(str);
        if ismember(now,list)
            flag = true;
        else
            flag = false;
            break
        end
    end
    
    if flag
       total = total + n;
       new = [new n];
    end
    
end

out = total;
new

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
