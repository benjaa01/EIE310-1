% mi rut es 19393808-6;
A=1;
B=9;
C=3;
D=9;
E=3;
F=8;
G=0;
H=8;
I=6;

t=0:0.3:30;
v= exp(-((B+A)/(2*C*(D+E)))*t).*sin(t);

subplot 121; plot(t,v); title('PLOT');
xlabel('tiempo (seg)'); ylabel('Volts');grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo (seg)'); ylabel('volts');grid;