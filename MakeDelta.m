
NewTargets = zeros(10502, 1);
for m = 2:10503
    for n = 1:40
        NewData(m-1, n) = (Data(m, n) - Data(m-1, n)) / Data(m-1, n);
    end 
end

for m = 2:10503
    NewTargets(m-1, 1) = (Targets(m, 1) - Targets(m-1, 1)) / Targets(m-1, 1);
end