%%
close all; clear, clc;
% Elige 1 imagen y aplica 4 tipos de ruido
img = rgb2gray(imread("up.png"));
gaussNoise = imnoise(img, 'gaussian');
poissonNoise = imnoise(img, 'poisson');
spNoise = imnoise(img, 'salt & pepper');
speckleNoise = imnoise(img, 'speckle');

%%
% Original with noise
figure(1); imshow(gaussNoise); title('Gaussian noise');

figure(2); imshow(poissonNoise); title('Poisson noise');

figure(3); imshow(spNoise); title('Salt & pepper noise');

figure(4); imshow(speckleNoise); title('Speckle noise');

%% 
% 1) Realiza la detección de bordes con Sobel a la imagen original y a
% cada una de las imágenes con ruido.
orgSobel = edge(img, 'sobel');
figure(5); imshow(orgSobel); title('Original Sobel');

gaussSobel = edge(gaussNoise, 'sobel');
figure(6); imshow(gaussSobel); title('Gaussian Sobel');

poissonSobel = edge(poissonNoise, 'sobel');
figure(7); imshow(poissonSobel); title('Poisson Sobel');

spSobel = edge(spNoise, 'sobel');
figure(8); imshow(spSobel); title('Salt & pepper Sobel');

speckleSobel = edge(speckleNoise, 'sobel');
figure(9); imshow(speckleSobel); title('Speckle Sobel');

%%
% 2) Aplica los filtros de mediana, promedio y gaussiano a la imagen
% con ruido.
n=3; k=ones(n)/n.^2;
%%
% GAUSS
img2 = gaussNoise;

% PROMEDIO
gaussPromedio=imfilter(img2,k);
figure(10); imshow(gaussPromedio); title('Gaussian Promedio');

% MEDIANA
gaussMediana=medfilt2(img2);
figure(); imshow(gaussMediana); title('Mediana GAUSSIAN');

% GAUSSIANO
gaussGauss=imgaussfilt(img2,1);
figure(); imshow(gaussGauss); title('Gaussian Gauss');

%%
%POISSON
img2 = poissonNoise;

%PROMEDIO
poissonPromedio=imfilter(img2,k);
figure(11); imshow(poissonPromedio); title('Poisson Promedio');

% MEDIANA
poissonMediana=medfilt2(img2);
figure(); imshow(poissonMediana); title('Mediana POISSON');

% GAUSSIANO
poissonGauss=imgaussfilt(img2,1);
figure(); imshow(poissonGauss); title('Gaussian POISSON');

%%
% SALT & PEPPER
img2 = spNoise;

% PROMEDIO
spPromedio=imfilter(img2,k);
figure(12); imshow(spPromedio); title('Salt & pepper Promedio');

% MEDIANA
spMediana=medfilt2(img2);
figure(); imshow(spMediana); title('Mediana SALT & PEPPER');

% GAUSSIANO
spGauss=imgaussfilt(img2,1);
figure(); imshow(spGauss); title('Gaussian SALT & PEPPER');

%% 
% SPECKLE
img2 = speckleNoise;

% PROMEDIO
specklePromedio=imfilter(img2,k);
figure(13); imshow(specklePromedio); title('Speckle Promedio');

% MEDIANA
speckleMediana=medfilt2(img2);
figure(); imshow(speckleMediana); title('Mediana SPECKLE');

% GAUSSIANO
speckleGauss=imgaussfilt(img2,1);
figure(); imshow(speckleGauss); title('Gaussian SPECKLE');


%%
% % 3) Ahora realiza la detección de bordes en las imágenes filtradas.
SobelGaussPromedio = edge(gaussPromedio, 'sobel');
figure(14); imshow(SobelGaussPromedio); title('Sobel Gauss Promedio');

SobelGaussMediana = edge(gaussMediana, 'sobel');
figure(15); imshow(SobelGaussMediana); title('Sobel Gauss Mediana');

SobelGaussGauss = edge(gaussGauss, 'sobel');
figure(16); imshow(SobelGaussGauss); title('Sobel Gauss Gauss');


SobelPoissonPromedio = edge(poissonPromedio, 'sobel');
figure(17); imshow(SobelPoissonPromedio); title('Sobel Poisson Promedio');

SobelPoissonMediana = edge(poissonMediana, 'sobel');
figure(18); imshow(SobelPoissonMediana); title('Sobel Poisson Mediana');

SobelPoissonGauss = edge(poissonGauss, 'sobel');
figure(19); imshow(SobelPoissonGauss); title('Sobel Poisson Gauss');


SobelSPPromedio = edge(spPromedio, 'sobel');
figure(20); imshow(SobelSPPromedio); title('Sobel SP Promedio');

SobelSPMediana = edge(spMediana, 'sobel');
figure(21); imshow(SobelSPMediana); title('Sobel SP Mediana');

SobelSPGauss = edge(spGauss, 'sobel');
figure(22); imshow(SobelSPGauss); title('Sobel SP Gauss');


SobelSpecklePromedio = edge(specklePromedio, 'sobel');
figure(23); imshow(SobelSpecklePromedio); title('Sobel Speckle Promedio');

SobelSpeckleMediana = edge(speckleMediana, 'sobel');
figure(24); imshow(SobelSpeckleMediana); title('Sobel Speckle Mediana');

SobelSpeckleGauss = edge(speckleGauss, 'sobel');
figure(25); imshow(SobelSpeckleGauss); title('Sobel Speckle Gauss');

%% 
% 4) ¿Qué diferencia hay entre la detección de bordes obtenida en las
% imágenes con ruido en comparación con la detección de bordes
% de las imágenes filtradas? ¿A qué se debe este fenómeno?

% En las imágenes filtradas, se obtiene una detección de bordes más
% precisa, ya que cuando se reduce el ruido, se eliminan los
% pixeles distorsionados, y se toman los bordes reales (originales)
% de nuestro entorno.

%%
% 5) Repite todo el proceso utilizando ahora el filtro de Laplace .
%%%%%%%%%%%% EN ARCHIVO CONTINUACION Task2_Jun23_RuidoYBordes5Laplace
