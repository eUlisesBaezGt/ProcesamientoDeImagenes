% LOAD IMAGE AND EXTRACT CHANNELS AND SIZE
img=imread('escudo.jpg');
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);
[rows, columns, numChannels] = size(R);

% UP RIGHT TS GREEN
% imshow(img(1:ceil(rows/2),ceil(columns/2):end,1:numChannels));
R(1:ceil(rows/2),ceil(columns/2):end,1:numChannels)=0;
B(1:ceil(rows/2),ceil(columns/2):end,1:numChannels)=0;

% LEFT DOWN TS RED
% imshow(img(ceil(rows/2):end,1:ceil(columns/2),1:numChannels));
G(ceil(rows/2):end,1:ceil(columns/2),1:numChannels)=0;
B(ceil(rows/2):end,1:ceil(columns/2),1:numChannels)=0;

% DISPLAY MODIFIED IMAGE
img2=cat(3,R,G,B);
figure();
imshow(img2)

% RESET CHANNELS
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);

% UP LEFT SOLID GREEN
% imshow(img(1:ceil(rows/2),1:ceil(columns/2),1:numChannels));
R(1:ceil(rows/2),1:ceil(columns/2),1:numChannels)=0;
G(1:ceil(rows/2),1:ceil(columns/2),1:numChannels)=255;
B(1:ceil(rows/2),1:ceil(columns/2),1:numChannels)=0;

% RIGHT DOWN SOLID BLUE
% imshow(img(ceil(rows/2):end,ceil(columns/2):end,1:numChannels));
R(ceil(rows/2):end,ceil(columns/2):end,1:numChannels)=0;
G(ceil(rows/2):end,ceil(columns/2):end,1:numChannels)=0;
B(ceil(rows/2):end,ceil(columns/2):end,1:numChannels)=255;

% DISPLAY MODIFIED IMAGE
img3=cat(3,R,G,B);
figure();
imshow(img3)
