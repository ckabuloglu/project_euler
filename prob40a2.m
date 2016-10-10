function [ out ] = prob40a2( arr )

up = max(arr);
str = [1:up];

str = num2str(str);
str(str==' ') = [];

list = str(arr);

arr = [];

for n = [1:length(list)]
    new = list(n);
    new = str2num(new);
    arr = [arr new];
end

out = prod(arr);

end

