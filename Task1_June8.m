% 1) Random number 5x3 maxtrix. Using rand
M1 = rand(5,3);

% 2) Change to 1 all x<0.52 in M1
M1(M1<0.52) =1 ;

% 3) Identity 3x3
I1 = eye(3);

% 4) Show 1/2 RGB image
A= imread('flores.jpg');
figure(1)
imshow(A)
% [recorte, pos] = imcrop(A);  % TODO CHECK
figure(2)
imshow(recorte)


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
