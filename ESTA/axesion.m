function [Best,fBest] = axesion(funfcn,Best,fBest,SE,Range,delta)
State  = op_axes(Best,SE,delta);
State = bound(State,Range);
[newBest,newfBest] = selection(funfcn,State);
if newfBest < fBest
    fBest = newfBest;
    Best = newBest;
end
