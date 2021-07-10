function nd = days(mo, da, leap)
%days - Counts days elapsed in the year.
%   
%   days(<months>, <days>, <leap>) determines the days elapsed in a year
%   based on the current date. This will include the current day. 
%   Months (1-12),
%   Example: August 28, no leap year
%           days(8,28,0)

daysPeM=[0 31 59 90 120 151 181 212 243 273 304 334]; % cummulative days prior each month.

nd = daysPeM(mo) + da;

if leap == 1 & mo >= 3
    nd = nd + 1;
end
end


% MECH 105: Homework 4 - Part 1
% Author: Christian Kolset
% Date: 5.21.21