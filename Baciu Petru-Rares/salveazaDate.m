function salveazaDate(hObject, eventdata)
    % Obține datele din GUI
    fig = ancestor(hObject, 'figure'); % Figura principală a GUI-ului
    dateIntrare = getappdata(fig, 'dateIntrare'); % Datele de intrare
    dateIesire = getappdata(fig, 'dateIesire');   % Datele de ieșire (calcul)

    % Verificare dacă există date de salvat
    if isempty(dateIntrare) || isempty(dateIesire)
        msgbox('Nu există date de intrare sau ieșire pentru salvare!', 'Eroare', 'error');
        return;
    end

    % Numele fișierului de salvare
    filename = 'date_salvate.txt';

    % Scrierea datelor în fișier
    try
        fid = fopen(filename, 'w'); % Deschide fișierul pentru scriere
        fprintf(fid, 'Date de intrare:\n');
        fprintf(fid, '%s\n', mat2str(dateIntrare)); % Scrie datele de intrare
        
        fprintf(fid, '\nDate de ieșire:\n');
        fprintf(fid, '%s\n', mat2str(dateIesire)); % Scrie datele de ieșire
        
        fclose(fid); % Închide fișierul
        msgbox(['Datele au fost salvate cu succes în fișierul: ', filename], 'Succes');
    catch ME
        msgbox(['A apărut o eroare la salvarea datelor: ', ME.message], 'Eroare', 'error');
        if exist('fid', 'var') && fid > 0
            fclose(fid); % Asigură închiderea fișierului în caz de eroare
        end
    end
end