function [ out ] = prob31( target,coins )

N = 1000;
set(0,'RecursionLimit',N)
out = recurse(target,coins);

end

function [count] = recurse(rem,arr)

if rem == 0
    count = 1;
elseif length(arr) == 1
    if rem > arr(1)
        rem = rem - arr(1);
        count = recurse(rem,arr);
    elseif rem == arr(1)
        count = 1;
    else
        count = 0;
    end
elseif arr(1) > rem
    count = recurse(rem,arr(2:end));
else
    remNew = rem - arr(1);
    newArr = arr;
    newArr(1) = [];
    count = recurse(remNew,arr) + recurse(rem,newArr);
    
end
end

