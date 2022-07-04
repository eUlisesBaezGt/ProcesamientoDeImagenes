% Create a function GetPlates which receives a list of images names and returns a list of plates.
% The function should extract the text from the images and return a list of plates.

function [plates] = GetPlates(images)

    TrainModel;
    plates = {};
    for i = 1:length(images)
        images{i} = strcat('./CleanedImages/' , images{i});
        images{i} = imread(images{i});
        plates{i} = GetPlate(images{i});
    end
end
