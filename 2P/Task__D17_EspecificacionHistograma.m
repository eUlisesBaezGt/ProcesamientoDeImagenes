close all; clear; clc;

% 1) Realiza la especificación del histograma de 3 imágenes
img1 = rgb2gray(imread('buho.png'));
figure(1); imshow(img1); title('BUHO ORG'); % 1
figure(2); histogram(img1); title('BUHO HIST'); % 2

img2 = rgb2gray(imread('cup.png'));
figure(3); imshow(img2); title('CUP ORG'); % 3
figure(4); histogram(img2); title('CUP HIST'); % 4

img3 = rgb2gray(imread('jc.png'));
figure(5); imshow(img3); title('JC ORG'); % 5
figure(6); histogram(img3); title('JC HIST'); % 6

imgH = rgb2gray(imread('up.png'));
figure(7); imshow(imgH); title('UP ORG'); % 7
figure(8); histogram(imgH); title('UP HIST'); % 8

img1HistEsp=imhistmatch(img1,imgH);
figure(9); imshow(img1HistEsp); title('BUHO IMG ESP'); % 9
figure(10); histogram(img1HistEsp); title('BUHO HIST ESP'); % 10

img2HistEsp=imhistmatch(img2,imgH);
figure(11); imshow(img2HistEsp); title('CUP IMG ESP'); % 11
figure(12); histogram(img2HistEsp); title('CUP HIST ESP'); % 12

img3HistEsp=imhistmatch(img3,imgH);
figure(13); imshow(img3HistEsp); title('JC IMG ESP'); % 13
figure(14); histogram(img3HistEsp); title('JC HIST ESP'); % 14

% 2) ¿Qué aplicaciones le darías a esta técnica?

