w = 0 : (pi/200) : pi;
X = exp(j*w) ./ (exp(j*w) - 0.9);
subplot 331; plot(w/pi, abs(X)); grid % grafica magnitud
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 332; plot(w/pi, angle(X)/pi); grid % grafica ángulo
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')