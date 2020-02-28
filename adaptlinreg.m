
function [ retVal ] = adaptlinreg( Data, Count )
    
    [m,n] = size(Data);
    newMatrix = zeros(Count, 2);
    for i = 1:Count 
        newMatrix(i, 1) = i;
        newMatrix(i, 2) = Data(m-Count+i, 1);
    end
    
    if m < Count 
       retVal = Data(m, 1);
       return;
    end
    p = polyfit(newMatrix(:, 1), newMatrix(:, 2), 1);
    y = polyval(p, Count + 1);
    retVal = y;  
end

