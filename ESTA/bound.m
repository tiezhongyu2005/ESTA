function State = bound(State,Range,Best)
SE = size(State,1);
Lb = repmat(Range(1,:),SE,1); Ub = repmat(Range(2,:),SE,1);   
idxLow = State < Lb; idxHigh = State > Ub;
repBest = repmat(Best,SE,1);
State(idxLow) = 0.5*(repBest(idxLow) + Lb(idxLow));
State(idxHigh) = 0.5*(repBest(idxHigh) + Ub(idxHigh));
