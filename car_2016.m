function [FSAE_Race_Car] = car_2016
% MEEN 357 Fall 2017 Project, Phase 1
% This is a data structure for the whole 2016 FSAE Car

%load the required data for each field

run('driver_harry.m');
run('chassis_2016');
run('suspension_rear_2016');
run('motor_2016');
run('suspension_front_2016');
run('wheel_front_2016');
run('wheel_rear_2016');

%Create names for each field to improve readability 

field46 = 'team';
field47 = 'year';
field48 = 'top_speed';
field49 = 't2top_speed';
field50 = 'pilot';
field51 = 'chassis';
field52 = 'power_plant';
field53 = 'suspension_front';
field54 = 'suspension_rear';
field55 = 'wheel_front';
field56 = 'wheel_rear';

%assign values to each field with corresponding numbers

value46 = '2016 Texas A&M';
value47 = 2016;
value48 = 175;
value49 = pi()*2.1/(acos((175-120))/120);
value50 = pilot;
value51 = chassis;
value52 = power_plant;
value53 = suspension_front;
value54 = suspension_rear;
value55 = wheel_front;
value56 = wheel_rear;

% place all the fields in a new struct 

FSAE_Race_Car = struct(field46,value46,field47,value47,field48,value48,field49,value49,field50,value50,field51,value51,field52,value52,field53,value53,field54,value54,field55,value55,field56,value56);
end

