%%
close all; clear, clc;
% Elige 1 imagen y aplica 4 tipos de ruido

img = rgb2gray(imread("up.png"));
gaussNoise = imnoise(img, 'gaussian');
poissonNoise = imnoise(img, 'poisson');
spNoise = imnoise(img, 'salt & pepper');
speckleNoise = imnoise(img, 'speckle');

Laplacian=[0 1 0; 1 -4 1; 0 1 0];
%%
% % Original with noise
figure(1); imshow(gaussNoise); title('Gaussian noise');

figure(2); imshow(poissonNoise); title('Poisson noise');

figure(3); imshow(spNoise); title('Salt & pepper noise');

figure(4); imshow(speckleNoise); title('Speckle noise');

%%
% 1) Realiza la detección de bordes con Laplace a la imagen original y a
% cada una de las imágenes con ruido.
orgLaplace = uint8(filter2(Laplacian, img));
figure(5); imshow(orgLaplace); title('Laplacian Original');

gaussLaplace = uint8(filter2(Laplacian, gaussNoise));
figure(6); imshow(gaussLaplace); title('Laplacian Gaussian');

poissonLaplace = uint8(filter2(Laplacian, poissonNoise));
figure(7); imshow(poissonLaplace); title('Laplacian Poisson');

spLaplace = uint8(filter2(Laplacian, spNoise));
figure(8); imshow(spLaplace); title('Laplacian Salt & Pepper');

speckleLaplace = uint8(filter2(Laplacian, speckleNoise));
figure(9); imshow(speckleLaplace); title('Laplacian Speckle');

%%
% 2) Aplica los filtros de mediana, promedio y gaussiano a la imagen
% con ruido.
n=3; k=ones(n)/n.^2;
%%
%GAUSS
img2= gaussNoise;

%PROMEDIO
gaussPromedio= imfilter(img2, k);
figure(10); imshow(gaussPromedio); title('Promedio Gaussian');

% MEDIANA
gaussMediana= medfilt2(img2);
figure(11); imshow(gaussMediana); title('Mediana Gaussian');

%GAUSSIANO
gaussGauss= imgaussfilt(img2);
figure(12); imshow(gaussGauss); title('Gaussiano Gaussian');

%%
%POISSON
img2 = poissonNoise;

% PROMEDIO
poissonPromedio= imfilter(img2, k);
figure(13); imshow(poissonPromedio); title('Promedio Poisson');

% MEDIANA
poissonMediana= medfilt2(img2);
figure(14); imshow(poissonMediana); title('Mediana Poisson');

%GAUSSIANO
poissonGauss= imgaussfilt(img2);
figure(15); imshow(poissonGauss); title('Gaussiano Poisson');

% % 
% SPECKLE
img2 = speckleNoise;

% PROMEDIO
specklePromedio= imfilter(img2, k);
figure(16); imshow(specklePromedio); title('Promedio Speckle');

% MEDIANA
speckleMediana= medfilt2(img2);
figure(17); imshow(speckleMediana); title('Mediana Speckle');

%GAUSSIANO
speckleGauss= imgaussfilt(img2);
figure(18); imshow(speckleGauss); title('Gaussiano Speckle');

%% 
%SALT & PEPPER
img2 = spNoise;

% PROMEDIO
spPromedio= imfilter(img2, k);
figure(19); imshow(spPromedio); title('Promedio Salt & Pepper');

% MEDIANA
spMediana= medfilt2(img2);
figure(20); imshow(spMediana); title('Mediana Salt & Pepper');

%GAUSSIANO
spGauss= imgaussfilt(img2);
figure(21); imshow(spGauss); title('Gaussiano Salt & Pepper');

%%
% 3) Ahora realiza la detección de bordes en las imágenes filtradas.

LaplaceGaussPromedio = (filter2(Laplacian, gaussPromedio));
figure(22); imshow(LaplaceGaussPromedio); title('Laplacian Gaussian Promedio');

LaplaceGaussMediana = (filter2(Laplacian, gaussMediana));
figure(23); imshow(LaplaceGaussMediana); title('Laplacian Gaussian Mediana');

LaplaceGaussGauss = (filter2(Laplacian, gaussGauss));
figure(24); imshow(LaplaceGaussGauss); title('Laplacian Gaussian Gaussiano');


LaplacePoissonPromedio = (filter2(Laplacian, poissonPromedio));
figure(25); imshow(LaplacePoissonPromedio); title('Laplacian Poisson Promedio');

LaplacePoissonMediana = (filter2(Laplacian, poissonMediana));
figure(26); imshow(LaplacePoissonMediana); title('Laplacian Poisson Mediana');

LaplacePoissonGauss = (filter2(Laplacian, poissonGauss));
figure(27); imshow(LaplacePoissonGauss); title('Laplacian Poisson Gaussiano');


LaplaceSpecklePromedio = (filter2(Laplacian, specklePromedio));
figure(28); imshow(LaplaceSpecklePromedio); title('Laplacian Speckle Promedio');

LaplaceSpeckleMediana = (filter2(Laplacian, speckleMediana));
figure(29); imshow(LaplaceSpeckleMediana); title('Laplacian Speckle Mediana');

LaplaceSpeckleGauss = (filter2(Laplacian, speckleGauss));
figure(30); imshow(LaplaceSpeckleGauss); title('Laplacian Speckle Gaussiano');


LaplaceSPPromedio = (filter2(Laplacian, spPromedio));
figure(31); imshow(LaplaceSPPromedio); title('Laplacian Salt & Pepper Promedio');

LaplaceSPMediana = (filter2(Laplacian, spMediana));
figure(32); imshow(LaplaceSPMediana); title('Laplacian Salt & Pepper Mediana');

LaplaceSPGauss = (filter2(Laplacian, spGauss));
figure(33); imshow(LaplaceSPGauss); title('Laplacian Salt & Pepper Gaussiano');
