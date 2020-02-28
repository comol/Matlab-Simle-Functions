
% Подготавливает данные НС
% только данные
function mData = MakeNNDataOnly( mPreData )

  h = 25; %Число предыдущих строчек
  [m,n] = size(mPreData); % m - строчки
  mData = zeros(m,n*h); 
  for j = 1:m-h 
   mVector = zeros(1, n*h);
   for k = 0:((n*h)-1)        
    mVector(1, k + 1) = mPreData(j+fix(k/n), rem(k, n)+1);
   end   
   for p = 1:n*h
    mData(j, p) = mVector(1, p);
   end
  end
  
end

