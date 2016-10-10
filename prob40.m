function [ out ] = prob40( arr )

give = max(arr);
str = generate(give);

arr2 = str(arr);
out = prod(arr2);

end

function [ out ] = generate(bound)

str = '';
i = 1;
len = length(str);

while len <= bound
    new = num2str(i);
    str = [str i];
    i = i + 1;
    len = length(str);
end

out = str;

end

