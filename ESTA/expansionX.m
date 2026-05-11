function [Best,fBest,BestArchive] = expansionX(funfcn,Best,fBest,BestArchive,SE,Range,Omega)
% Choose the optimal value for gamma
[Best,fBest,gamma] = update_gamma(funfcn,Best,fBest,SE,Range,Omega);
BestArchive = update_BestArchive(Best,BestArchive);
for i = 1:10
    [Best,fBest] = expansion(funfcn,Best,fBest,SE,Range,gamma);
end

