t = [-3:0.1:3];
O = zeros(size(t)); %vector origen o de ceros

x = [-3:0.1:3];                           %vector con valores para variable y r(x)
%función f(x,z)=0
z1 = real(sqrt(-4+x.^2));                    %función de radio r(x) = z
z2 = -real(sqrt(-4+x.^2));                   %función de radio r(x) = z
y = zeros(size(x));                         %vector de ceros de mismo tamaño que vector de x y y
h1 = plot3(x,y,z1, 'r' ,'LineWidth',2);
hold on;
h2 = plot3(x,y,z2, 'k' ,'LineWidth',2);
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
title('Ecuación de superficie hiperboloide de dos hojas : x^2/4 - y^2/4 - z^2/4 = 1 con eje de revolución en x ');
%Graficación de la curva de dirección o función radio
%vector para almacenar los valores de los puntos en x,y,z
v = [x
     y
     z1];
%Ciclo para ir tomando sobre x (rotx),y (roty) o z (rotz)un ángulo
%Específico [Multiplicación de matriz elemental de rotación por el vector
%de la curva]
for i = 1:3:360                          %intervalo desde 1° hasta 360° (1 revolución) en el incremento de 5°
    v_r = rotx(i)*v;                     %tranformación o rotación de la cruva en x,y o z
    plot3(v_r(1,:), v_r(2,:), v_r(3,:),'c'); %graficación de cada una de las variables del vector
    pause(100/1000);                     %pausa de 100ms para visualizar efecto de rotación
end 

e = legend([h1,h2],'f(x,z) = 0, z = $$\sqrt{x.^2-4}$$','f(x,z) = 0, z = - $$\sqrt{x.^2-4}$$' )
set(e,'Interpreter','latex','fontsize',12) 
