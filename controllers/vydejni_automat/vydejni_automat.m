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

TIME_STEP = 64;


% get and enable devices, e.g.:
motor = wb_robot_get_device('piston 1');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%

for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
motor = wb_robot_get_device('piston 2');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%

for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

motor = wb_robot_get_device('piston 3');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%

for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

motor = wb_robot_get_device('piston 4');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

motor = wb_robot_get_device('piston 5');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%

for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

motor = wb_robot_get_device('piston 6');
wb_motor_set_velocity(motor, 0.025);
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%

for i = 0:0.01:0.03
%while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  wb_motor_set_position(motor, i);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end