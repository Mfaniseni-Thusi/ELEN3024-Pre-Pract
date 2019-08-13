clc
clear all

Fs = 2e6;
Period = 1/Fs;
t  = 0:Period:1.5e-3;
m_Index = 1;
message_Freq = 1e3;   
carrier_Freq = 1e6;
Am = 1;     % Amplitude of 1
Ac = 1;     % Amplitude of 1

m_t = Am*cos(2*pi*message_Freq*t);     % Single tone of 1 kHz
c_t = Ac*cos(2*pi*carrier_Freq*t);

figure
plot(t,m_t);
title('AM DSB FC INPUT WAVEFORM');
xlabel('Time (s)');
ylabel('Amplitude');
grid minor

u_t = (1 + m_Index*m_t).* c_t;
figure
plot(t,u_t);
title('AM DSB FC OUTPUT WAVEFORM 100% MODULATION');
xlabel('Time (s)');
ylabel('Amplitude');
grid minor