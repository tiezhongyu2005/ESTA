function fState = fitness(funfcn,State)
global FEs
[SE,~] = size(State);
fState = zeros(SE,1);
for i = 1:SE
    fState(i) = feval(funfcn,State(i,:));
end
FEs = FEs + SE;