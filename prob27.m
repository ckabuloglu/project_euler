function [ p ] = prob27(up)
tic

list = primes(up);
list2 = primes(up*100)
maxCount = 0;
p = [0 0];

for b = list
    b
    for a = [-1000:1000]
        i = 0;
        flag = true;
        count = 0;
        while flag
            res = (i^2)+(i*a)+b;
            if ismember(res,list2)
                count = count + 1;
                i = i + 1;
            else
                flag = false;
                break
            end
        end
        
        if count > maxCount
            maxCount = count;
            p = [a b];
        end
        
    end
end

toc
end

