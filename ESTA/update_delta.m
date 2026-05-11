function [globalBest,globalfBest,delta] = update_delta(funfcn,Best,fBest,SE,Range,Omega)
delta = 1;
globalBest = Best;
globalfBest = fBest;
for i = 1:length(Omega)
    [newBest,newfBest] = axesion(funfcn,Best,fBest,SE,Range,Omega(i));
    if newfBest < globalfBest
        globalBest = newBest;
        globalfBest = newfBest;
        delta = Omega(i);
    end
end
