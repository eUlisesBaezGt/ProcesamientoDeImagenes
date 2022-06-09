img=imread('escudo.jpg');
figure(); imshow(img);

R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);
[rows, columns] = size(R);

% Rotate
RImg = imrotate(img, 27);
figure(); imshow(RImg);

% Traslate
TImg=imtranslate(img,[250,140]);
figure(); imshow(TImg);

% Scale
SImg=imresize(img,[150,250]);
figure(); imshow(SImg);
 

% Vertical Mirror
figure(); imshow(fliplr(img));

% Horizontal Mirror
figure(); imshow(flip(img));


% Up Left
figure(); imshow(img(1:ceil(rows/2),1:ceil(columns/2),1:3));

% Down Right
figure(); imshow(img(ceil(rows/2):end,ceil(columns/2):end,1:3));

% 2 practic applications
