function [ out ] = prob29( bound )

arr = [2:bound];
exp = [];

for n = arr
    for m = arr
        now = n^m;
        if isempty(exp(exp==now))
            exp = [exp now];
        end
    end
end

out = length(exp);

end

