x = 0:0.1:10;
y = sin(x);
plot(x,y);
title('Octave is running on VS Code!');
% Run GNU octave code in VS Code
% First of all install GNU Octave
% Step 02: Install Octave extension in VS Code
% Step 03: Install Code Runner on VS Code
% Open Setting via Ctrl + ,
% Search for Code Runner Executor Map
% Click on Edit in settings.json
% Add the following line in the json file
% "octave": "octave --quiet --persist $fileName",