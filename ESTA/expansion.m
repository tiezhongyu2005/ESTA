function [Best,fBest,BestArchive] = expansion(funfcn,Best,fBest,BestArchive,SE,Range,gamma)
State  = op_expand(Best,SE,gamma);
State = bound(State,Range,Best);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
    BestArchive = update_BestArchive(Best,BestArchive);
end

