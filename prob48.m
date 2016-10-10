function [ res ] = prob48( until )

arr = [1:until];
total = 0;
list = [];

for n = arr
    n
    now = 1;
    for m = [1:n]
        now = now*n;
        now = mod(now,10^10);
    end
    total = mod(total,10^10) + now;
end

res = total;

end

