function [ mData, mTargets ] = MakeNNData( mPreData )

  h = 25; %Число предыдущих строчек
  [m,n] = size(mPreData); % m - строчки
  mData = zeros(m-h,n*h);
  mTargets = zeros(m-h, 1);
  
  for j = 1:m-h-1 
   mVector = zeros(1, n*h);
   for k = 0:((n*h)-1)        
    mVector(1, k + 1) = mPreData(j+fix(k/n), rem(k, n)+1);
   end   
   for p = 1:n*h
    mData(j, p) = mVector(1, p);
   end
   mTargets(j, 1) = mPreData(j+h, n);
  end
end


