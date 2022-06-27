close all; clear; clc;

% 1) Elige una imagen y aplica diferentes umbrales. ¿Qué observaste?
% imTh = ((imGray>th1) & (imGray<th2)).
img = imread('jc.png');
figure(); imshow(img);

GS = rgb2gray(img);
figure(); imshow(GS);

C=zeros(size(GS));
C((GS>170)&(GS<210))=1;
figure(); imshow(C);

D = zeros(size(GS));
D((GS>150)&(GS<250))=1;
figure(); imshow(D);

% Primero nos sale nuestra imagen en estado normal, es decir sin ninguna 
% alteración.

% Después, tenemos esa misma imagen, pero ahora en tonos grises.

% En tercera modificación se puede observar que nuestra imagen ahora se 
% ve en blanco y negro. Se ve un negro muy saturado y en el centro-derecha 
% de la imagen, se logra ver color blanco.

% En la última transformación, podemos ver que la imagen esta casi negra, 
% hay una ligera parte donde vemos blanco, pero el 85% de la imagen es negro.

% 2) Elige otra imagen, la cual se perciba muy obscura o muy clara.
% Utiliza imtool en alguna de tus imágenes y ajusta los valores de
% contraste, de tal manera que se mejore la tonalidad de la imagen
img2=imread('rosas.png');
imtool(img2);


% 3) Implementa en Matlab la técnica contrast stretching con los límites
% máximo y mínimos obtenidos en imtool.
p=(255/218-0).*(img2-0);
figure(); imshow(p);

% 4) Aplica equalización del histograma a alguna de tus imágenes.
HEQ=histeq(img2);
figure(); imshow(HEQ);

% 5) Notas alguna diferencia entre contrast stretching y la equalización
% del histograma

% En el contrast stretching se pueden ajustar los maximos y minimos de la
% imagen, mientras que con la equalizacion tratamos de que exista un balance
% entre los blancos y los negros
