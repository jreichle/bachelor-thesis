function [x] = activationFunc()

h1 = fplot(@(x) max(0,x), [-2.5 2.5]);
hold on
h2 = fplot(@(y) (1 / (1 + exp(-y))), [-2.5 2.5]);
set([h1 h2],'LineWidth',2)

grid on

ylim([-0.1 1.5])
xlabel('x');
ylabel('z');
lg = legend({'ReLU','sigmoid'},'Location','northwest');
lg.FontSize = 12;
set(gca,'Fontsize',12);

end
