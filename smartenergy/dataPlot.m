%% Import data from text file.
% Script for importing data from the following text file:
%
%    lightData.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2017/04/22 01:18:29

%% Initialize variables.
filename = 'lightData.csv';
delimiter = ',';

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: text (%q)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%q%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'EmptyValue' ,NaN, 'ReturnOnError', false);

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
id = dataArray{:, 1};
current = dataArray{:, 2};
status = dataArray{:, 3};
date = dataArray{:, 4};


%% Clear temporary variables
clearvars filename delimiter formatSpec fileID dataArray ans;

%% Calculating mean