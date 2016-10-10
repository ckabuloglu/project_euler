function [ sum ] = prob28( num )

target = num^2;
now = 1;
count = 0;
skip = 0;
sum = 0;

while now <= target
    count = count + 1;
    rem = mod(count,4);
    
    if rem == 1
        skip = skip + 2;
    end
    
    sum = sum + now;
    now = now + skip;
end
    


end

