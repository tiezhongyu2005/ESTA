function [Best,fBest,BestArchive] = translation(funfcn,Best,fBest,BestArchive,SE,Range,beta)
State  = op_translate(Best,BestArchive,SE,beta);
State = bound(State,Range,Best);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
    BestArchive = update_BestArchive(Best,BestArchive);
end