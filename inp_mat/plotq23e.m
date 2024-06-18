function plotq23e(q_esm,q_plop,q_sal)
%function plotq23e(q_esm,q_plop,q_sal)
% Esta funci�n plotea los datos de Nutrientes
% para tres estaciones dadas en el programa de 
% Variabilidad Clim�tica del INP (Instituto Nacional
% de Pesca, Ecuador).
%
% Las variables de entrada son:
%
%  q_esm = Matriz de datos de entrada para la est. Esmeraldas
%          1era. col., Profundidad (m)
%          2 da. col., Nitrito [uM]
%          3era. col., Nitrato [uM] 
%          4 ta. col., Fosfato [uM]
%          5 ta. col., Silicato [uM]
%          6 ta. col., Ox�geno Disuelto [ml/l]
% q_plop = Matriz de datos de entrada para la est. Pto. L�pez
%          1era. col., Profundidad (m)
%          2 da. col., Nitrito [uM]
%          3era. col., Nitrato [uM] 
%          4 ta. col., Fosfato [uM]
%          5 ta. col., Silicato [uM]
%          6 ta. col., Ox�geno Disuelto [ml/l]
%  q_sal = Matriz de datos de entrada para la est. Salinas
%          1era. col., Profundidad (m)
%          2 da. col., Nitrito [uM]
%          3era. col., Nitrato [uM] 
%          4 ta. col., Fosfato [uM]
%          5 ta. col., Silicato [uM]
%          6 ta. col., Ox�geno Disuelto [ml/l]
%
% Los graficos de salida son: Oxigeno Disuelto y NO3/PO4
% (Tipo Mosaico).
%
% CALLS: suav_cubic

% 01/May/05 Jonathan Cede�o, FIMCM-ESPOL.

prf_esm=q_esm(:,1);
nitrat_esm=q_esm(:,3);
fosf_esm=q_esm(:,4);
silic_esm=q_esm(:,5);
od_esm=q_esm(:,6);              % OD Esmeraldas
np_esm=nitrat_esm./fosf_esm;    % NO3/PO4 Esmeraldas
[rnitrat_esm]=suav_cubic([nitrat_esm prf_esm],2.5);
[rfosfat_esm]=suav_cubic([fosf_esm prf_esm],2.5);
[rsilic_esm]=suav_cubic([silic_esm prf_esm],2.5);
[rod_esm]=suav_cubic([od_esm prf_esm],2.5);  %
[rnp_esm]=suav_cubic([np_esm prf_esm],2.5);  %
clf;

prf_plop=q_plop(:,1);
nitrat_plop=q_plop(:,3);
fosf_plop=q_plop(:,4);
silic_plop=q_plop(:,5);
od_plop=q_plop(:,6);               % OD pto. Lopez
np_plop=nitrat_plop./fosf_plop;    % NO3/PO4 Pto. Lopez
[rnitrat_plop]=suav_cubic([nitrat_plop prf_plop],2.5);
[rfosfat_plop]=suav_cubic([fosf_plop prf_plop],2.5);
[rsilic_plop]=suav_cubic([silic_plop prf_plop],2.5);
[rod_plop]=suav_cubic([od_plop prf_plop],2.5);  %
[rnp_plop]=suav_cubic([np_plop prf_plop],2.5);  %
clf;

prf_sal=q_sal(:,1);
nitrat_sal=q_sal(:,3);
fosf_sal=q_sal(:,4);
silic_sal=q_sal(:,5);
od_sal=q_sal(:,6);              % OD Salinas
np_sal=nitrat_sal./fosf_sal;    % NO3/PO4 Salinas
[rnitrat_sal]=suav_cubic([nitrat_sal prf_sal],2.5);
[rfosfat_sal]=suav_cubic([fosf_sal prf_sal],2.5);
[rsilic_sal]=suav_cubic([silic_sal prf_sal],2.5);
[rod_sal]=suav_cubic([od_sal prf_sal],2.5);  %
[rnp_sal]=suav_cubic([np_sal prf_sal],2.5);  %
clf;

% figure(1);
% subplot(2,2,1),plot(rnitrat_esm(:,1),rnitrat_esm(:,2),'m','linewidth',1.5);  % graf_nitrat Esmeraldas
% hold on;
% plot(rnitrat_plop(:,1),rnitrat_plop(:,2),'k','linewidth',1.5);               % graf_nitrat Pto. L�pez
% plot(rnitrat_sal(:,1),rnitrat_sal(:,2),'b','linewidth',1.5);                 % graf_nitrat Salinas
% % legend('Esmeraldas','Pto. L�pez','Salinas',1);
% xlabel('A.- Nitrato (uM)','fontweight','bold');
% ylabel('Profundidad (m)');
% axis([0 15 -30 0]);    % Sentencia de limite de ejes para nitrat (puede cambiarse seg�n necesidades)
% grid on;
% hold off;
% 
% subplot(2,2,2),plot(rfosfat_esm(:,1),rfosfat_esm(:,2),'m','linewidth',1.5);  % graf_fosf Esmeraldas
% hold on;
% plot(rfosfat_plop(:,1),rfosfat_plop(:,2),'k','linewidth',1.5);               % graf_fosf Pto. L�pez
% plot(rfosfat_sal(:,1),rfosfat_sal(:,2),'b','linewidth',1.5);                 % graf_fosf Salinas
% legend('Esmeraldas','Pto. L�pez','Salinas',1);
% xlabel('B.- Fosfato (uM)','fontweight','bold');
% axis auto;             % Sentencia de limite de ejes para fosf (puede cambiarse seg�n necesidades)
% grid on;
% hold off;
% 
% subplot(2,2,3),plot(rsilic_esm(:,1),rsilic_esm(:,2),'m','linewidth',1.5);  % graf_silicEsmeraldas
% hold on;
% plot(rsilic_plop(:,1),rsilic_plop(:,2),'k','linewidth',1.5);               % graf_silic Pto. L�pez
% plot(rsilic_sal(:,1),rsilic_sal(:,2),'b','linewidth',1.5);                 % graf_silic Salinas
% % legend('Esmeraldas','Pto. L�pez','Salinas',1);
% xlabel('C.- Silicato (uM)','fontweight','bold');
% ylabel('Profundidad (m)');
% axis auto;             % Sentencia de limite de ejes para silic (puede cambiarse seg�n necesidades)
% grid on;
% hold off;
% 
% subplot(2,2,4),plot(rod_esm(:,1),rod_esm(:,2),'m','linewidth',1.5);        % graf_od Esmeraldas
% hold on;
% plot(rod_plop(:,1),rod_plop(:,2),'k','linewidth',1.5);                     % graf_od Pto. L�pez
% plot(rod_sal(:,1),rod_sal(:,2),'b','linewidth',1.5);                       % graf_od Salinas
% % legend('Esmeraldas','Pto. L�pez','Salinas',1);
% xlabel('D.- Ox�geno Disuelto (ml/l)','fontweight','bold');
% axis auto;             % Sentencia de limite de ejes para od (puede cambiarse seg�n necesidades)
% grid on;
% hold off;

subplot(1,2,1),plot(rod_esm(:,1),rod_esm(:,2),'m','linewidth',1.5);        % graf_od Esmeraldas
hold on;
plot(rod_plop(:,1),rod_plop(:,2),'k','linewidth',1.5);                     % graf_od Pto. L�pez
plot(rod_sal(:,1),rod_sal(:,2),'b','linewidth',1.5);                       % graf_od Salinas
legend('Esmeraldas','Pto. L�pez','Salinas',1);
xlabel('A.- Ox�geno Disuelto (ml/l)','fontweight','bold');
ylabel('Profundidad (m)');
set(gca,'PlotBoxAspectRatio',[3 2 1]);
axis auto;             % Sentencia de limite de ejes para od (puede cambiarse seg�n necesidades)
grid on;
hold off;

subplot(1,2,2),plot(rnp_esm(:,1),rnp_esm(:,2),'m','linewidth',1.5);        % graf_np Esmeraldas
hold on;
plot(rnp_plop(:,1),rnp_plop(:,2),'k','linewidth',1.5);                     % graf_np Pto. L�pez
plot(rnp_sal(:,1),rnp_sal(:,2),'b','linewidth',1.5);                       % graf_np Salinas
legend('Esmeraldas','Pto. L�pez','Salinas',1);
xlabel('B.- NO3/PO4','fontweight','bold');
set(gca,'PlotBoxAspectRatio',[3 2 1]);
axis auto;             % Sentencia de limite de ejes para od (puede cambiarse seg�n necesidades)
grid on;
hold off;