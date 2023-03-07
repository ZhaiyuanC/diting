


Fs = 1000;                    % Sampling frequency
T = 1/Fs;                     % Sampling period
L = 1000;                     % Length of signal
% t = (0:L-1)*T;                % Time vector
t=0:0.0001:0.01*pi;

% s1=0.8*sin(2*pi*100*t);
s1=0.8*sin(100*2*pi*t);
noise=2*randn(size(t));

% X=s1+0.5*noise;
X=s1;
% subplot(4,1,1);
plot(t,s1) ;
title('正弦信号')
xlabel('t')
ylabel('X(t)')


% 
% 
% subplot(4,1,2);
% plot(t,noise);
% title('噪声信号')
% xlabel('t')
% ylabel('X(t)')
% 
% 
% 
% subplot(4,1,3);
% plot(t,X) ;
% title('正弦信号叠加噪声')
% xlabel('t')
% ylabel('X(t)')
% 
% 
% % 
% Y=fft(X);
% P2 = abs(Y/L);
% P1 = P2(1:L/2+1);
% P1(2:end-1) = 2*P1(2:end-1);
% f = Fs*(0:(L/2))/L;
% % 
% % subplot(4,1,4);
% plot(f,P1) 



