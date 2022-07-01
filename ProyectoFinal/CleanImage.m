% Create a function CleanImage that takes an image as input and returns a cleaned image.
function [image] = CleanImages(image)

    image = rgb2gray(image);

    % Apply a Gaussian filter to the image.
    image = imgaussfilt(image, 1);

    % Apply a median filter to the image.
    image = medfilt2(image);
    
end    
