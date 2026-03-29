function [Best,fBest,BestArchive] = rotation(funfcn,Best,fBest,BestArchive,SE,Range,alpha)
State  = op_rotate(Best,SE,alpha);
State = bound(State,Range,Best);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
    BestArchive = update_BestArchive(Best,BestArchive);
end

