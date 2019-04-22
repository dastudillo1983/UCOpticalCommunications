% This script shows the fiber loss
% MoreInfo: Chapter 2 of Optical Communications, section 2.1 Loss and
% Bandwidth Windows from the Optical Networks Reference Book.
%            
% Author: Fabián Astudillo <fabian.astudillos@ucuenca.edu.ec>

addpath('./functions/');

long = 200;
L = [0:0.1:200];

% [alpha, lambda, tipo]
Fibers = [ {0.25, 1500, 'SMF-28'}; ...
            {0.28, 1383, 'G652D'}; ...
            {0.5, 1300, 'TIA/EIA 568 A / 62.5/125 '}; ...
            {2.5, 850, '50/125 (MM50)'}
    ];

[~,n] = size (Fibers);
legStr = cell(n,1);
hold on;
for i=1:n
    alpha = Fibers{i,1};
    name = Fibers{i,3};
    Pout = fiber_loss(1, L, alpha); % Potencia de entrada en vatios, Longitud y coeficiente de atenuacion
    plot(L,Pout,'LineWidth',2,'DisplayName',name);
    grid on;
    legStr(i) = cellstr(name);
end

legend(legStr,'Location','northeast','fontsize',12, 'Interpreter','latex');

title('Attenuation','FontSize', 16, 'Interpreter','latex');
set(gca, 'XTick', [0:50:200])
ylabel('$P_{out}$ ($W$)','FontSize', 16, 'Interpreter','latex');
xlabel('Long ($Km$)','FontSize', 16, 'Interpreter','latex');

%goodplot;

%set(gcf,'Position',[50 50 1200 800]);
set(gcf,'PaperOrientation','landscape');
set(gcf,'PaperPosition', [1 1 28 19]);

%set(gca,'XTickLabel',a,'FontName','Times','fontsize',18);

%print (gcf,'-dsvg', 'fiberloss.svg');
%svg2pdf('fiberloss.svg','fiberloss.pdf');
