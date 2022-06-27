%% 
close all; clearvars; clc;

% Elige 1 imagen y conviértela en escala de grises
img = rgb2gray(imread('buho.png'));

%% 1
% 1) Obten los bordes de la imagen utilizando el operador LoG (usa la
% función imfilter), para 2 pares diferentes de valores de sigma para
% un solo tamaño de kernel.
h1=fspecial('gaussian',10,10);
h2=fspecial('gaussian',10,0.5);
hr=h1-h2;
imgLoG=imfilter(img,hr);
figure; imshow(imgLoG, []); title('Imagen con LoG σ1=10 σ2=0.5');

h11=fspecial('gaussian',10,3);
h22=fspecial('gaussian',10,0.1);
hr2=h11-h22;
imgLoG=imfilter(img,hr2);
figure; imshow(imgLoG, []); title('Imagen con LoG σ1=3 σ2=0.1');

%% 2
% 2) De acuerdo a los resultados obtenidos, ¿Cómo afecta el valor de σ1 y
% σ2 en los bordes obtenidos? 
% Un valor de sigma mayor impacta en un mayor
% desenfoque, existe proporción. 
% Lo que podemos observar en las imágenes es lo siguiente: La imagen de la 
% derecha vemos que es ligeramente borrosa.
% No se alcanza a ver muy claro, pero esa es a la conclusión que llegamos
% como equipo. La imagen izquierda esta un poco mas marcada de los bordes.
% La diferencia entre σ's es proporcional a la cantidad de bordes que se
% obtienen.

%% 3
% 3) ¿Cómo afecta el valor del threshold en la obtención final de los
% bordes?
imgLoG=edge(img,'log',0.1, 1);
figure; imshow(imgLoG, []); title('Imagen con LoG THRES 0.1');

imgLoG=edge(img,'log',0.15, 1);
figure; imshow(imgLoG, []); title('Imagen con LoG THRES 0.15');

% Conforme aumentamos ese valor, se pierden bordes de la imagen, ya que lo que antes era blanco
% se reemplaza por un valor de negro.

%% 4
% 4) Implementa el filtro de Canny a la imagen.
% CANNY
imgCanny = edge(img,'canny');
figure; imshow(imgCanny, []); title('Canny');

%% 5
% 5) ¿En qué casos te resulta conveniente utilizar el detector LoG y en
% qué casos a Canny?
% En nuestro caso, para la imagen de buho, el detector LoG nos sirve para
% obtener bordes más suaves, y el detector Canny nos sirve para obtener
% bordes más rígidos.
% Canny nos sirve para remarcar más contornos para poder verlos mejor y en su
% caso aislar los objetos y separar los del fondo para analizarlos. 
