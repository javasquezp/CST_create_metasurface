%Author: Juan A. Vasquez Peralvo
%Fecha: 11/27/2020
%Phase control
%Referenciar al autor principal en caso de ocupar parte o totalidad del 
%codigo 

%%%%%Esta funcion permite generar las distribuciones de fase necesarias
%para generar un haz apuntado al centro


function [phased] = phase_distribution_G(frequency, F, N, p,h,phase,Xi,Yi,theta,phi)
%Frequency: Frequencia de operacion
%F Distancial desde el centro de fase al foco
%N Numero de elementos
%p periodo de las celdas unidad
%h distancia del elemento variante (en este caso altura)
%phase fases generadas al variar el elemento variante
%Xi posicion en x del elemento i
%Yi posicion en y del element  i

clc

       
phased=wrapTo360(2*pi*frequency/300*(((Xi)^2+(Yi)^2+F^2)^0.5-F-...
    Xi*sin(theta*pi/180)*cos(phi*pi/180)-Yi*sin(theta*pi/180)*sin(phi*pi/180))*180/pi);
    end 


