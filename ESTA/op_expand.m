function State  = op_expand(Best,SE,gamma)
n = length(Best);
SE = round(SE/2);
State1 = repmat(Best,SE,1) + gamma*randn(SE,n).*repmat(Best,SE,1);
State2 = repmat(Best,SE,1) + gamma*randn(SE,n).*ones(SE,n);
State = [State1;State2];
