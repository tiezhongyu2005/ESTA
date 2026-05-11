function [Best,fBest,BestArchive] = axesionX(funfcn,Best,fBest,BestArchive,SE,Range,Omega)
% Choose the optimal value for delta
[Best,fBest,delta] = update_delta(funfcn,Best,fBest,SE,Range,Omega);
BestArchive = update_BestArchive(Best,BestArchive);
for i = 1:10
    [Best,fBest] = axesion(funfcn,Best,fBest,SE,Range,delta);
end
