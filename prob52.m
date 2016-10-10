function [ num ] = prob52( until )

up = ceil(log10(until));
num = 'Number not found';
con = false;

for n = [1:up]
    if con
        break
    end
    cap = (10^n)/6;
    begin = 10^(n-1); 
    for m = [begin:cap]
        if con
            break
        end
        main = convert(m);
        for k = [2:6]
            sec = k*m;
            comp = convert(sec);
            if all(main==comp)
                if k == 6
                    num = m;
                    con = true;
                    break
                else
                    continue
                end
            else
                break
            end
            
        end
    end
end

end

function [out] = convert(num)

str = num2str(num);
len = length(str);
list = [];

for n = [1:len]
    now = str2num(str(n));
    list = [list now];
end

out = sort(list);

end

