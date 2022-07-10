%% Saving Figures
FigList = findobj(allchild(0), 'flat', 'Type', 'figure');
FolderName = tempdir;
for iFig = 1:length(FigList)
  FigHandle = FigList(iFig);
  FigName   = get(FigHandle, 'Name');
%   savefig(FigHandle, fullfile(FolderName, FigName, '.fig'));
  saveas(FigHandle,FigName,'png')

end