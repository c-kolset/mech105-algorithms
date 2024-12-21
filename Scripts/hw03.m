% HW3
% Author: Christian Kolset
% Date: 20.5.21

%% HW3
% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
diameter_Bot = 25;
r_bot = diameter_Bot/2;
h_cone = h-19;

% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
%v =

v_cyl = @(h,r_bot) pi*r_bot^2*h;
v_truncone = @(h_cone,r_bot) 1/3*pi*h_cone*(r_bot^2+r_bot*((h_cone+16.625)/1.33)+((h_cone+16.625)/1.33)^2);

if h > 19
    v = v_cyl(19,r_bot)+v_truncone(h_cone,r_bot);
else
    v = v_cyl(h,r_bot);
end

fprintf(1,'Volume of Tank: %6.2f\n',v)