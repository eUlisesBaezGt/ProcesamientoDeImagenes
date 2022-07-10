function [images] = LoadImages()
    % Open the folder
    folder = './Images/';

    % Get the list of files in the folder
    files = dir(folder);

    % Delete all files that are not images
    files = files(~[files.isdir]);

    % Get the name of the files
    file_names = {files.name};
end
