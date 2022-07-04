% ADAPTED Veysel AKSIN's Training_Data Model
% https://github.com/veyselaksin/DriverPlateRecognition
% Etiquetado de aprendizaje supervisado

function [] = TrainModel()
    
    % Open the folder
    folder = './LettsAndNums_TrainModel/';

    % Get the files in the folder
    files = dir(folder);

    % Delete all files that are not images
    files = files(~[files.isdir]);

    % Get the number of files
    numFiles = length(files);

    % Get the name of the files
    fileNames = {files.name};

    % Create cell type areas for images
    images = cell(1, numFiles);

    for i = 1:numFiles
        images(1,i) = {imread([folder,cell2mat(fileNames(i))])};
        % Create temp var to store first char of file
        temp=cell2mat(fileNames(i));
        images(2,i)={temp(1)};
    end
    % Save all data to a .mat file
    save('LettsAndNums_TrainModel.mat', 'images');
end
