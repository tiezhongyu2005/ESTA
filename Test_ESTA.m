clear all
clc
currentFolder = pwd;
addpath(genpath(currentFolder))
warning('off')



% parameter setting
funfcn = @Rastrigin;
n = 30;
lu = repmat([-5.12;5.12],1,n);


tic
[Best,fBest,hfBest] = ESTA(funfcn,n,lu);
toc
fBest
% numerical gradient
gradBest = max(abs(num_grad(funfcn,Best)))




