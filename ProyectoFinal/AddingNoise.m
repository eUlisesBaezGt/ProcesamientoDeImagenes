function [] = AddingNoise()
    % Create new Folder
    new_folder = 'Images';
    if ~exist(new_folder, 'dir')
        mkdir(new_folder);
    end

    % Load all images from Original_Images folder

    folder = './Original_Images/'; % Open the folder
    files = dir(folder); % Get the list of files in the folder
    files = files(~[files.isdir]); % Delete all files that are not images

    num_files = length(files); % Get the number of files in the folder
    file_names = {files.name}; % Get the name of the files

    for i = 1:num_files
        file_name = file_names{i};
        img = imread(strcat(folder, file_name));
        eval(strcat('img', num2str(i), ' = img;')); % Asign images to variables

        % Add salt and pepper noise to image
        eval(strcat('img', num2str(i), ' = imnoise(img', num2str(i), ', ''salt & pepper'', .3);'));

        % Add blur to image
        eval(strcat('img', num2str(i), ' = imnoise(img', num2str(i), ', ''gaussian'', 0.08);'));

        % Display image
        % figure();
        % eval(strcat('imshow(img', num2str(i), ');'));
        
        % Save each of the images to the new Images folder
        imwrite(eval(strcat('img', num2str(i))), strcat('./Images/', file_name));
    end
end
