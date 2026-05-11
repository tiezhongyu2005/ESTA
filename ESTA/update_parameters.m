function [alpha,gamma] = update_parameters(oldBest,newBest,epsilon)
% check the changes
diffBest = max(abs(oldBest - newBest));
% update rules
if diffBest > 1 
    alpha = min(2,diffBest);
    gamma = min(2,diffBest);
elseif diffBest > 1e-2
    alpha = 1;
    gamma = 1;
elseif diffBest > epsilon
    alpha = diffBest;
    gamma = diffBest;
else
    alpha = epsilon;
    gamma = epsilon;
end