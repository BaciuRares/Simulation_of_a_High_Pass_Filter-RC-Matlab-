% Proiect Filtru Trece Sus --- Baciu Petru Rares

% Fișier principal: ProiectFTS.m
close all;
clc;

% Date de intrare
R = 200;   % Rezistența [Ohm]
C = 1e-4; % Capacitatea [Farad]
A = 5;     % Amplitudinea semnalului de intrare [V]
A0 = 2;    % Componenta continuă [V]

min = 0; % Decada minimă
max = 6; % Decada maximă

% Apelarea funcției principale
functie(R, C, A, A0, min, max);

