function [globalBest,globalfBest,gamma] = update_gamma(funfcn,Best,fBest,SE,Range,Omega)
gamma = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    [newBest,newfBest] = expansion(funfcn,Best,fBest,SE,Range,Omega(i));
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        gamma = Omega(i);
    end
end

