function [ out ] = prob25( lim )

out = [6 5 5 4];

until = round(lim/4);

for n = [1:until]
    out = [out 5 5 5 4];
end

new = out(1:999);
out = sum(new) + 1;

end

