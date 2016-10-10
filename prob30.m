function [ out ] = prob30( power )

up = (10^(power+1))-1;
arr = [2:up];
list = [];

for n = arr
    n
    str = num2str(n);
    len = length(str);
    mid = 0;
    for m = [1:len]
        cur = str2num(str(m));
        cur = cur^power;
        mid = mid + cur;
    end
    
    if n == mid
        list = [list n];
    end
end

list

out = sum(list);
      
end

