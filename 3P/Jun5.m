%Color segmentation using LAB 
clc; clearvars; close all;

%%
img=imread('up.png');
LABimg=rgb2lab(img);
figure(); imshow(img);  title('Original image');
figure(); imshow(LABimg);  title('LAB image');

sigma = 5;
LABimg = imgaussfilt(LABimg, sigma, 'FilterSize', 3);
figure(); imshow(LABimg);  title('LAB image filtrada');

L = LABimg(:,:,1);
A = LABimg(:,:,2);
B = LABimg(:,:,3);

Vmin = 1; Hmax = 100; 
Smin = -30; Smax = 87;
Vmin = 50; Vmax = 128;

maskSV  = (S >= Smin) & (S <= Smax)&(V >= Vmin)&(V <= Vmax);
figure(); imshow(maskSV); title('Mask 1 (Segmentación)'); 

mask = ((H > Vmin) & (H <= Hmax)) & (maskSV == 1);
mask3Ch = cat(3, mask, mask, mask);
figure(); imshow(mask); title('Mask 2 (Segmentación)'); 
%mask3Ch = cat(3, maskSV, maskSV, maskSV); %White color segmentation

colorFilter = img;
colorFilter(mask3Ch == 0) = 0; %colorFilter(mask3Ch ~= 0) = 0; %White color segmentation
figure(); imshow(colorFilter); title('Color Mask (Segmentación)'); 


%     
%     black = (valI<vThresh(1));
%     white = (satI<sThresh(1))&(valI>=vThresh(1));
%     red = ((hueI<=30)|(hueI>330))&threshI;
%     yellow = ((hueI>30)&(hueI<=90))&threshI;
%     green = ((hueI>90)&(hueI<=150))&threshI;
%     cyan = ((hueI>150)&(hueI<=210))&threshI;
%     blue = ((hueI>210)&(hueI<=270))&threshI;
%     magenta = ((hueI>270)&(hueI<=330))&threshI;
%     skin color
%lower = np.array([0, 48, 70], dtype = "uint8")
%upper = np.array([20, 255, 255], dtype = "uint8")
