function [Best,fBest] = translation(funfcn,Best,fBest,BestArchive,SE,Range,beta)
State  = op_translate(Best,BestArchive,SE,beta);
State = bound(State,Range);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
end