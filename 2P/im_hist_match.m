clc; clear vars; close all;

im1=rgb2gray(imread("buho.png")); im2=rgb2gray(imread("cup.png"));

iHM = imhistmatch(im1, im2);


figure(); imshow(im1); title("BUHO");
figure(); imshow(im2); title("CUP");
figure(); imshow(iHM); title("MATCHED");

figure(); h=histogram(im1); title("BUHO HIST");
figure(); h=histogram(im2); title("CUP HIST");
figure(); h=histogram(iHM); title("MATCHED HIST");
