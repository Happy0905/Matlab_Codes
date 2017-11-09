%MATLAB Code from Sensor Array Analyzer App

%Generated by MATLAB 8.1 and Phased Array System Toolbox 2.0

%Generated on 27-Jan-2017 06:30:24

% Create a system object
angles = (0:7)*360/8-180;
h = phased.ConformalArray('ElementPosition', [zeros(1,8); ...
    1*cosd(angles); 1*sind(angles)], ...
    'ElementNormal', [ones(1, 8);zeros(1, 8)]);
h.Element = ...
    phased.CosineAntennaElement('CosinePower',[50 50]);
%Assign frequencies  and propagation speed
F = 1000000000;
PS = 300000000;
%Plot the response pattern
pr = plotResponse(h, F(1), PS, 'Format', 'Polar', 'RespCut', '3D');
set(pr, 'LineStyle', 'none');
%Adjust the view angles
view(25, 25);
%Get the title
title = get(gca, 'title');
title_str = get(title, 'String');
%Modify the title
[Fval, ~, Fletter] = engunits(F(1));
title_str = [title_str sprintf('\n') ...
    num2str(Fval) ' ' Fletter 'Hz No Steering'];
set(title, 'String', title_str);