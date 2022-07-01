% Create a function CleanImage that takes an image as input and returns a cleaned image.
function [image] = CleanImages(image)

    image=double(rgb2gray(image));
    % figure, imshow(image, []); title('Original Image');

    img=medfilt2(image);
    % figure, imshow(img, []); title('Median Filtered Image');

    img=imgaussfilt(image, 4, 'FilterSize', [5 5]);
    % figure, imshow(img, []); title('Gaussian Filtered Image');

    % Return image to rgb format
    image=uint8(img);

end    
