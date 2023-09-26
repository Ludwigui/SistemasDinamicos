clc
clear all
close all
%%



k=0.5;
sim('sys3')
figure
plot(ans.y(:,1), ans.y(:,2))
hold on
k=0.4;
sim('sys3')
plot(ans.y(:,1), ans.y(:,2))
hold on
k=0.3;
sim('sys3')
plot(ans.y(:,1), ans.y(:,2))
hold on
k=0.2;
sim('sys3')
plot(ans.y(:,1), ans.y(:,2))
hold on
k=0.1;
sim('sys3')
plot(ans.y(:,1), ans.y(:,2))
legend('k=0.5', 'k=0.4', 'k=0.3','k=0.2','k=0.1')

k=0.5;
sim('sys3')
figure
plot(ans.yns(:,1), ans.yns(:,2))
hold on
k=0.4;
sim('sys3')
plot(ans.yns(:,1), ans.yns(:,2))
hold on
k=0.3;
sim('sys3')
plot(ans.yns(:,1), ans.yns(:,2))
hold on
k=0.2;
sim('sys3')
plot(ans.yns(:,1), ans.yns(:,2))
hold on
k=0.1;
sim('sys3')
plot(ans.yns(:,1), ans.yns(:,2))
legend('k=0.5', 'k=0.4', 'k=0.3','k=0.2','k=0.1')

%% sinal de controle

k=0.5;
sim('sys3')
figure
plot(ans.yns(:,1), ans.yns(:,2))
hold on
plot(ans.y(:,1), ans.y(:,2))
legend('u sem saturação', 'u com saturação')
title('k=0.5')

