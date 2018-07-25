
b = fir1(N-1, wn, 'bandpass',hanning(N));
t = fir1(N-1, wn, 'bandpass',hamming(N));
k = fir1(N-1, wn, 'bandpass',kaiser(N,10));

fc = 200; % frecuencia de corte en [Hz]
Fs = 1000; % frec. de muestreo en [Hz]
fm = 250; %frecuencia superior [Hz]
N = 30; % longitud de la respuesta impulso
f1 = 0; % frec. mínima para el cálculo de la respuesta de frec.
f2 = 500; % frec. máxima para el cálculo de la respuesta de frec.
m1 = 1e-6; % límite inferior del gráfico de magnitud.

wn = 2 * fc / Fs; 

h = b'; save 'h.txt' h -ascii
% Calcula la respuesta de frecuencia obtenida
f = [f1 : (f2-f1)/1023 : f2];
H1 = freqz(b, 1, f, Fs);
H2 = freqz(t, 1, f, Fs);
H3 = freqz(k, 1, f, Fs);

n = [1 : N]; subplot 411; stem(n, b); grid; xlabel('n'); title('h(n)')
% Grafica Mag[H(f)]
subplot 412; semilogy(f, abs(H1)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H1)')

subplot 413; semilogy(f, abs(H2)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H2)')

subplot 414; semilogy(f, abs(H3)); grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(H3)')