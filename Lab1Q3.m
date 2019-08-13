clc
clear all

Fs = 2e6;
Period = 1/Fs;
t  = 0:Period:1.5e-3;
m_Index = 0.25;
message_Freq = 1e3;   
carrier_Freq = 1e6;

m_t = cos(2*pi*message_Freq*t);     % Single tone of 1 kHz
c_t = cos(2*pi*carrier_Freq*t);

u_t = (1 + m_Index*m_t).* c_t;
figure
plot(t,u_t);
title('AM DSB FC OUTPUT WAVEFORM 25% MODULATION');
xlabel('Time (s)');
ylabel('Amplitude');
grid minor