function [] = PolRegFitOver()

x = linspace(0,10,50)';
A = [ones(50,1),x,x.^2];  
y = -2 * (x - 2) + 100 + rand(50,1) * 5;
y(20) = 116;
y(22) = 110;
y(25) = 118;
y(27) = 115;
y(30) = 106;
y(31) = 110;

c = A' * A \ A' * y

scatter(x,y,'filled','MarkerFaceColor','black');
hold on
fp = fplot(@(x) c(1) + x .* c(2) + x.^2 .* c(3), [0 10]);
set([fp],'LineWidth',2)

end

