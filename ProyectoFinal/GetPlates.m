% Create a function GetPlates which receives a list of images names and returns a list of plates.
% The function should use OCR to extract the text from the images and return a list of plates.

function [plates] = GetPlates(images)
    for i = 1:length(images)
        images{i} = strcat('./Images/' , images{i});

    end
end
