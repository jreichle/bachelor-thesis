function b = LinRegFitUnder()

x = linspace(0,10,50)';
A = [ones(50,1),x];  
y = -2 * (x - 2).^2 + 100 + rand(50,1) * 10;



size(A)
size(y)
c = A' * A \ A' * y


scatter(x,y,'filled','MarkerFaceColor','black');
hold on
fp = fplot(@(x) c(1) + x * c(2), [0 10]);
set([fp],'LineWidth',2)

end

