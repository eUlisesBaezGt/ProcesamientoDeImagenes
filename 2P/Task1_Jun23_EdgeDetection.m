clear; close all; clc;

% Elige 3 imágenes, de preferencia de algún objeto, una escene en
% interior y una escena en exterior.

img1=rgb2gray(imread('up.png'));
img2=rgb2gray(imread('buho.png'));
img3=rgb2gray(imread('jc.png'));
%%

% 1) Aplica el filtro/operador/kernel de Sobel a cada una de ellas.
% kernel = [-1 -2 -1; 0 0 0; 1 2 1]; Kernel de 1da derivada parcial en y
kernel = [-1 0 1; -2 0 2; -1 0 1]; % Kernel de 1da derivada parcial en x

img1sobel = uint8(filter2(kernel, img1));
figure, imshow(img1sobel, []); title('UP Sobel X');

img2sobel = uint8(filter2(kernel, img2));
figure, imshow(img2sobel, []); title('Buho Sobel X');

img3sobel = uint8(filter2(kernel, img3));
figure, imshow(img3sobel, []); title('JC Sobel X');

%%

% 2) 2 Aplica el operador de laplace básico a las 3 imágenes
kernel = [0 -1 0; -1 4 -1; 0 -1 0]; % Kernel de 2da derivada

img1laplace = uint8(filter2(kernel, img1));
figure, imshow(img1laplace, []); title('UP Laplace');

img2laplace = uint8(filter2(kernel, img2));
figure, imshow(img2laplace, []); title('Buho Laplace');

img3laplace = uint8(filter2(kernel, img3));
figure, imshow(img3laplace, []); title('JC Laplace');

%%

% 3) Aplica el operador de laplace diágonal a las 3 imágenes.
kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1]; % Kernel de 2da derivada diagonal

img1laplacediag = uint8(filter2(kernel, img1));
figure, imshow(img1laplacediag, []); title('UP Laplace Diag');

img2laplacediag = uint8(filter2(kernel, img2));
figure, imshow(img2laplacediag, []); title('Buho Laplace Diag');

img3laplacediag = uint8(filter2(kernel, img3));
figure, imshow(img3laplacediag, []); title('JC Laplace Diag');

