function [Best,fBest,BestArchive,alpha] = rotationX(funfcn,Best,fBest,BestArchive,SE,Range,Omega)
% Choose the optimal value for alpha
[Best,fBest,alpha] = update_alpha(funfcn,Best,fBest,SE,Range,Omega);
BestArchive = update_BestArchive(Best,BestArchive);
for i = 1:10
    [Best,fBest] = rotation(funfcn,Best,fBest,SE,Range,alpha);
end
