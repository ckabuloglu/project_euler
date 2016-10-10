function [ out ] = prob42( fn )

arr = [];
total = 0;

for n = [1:100]
    total = total + n;
    arr = [arr total];
end

fh = fopen(fn,'r');
rest = fgetl(fh);
count = 0;

while ~isempty(rest)
    [target,rest] = strtok(rest,'","');
    num = findVal(target);
    
    if ~isempty(arr(arr==num))
        count = count+1;
    end
    
end

out = count;

end

function [value] = findVal(word)

source = ['ABCDEFGHIJKLMNOPQRSTUVWXYZ'];
len = length(word);
total = 0;

for n = [1:len]
    letter = word(n);
    num = strfind(source,letter);
    total = total + num;
end

value = total;

end
