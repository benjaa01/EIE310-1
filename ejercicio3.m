clear all;
clc;
%19393808-6
a=1; b=9 ;c=3 ;d=9 ;e=3 ;f=8 ;g=0 ;h= 8; i=6 ;
B = ((a+b)*c)
r = ((i+e)*h)/((b+c+e)*10)
R = ((i+e)*(a+c))/(b+c+e+g+h)

%funcion exponencial decreciente

n = 0: 1 : 10; x= B*r.^n;
subplot 331; stem (n , x);
xlabel('m'); title('S. exponencial decreciente'); grid;
m = 0: 1 :10;  y= B*R.^m;
%funcion exponencial compleja
subplot 332; stem(m, y); xlabel('m'); title('S. Exponencial creciente'); grid;
w= [-20: 1 :20] ; q=-(( b+c+1)/60) + (((a*h*d)+1)/60)*j; z=exp(q*w); 
subplot 333; stem(w, real(z)); title('parte real'); xlabel('w');
subplot 334; stem(w, imag(z)); title('parte imag'); xlabel('w');
subplot 335; stem(w, abs(z)); title('magnitud'); xlabel('w');
subplot 336; stem(w, (180/pi)*angle(z)); title('fase[*]'); xlabel('w');
%funcion sinusoidales
j = [0 : 1: 30];
u = 3 * cos(2*pi* ((2+d+f)/90)*j +pi/3);
subplot 337; stem(j,u); xlabel('j'); title('S. sinusoidal'); grid;
%funcion impulso
o=[-b:b];
p=[(o -a) ==0];
subplot 338; stem(o,p); title('S. impulso'); xlabel('o'); grid;
%funcion escalon
k=[-f:f];
K=[(k-a) >= 0];
subplot 339; stem(k,K); title('S. escalon'); xlabel('k'); grid;
