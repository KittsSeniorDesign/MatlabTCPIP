%close existing ports, clear existing variables, clean window
close all
clear all
clc

disp ('Receiver started');
t=tcpip('127.0.0.1', 4013,'NetworkRole','server');
% Wait for connection
disp('Waiting for connection');
fopen(t);
disp('Connection OK');
% Read data from the socket
while 1
DataReceived=fread(t,2)
end