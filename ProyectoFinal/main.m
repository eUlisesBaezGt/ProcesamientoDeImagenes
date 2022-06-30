% Identificar carros en fotos con neblina (tipo carretera) y obtener info
% como color de auto, placa, marca, modelo.

close all; clear; clc;

%% 1) LOAD IMAGES
% Work massivelly on the images in the folder

%% 2) CLEAN IMAGE NOISE WITH FILTERS AND ADJUST CONTRAST & BRIGHTNESS
% Try each one until we have a good definition

%% 3) OBTAIN COLOR
% Change RGB to color and get the predominant color of the center

%% 4) OBTAIN LICENSE PLATE
% Search for license plate in the image with OCR

%% 5) CREATE A NEW IMAGE WITH THE INFORMATION IN EACH CORNER
% Overlap a text box in the lower left corner with the information
% Save the new image in a results folder
