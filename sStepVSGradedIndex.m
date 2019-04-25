% This script shows the comparison between a step index fiber and a graded
% index fiber. 
% MoreInfo: Chapter 2 of Optical Communications, section 2.2.3 Controlling
%   Intermodal Dispersion: Graded-Index Multimode Fiber from the Optical 
%   Networks Reference Book.
%          
% Author: Fabián Astudillo <fabian.astudillos@ucuenca.edu.ec>

c = 3*10^8;
n1 = 1.5;
delta=0.01;
GHz = 1e9;
Km=1000;
%n1 = 1.48;
%n2 = 1.46;

n2=@(n1,delta) n1*(1-delta);

%delta = ((n1-n2)/n1);
%L = 1000:100:100000;
L = [1 2 5 10 20 50 100];
L = L.*Km;
% LaTeX Equation B=\frac{c\;n_2}{2\;(n_1)^2\;\Delta\;L}$
B1 = (c*n2(n1,delta))./(2*n1*n1*delta*L);     %step index
% LaTeX Equation B=\frac{8\;c}{2\;(n_1)\;\Delta^2\;L}$
B2 = (8*c)./(2*n1*delta*delta*L);   %graded index

B1 = B1./GHz;
B2 = B2./GHz;

L = L./Km;

title('Distance-data rate product','FontSize', 16, 'Interpreter','latex');
%set(gca, 'XTick', [0:50:200])

loglog(L,B1,'LineWidth',2);
ylabel('Data Rate ($Gbps$)','FontSize', 16,'Interpreter','latex')
xlabel('Distance ($Km$)','FontSize', 16,'Interpreter','latex')
grid on 
hold on 
loglog(L,B2,'LineWidth',2)
hold off

leg1 = legend('Step-Index','Graded-Index $\alpha$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',16);
ytickformat('%.3f');
xtickformat('%.0f');

set(gca,'TickLabelInterpreter','latex')
set(gca,'Fontsize',16)

%xlim([ inf])
ylim([0.001 10]);

%set(gcf,'Position',[50 50 1200 800]);
set(gcf,'PaperOrientation','landscape');
set(gcf,'PaperPosition', [1 1 28 19]);

%set(gca,'XTickLabel',a,'FontName','Times','fontsize',18);

print (gcf,'-dsvg', 'StepVsGradedIndex.svg');
svg2pdf('StepVsGradedIndex.svg','StepVsGradedIndex.pdf');
