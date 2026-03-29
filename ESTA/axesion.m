function [Best,fBest,BestArchive] = axesion(funfcn,Best,fBest,BestArchive,SE,Range,delta)
State  = op_axes(Best,SE,delta);
State = bound(State,Range,Best);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
    BestArchive = update_BestArchive(Best,BestArchive);
end
