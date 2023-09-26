clc
clear all
close all

x = [];
y=[];
ya=[];
it = 1;
for i=-1:0.01:1
    if (i>-1)&&(i<1)
        y(it) = i;
    elseif(i<=-1)
        y(it) = -1;
    elseif(i>=1)
        y(it) = 1;
    end
    x(it) = i;
    ya(it) = tanh(i/0.05)/10;
    it = it+1;
end

plot(x,y)
hold on
plot(x,ya)
xlim([-0.2 0.2])
ylim([-0.1 0.1])
title('Aproximação para função de saturação com tanh(x/eps)')