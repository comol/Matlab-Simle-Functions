function [outminmax, outmatrix] = normalizelin(matrix)
    
    [m, n] = size(matrix);
    outminmax = zeros(n, 2);
    outmatrix = zeros(m, n);
    
    % Сперва min max 
    for i = 1:n
        outminmax(i, 1) = min(matrix(:,i));
        outminmax(i, 2) = max(matrix(:,i));
    end

    for i = 1:m
      for j = 1:n
        outmatrix(i,j) = (matrix(i, j) - outminmax(j, 1)) / (outminmax(j, 2) - outminmax(j, 1));
       end
    end  

end