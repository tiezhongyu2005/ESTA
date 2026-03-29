function State = op_translate(Best,BestArchive,SE,beta)
% with 1st order predictive model
index = randi(size(BestArchive,1),SE,1);
State = repmat(Best,SE,1) + beta*unifrnd(-1,1,SE,1).*(repmat(Best,SE,1) - BestArchive(index,:));

% with 2st order predictive model
% index = randi(size(BestArchive,1),SE,2);
% State = repmat(Best,SE,1) + beta*unifrnd(-1,1,SE,1).*(BestArchive(index(:,1),:) - BestArchive(index(:,2),:));

% hybrid predictive models
% SE = ceil(SE/2);
% index = randi(size(BestArchive,1),SE,1);
% State1 = repmat(Best,SE,1) + beta*unifrnd(-1,1,SE,1).*(repmat(Best,SE,1) - BestArchive(index,:));
% index = randi(size(BestArchive,1),SE,2);
% State2 = repmat(Best,SE,1) + beta*unifrnd(-1,1,SE,1).*(BestArchive(index(:,1),:) - BestArchive(index(:,2),:));
% State = [State1;State2];









    
    
    

    

   
