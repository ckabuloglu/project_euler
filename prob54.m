function [ p1, p2 ] = prob54( fn )

fh = fopen(fn,'r');
line = fgetl;
p1 = 0; p2 = 0;

while line ~= -1
    [h1 h2] = findHand(line);
    rank1 = findRank(h1); rank2 = findRank(h2);
    
    if rank1 > rank2
        p1 = p1 + 1;
    elseif rank2 > rank1
        p2 = p2 + 1;
    else
        
    end
    
end

end

function [h1,h2] = findHand(line)

l1 = line(1:14); l2 = (16:29);
h11 = []; h21 = [];
numIndex = [1,4,7,10,13];
nums1 = l1(numIndex); nums2 = l2([numIndex]);

for n = [1:5]
    switch nums1(n)
        case {A}
            now = 1;
        case {T}
            now = 10;
        case {J}
            now = 11;
        case {Q}
            now = 12;
        case {K}
            now = 13;
        otherwise
            now = str2num(nums1(n));
    end
    h11 = [h11 now];
end

for n = [1:5]
    switch nums2(n)
        case {A}
            now = 1;
        case {T}
            now = 10;
        case {J}
            now = 11;
        case {Q}
            now = 12;
        case {K}
            now = 13;
        otherwise
            now = str2num(nums1(n));
    end
    h21 = [h21 now];
end

h12 = l1(numIndex+1); h22 = l2(numIndex+1); 
h1 = {h11 h12}; h2 = {h21 h22};

end

function [rank] = findRank(hand)

cont = true;
nums = hand{1}; types = hand{2};
sorted = sort(nums);

if cont & sorted == [1 10 11 12 13] & length(unique(types)) == 1
    rank = 10;
    cont = false;
end

if cont & diff(sorted) == ones(1,5) & length(unique(types)) == 1
    rank = 9;
    cont = false;
end

if  cont &
end

end

