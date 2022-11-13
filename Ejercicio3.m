x = -2:0.1:2;                       %vector con valores para variable y r(y)
%función f(x,z)=0
y1 = real(sqrt(16-4*x.^2));                      %función de radio r(y) = x
y2 = -real(sqrt(16-4*x.^2));                     %función de radio r(y) = x
z = zeros(size(x));                %vector de ceros de mismo tamaño que vector de x y y

                                   %Graficación de la curva de dirección o función radio
figure
plot3(x,y1,z, 'r', 'LineWidth', 2) %gráfica de la función radio +sqrt
hold on;
plot3(x,y2,z, 'b', 'LineWidth', 2) %gráfica de la función radio +sqrt
view([135 45]);                    %orientación de la gráfica
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
grid on


%vector para almacenar los valores de los puntos en x,y,z
v = [x
     y1
     z];
%Ciclo para ir tomando sobre x (rotx),y (roty) o z (rotz)un ángulo
%Específico [Multiplicación de matriz elemental de rotación por el vector
%de la curva]
for i = 1:3:360 %intervalo desde 1° hasta 360° (1 revolución) en el incremento de 5°
    v_r = rotx(i)*v;%tranformación o rotación de la cruva en x,y o z
    plot3(v_r(1,:), v_r(2,:), v_r(3,:)); %graficación de cada una de las variables del vector
    pause(100/1000);%pausa de 100ms para visualizar efecto de rotación
end