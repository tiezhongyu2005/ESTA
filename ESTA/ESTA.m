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
    [Best,fBest,BestArchive] = rotation(funfcn,Best,fBest,BestArchive,SE,Range,alpha);
    [Best,fBest,BestArchive] = expansion(funfcn,Best,fBest,BestArchive,SE,Range,gamma);
    [Best,fBest,BestArchive] = axesion(funfcn,Best,fBest,BestArchive,SE,Range,delta);
    [Best,fBest,BestArchive] = translation(funfcn,Best,fBest,BestArchive,SE,Range,beta);
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


