%Aplica diferentes tipos de ruido a tu imagen
% img = rgb2gray(imread('gatito2.jpg'));

imP = imnoise(img, 'poisson');
figure(); imshow(imP); title('Rudio Poisson');
imSP = imnoise(img, 'salt & pepper');
figure(); imshow(imSP); title('Rudio Salt & Pepper');
imS = imnoise(img, 'speckle');
figure(); imshow(imS); title('Rudio Speckle');
%%
% Aplica el filtro gaussiano tanto para altas y bajas frecuencias con dos diferentes valores de sigma
% a cada una de tus imágenes con los distintos tipos de ruido
%% Poisson noise, sigma 5
[filasP, colsP] = size(imP);

imFFTP = fft2(imP);
imShiftP = fftshift(imFFTP);
sigmaP = 5;
gfP = fspecial('gaussian', [filasP, colsP],sigmaP);
gfP = mat2gray(gfP);
gaussShiftP = fftshift(fft2(gfP));

% Bajas frecuencias
imFiltP = imShiftP .* gaussShiftP;
imFiltEspacioP = ifftshift(ifft2(imFiltP));
figure(); imshow(log(abs(imFiltEspacioP)),[]); title('Gauss-Poisson Noise para bajas frecuencias \sigma = 5');

% Altas frecuencias
gfAltaP = (1 - mat2gray(abs(gaussShiftP)));
imFiltAltaP = imShiftP .* gfAltaP;
imFiltEspAltaP = ifft2(ifftshift(imFiltAltaP));
figure(); imshow(log(abs(imFiltEspAltaP)),[]); title('Gauss-Poisson Noise altas frecuencias \sigma = 5');
%% Poisson noise, sigma 2

clear sigmaP;
clear gfP;
clear gaussShiftP;
clear imFiltP;
clear imFiltEspacioP;
clear gfAltaP;
clear imFiltAltaP;
clear imFiltEspAltaP;

sigmaP = 2;
gfP = fspecial('gaussian', [filasP, colsP],sigmaP);
gfP = mat2gray(gfP);

gaussShiftP = fftshift(fft2(gfP));

% Bajas Frecuencias
imFiltP = imShiftP .* gaussShiftP;
imFiltEspacioP = ifftshift(ifft2(imFiltP));
figure(); imshow(log(abs(imFiltEspacioP)),[]); title('Gauss-Poisson Noise para bajas frecuencia, sigma = 2');

% Altas Frecuencias
gfAltaP = (1 - mat2gray(abs(gaussShiftP)));
imFiltAltaP = imShiftP .* gfAltaP;
imFiltEspAltaP = ifft2(ifftshift(imFiltAltaP));
figure(); imshow(log(abs(imFiltEspAltaP)),[]); title('Gauss-Poisson Noise para altas frecuencias, sigma = 2');

%% Salt&Pepper Noise, sigma 5
[filasSP, colsSP] = size(imSP);

imFFTSP = fft2(imSP);
imShiftSP = fftshift(imFFTSP);

sigmaSP = 5;
gfSP = fspecial('gaussian', [filasSP, colsSP],sigmaSP);
gfSP = mat2gray(gfSP);

gaussShiftSP = fftshift(fft2(gfSP));

% Bajas Frecuencias
imFiltSP = imShiftSP .* gaussShiftSP;
imFiltEspacioSP = ifftshift(ifft2(imFiltSP));
figure(); imshow(log(abs(imFiltEspacioSP)),[]); title('Gauss-Salt & Pepper Noise para bajas frecuencias, sigma = 5');

% Altas Frecuencias
gfAltaSP = (1 - mat2gray(abs(gaussShiftSP)));
imFiltAltaSP = imShiftSP .* gfAltaSP;
imFiltEspAltaSP = ifft2(ifftshift(imFiltAltaSP));
figure(); imshow(log(abs(imFiltEspAltaSP)),[]); title('Gauss-Salt & Pepper Noise para altas frecuencias, sigma = 5');

%% Salt&Pepper noise, sigma 2

clear sigmaSP;
clear gfSP;
clear gaussShiftSP;
clear imFiltSP;
clear imFiltEspacioSP;
clear gfAltaSP;
clear imFiltAltaSP;
clear imFiltEspAltaSP;

sigmaSP = 2;
gfSP = fspecial('gaussian', [filasSP, colsSP],sigmaSP);
gfSP = mat2gray(gfSP);

gaussShiftSP = fftshift(fft2(gfSP));

% Bajas Frecuencias
imFiltSP = imShiftSP .* gaussShiftSP;
imFiltEspacioSP = ifftshift(ifft2(imFiltSP));
figure(); imshow(log(abs(imFiltEspacioSP)),[]); title('Gauss-Salt & Pepper Noise para bajas frecuencias, sigma = 2');

% Altas Frecuencias
gfAltaSP = (1 - mat2gray(abs(gaussShiftSP)));
imFiltAltaSP = imShiftSP .* gfAltaSP;
imFiltEspAltaSP = ifft2(ifftshift(imFiltAltaSP));
figure(); imshow(log(abs(imFiltEspAltaSP)),[]); title('Gauss-Salt & Pepper Noise para altas frecuencias, sigma = 2');
%% Speckle noise, sigma 5
[filasS, colsS] = size(imS);

imFFTS = fft2(imS);
imShiftS = fftshift(imFFTS);

sigmaS = 5;
gfS = fspecial('gaussian', [filasS, colsS],sigmaS);
gfS = mat2gray(gfS);
gaussShiftS = fftshift(fft2(gfS));

% Bajas Frecuencias
imFiltS = imShiftS .* gaussShiftS;
imFiltEspacioS = ifftshift(ifft2(imFiltS));
figure(); imshow(log(abs(imFiltEspacioS)),[]); title('Gauss-Speckle Noise para bajas frecuencias, sigma = 5');

% Altas Frecuencias
gfAltaS = (1 - mat2gray(abs(gaussShiftS)));
imFiltAltaS = imShiftS .* gfAltaS;
imFiltEspAltaS = ifft2(ifftshift(imFiltAltaS));
figure(); imshow(log(abs(imFiltEspAltaS)),[]); title('Gauss-Speckle Noise para altas frecuencias, sigma = 5');
%% Salt&Pepper noise, sigma 2

clear sigmaS;
clear gfS;
clear gaussShiftS;
clear imFiltS;
clear imFiltEspacioS;
clear gfAltaS;
clear imFiltAltaS;
clear imFiltEspAltaS;

sigmaS = 2;
gfS = fspecial('gaussian', [filasS, colsS],sigmaS);
gfS = mat2gray(gfS);

gaussShiftS = fftshift(fft2(gfS));

% Bajas Frecuencias
imFiltS = imShiftS .* gaussShiftS;

imFiltEspacioS = ifftshift(ifft2(imFiltS));
figure(); imshow(log(abs(imFiltEspacioS)),[]); title('Gauss-Speckle Noise para bajas frecuencias, sigma = 2');

% Altas Frecuencias
gfAltaS = (1 - mat2gray(abs(gaussShiftS)));
imFiltAltaS = imShiftS .* gfAltaS;
imFiltEspAltaS = ifft2(ifftshift(imFiltAltaS));
figure(); imshow(log(abs(imFiltEspAltaS)),[]); title('Gauss-Speckle Noise para altas frecuencias, sigma = 2');

%% ¿Qué pasa con las imágenes filtradas?, ¿se les quitó el ruido?
% No a todas.