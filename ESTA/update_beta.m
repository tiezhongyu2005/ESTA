function [globalBest,globalfBest,beta] = update_beta(funfcn,Best,fBest,BestArchive,SE,Range,Omega)
beta = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    [newBest,newfBest] = translation(funfcn,Best,fBest,BestArchive,SE,Range,Omega(i));
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        beta = Omega(i);
    end
end