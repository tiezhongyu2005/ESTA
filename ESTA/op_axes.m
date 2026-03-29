function State  = op_axes(Best,SE,delta)
n = length(Best);
State1 = repmat(Best,SE,1) +  delta*sparse(1:SE,randi([1,n],1,SE),randn(1,SE),SE,n).*repmat(Best,SE,1) ;
State2 = repmat(Best,SE,1) +  delta*sparse(1:SE,randi([1,n],1,SE),randn(1,SE),SE,n).*ones(SE,n);
State = [State1;State2];

