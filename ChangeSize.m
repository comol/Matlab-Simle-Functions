[x, y] = size(Data);
for i = 1:(x-1)
   for j = 1:y
       Data(i, y + j) = Data(i+1, j);
   end
end