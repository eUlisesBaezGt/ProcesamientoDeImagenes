% Identificar carros en fotos con ruido y limpiarlas para obtener info
% sobre la placa.

close all; clear; clc;

%% 1) DIRTY IMAGES WITH NOISE AND BLUR

AddingNoise;

%% 2) LOAD NEW IMAGES

images = LoadImages;

%% 3) CLEAN IMAGE NOISE WITH FILTERS TO REMOVE NOISE AND REDUCE BLUR

images = CleanImages(images);

%% 4) OBTAIN LICENSE PLATE
% % Search for license plate in the image with OCR
plates = GetPlates(images);

%% 5) SHOW RESULTS IN CONSOLE AND SAVE TO FILE
for i = 1:length(plates)
    % Show in console
    fprintf('%s\n', plates{i});
    % Save to file results.txt
    fid = fopen('results.txt', 'a');
    fprintf(fid, '%s\n', plates{i});
    fclose(fid);
end
