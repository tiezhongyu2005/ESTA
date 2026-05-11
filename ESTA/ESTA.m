function [Best,fBest,hfBest] = ESTA(funfcn,nvars,Range)
global FEs
rng(sum(100*clock),'twister')
% parameter setting
alpha = 2; beta = 2; gamma = 2; delta = 2; epsilon = 1e-8;
SE = 30;
% initial point
Best = initialization(Range,nvars); 
fBest = feval(funfcn,Best);
% archive 
BestArchive = Best;
hfBest = fBest;
%loop
FEs = 1;
while(1)
    prevBest = Best;
    prevfBest = fBest;
    %rotation
    [Best,fBest] = rotation(funfcn,Best,fBest,SE,Range,alpha);
    BestArchive = update_BestArchive(Best,BestArchive);
    %expansion
    [Best,fBest] = expansion(funfcn,Best,fBest,SE,Range,gamma);
    BestArchive = update_BestArchive(Best,BestArchive);
    %axesion
    [Best,fBest] = axesion(funfcn,Best,fBest,SE,Range,delta);
    BestArchive = update_BestArchive(Best,BestArchive);
    %translation
    [Best,fBest] = translation(funfcn,Best,fBest,BestArchive,SE,Range,beta);
    BestArchive = update_BestArchive(Best,BestArchive);
    %
    hfBest = [hfBest;fBest];
    fprintf('ObjVal=%g\n',fBest);
  
    % termination conditions
    if prevfBest - fBest <= eps && alpha <= epsilon
        break;
    end

    % update parameters
    [alpha,gamma] = update_parameters(prevBest,Best,epsilon);

end


