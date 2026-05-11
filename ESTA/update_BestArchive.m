function BestArchive = update_BestArchive(Best,BestArchive)
if ~isequal(Best, BestArchive(1,:))
    BestArchive = [Best;BestArchive];
end
archiveSize = 100;
if size(BestArchive,1) > archiveSize
    BestArchive(archiveSize+1:end,:) = [];
end