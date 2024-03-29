function [ output_args ] = MotorCoolingPlot( CoreData, fig )
%This function plots the temperatures in the motor cooling loop including
%the motor temperature and coolant and inlet and outlet temperatures vs
%time.  CoreData is the input file containing the run data, fig is an
%optional parameter of a figure handle for the plot to be made on.

if ~exist('fig')
    f=figure;
else
    f=figure(fig);
end;

set(gcf,'color','w'); set(gca,'fontsize',16)
set(f,'name','Motor Cooling Temperatures','numbertitle','off')
hold on;
plot(CoreData.time,CoreData.Motor_Inlet_Temperature_fiC,'LineWidth',2);
plot(CoreData.time,CoreData.Motor_Outlet_Temperature_fiC,'LineWidth',2);
plot(CoreData.time,CoreData.D3_Motor_TemperatureC,'LineWidth',2);
h=legend('Motor Inlet Temp', 'Motor Outlet Temp', 'Motor Temp');
set(h,'FontSize',10);
xlabel('Time [s]');
ylabel('Temperature [^{\circ}C]');
title('Motor Cooling Loop Temperatures');
end

