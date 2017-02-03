%close existing ports, clear existing variables, clean window
close all
clear all
clc

t = tcpip('127.0.0.1',4013);
% Open socket and wait before sending data
fopen(t);
pause(0.2);

% Send data every 500ms
while 1
DataToSend= round(rand(1)*100)
fwrite(t,DataToSend);
pause (0.5);
end