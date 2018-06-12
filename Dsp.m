
          
%           Digital Signal Processing (EE 472)
        

            
                       %Question 1

close all;
clc ;
clear;


disp('Digital Signal Processing')
pause(1)
disp('Question 1')
pause(1)
disp('Elliptic HighPass Filter')

Fp=800;
Fs=1000;
Rp=0.5;
Rs=40;
Ft=4000;

Wp=(2*Fp)/Ft;
Ws=(2*Fs)/Ft;

[N,Wn]=ellipord(Wp,Ws,Rp,Rs);
[b,a]=ellip(N,Rp,Rs,Wn,'high');
[h,omega]=freqz(b,a,256);


figure(1);
plot(omega/pi,20*log10(abs(h))); grid on;box on;
xlabel('\omega/\pi'),ylabel('Gain, db');
title('IIR Elliptic HighPass Filter');