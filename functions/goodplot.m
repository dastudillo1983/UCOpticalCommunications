function goodplot()
% function which produces a nice-looking plot
% and sets up the page for nice printing
set(0,'defaultTextInterpreter','latex');
%set(gcf, 'renderer','painters');
%set(gcf, 'renderer','opengl');
%set(gcf, 'renderer','zbuffer');

set(get(gca,'xlabel'),'FontSize', 16, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 16, 'FontWeight', 'Bold');
set(get(gca,'title'),'FontSize', 16, 'FontWeight', 'Bold')
set(gca,'XTickLabel',get(gca,'XTickLabel'),'fontsize',16);

box off; axis square;
set(gca,'LineWidth',2);
set(gca,'FontSize',16);
set(gca,'FontWeight','Bold');
set(gcf,'color','w');
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [8 8]);
%set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','auto');
%set(gcf,'PaperPositionMode','Manual');

end

