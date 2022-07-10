% Usando fotos de placas de autos con ruido y desenfoque, limpiarlas para
% obtener la información de la placa como un texto.

close all; clear; clc;

%% 1) DIRTY IMAGES WITH NOISE AND BLUR

AddingNoise;

%% 2) LOAD NEW IMAGES

images = LoadImages;

%% 3) CLEAN IMAGE NOISE WITH FILTERS TO REMOVE NOISE AND REDUCE BLUR

images = CleanImages(images);

%% 4) OBTAIN LICENSE PLATE
plates = GetPlates(images);

%% 5) SHOW RESULTS IN CONSOLE AND SAVE TO FILE
SavePlates(plates);
