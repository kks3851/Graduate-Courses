clc;
clear all;
close all;
format long g;
format compact;
finalGallerycells = [];
finalProbeCells = [];

% def start folder path using toolbox
startPath = fullfile(matlabroot, '\toolbox');
% confirm or change tool box.
topDirecPath = uigetdir(startPath);
if topDirecPath == 0
	return;
end
% Get list of all subfolders.
allSubFold = genpath(topDirecPath);
% Parse into a cell array.
rem = allSubFold;
folderNamesList = {};
while true
	[singleSubFolder, rem] = strtok(rem, ';');
	if isempty(singleSubFolder)
		break;
	end
	folderNamesList = [folderNamesList singleSubFolder];
end
numOfFolders = length(folderNamesList);

% Process all text files in those folders.
for k = 1 : numOfFolders
	% current folder
	thisFolder = folderNamesList{k};
	%fprintf('folder %s\n', thisFolder);
	
	% Get filenames of all TXT files.
	filePat = sprintf('%s/*.txt', thisFolder);
	textFileNames = dir(filePat);
	numberOfFiles = length(textFileNames);
	% Now we have a list of all text files in this folder.
	
	if numberOfFiles >= 1
		% Go through all those text files.
		for f = 1 : numberOfFiles
			fullFileName = fullfile(thisFolder, textFileNames(f).name);
			fprintf('Text fileName %s\n', fullFileName);
            
            fid = fopen(fullFileName,'r');
            data = textscan(fid,'%s %s %s');
            MatData = [data{:}];
            
            %To get the sequenceId:
            ind1 = (ismember(MatData(:,1), 'sequenceid'));
            sequenceIdArr = MatData(ind1,:);
            newDataSequenceCol = sequenceIdArr(:,3);

            %To get the Eye
            ind2 = (ismember(MatData(:,1), 'eye'));
            eyeArr = MatData(ind2,:);
            newDataEyeCol = eyeArr(:,3);

            %To get the rank
            ind4 = (ismember(MatData(:,1), 'rank'));
            rankArr = MatData(ind4,:);
            newDataRankCol = rankArr(:,3);
            
            %Merging all the cells to col1 - Seq; Col2 - Eye; Col3: Format; Col4 - Rank 
            finalcell = [newDataSequenceCol, newDataEyeCol];
            finalGallerycells = [finalGallerycells;finalcell];
            %disp(finalcell);
                       
		end
	else
		fprintf('Folder %s has no text files.\n', thisFolder);
	end
end

disp(finalGallerycells);


% def start folder path using toolbox
startPath = fullfile(matlabroot, '\toolbox');
% confirm or change tool box.
topDirecPath = uigetdir(startPath);
if topDirecPath == 0
	return;
end
% Get list of all subfolders.
allSubFold = genpath(topDirecPath);
% Parse into a cell array.
rem = allSubFold;
folderNamesList = {};
while true
	[singleSubFolder, rem] = strtok(rem, ';');
	if isempty(singleSubFolder)
		break;
	end
	folderNamesList = [folderNamesList singleSubFolder];
end
numOfFolders = length(folderNamesList);

% Process all text files in those folders.
for k = 1 : numOfFolders
	% current folder
	thisFolder = folderNamesList{k};
	%fprintf('folder %s\n', thisFolder);
	
	% Get filenames of all TXT files.
	filePat = sprintf('%s/*.txt', thisFolder);
	textFileNames = dir(filePat);
	numberOfFiles = length(textFileNames);
	% Now we have a list of all text files in this folder.
	
	if numberOfFiles >= 1
		% Go through all those text files.
		for f = 1 : numberOfFiles
			fullFileName = fullfile(thisFolder, textFileNames(f).name);
			fprintf('Text fileName %s\n', fullFileName);
            
            fid = fopen(fullFileName,'r');
            data = textscan(fid,'%s %s %s');
            MatData = [data{:}];
            
            %To get the sequenceId:
            ind1 = (ismember(MatData(:,1), 'sequenceid'));
            sequenceIdArr = MatData(ind1,:);
            newDataSequenceCol = sequenceIdArr(:,3);

            %To get the Eye
            ind2 = (ismember(MatData(:,1), 'eye'));
            eyeArr = MatData(ind2,:);
            newDataEyeCol = eyeArr(:,3);

            %To get the rank
            ind4 = (ismember(MatData(:,1), 'rank'));
            rankArr = MatData(ind4,:);
            newDataRankCol = rankArr(:,3);
            
            %Merging all the cells to col1 - Seq; Col2 - Eye; Col3: Format; Col4 - Rank 
            finalcell = [newDataSequenceCol, newDataEyeCol];
            finalProbeCells = [finalProbeCells;finalcell];
            %disp(finalcell);
                       
		end
	else
		fprintf('Folder %s has no text files.\n', thisFolder);
	end
end

disp(finalProbeCells);
