clc; clear; close all;

% Cargar las imágenes
img1 = imread('moon.tif'); %B&W
img2 = imread('peppers.png'); %RGB

% Las imagenes deben tener el mismo tamaño
img2 = imresize(img2, size(img1));

% Las 2 imagenes deben estar en la escala de grises
if size(img1,3) == 3
    img1 = rgb2gray(img1);
end

if size(img2,3) == 3
    img2 = rgb2gray(img2);
end

%Binarizamos
img1bin = imbinarize(img1);
img2bin = imbinarize(img2);

% Imágenes originales
figure (1);
subplot(2, 2, 1), imshow(img1), title('Imagen Original "moon.tif"');
subplot(2, 2, 2), imshow(img2), title('Imagen Original "peppers.png"');

% Histogramas de las imágenes originales
subplot(2, 2, 3);
imhist(img1);
title('Histograma Original "moon.tif"');

subplot(2, 2, 4);
imhist(img2);
title('Histograma Original "peppers.png"');

resultadobin = zeros(size(img1));

% Imagenes Bin
figure (2);
subplot(2, 2, 1), imshow(img1bin), title('Imagen Bin "moon.tif"');
subplot(2, 2, 2), imshow(img2bin), title('Imagen Bin "peppers.png"');

% Histogramas de las imágenes originales
subplot(2, 2, 3);
imhist(img1bin);
title('Histograma Original "moon.tif"');

subplot(2, 2, 4);
imhist(img2bin);
title('Histograma Original "peppers.png"');

%% PROGRAMA CALCULADORA C/TERMINAL
while true
%-------------MENU DE OPCIONES----------------------------------
disp(' ');
disp('CALCULADORA IMAGENOLOGÍA, OPERACIONES CON IMAGENES');
    disp('1. SUMA (+)');
    disp('2. RESTA (-)');
    disp('3. MULTIPLICACIÓN (*)');
    disp('4. DIVISION (/)');
    disp('5. XOR (⊕)');
    disp('6. NAND (⊼)');
    disp('7. AND ');
    disp('8. OR ');
    disp('9. MENOR IGUAL (<=)');
    disp('10. MAYOR IGUAL  (>=)');
    disp('11. IGUAL (==)');
    disp('12. NO IGUAL (~=)');
    disp('13. Cerrar Programa');

    opcion = input('Seleccione el numero de Opcion: ');

    if opcion == 13
        break;
    end

    if opcion < 1 || opcion > 14
        disp('Opción no válida.');
        continue;
    end

    a = img1;
    b = img2;

    switch opcion
        case 1 %SUMA
            resultado = img1 + img2;
            resultadobin = img1bin + img2bin;
        case 2 %RESTA
            resultado = img1 - img2;
            resultadobin = img1bin - img2bin;
        case 3 %MULTIPLICACION
            resultado = img1 .* img2;
            resultadobin = img1bin .* img2bin;
        case 4 %DIVISION
            resultado = img1 ./ img2;
            resultadobin = img1bin ./ img2bin;
        case 5 %XOR
            resultado = abs( img1 - img2);
            resultadobin = abs( img1bin - img2bin);
        case 6 %NAND Invierte intersecciones de area blanca
            resultado = 1 - (img1 .* img2);
            resultadobin = 1 - (img1bin .* img2bin);
        case 7 %AND
            resultado = img1 .* img2;
            resultadobin = img1bin .* img2bin;
        case 8 %OR Detecta bordes
            resultado = max( img1, img2);
            resultadobin = max( img1bin, img2bin);
        case 9 % MENOR IGUAL
            resultado = img1 <= img2;
            resultadobin = img1bin <= img2bin;
        case 10 %MAYOR IGUAL
            resultado = img1 >= img2;
            resultadobin = img1bin >= img2bin;
        case 11 %IGUAL
            resultado = img1 == img2;
            resultadobin = img1bin == img2bin;
        case 12 %NO IGUAL
            resultado = img1 ~= img2;
            resultadobin = img1bin ~= img2bin;
    end
    
    disp(' ');

    %resultado
    figure (3)
    subplot(2,2,1), imshow(resultado), title('Imagen Resultado Grises');
    subplot(2,2,2), imhist(resultado), title('Histograma Imagen Resultado Grises');
    subplot(2,2,3), imshow(resultadobin), title('Imagen Resultado Binario');
    subplot(2,2,4), imhist(resultadobin), title('Histograma Imagen Resultado Binario');
    disp(' ');
end

