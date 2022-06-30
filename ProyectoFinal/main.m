% Identificar carros en fotos con neblina (tipo carretera) y obtener info
% como color de auto, placa, marca, modelo.

close all; clear; clc;

%% 1) LOAD IMAGES
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
    figure(i); imshow(img); title(file_name);
end


%% 2) CLEAN IMAGE NOISE WITH FILTERS AND ADJUST CONTRAST & BRIGHTNESS
% Try each one until we have a good definition

%% 3) OBTAIN COLOR
% Change RGB to color and get the predominant color of the center

%% 4) OBTAIN LICENSE PLATE
% Search for license plate in the image with OCR

%% 5) CREATE A NEW IMAGE WITH THE INFORMATION IN EACH CORNER
% Overlap a text box in the lower left corner with the information
% Save the new image in a results folder
