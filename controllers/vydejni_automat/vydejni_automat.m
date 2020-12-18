% MATLAB controller for Webots
% File:          vydejni_automat.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
%desktop;
%keyboard;

TIME_STEP = 3000;

motor_1 = wb_robot_get_device('piston 1');
wb_motor_set_velocity(motor_1, 0.035);
pos_1 = 0;

motor_2 = wb_robot_get_device('piston 2');
wb_motor_set_velocity(motor_2, 0.035);
pos_2 = 0;

motor_3 = wb_robot_get_device('piston 3');
wb_motor_set_velocity(motor_3, 0.035);
pos_3 = 0;

motor_4 = wb_robot_get_device('piston 4');
wb_motor_set_velocity(motor_4, 0.035);
pos_4 = 0;

motor_5 = wb_robot_get_device('piston 5');
wb_motor_set_velocity(motor_5, 0.035);
pos_5 = 0;

motor_6 = wb_robot_get_device('piston 6');
wb_motor_set_velocity(motor_6, 0.035);
pos_6 = 0;

f = true;

while wb_robot_step(TIME_STEP) ~= -1
    while f
        disp(' ')
        disp('Vítá vás automat na nápoje v plechu. Naše nabídka:')
        disp('1 Lahodný Greplův nápoj za 25 Kč')
        disp('2 Pepsi cola za 30 Kč')
        disp('3 Red Bull za 50 Kč')
        disp('4 Sprite za 20 Kč')
        disp('5 Coca Cola za 35 Kč')
        disp('6 Fanta za 20 Kč')
        disp('Vyberte si váš oblíbený produkt 1-6')
        disp(' ')
        x = input('Váš produkt: ');
        if x >= 1 && x <= 6
            f = false;
        else 
          disp(' ')
          disp('Špatný výběr produktu!')
        end
    end
    
    switch x
        
        case 1
            if pos_1 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_1 = pos_1 + 0.045;
                wb_motor_set_position(motor_1, pos_1);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 25 Kč')
                                    disp(' ')
                                    disp('Váš Greplův nápoj je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_1 = pos_1 + 0.045;
                                    wb_motor_set_position(motor_1, pos_1);
                                    if pos_1 >= 0.09
                                        pos_1 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 25 Kč')
                                    disp(' ')
                                    disp('Váš Greplův nápoj je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_1 = pos_1 + 0.045;
                                    wb_motor_set_position(motor_1, pos_1);
                                    if pos_1 >= 0.09
                                        pos_1 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
        case 2
            if pos_2 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_2 = pos_2 + 0.045;
                wb_motor_set_position(motor_2, pos_2);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 30 Kč')
                                    disp(' ')
                                    disp('Vaše pepsi je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_2 = pos_2 + 0.045;
                                    wb_motor_set_position(motor_2, pos_2);
                                    if pos_2 >= 0.09
                                        pos_2 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 30 Kč')
                                    disp(' ')
                                    disp('Vaše pepsi je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_2 = pos_2 + 0.045;
                                    wb_motor_set_position(motor_2, pos_2);
                                    if pos_2 >= 0.09
                                        pos_2 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
        case 3
            if pos_3 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_3 = pos_3 + 0.045;
                wb_motor_set_position(motor_3, pos_3);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 50 Kč')
                                    disp(' ')
                                    disp('Váš Red Bull je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_3 = pos_3 + 0.045;
                                    wb_motor_set_position(motor_3, pos_3);
                                    if pos_3 >= 0.09
                                        pos_3 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 50 Kč')
                                    disp(' ')
                                    disp('Váš Red Bull je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_3 = pos_3 + 0.045;
                                    wb_motor_set_position(motor_3, pos_3);
                                    if pos_3 >= 0.09
                                        pos_3 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
        case 4
            if pos_4 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_4 = pos_4 + 0.045;
                wb_motor_set_position(motor_4, pos_4);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 20 Kč')
                                    disp(' ')
                                    disp('Váš Sprite je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_4 = pos_4 + 0.045;
                                    wb_motor_set_position(motor_4, pos_4);
                                    if pos_4 >= 0.09
                                        pos_4 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 20 Kč')
                                    disp(' ')
                                    disp('Váš Sprite je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_4 = pos_4 + 0.045;
                                    wb_motor_set_position(motor_4, pos_4);
                                    if pos_4 >= 0.09
                                        pos_4 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
        case 5
            if pos_5 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_5 = pos_5 + 0.045;
                wb_motor_set_position(motor_5, pos_5);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 35 Kč')
                                    disp(' ')
                                    disp('Vaše Coca Cola je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_5 = pos_5 + 0.045;
                                    wb_motor_set_position(motor_5, pos_5);
                                    if pos_5 >= 0.09
                                        pos_5 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 35 Kč')
                                    disp(' ')
                                    disp('Vaše Coca Cola je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_5 = pos_5 + 0.045;
                                    wb_motor_set_position(motor_5, pos_5);
                                    if pos_5 >= 0.09
                                        pos_5 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
        case 6
            if pos_6 == -0.045
                disp(' ')
                disp('Produkt byl vyprodán, prosím zvolte jiný produkt nebo kontaktujte obsluhu')
                pos_6 = pos_6 + 0.045;
                wb_motor_set_position(motor_6, pos_6);
                x = -1;
                f = true;
            else
                disp('Bankomatu se porouchal systém na vhazování mincí, prosím zaplaťte kartou. Automat vás navede dalšími kroky.')
                disp(' ')
                cislo_karty = input('Zadejte platné číslo vaší kreditní karty (bez mezer): ');
                if cislo_karty >= 1000000000000000 && cislo_karty <= 9999999999999999
                    disp(' ')
                    rok_vyprseni_karty = input('Zadejte rok, kdy karta vyprší (poslední 2 číslice): ');
                    if rok_vyprseni_karty >= 01 && rok_vyprseni_karty < 100
                        disp(' ')
                        mesic_vyprseni_karty = input('Zadejte číslo měsíce, kdy karta vyprší: ');
                        if mesic_vyprseni_karty >= 1 && mesic_vyprseni_karty <= 12
                            if rok_vyprseni_karty > 20
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ');
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 20 Kč')
                                    disp(' ')
                                    disp('Vaše Fanta je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_6 = pos_6 + 0.045;
                                    wb_motor_set_position(motor_6, pos_6);
                                    if pos_6 >= 0.09
                                        pos_6 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            elseif rok_vyprseni_karty == 20 && mesic_vyprseni_karty == 12
                                disp(' ')
                                bezpecnostni_cislo = input('Zadejte bezpečnostní třímístné číslo (ze zadní strany karty): ')
                                if bezpecnostni_cislo >= 100 && bezpecnostni_cislo <= 999
                                    disp(' ')
                                    disp('Platba proběhla úspěšně, z vašeho účtu bylo strženo 20 Kč')
                                    disp(' ')
                                    disp('Vaše Fanta je na cestě! Děkujeme, že využíváte automat společnosti Kunda & Horák.sro')
                                    pos_6 = pos_6 + 0.045;
                                    wb_motor_set_position(motor_6, pos_6);
                                    if pos_6 >= 0.09
                                        pos_6 = -0.045;
                                    end
                                    x = -1;
                                    f = true;
                                else
                                    disp(' ')
                                    disp('Vaše bezpečnostní číslo je neplatné')
                                    x = -1;
                                    f = true;
                                end
                            else
                                disp(' ')
                                disp('Vaše karta je neplatná')
                                x = -1;
                                f = true;
                            end
                        else
                            disp(' ')
                            disp('Nesprávně zadaný měsíc vypršení karty')
                            x = -1;
                            f = true;
                        end
                    else
                        disp(' ')
                        disp('Nesprávně zadaný rok vypršení karty')
                        x = -1;
                        f = true;
                    end
                else
                    disp(' ')
                    disp('Nesprávně zadané číslo Vaší platební karty')
                    x = -1;
                    f = true;
                end
            end
            
    end
end