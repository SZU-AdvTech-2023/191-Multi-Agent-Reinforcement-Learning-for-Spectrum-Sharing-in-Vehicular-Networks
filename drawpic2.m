% % 图5 回报率
% load('C:\Users\Lakin\PycharmProjects\MARLspectrumSharing\model\marl_model\reward.mat')
% pic = reshape(reward, 100, 3000);
% pic = sum(pic, 1);
% x = 1 : 1 : 3000;
% plot(x, pic);
% title('Return for each training episode with increasing iterations')
% xlabel('Training episodes'); 
% ylabel('Return per episode'); 
% grid on;


% % 图6 V2V剩余载荷 MARL
% load('C:\Users\Lakin\PycharmProjects\MARLspectrumSharing\model\marl_model\demand_marl.mat')
% p1 = demand_marl(:,:,1);
% p2 = demand_marl(:,:,2);
% p3 = demand_marl(:,:,3);
% p4 = demand_marl(:,:,4);
% 
% i = 1;
% x11 = p1(i,:)./8;
% x22 = p2(i,:)./8;
% x33 = p3(i,:)./8;
% x44 = p4(i,:)./8;
% x = 0: 1: 100;
% subplot('Position', [0.25, 0.25, 0.5, 0.5]);
% plot(x,x11,'-diamond',x,x22,'r-square',x,x33,'-x',x,x44,'m-o');
% title('The remaining payload of MARL')
% xlabel('Time steps(ms)'); 
% ylabel('Remaining V2V payload(bytes)'); 
% grid on;
% legend('V2V link1', 'V2V link2', 'V2V link3', 'V2V link4');

% 整体情况
% for i = 1 : 1 : 100
%     x11 = p1(i,:)./8;
%     x22 = p2(i,:)./8;
%     x33 = p3(i,:)./8;
%     x44 = p4(i,:)./8;
%     x = 0: 1: 100;
%     subplot(10,10,i);plot(x,x11,'-diamond',x,x22,'r-square',x,x33,'-x',x,x44,'m-o');title('MARL 1-100');
%     grid on;
% end


% % 图6 V2V剩余载荷 RAND
load('C:\Users\Lakin\PycharmProjects\MARLspectrumSharing\model\marl_model\demand_rand.mat')
q1 = demand_rand(:,:,1);
q2 = demand_rand(:,:,2);
q3 = demand_rand(:,:,3);
q4 = demand_rand(:,:,4);
% 
i= 3;
y11 = q1(i,:)./8;
y22 = q2(i,:)./8;
y33 = q3(i,:)./8;
y44 = q4(i,:)./8;
y = 0: 1: 100;
subplot('Position', [0.25, 0.25, 0.5, 0.5]);
plot(y,y11,'-diamond',y,y22,'r-square',y,y33,'-x',y,y44,'m-o');
title('The remaining payload of the random baseline')
xlabel('Time steps(ms)'); 
ylabel('Remaining V2V payload(bytes)'); 
grid on;
legend('V2V link1', 'V2V link2', 'V2V link3', 'V2V link4');

% 整体情况
% for i = 1 : 1 : 100
%     y11 = q1(i,:)./8;
%     y22 = q2(i,:)./8;
%     y33 = q3(i,:)./8;
%     y44 = q4(i,:)./8;
%     y = 0: 1: 100;
%     subplot(10,10,i);plot(y,y11,'-diamond',y,y22,'r-square',y,y33,'-x',y,y44,'m-o');title('RAND 1-100');
%     grid on;
% end


% % 图7 MARL
% load('C:\Users\Lakin\PycharmProjects\MARLspectrumSharing\model\marl_model\rate_marl.mat')
% v1 = rate_marl(:,:,1);
% v2 = rate_marl(:,:,2);
% v3 = rate_marl(:,:,3);
% v4 = rate_marl(:,:,4);
% 
% i = 15;
% r11 = v1(i,1:30);
% r22 = v2(i,1:30);
% r33 = v3(i,1:30);
% r44 = v4(i,1:30);
% x = 1: 1: 30;
% subplot('Position', [0.25, 0.25, 0.5, 0.5]);
% plot(x,r11,'-diamond',x,r22,'r-square',x,r33,'-x',x,r44,'m-o');
% title('MARL 15');
% title('V2V transmission rates of MARL')
% xlabel('Time steps(ms)'); 
% ylabel('V2V transmission rate(Mbps)'); 
% grid on;
% legend('V2V link1', 'V2V link2', 'V2V link3', 'V2V link4');

% 整体情况
% for i = 1 : 1 : 100
%     r11 = v1(i,1:30);
%     r22 = v2(i,1:30);
%     r33 = v3(i,1:30);
%     r44 = v4(i,1:30);
%     x = 1: 1: 30;
%     subplot(10,10,i);plot(x,r11,'-diamond',x,r22,'r-square',x,r33,'-x',x,r44,'m-o');title('MARL 1-100');
%     grid on;
% end


%图7 RAND
% load('C:\Users\Lakin\PycharmProjects\MARLspectrumSharing\model\marl_model\rate_rand.mat')
% v1 = rate_rand(:,:,1);
% v2 = rate_rand(:,:,2);
% v3 = rate_rand(:,:,3);
% v4 = rate_rand(:,:,4);
% 
% i = 16;
% r11 = v1(i,1:30);
% r22 = v2(i,1:30);
% r33 = v3(i,1:30);
% r44 = v4(i,1:30);
% x = 1: 1: 30;
% subplot('Position', [0.25, 0.25, 0.5, 0.5]);
% plot(x,r11,'-diamond',x,r22,'r-square',x,r33,'-x',x,r44,'m-o');
% title('V2V transmission rates of the random baseline')
% xlabel('Time steps(ms)'); 
% ylabel('V2V transmission rate(Mbps)'); 
% grid on;
% legend('V2V link1', 'V2V link2', 'V2V link3', 'V2V link4');

% 整体情况
% for i = 1 : 1 : 100
%     r11 = v1(i,1:30)./1000;
%     r22 = v2(i,1:30)./1000;
%     r33 = v3(i,1:30)./1000;
%     r44 = v4(i,1:30)./1000;
%     x = 1: 1: 30;
%     subplot(10,10,i);
%     plot(x,r11,'-diamond',x,r22,'r-square',x,r33,'-x',x,r44,'m-o');
%     title('RAND 1-100');
%     grid on;
% end

