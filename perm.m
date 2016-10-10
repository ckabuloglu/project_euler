function [ list ] = perm( arr )

len = length(arr);

list = [];

if len == 1
    list = arr(1);
else
    len = length(arr);
    for n = [1:len]
        rep = arr;
        now = rep(n);
        num = factorialRec(len);
        now = ones(num,1)*now;
        list = [list;now,perm(rep)];
    end 
end

end