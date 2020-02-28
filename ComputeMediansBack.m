function [medians] = ComputeMediansBack(Data)
    [m, n] = size(Data);
    medians = zeros(m, n);
    tmpval = zeros(12, 1);
     for i = 1:13
        medians(i,:) = Data(i,:);
     end
     for k = 1:n 
        for i = 13:m 
            for j = 1:12
               tmpval(j, 1) = Data(i - j, k);
            end
            med = median(tmpval);
            medians(i, k) = med;
        end
    end
end
