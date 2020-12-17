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
        x = input('Vyberte produkt 1-6  Váš produkt: ')
        if x >= 1 && x <= 6
            f = false;
        else disp('Špatný výběr produktu!')
        end
    end
    
    switch x
        
        case 1
            disp('Váš Grepl nápoj je vydáván')
            pos_1 = pos_1 + 0.045;
            wb_motor_set_position(motor_1, pos_1);
            if pos_1 >= 0.09
              pos_1 = -0.045;
            end
            x = -1;
            f = true;
            
        case 2
            disp('Vaše pepsi je vydávána')
            pos_2 = pos_2 + 0.045;
            wb_motor_set_position(motor_2, pos_2);
            if pos_2 >= 0.09
              pos_2 = -0.045;
            end
            x = -1;
            f = true;
            
        case 3
            disp('Váš Red Bull je vydáván')
            pos_3 = pos_3 + 0.045;
            wb_motor_set_position(motor_3, pos_3);
            if pos_3 >= 0.09
              pos_3 = -0.045;
            end
            x = -1;
            f = true;
            
        case 4
            disp('Váš Sprite je vydáván')
            pos_4 = pos_4 + 0.045;
            wb_motor_set_position(motor_4, pos_4);
            if pos_4 >= 0.09
              pos_4 = -0.045;
            end
            x = -1;
            f = true;
            
        case 5
            disp('Vaše Coca Cola je vydávána')
            pos_5 = pos_5 + 0.045;
            wb_motor_set_position(motor_5, pos_5);
            if pos_5 >= 0.09
              pos_5 = -0.045;
            end
            x = -1;
            f = true;
            
        case 6
            disp('Vaše Fanta je vydávána')
            pos_6 = pos_6 + 0.045;
            wb_motor_set_position(motor_6, pos_6);
            if pos_6 >= 0.09
              pos_6 = -0.045;
            end
            x = -1;
            f = true;
            
    end
end