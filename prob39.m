function [ p ] = prob39( bound )

up = ceil(bound/3);
list = [];

for n = [1:up]
    n
    n2 = n^2;
    for m = [n:bound]
        m2 = m^2;
        hypo = sqrt(n2 + m2);
        if mod(hypo,1) == 0
           p = m + n + hypo;
           list = [list p]
        end
    end
end

p = mode(list);

end

