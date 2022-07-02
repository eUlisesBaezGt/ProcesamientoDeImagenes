% Create a function GetPlates which receives a list of images names and returns a list of plates.
% The function should use OCR to extract the text from the images and return a list of plates.

function [plates] = GetPlates(images)
    plates = {};
    for i = 1:length(images)
        images{i} = strcat('./Images/' , images{i});
        images{i} = double(imread(images{i}));
        plates{i} = GetPlate(images{i});
    end
end
