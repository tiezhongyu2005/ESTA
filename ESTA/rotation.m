function [Best,fBest] = rotation(funfcn,Best,fBest,SE,Range,alpha)
State  = op_rotate(Best,SE,alpha);
State = bound(State,Range);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
end

