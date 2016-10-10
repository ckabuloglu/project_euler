function [ list ] = prob45(lim)

out = [];

P = [];
H = [];

for n = [1:lim]
    n
    now = (n*(3*n-1))/2;
    P = [P now];
end

for n = [1:lim]
    m = n
    now = n*(2*n-1);
    H = [H now];
end

for n = [1:2*lim]
    l = n
    T = n*(n+1)/2;    
    if ~isempty(P(P==T))
        if ~isempty(H(H==T))
            out = [out T];
        end
    end
end

list = out;

end

