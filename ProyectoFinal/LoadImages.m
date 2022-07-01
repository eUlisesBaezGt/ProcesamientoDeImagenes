function [images] = LoadImages()
    % Open the folder
    folder = './Images/';

    % Get the list of files in the folder
    files = dir(folder);

    % Delete all files that are not images
    files = files(~[files.isdir]);

    % Get the number of files in the folder
    num_files = length(files);

    % Get the name of the files
    file_names = {files.name};

    % Asign images to variables
    for i = 1:num_files
        % Get the name of the file
        file_name = file_names{i};
        
        % Load the image
        img = imread(strcat(folder, file_name));
        
        % Store the image in the variable
        eval(strcat('img', num2str(i), ' = img;'));

        % Display the image
        % figure(i); imshow(img); title(file_name);

        % Add the image name to the list of images
        images{i} = file_name;

    end
end
