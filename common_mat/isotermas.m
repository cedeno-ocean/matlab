function [yi_temp15,yi_temp20]=isotermas(data)
%function [yi_temp15,yi_temp20]=isotermas(data)
% ISOTERMAS (Isotermas de 15�C y 20�C) Esta funcion calcula
% la profundidad de las isotermas de 15�C y 20�C en base
% a interpolacion lineal (sin ayuda de funciones MATLAB
% para este proposito).
% 
% Las variables de entrada son:
%
%      data = Matriz de Datos de Entrada
%             1era. Col., Profundidad (negativa, en m).
%             2da.  Col., Temperatura (�C). 
%
% Las variables de salida son:
%
% yi_temp15 = Profundidad de la isoterma de 15�C.
% yi_temp20 = Profundidad de la isoterma de 20�C.
%
% CALLS: find, size

% 19/Oct/2005 Jonathan Cede�o, FIMCM-ESPOL (Ecuador).

[a,b]=size(data);

% ------------------------- Isotermas de 20�C (calculada a traves de interpolacion lineal)

[u1,v1]=find(data(:,2)>20);
[siz_u1,siz_v1]=size(u1);
x1=data(siz_u1,2);
xi=20;                    % Isoterma de 20�C
x2=data(siz_u1+1,2);
y1=data(siz_u1,1);
y2=data(siz_u1+1,1);
yi_temp20=((xi*y2)-(x1*y2)+(y1*x2)-(y1*xi))/(x2-x1);

% ------------------------- Isotermas de 15�C (calculada a traves de interpolacion lineal)

if data(a,2)>15
    yi_temp15=NaN;
else
    [u1,v1]=find(data(:,2)>15);
    [siz_u1,siz_v1]=size(u1);
    x1=data(siz_u1,2);
    xi=15;                % Isoterma de 15�C
    x2=data(siz_u1+1,2);
    y1=data(siz_u1,1);
    y2=data(siz_u1+1,1);
    yi_temp15=((xi*y2)-(x1*y2)+(y1*x2)-(y1*xi))/(x2-x1);
end
