
% 1) Descarga 3 imagenes a color y conviértelas a escala de grises.

img1 = imread('buho.png');
figure(); imshow(img1);
img2 = imread('jc.png');
figure(); imshow(img2);
img3 = imread('up.png');
figure(); imshow(img3);

GS1 = rgb2gray(img1);
figure(); imshow(GS1);
GS2 = rgb2gray(img2);
figure(); imshow(GS2);
GS3 = rgb2gray(img3);
figure(); imshow(GS3);

% 2) Obten el histograma de las 3 imágenes.
figure();
H1 = histogram(GS1);
figure();
H2 = histogram(GS2);
figure();
H3 = histogram(GS3);

% 3) ¿Encontraste alguna diferencia? ¿se parecen entre sí los histogamas de tus 3 imágenes? 
% ¿Se podría utilizar únicamente el histograma para representar a una imagen?

% 4) Selecciona una de tus imagenes en escala de grises y aplica la
% función gamma para 3 valores diferentes de gamma. ¿Qué observaste? ¿Se modificó el histograma de la imagen al aplicar
% la función gamma? ¿Tiene alguna relación la modificación
% que sufrió el histograma con el valor de gamma aplicado?

