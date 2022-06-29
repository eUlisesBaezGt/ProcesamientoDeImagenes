% Elige 3 imágenes diferentes (sintéticas/objetos, exterior, interior) y:
close all; clear; clc;

buho=double(rgb2gray(imread('buho.png')));
jc=double(rgb2gray(imread('jc.png')));
up=double(rgb2gray(imread('up.png')));

%% 1
% 1. Obten la transformada de Fourier de cada una de ellas.
buho_fourier=fft2(buho);
jc_fourier=fft2(jc);
up_fourier=fft2(up);

%% 2
% 2. Observa los histogramas de Fourier de cada imagen. ¿Tienen algo en común?

figure(); hist(buho_fourier); title('Histograma de buho');
figure; hist(jc_fourier); title('Histograma de jc');
figure; hist(up_fourier); title('Histograma de up');

% ¿Tienen algo en común?
% Todos están concentrados del lado derecho del histograma,
% a pesar de tener diferentes valores en sus ecalas de eje.

%% 3
% 3. Obten el mínimo y máximo de cada una de ellas, así como su versión log-abs.

min_buho_fourier=min(buho_fourier(:))
max_buho_fourier=max(buho_fourier(:))

min_jc_fourier=min(jc_fourier(:))
max_jc_fourier=max(jc_fourier(:))

min_up_fourier=min(up_fourier(:))
max_up_fourier=max(up_fourier(:))

abs_buho_fourier=abs(buho_fourier);
abs_jc_fourier=abs(jc_fourier);
abs_up_fourier=abs(up_fourier);

log_abs_buho_fourier=log(abs_buho_fourier);
log_abs_jc_fourier=log(abs_jc_fourier);
log_abs_up_fourier=log(abs_up_fourier);

min_log_abs_buho_fourier=min(log_abs_buho_fourier(:))
max_log_abs_buho_fourier=max(log_abs_buho_fourier(:))

min_log_abs_up_fourier=min(log_abs_up_fourier(:))
max_log_abs_up_fourier=max(log_abs_jc_fourier(:))

min_log_abs_up_fourier=min(log_abs_up_fourier(:))
max_log_abs_up_fourier=max(log_abs_up_fourier(:))


%% 4
% 4. Obten la versión shifted de cada una de ellas. ¿Se parecen entre sí los espectros
% Fourier obtenidos con cada imagen?

shifted_log_abs_buho_fourier=fftshift(log_abs_buho_fourier);
figure(); imshow(shifted_log_abs_buho_fourier, []); title('shifted log abs buho');

shifted_log_abs_jc_fourier=fftshift(log_abs_jc_fourier);
figure(); imshow(shifted_log_abs_jc_fourier, []); title('shifted log abs jc');

shifted_log_abs_up_fourier=fftshift(log_abs_up_fourier);
figure(); imshow(shifted_log_abs_up_fourier, []); title('shifted log abs up');

% ¿Se parecen entre sí los espectros Fourier obtenidos con cada imagen?
% Si, todos tienen una cruz en en centro que divide en 4 cuadrantes, y se nota una
% ligera diagonal, que divide los cuadrantes.

%% 5 TODO
% ¿Qué tipo de frecuencias se encuentran ubicadas al centro del espectro de Fourier?
% En la versión logFFT, los tiene en las esquinas (color claro). Y negro en el centro.

% En la versión shifted, los valores altos se encuentran en el centro del espectro.

% En la versión Shifted, Las frecuencias bajas se encuentran en el centro, mientras que las frecuencias
% altas se encuentran en las esquinas.

%% 6 TODO
% ¿Qué tipo de frecuencias se encuentran ubicadas en el margen exterior del espectro de Fourier?

%% 7
% Regresa tu espectro de Fourier al dominio espacial. ¿Qué matriz se utiliza para
% este proceso, la versión fftshift(log(abs(imFFT))) o la versión
% imFFT?

inv_buho_fourier=ifft2(buho_fourier);
figure; imshow(uint8(inv_buho_fourier)); title('Inversa de buho');
inv_jc_fourier=ifft2(jc_fourier);
figure; imshow(uint8(inv_jc_fourier)); title('Inversa de jc');
inv_up_fourier=ifft2(up_fourier);
figure; imshow(uint8(inv_up_fourier)); title('Inversa de up');

% Para regresar el espectro de Fourier al dominio espacial, se utiliza la
% versión TODO------------------
