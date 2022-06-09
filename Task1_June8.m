% 1) Random number 5x3 maxtrix. Using rand
M1 = rand(5,3);


% 2) Change to 1 all x<0.52 in M1
M1(M1<0.52) =1 ;


% 3) Identity 3x3
I1 = eye(3);


% 4) Show 1/2 RGB image
img=imread('escudo.jpg');
[rows, columns, numChannels] = size(img);
figure();
% imshow(img(1:ceil(rows/2),1:ceil(columns/2),1:numChannels)); 1/4
imshow(img(1:ceil(rows/2),1:columns,1:numChannels)); % 1/2

% Other way
A=imread('escudo.jpg');
figure(1)
imshow(A)
[recorte, pos] = imcrop(A);
figure(2);
imshow(recorte);

% Other way
A=imread('escudo.jpg');
figure(1);
imshow(A);
I2 = imcrop(A,[180 80, 150 120]);
figure(2);
imshow(I2);


% 5) Generate RGB figures showed in Fig2
R=img(:,:,1); 
G=img(:,:,2); 
B=img(:,:,3); 
 
Commodin=zeros(size(R));

rojo=cat(3,R,Commodin,Commodin);
figure(); imshow(rojo);

verde=cat(3,Commodin,G,Commodin);
figure(); imshow(verde);

azul=cat(3,Commodin,Commodin,B);
figure(); imshow(azul);


% 6) Generate an image in GS in 3CH
img = imread('escudo.jpg');
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
COM = zeros(size(R));
red = cat(3,R,R,R);
figure(); imshow(red);
