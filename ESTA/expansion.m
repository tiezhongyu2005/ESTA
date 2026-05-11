function [Best,fBest] = expansion(funfcn,Best,fBest,SE,Range,gamma)
State  = op_expand(Best,SE,gamma);
State = bound(State,Range);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
end

