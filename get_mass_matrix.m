function [M] = get_mass_matrix(vibration_model,FSAE_Race_Car)
% function returns the mass matrix for the car based on desired model 
%
% user will input either 'quarter_car_1_DOF' or 'quarter_car_2_DOF' to created
% the desired vibrational output
%
% the user will also input either car_2014, car_2016, or car_2017
%
% an error will occur if the FSAE_Race_Car is not a struct or if one of the
% vibrational models are typed in incorrectly 
%
% example: get_mass_matrix('quarter_car_1_DOF',car_2014)
%
% the returned mass matrix 

if ~isstruct(FSAE_Race_Car)
    error('Please ensure that the car in question is one of the three options described above.')
end

if strcmp(vibration_model,'quarter_car_1_DOF')
    m = (FSAE_Race_Car.pilot.weight+FSAE_Race_Car.chassis.weight+weight+FSAE_Race_Car.power_plant.weight)/(4*32.174);
    M=m;
elseif strcmp(vibration_model,'quarter_car_2_DOF')
    m = (FSAE_Race_Car.pilot.weight+FSAE_Race_Car.chassis.weight+weight+FSAE_Race_Car.power_plant.weight)/(4*32.174);
    mw = (FSAE_Race_Car.wheel_rear.weight+FSAE_Race_Car.wheel_front.weight)/(4*32.174);
    M = [m 0; 0 m2];
else
    error('Please ensure that the vibration_model is either ''quarter_car_1_DOF'' or ''quarter_car_2_DOF''')
end
end
