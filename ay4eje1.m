load h.txt

subplot 211;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
f = 0 : 100 : 200000;
M = abs(freqz(h,1,f,103000));
subplot 212;
semilogy(f/500, M); grid;
axis([0 200 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');