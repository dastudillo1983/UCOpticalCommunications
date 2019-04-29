% This script shows the comparison between a step index fiber and a graded
% index fiber. 
% MoreInfo: Chapter 2 of Optical Communications, section 2.2.3 Controlling
%   Intermodal Dispersion: Graded-Index Multimode Fiber from the Optical 
%   Networks Reference Book.
%          
% Author: Fabián Astudillo <fabian.astudillos@ucuenca.edu.ec>

set(groot,'defaulttextinterpreter','latex');  
set(groot, 'defaultAxesTickLabelInterpreter','latex');  
set(groot, 'defaultLegendInterpreter','latex');
set(groot,'defaultAxesFontSize',16)
set(groot, 'DefaultLineLineWidth', 2);

addpath('./functions/');

c = 3*10^8;
n1 = 1.5;
delta=0.01;
GHz = 1e9;
Km=1000;
%n1 = 1.48;
%n2 = 1.46;

L = [1 2 5 10 20 50 100];
L = L.*Km;
B1 = StepIndex(n1,delta,L);     %step index
B2 = GradedIndex(n1,delta,L);   %graded index

B1 = B1./GHz;
B2 = B2./GHz;

L = L./Km;

%title('Distance-data rate product','FontSize', 16, 'Interpreter','latex');
title('Distance-data rate product');
%set(gca, 'XTick', [0:50:200])

loglog(L,B1);
%ylabel('Data Rate ($Gbps$)','FontSize', 16,'Interpreter','latex')
%xlabel('Distance ($Km$)','FontSize', 16,'Interpreter','latex')
ylabel('Data Rate ($Gbps$)')
xlabel('Distance ($Km$)')

grid on 
hold on 
loglog(L,B2)
hold off

%leg1 = 
legend('Step-Index','Graded-Index $\alpha$');
%set(leg1,'Interpreter','latex');
%set(leg1,'FontSize',16);
ytickformat('%.3f');
xtickformat('%.0f');

%set(gca,'TickLabelInterpreter','latex')
%set(gca,'Fontsize',16)

%xlim([ inf])
ylim([0.001 10]);

%set(gcf,'Position',[50 50 1200 800]);
set(gcf,'PaperOrientation','landscape');
set(gcf,'PaperPosition', [1 1 28 19]);

%set(gca,'XTickLabel',a,'FontName','Times','fontsize',18);

print (gcf,'-dsvg', 'StepVsGradedIndex.svg');
svg2pdf('StepVsGradedIndex.svg','StepVsGradedIndex.pdf');
