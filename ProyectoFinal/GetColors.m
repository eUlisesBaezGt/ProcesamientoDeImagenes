% Create a function named GetColors which receives a list of image names and returns a list which contains each car color.
function [colors] = GetColors(images)
    colors = {};
    for i = 1:length(images)
        colors{i} = GetColor(images{i});
    end
end
