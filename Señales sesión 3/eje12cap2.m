%ejemplo 12 del capitulo 2
%primer caso para 0.05 [c/m]
figure  
n = [0 : 30];
x = sin(2*pi * 0.05 * n );
stem(n, x); 
grid on;

%segundocaso para 1.05 [c/m]
figure 
n = [0 : 30];
x = sin(2*pi * 1.05 * n );
stem(n, x); 
grid on;