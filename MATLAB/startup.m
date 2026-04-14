% User start up presets.
%
% This file executes as MATLAB starts.
%
% This file should go in whatever folder MATLAB returns for 'userpath'.

% Some nice things for appearance of the command window:
format long
format compact

% Debugging by default.
dbstop if error

% Override some annoying (to me) MATLAB default functions.
% This should stick to ergonomics--never functionality.
%
% Nobody should need your config to reproduce your results.
% 
% Not every function in this folder really overrides something in builtin
% matlab.
warning off MATLAB:dispatcher:nameConflict
addpath([userpath '/overrides']);
warning on MATLAB:dispatcher:nameConflict

