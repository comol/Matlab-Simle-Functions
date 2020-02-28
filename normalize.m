function [outdeltakoef, outkoef, outmatrix] = normalize(matrix)
    
    [m, n] = size(matrix);
    outkoef = zeros(n, 1);
    outdeltakoef = zeros(n, 1);
    outmatrix = zeros(m, n);
    
    % Сперва делим 
    for i = 1:n
        outkoef(i) = mean(matrix(:,i));
    end
    for i = 1:m
      for j = 1:n
        outmatrix(i,j) = matrix(i, j)/outkoef(j);
       end
    end

    %Потом вычитаем средне
    for i = 1:n
        outdeltakoef(i) = median(outmatrix(:,i));
    end

    for i = 1:m
      for j = 1:n
        outmatrix(i,j) = outmatrix(i, j) - outdeltakoef(j);
       end
    end
    

end