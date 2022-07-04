% Identificar carros en fotos con ruido y limpiarlas para obtener info
% sobre el color de auto y la placa.

close all; clear; clc;

%% 1) Dirty images, add noise and blur

AddingNoise;

%% 2) LOAD NEW IMAGES

images = LoadImages;

%% 3) CLEAN IMAGE NOISE WITH FILTERS TO REMOVE NOISE AND REDUCE BLUR

images = CleanImages(images);

%% 4) OBTAIN LICENSE PLATE
% % Search for license plate in the image with OCR
plates = GetPlates(images);

% %% 5) CREATE A NEW IMAGE WITH THE INFORMATION IN LOW CORNER
% % Overlap a text box in the lower left corner with the information
% % Save the new image in a results folder
