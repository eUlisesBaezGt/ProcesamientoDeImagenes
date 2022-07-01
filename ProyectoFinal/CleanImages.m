% Create the function CleanImages which receives a cell array of images and cleans and saves the images in a new folder.
function [images] = CleanImages(images)
    % Create a new folder to save the images.
    folder = 'CleanedImages';
    if ~exist(folder, 'dir')
        mkdir(folder);
    end
    % Loop through the images and clean them.
    for i = 1:length(images)
        % Read the image from the Images Folder
        image = imread(images{i}); %TODO
        % Clean the image.
        image = CleanImage(image);
        % Save the image.
        imwrite(image, [folder '/' images{i}]);
        % Add it to images the list
        eval(strcat('images{i} = image;'));
    end
end
