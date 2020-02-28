function [ AproxPrice ] = GetAproxPrice( Price, Count )
    [m,n] = size(Price);
    AproxPrice = zeros(m, 1);
    for i=1:m
        if i < (Count + 1)
           AproxPrice(i, 1) = Price(i, 1);
        else
           AproxPrice(i, 1) = adaptlinreg(Price(1:(i-1), 1), 1000);
        end
    end
end