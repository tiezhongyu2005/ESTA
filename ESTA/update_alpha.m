function [globalBest,globalfBest,alpha] = update_alpha(funfcn,Best,fBest,SE,Range,Omega)
alpha = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    [newBest,newfBest] = rotation(funfcn,Best,fBest,SE,Range,Omega(i));
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        alpha = Omega(i);
    end
end
