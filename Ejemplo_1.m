y = 0:0.1:5;                       %vector con valores para variable y r(y)
%función f(x,y)=0
x1 = sqrt(y);                      %función de radio r(y) = x
x2 = -sqrt(y);                     %función de radio r(y) = x
z = zeros(size(y));                %vector de ceros de mismo tamaño que vector de x y y
%forma alternativa 2 f(y,z)=0
x_2 = zeros(size(y));
z_2 = sqrt(y);
                                   %Graficación de la curva de dirección o función radio
figure
plot3(x1,y,z, 'r', 'LineWidth', 2) %gráfica de la función radio +sqrt
hold on
plot3(x2,y,z, 'b', 'LineWidth', 2) %gráfica de la función radio +sqrt
plot3(x_2,y,z_2, 'g' ,'LineWidth',2)
view([135 45]);                    %orientación de la gráfica
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
grid on
%hold on;

%vector para almacenar los valores de los puntos en x,y,z
v = [x2
     y
     z];
%Ciclo para ir tomando sobre x (rotx),y (roty) o z (rotz)un ángulo
%Específico [Multiplicación de matriz elemental de rotación por el vector
%de la curva]
for i = 1:5:360 %intervalo desde 1° hasta 360° (1 revolución) en el incremento de 5°
    v_r = roty(i)*v;%tranformación o rotación de la cruva en x,y o z
    plot3(v_r(1,:), v_r(2,:), v_r(3,:)); %graficación de cada una de las variables del vector
    pause(100/1000);%pausa de 100ms para visualizar efecto de rotación
end
