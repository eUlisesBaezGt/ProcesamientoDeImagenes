close all; clc; clear;
% Elige 1 imagen y aplica los 4 tipos de ruido abordados

img = rgb2gray(imread("up.png"));
figure(); imshow(img); title("Imagen original");

gaussNoise = imnoise(img, 'gaussian');
% figure(); imshow(gaussNoise); title('Gaussian noise');

poissonNoise = imnoise(img, 'poisson');
figure(); imshow(poissonNoise); title('Poisson noise');

spNoise = imnoise(img, 'salt & pepper');
% figure(); imshow(spNoise); title('Salt & pepper noise');

speckleNoise = imnoise(img, 'speckle');
% figure(); imshow(speckleNoise); title('Speckle noise');
%%

% 5) Aplica los filtros de mediana, promedio y gaussiano a cada una de
% las imágenes generadas
%% 

% %GAUSS
% img2 = gaussNoise;

% % PROMEDIO
% n=3; k=ones(n)/n.^2;
% img3=imfilter(img2,k);
% figure(); imshow(img3); title('Promedio');

% % MEDIANA
% img4=medfilt2(img2);
% figure(); imshow(img4); title('Mediana');

% % GAUSSIANO
% img5=imgaussfilt(img2,9);
% figure(); imshow(img5); title('Gaussiano');

%%

%POISSON
img2 = poissonNoise;

% PROMEDIO
n=3; k=ones(n)/n.^2;
img3=imfilter(img2,k);
figure(); imshow(img3); title('Promedio');

% MEDIANA
img4=medfilt2(img2);
figure(); imshow(img4); title('Mediana');

% GAUSSIANO
img5=imgaussfilt(img2,9);
figure(); imshow(img5); title('Gaussiano');

% %%

% % SALT & PEPPER
% img2 = spNoise;

% % PROMEDIO
% n=3; k=ones(n)/n.^2;
% img3=imfilter(img2,k);
% figure(); imshow(img3); title('Promedio');

% % MEDIANA
% img4=medfilt2(img2);
% figure(); imshow(img4); title('Mediana');

% % GAUSSIANO
% img5=imgaussfilt(img2,9);
% figure(); imshow(img5); title('Gaussiano');

%% 

% % SPECLE
% img2 = speckleNoise;

% % PROMEDIO
% n=3; k=ones(n)/n.^2;
% img3=imfilter(img2,k);
% figure(); imshow(img3); title('Promedio');

% % MEDIANA
% img4=medfilt2(img2);
% figure(); imshow(img4); title('Mediana');

% % GAUSSIANO
% img5=imgaussfilt(img2,9);
% figure(); imshow(img5); title('Gaussiano');

