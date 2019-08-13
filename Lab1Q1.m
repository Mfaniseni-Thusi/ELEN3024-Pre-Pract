clc
clear all

message_Freq = 10^4;
carrier_Freq = 10^6;
f_s = 10^7;
message_Amplitude  = 1;
carrier_Amplitude  = 1;

Points = 10^5;
Ts = 1/f_s;
t = 0:Ts:(Points)/f_s;
m_t = message_Amplitude*cos(2*pi*message_Freq*t);
c_t = carrier_Amplitude*cos(2*pi*carrier_Freq*t);
u_t = m_t.*c_t;

figure
plot(t,u_t);
title('AM DSB SC Output Waveform');
ylabel('Amplitude');
xlabel('Time (s)');
grid minor

U_f = abs(fft(u_t,Points+1));
U_f = fftshift(U_f)/Points;

f   = [-Points/2:Points/2]*f_s/Points;

figure
plot(f,U_f);
title('DSB SC AM Output Spectrum');
ylabel('Amplitude');
xlabel('Frequency (Hz)');
grid minor