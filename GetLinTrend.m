function [ Trend ] = GetLinTrend( Data, Count )
    [m,n] = size(Data);
    newMatrix = zeros(m, 1);
    
    for i = 1:Count
      newMatrix(i, 1) = Data(i, 1);  
    end
    
    for i = (Count + 1):m
        Partmatrix = Data((i-Count):(i - 1), 1);
        newMatrix(i, 1) = adaptlinreg(Partmatrix, Count);
    end
    Trend = newMatrix;
end