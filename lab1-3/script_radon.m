% script_radon.m

clear
P = phantom();

% utwórz wektor 180 liczb od 1 do 180 - kąty projekcji
th = 1:180;

% oblicz transformaty Radona obrazu P dla kątów th - 180 projekcji
r = radon(P,th);

% oblicz odwrotną transformatę radona - odtworzenie obrazu na podstawie 180 projekcji
% interpolacja liniowa i brak filtrowania
i = iradon(r,th,'linear','None');

% wyświetl oryginalny obraz i odtworzony na podstawie projekcji
figure('Name','Oryginał'); imshow(P,[]); title('Oryginał')
figure('Name','Bez filtru'); imshow(i,[]); title('Bez filtru')

% odtworzenie obrazu z domyślnym filtrem Ram-Lak
i = iradon(r,th,'linear', 'Ram-Lak');
figure('Name','Z filtrem Ram-Lak'); imshow(i,[]); title('Z filtrem Ram-Lak')
