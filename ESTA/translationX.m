function [Best,fBest,BestArchive] = translationX(funfcn,Best,fBest,BestArchive,SE,Range,Omega)
% Choose the optimal value for beta
[Best,fBest,beta] = update_beta(funfcn,Best,fBest,BestArchive,SE,Range,Omega);
BestArchive = update_BestArchive(Best,BestArchive);
for i = 1:10
    [Best,fBest] = translation(funfcn,Best,fBest,BestArchive,SE,Range,beta);
end