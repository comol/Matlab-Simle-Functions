function  [outTargets, tmpData] = GetNNTargetsAll( inData )
    
    h = 5;
    [m,n] = size(inData);
    tmpData = inData;
    outTargets = zeros(m, 1);
    Inp = zeros(n, 1);
    for j = 1:m-1 
       Inp = tmpData(j,:); 
       outnum = BaseNN2(Inp');
       for i = 1:h
          tmpData(j+i, 8*((h+1)-i)) = outnum;
       end
       outTargets(j,1) = outnum;
    end
end

