function [ out ] = prob34()

arr = [3:2540160];
arr2 = [];

for n = arr
    str = num2str(n);
    len = length(str);
    total = [];
    for m = [1:len]
        now = str2num(str(m));
        res = fac(now);
        total = [total res];
    end   
    check = sum(total);
    if check == n
        arr2 = [arr2 n]
    end
end
        
out = sum(arr2);

end

function [res] = fac(num)

if num == 1
    res = 1;
elseif num ==0
    res = 1;
else
    res = num*fac(num-1);
end

end

