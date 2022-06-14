
RGB = imread('cup.png');
SI=imresize(RGB,[450,750]);
imshow(SI);

% 1)  Elige una imagen y conviértela en escala de grises.
GS = rgb2gray(SI);

% 2) Aplica la función gamma a la imagen en escala de grises.
% 3) Repite el proceso con 3 valores diferentes de Gamma. ¿Qué
% efecto se obtiene a la imagen al aplicar la función gamma? ¿Cómo
% influye el valor de gamma en el resultado final?

size(GS);
figure(); imshow(GS);

% First Solution without formula
% I = imadjust(GS,[],[],0.5);
% J = imadjust(GS,[],[],1.25);
% M = imadjust(GS,[],[],3.25);

% figure(); imshowpair(GS,I,"montage");
% figure(); imshowpair(GS,J,"montage");
% figure(); imshowpair(GS,M,"montage");

% First Solution with formula
gamma = 1.8;

% 8 bits --> 255

for cols = 1:size(GS,2)
    for rows = 1:size(GS,1)
        GS(rows,cols) = 255*(double(GS(rows,cols))/255)^1/gamma;
    end
end

figure(); imshow(GS);
