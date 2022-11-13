t = [-3:0.1:3];
O = zeros(size(t)); %vector origen o de ceros

y = [-3:0.1:3];                           %vector con valores para variable y r(x)
%función f(x,y)=0
x1 = real(sqrt(1+y.^2));                    %función de radio r(y) = x
x2 = -real(sqrt(1+y.^2));                   %función de radio r(y) = x
z = zeros(size(y));                         %vector de ceros de mismo tamaño que vector de x y y
h1 = plot3(x1,y,z, 'r' ,'LineWidth',2);
hold on;
h2 = plot3(x2,y,z, 'k' ,'LineWidth',2);
hold on;



view([135 45]);                             %orientación de la gráfica
%coloco etiquetas
xlabel('\fontsize{16}x')
ylabel('\fontsize{16}y')
zlabel('\fontsize{16}z')
h5=plot3(0,0,0,'Or'); %muestra en las coordenadas (0,0,0) un marcador en rojo
txt = '\leftarrow (0,0,0)';
text(0,0,0,txt); %muestra una leyenda o etiqueta en las coordenadas (0,0,0)
h6 =plot3(t,O,O, '--r','LineWidth',2); %%grafica el eje coordena de las x en rojo

txt = '\fontsize{16}\leftarrow -x';
text(t(1),0,0,txt);
txt = '\fontsize{16}\rightarrow +x';
text(t(end),0,0,txt);

plot3(O,t,O, '--g','LineWidth',2);
txt = '\fontsize{16}\leftarrow -y';
text(0,t(1),0,txt);
txt = '\fontsize{16}\rightarrow +y';
text(0,t(end),0,txt);



plot3(O,O,t, '--m','LineWidth',2);
txt = '\fontsize{16}\leftarrow -z';
text(0,0,t(1),txt);
txt = '\fontsize{16}\rightarrow +z';
text(0,0,t(end),txt);

axis equal
grid on
title('Ecuación de superficie hiperboloide de una hoja : x^2 - y^2 + z^2 = 1 con eje de revolución en y ');
%Graficación de la curva de dirección o función radio
%vector para almacenar los valores de los puntos en x,y,z
v = [x1
     y
     z];
%Ciclo para ir tomando sobre x (rotx),y (roty) o z (rotz)un ángulo
%Específico [Multiplicación de matriz elemental de rotación por el vector
%de la curva]
for i = 1:3:360                          %intervalo desde 1° hasta 360° (1 revolución) en el incremento de 5°
    v_r = roty(i)*v;                     %tranformación o rotación de la cruva en x,y o z
    plot3(v_r(1,:), v_r(2,:), v_r(3,:),'c'); %graficación de cada una de las variables del vector
    pause(100/1000);                     %pausa de 100ms para visualizar efecto de rotación
end 

e = legend([h1,h2],'f(x,y) = 0, x = $$\sqrt{y.^2+1}$$','f(x,y) = 0, x = - $$\sqrt{y.^2+1}$$' )
set(e,'Interpreter','latex','fontsize',12) 
