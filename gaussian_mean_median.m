%% Salt and pepper filter
image=('cat.tif');

I = imread(image);

J = imnoise(I,'salt & pepper',0.02);

figure, imshow(I)

figure, imshow(J)

%% mean filter
image=imread('cat.tif');

g = imnoise (image,'salt & peppe',0.02);

figure, imshow(g)

meanFilter = fspecial('average', [3 3]);

sonucGoster = imfilter(g, meanFilter);

figure,imshow(sonucGoster);

%% medyan filtre

image=imread('cat.tif');
figure,subplot(1,3,1),imshow(image);
gurultuluRGB = imnoise(image,'salt & pepper',0.02);
subplot(1,3,2), imshow(gurultuluRGB)
% Matlab üzerindeki median filtresi RGB imajlara uygulamadýðýndan önce
% kanallara bölüyoruz
kirmiziKanal = gurultuluRGB(:, :, 1);
yesilKanal = gurultuluRGB(:, :, 2);
maviKanal = gurultuluRGB(:, :, 3);
% her kanala ayrý ayrý median filtresini uyguluyoruz
kirmiziMF = medfilt2(kirmiziKanal, [3 3]);
yesilMF = medfilt2(yesilKanal, [3 3]);
blueMF = medfilt2(maviKanal, [3 3]);
noiseImage = (kirmiziKanal == 0 | kirmiziKanal == 255);
gurultusuzRed = kirmiziKanal;
gurultusuzRed(noiseImage) = kirmiziMF(noiseImage);
noiseImage = (yesilKanal == 0 | yesilKanal == 255);
gurultusuzGreen = yesilKanal;
gurultusuzGreen(noiseImage) = yesilMF(noiseImage);
noiseImage = (maviKanal == 0 | maviKanal == 255);
gurultusuzBlue = maviKanal;
gurultusuzBlue(noiseImage) = blueMF(noiseImage);
% Her kanalýna ayrý ayrý median filtresi uyguladýk burada tüm kanallarý
% birleþtiriyoruz
rgbBirlestir = cat(3, gurultusuzRed, gurultusuzGreen, gurultusuzBlue);
subplot(1,3,3),imshow(rgbBirlestir);

%% Farklý bir image ile salt and pepper filter
image=imread('son_arduino_bükücüleri.jpeg');
figure,subplot(1,3,1),imshow(image);
gurultuluRGB = imnoise(image,'salt & pepper',0.02);
subplot(1,3,2), imshow(gurultuluRGB)
% Matlab üzerindeki median filtresi RGB imajlara uygulamadýðýndan önce
% kanallara bölüyoruz
kirmiziKanal = gurultuluRGB(:, :, 1);
yesilKanal = gurultuluRGB(:, :, 2);
maviKanal = gurultuluRGB(:, :, 3);
% her kanala ayrý ayrý median filtresini uyguluyoruz
kirmiziMF = medfilt2(kirmiziKanal, [3 3]);
yesilMF = medfilt2(yesilKanal, [3 3]);
blueMF = medfilt2(maviKanal, [3 3]);
noiseImage = (kirmiziKanal == 0 | kirmiziKanal == 255);
gurultusuzRed = kirmiziKanal;
gurultusuzRed(noiseImage) = kirmiziMF(noiseImage);
noiseImage = (yesilKanal == 0 | yesilKanal == 255);
gurultusuzGreen = yesilKanal;
gurultusuzGreen(noiseImage) = yesilMF(noiseImage);
noiseImage = (maviKanal == 0 | maviKanal == 255);
gurultusuzBlue = maviKanal;
gurultusuzBlue(noiseImage) = blueMF(noiseImage);
% Her kanalýna ayrý ayrý median filtresi uyguladýk burada tüm kanallarý
% birleþtiriyoruz
rgbBirlestir = cat(3, gurultusuzRed, gurultusuzGreen, gurultusuzBlue);
subplot(1,3,3),imshow(rgbBirlestir);




%% gaussian 
a = imread('cat.tif');
a_noise = imnoise ( a,'gaussian',0,0.01);
figure, subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(a_noise);


%% gaussian noise medyan filter

image=imread('son_arduino_bükücüleri.jpeg');
figure,subplot(1,3,1),imshow(image);
gurultuluRGB = imnoise(image,'gaussian',0,0.01);
subplot(1,3,2), imshow(gurultuluRGB)
% Matlab üzerindeki median filtresi RGB imajlara uygulamadýðýndan önce
% kanallara bölüyoruz
kirmiziKanal = gurultuluRGB(:, :, 1);
yesilKanal = gurultuluRGB(:, :, 2);
maviKanal = gurultuluRGB(:, :, 3);
% her kanala ayrý ayrý median filtresini uyguluyoruz
kirmiziMF = medfilt2(kirmiziKanal, [3 3]);
yesilMF = medfilt2(yesilKanal, [3 3]);
blueMF = medfilt2(maviKanal, [3 3]);
noiseImage = (kirmiziKanal == 0 | kirmiziKanal == 255);
gurultusuzRed = kirmiziKanal;
gurultusuzRed(noiseImage) = kirmiziMF(noiseImage);
noiseImage = (yesilKanal == 0 | yesilKanal == 255);
gurultusuzGreen = yesilKanal;
gurultusuzGreen(noiseImage) = yesilMF(noiseImage);
noiseImage = (maviKanal == 0 | maviKanal == 255);
gurultusuzBlue = maviKanal;
gurultusuzBlue(noiseImage) = blueMF(noiseImage);
% Her kanalýna ayrý ayrý median filtresi uyguladýk burada tüm kanallarý
% birleþtiriyoruz
rgbBirlestir = cat(3, gurultusuzRed, gurultusuzGreen, gurultusuzBlue);
subplot(1,3,3),imshow(rgbBirlestir);
%% gaussian mean filter
image=imread('cat.tif');
g = imnoise (image,'gaussian',0,0.02);
figure,subplot(2,2,1), imshow(g)
meanFilter = fspecial('average', [3 3]);
sonucGoster = imfilter(g, meanFilter);
subplot(2,2,2),imshow(sonucGoster)

