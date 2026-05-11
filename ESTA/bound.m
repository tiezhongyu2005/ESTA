function State = bound(State,Range)
SE = size(State,1);
Lb = repmat(Range(1,:),SE,1); 
Ub = repmat(Range(2,:),SE,1);   

idxLow = State < Lb; 
idxHigh = State > Ub;

State(idxLow) = Lb(idxLow) + ...
    (Ub(idxLow) - Lb(idxLow)) .* rand(nnz(idxLow),1);

State(idxHigh) = Lb(idxHigh) + ...
    (Ub(idxHigh) - Lb(idxHigh)) .* rand(nnz(idxHigh),1);