clc
clear all
close all

k=1;
yr=1;
sim('sys2')
figure
plot(ans.ysat(:,1), ans.ysat(:,2))
hold on

yr=2;
sim('sys2')
plot(ans.ysat(:,1), ans.ysat(:,2))
hold on

yr=3;
sim('sys2')
plot(ans.ysat(:,1), ans.ysat(:,2))
hold on

yr=3.5;
sim('sys2')
plot(ans.ysat(:,1), ans.ysat(:,2))


legend('y_r=1','y_r=2','y_r=3','y_r=3.5')
title('Sistema com saturação k=1')


s = tf('s');
G = (s+1)^2/(s^3);
figure
rlocus(G*k)

