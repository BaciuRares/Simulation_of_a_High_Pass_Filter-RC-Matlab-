%-------calcule.m
function [tau, omega0, f0, defaz] = calcule(R, C)
    % Calculul constantei de timp
    tau = R * C;
    
    % Calculul frecvenței unghiulare de tăiere
    omega0 = 1 / tau;
    
    % Calculul frecvenței de tăiere
    f0 = omega0 / (2 * pi);
    
    % Calculul unghiului de defazaj
    unghi = atan(2 * pi * f0 * R * C);
    
    % Defazajul în grade
    defaz = rad2deg(unghi);
end