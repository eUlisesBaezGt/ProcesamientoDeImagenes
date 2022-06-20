close all; clearvars; clc;

% 1) Eligen una imagen de baja calidad
LQimg=rgb2gray(imread('cup.png'));
figure(1); imshow(LQimg); title('Imagen original de baja calidad');
%% 

% 1.1) Aplica un filtro promedio con 3 tamaños diferentes de ventana.
LQimg2=double(LQimg);

n=3; k=ones(n)/n.^2;
filt_prom_1=imfilter(LQimg2,k);
figure(2); imshow(filt_prom_1, []); title('Imagen filtrada con filtro promedio de 3x3');

n=7; k=ones(n)/n.^2;
filt_prom_2=imfilter(LQimg2,k);
figure(3); imshow(filt_prom_2, []); title('Imagen filtrada con filtro promedio de 7x7');

n=11; k=ones(n)/n.^2;
filt_prom_3=imfilter(LQimg2,k);
figure(4); imshow(filt_prom_3, []); title('Imagen filtrada con filtro promedio de 11x11');
%% 

% 1.2) Aplica un filtro de mediana con 3 tamaños diferentes de ventana
filt_med_1=medfilt2(LQimg,[3 3]);
figure(5); imshow(filt_med_1, []); title('Imagen filtrada con filtro mediana de 3x3');

filt_med_2=medfilt2(LQimg,[7 7]);
figure(6); imshow(filt_med_2, []); title('Imagen filtrada con filtro mediana de 7x7');

filt_med_3=medfilt2(LQimg,[11 11]);
figure(7); imshow(filt_med_3, []); title('Imagen filtrada con filtro mediana de 11x11');
%%

% 1.33) Aplica un filtro gaussiano con valores diferentes de σ y 3 tamaños
% diferentes de ventana
LQimg2=double(LQimg);

sigma=3;
filt_gauss_1=imgaussfilt(LQimg2,sigma, 'FilterSize', [3 3]);
figure(8); imshow(uint8(filt_gauss_1)); title('Imagen filtrada con filtro gaussiano de 3x3');

sigma=7;
filt_gauss_2=imgaussfilt(LQimg2,sigma, 'FilterSize', [7 7]);
figure(9); imshow(uint8(filt_gauss_2)); title('Imagen filtrada con filtro gaussiano de 7x7');

sigma=11;
filt_gauss_3=imgaussfilt(LQimg2,sigma, 'FilterSize', [11 11]);
figure(10); imshow(uint8(filt_gauss_3)); title('Imagen filtrada con filtro gaussiano de 11x11');
%% 

% 2) Eligen una imagen de alta calidad
HQimg=rgb2gray(imread('up.png'));
figure(11); imshow(LQimg); title('Imagen original de alta calidad');
%%

% 2.1) Aplica un filtro promedio con 3 tamaños diferentes de ventana.
HQimg2=double(HQimg);

n=3; k=ones(n)/n.^2;
filt_prom_1=imfilter(HQimg2,k);
figure(12); imshow(filt_prom_1, []); title('Imagen filtrada con filtro promedio de 3x3');

n=7; k=ones(n)/n.^2;
filt_prom_2=imfilter(HQimg2,k);
figure(13); imshow(filt_prom_2, []); title('Imagen filtrada con filtro promedio de 7x7');

n=11; k=ones(n)/n.^2;
filt_prom_3=imfilter(HQimg2,k);
figure(14); imshow(filt_prom_3, []); title('Imagen filtrada con filtro promedio de 11x11');
%%

% 2.2) Aplica un filtro de mediana con 3 tamaños diferentes de ventana
filt_med_1=medfilt2(HQimg,[3 3]);
figure(15); imshow(filt_med_1, []); title('Imagen filtrada con filtro mediana de 3x3');

filt_med_2=medfilt2(HQimg,[7 7]);
figure(16); imshow(filt_med_2, []); title('Imagen filtrada con filtro mediana de 7x7');

filt_med_3=medfilt2(HQimg,[11 11]);
figure(17); imshow(filt_med_3, []); title('Imagen filtrada con filtro mediana de 11x11');
%%

% 2.33) Aplica un filtro gaussiano con valores diferentes de σ y 3 tamaños
% diferentes de ventana
HQimg2=double(HQimg);

sigma=3;
filt_gauss_1=imgaussfilt(HQimg2,sigma, 'FilterSize', [3 3]);
figure(18); imshow(uint8(filt_gauss_1)); title('Imagen filtrada con filtro gaussiano de 3x3');

sigma=7;
filt_gauss_2=imgaussfilt(HQimg2,sigma, 'FilterSize', [7 7]);
figure(19); imshow(uint8(filt_gauss_2)); title('Imagen filtrada con filtro gaussiano de 7x7');

sigma=11;
filt_gauss_3=imgaussfilt(HQimg2,sigma, 'FilterSize', [11 11]);
figure(20); imshow(uint8(filt_gauss_3)); title('Imagen filfiltrada con filtro gaussiano de 11x11');


% 4) ¿Qué observas? ¿cómo afecta el tamaño de ventana en el
% proceso de suavizado?

% Para un mismo valor de σ fijo, al aumentar el tamaño del kernel,
% existe mayor blur.

% Por otro lado, para un tamaño de kernel fijo, al aumentar sigma,
% aumenta el blur.
