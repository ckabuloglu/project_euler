function [ num ] = prob49()

list = primes(10000);
list(list<1000) = [];
len = length(list);
i = 2;
list2 = [];

for n = list(1:end-1)
    n
    arrN = array(n);
    for sec = [i:len]
        arrM = array(list(sec));
        if arrM == arrN
            m = list(sec);
            k = (m - n) + m;
            arrK = array(k);
            if ismember(k,list) & (arrK == arrM)
                list2 = [list2; n m k];
            end
        else
            continue
        end
    end
    i = i + 1;
end

num = list2;

end

function [ arr ] = array(num)

str = num2str(num);
len = length(str);
arr = [];

for n = [1:len]
    arr = [arr str2num(str(n))];
end

arr = sort(arr);

end
