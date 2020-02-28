function  outTargets = GetNNTargets( inData )

    [m,n] = size(inData);
    outTargets = zeros(m, 1);
    Inp = zeros(n, 1);
    for j = 1:m-1 
       Inp = inData(j,:); 
       outnum = NNFunc8(Inp');
       outTargets(j,1) = outnum;
    end
end

