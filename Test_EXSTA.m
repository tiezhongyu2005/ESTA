clear all
clc
currentFolder = pwd;
addpath(genpath(currentFolder))
warning('off')



% parameter setting
funfcn = @Rastrigin;
n = 50;
lu = repmat([0;2*n],1,n);

% add shift 
add_shift = 1;
if add_shift
    s = 1:n; 
else
    s = 0;
end

fobj = @(x) funfcn(x-s);


tic
[Best,fBest,hfBest] = EXSTA(fobj,n,lu);
toc
Best
fBest
semilogy(hfBest)
% numerical gradient
gradBest = max(abs(num_grad(fobj,Best)))




