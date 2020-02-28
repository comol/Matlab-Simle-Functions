[sizem, n] = size(Targets);
DeltaTargets = zeros(sizem, 1);

for m = 2:sizem
    DeltaTargets(m-1, 1) = ((Targets(m, 1) - Targets(m-1, 1)) / Targets(m-1, 1)) * 10000;
end

clearvars sizem m n