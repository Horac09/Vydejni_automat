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

TIME_STEP = 1024;

motor_1 = wb_robot_get_device('piston 1');
wb_motor_set_velocity(motor_1, 0.025);
pos_1 = 0;

motor_2 = wb_robot_get_device('piston 2');
wb_motor_set_velocity(motor_2, 0.025);
pos_2 = 0;

motor_3 = wb_robot_get_device('piston 3');
wb_motor_set_velocity(motor_3, 0.025);
pos_3 = 0;

motor_4 = wb_robot_get_device('piston 4');
wb_motor_set_velocity(motor_4, 0.025);
pos_4 = 0;

motor_5 = wb_robot_get_device('piston 5');
wb_motor_set_velocity(motor_5, 0.025);
pos_5 = 0;

motor_6 = wb_robot_get_device('piston 6');
wb_motor_set_velocity(motor_6, 0.025);
pos_6 = 0;

f = true;

while wb_robot_step(TIME_STEP) ~= -1
    while f
        x = input('Zadejte číslo 1-6  Vaše číslo: ')
        if x >= 1 && x <= 6
            f = false;
        else disp('Neplatné číslo!')
        end
    end
    
    switch x
        
        case 1
            disp('Produkt č.1 je vydáván')
            pos_1 = pos_1 + 0.03;
            wb_motor_set_position(motor_1, pos_1);
            x = -1;
            
        case 2
            disp('Produkt č.2 je vydáván')
            pos_2 = pos_2 + 0.03;
            wb_motor_set_position(motor_2, pos_2);
            x = -1;
            
        case 3
            disp('Produkt č.3 je vydáván')
            pos_3 = pos_3 + 0.03;
            wb_motor_set_position(motor_3, pos_3);
            x = -1;
            
        case 4
            disp('Produkt č.4 je vydáván')
            pos_4 = pos_4 + 0.03;
            wb_motor_set_position(motor_4, pos_4);
            x = -1;
            
        case 5
            disp('Produkt č.5 je vydáván')
            pos_5 = pos_5 + 0.03;
            wb_motor_set_position(motor_5, pos_5);
            x = -1;
            
        case 6
            disp('Produkt č.6 je vydáván')
            pos_6 = pos_6 + 0.03;
            wb_motor_set_position(motor_6, pos_6);
            x = -1;
            
    end
end