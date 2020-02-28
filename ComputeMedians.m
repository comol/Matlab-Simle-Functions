function [medians] = ComputeMedians(Targets)
    
    [m, n] = size(Targets);
    medians = zeros(m, n);
    tmpval = zeros(12, 1);
    for k = 1:n 
        for i = 1:m 
            for j = 1:12
                if (i+j-1 > m)
                    tmpval(j, 1) = Targets(m, k);
                else
                    tmpval(j, 1) = Targets(i + j - 1, k);
                end

            end
            med = median(tmpval);
            medians(i, k) = med;
        end
    end
end
