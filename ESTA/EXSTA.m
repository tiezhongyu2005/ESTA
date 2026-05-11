function [Best,fBest,hfBest] = EXSTA(funfcn,n,Range)
rng(sum(100*clock),'twister')
% parameter setting
Omega = [2,1,1e-1,1e-2,1e-3,1e-4,1e-5,1e-6,1e-7,1e-8];
SE = 30; 
% initial point
Best = initialization(Range,n); 
fBest = feval(funfcn,Best);
% archive 
BestArchive = Best;
hfBest = fBest;
%loop
stallCount = 0;
maxStall = 1; % Increasing this number may lead to better results
while(1)
    prevfBest = fBest;
    [Best,fBest,BestArchive] = rotationX(funfcn,Best,fBest,BestArchive,SE,Range,Omega);
    [Best,fBest,BestArchive] = expansionX(funfcn,Best,fBest,BestArchive,SE,Range,Omega);
    [Best,fBest,BestArchive] = axesionX(funfcn,Best,fBest,BestArchive,SE,Range,Omega);
    [Best,fBest,BestArchive] = translationX(funfcn,Best,fBest,BestArchive,SE,Range,Omega);
    %
    hfBest = [hfBest;fBest];
    fprintf('ObjVal=%g\n',fBest);

    % termination conditions
    if prevfBest - fBest <= eps 
        stallCount = stallCount + 1;
    else
        stallCount = 0; 
    end

    if stallCount >= maxStall
        break;
    end
end


