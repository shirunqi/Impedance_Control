%% 载入数据
load Data_Save_t_1; load Data_Save_X_1; load Data_Save_F_1;
load Data_Save_t_2; load Data_Save_X_2; load Data_Save_F_2;

%% ************************Md变化时的力位跟踪曲线************************%% 
t1 = Data_Save_t_1;
X1 = Data_Save_X_1;
F1 = Data_Save_F_1;
m1 = numel(t1);
figure()
for i1 = 1:m1
    plot(t1{i1},X1{i1},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('位置 P/mm');
title('Bd = 55,Kd = 0');
legend('Md = 0','Md = 50','Md = 100','Md = 150','Md = 200');
grid on

figure()
for i1 = 1:m1
    plot(t1{i1},F1{i1},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('接触力 F/N');
title('Bd = 55,Kd = 0');
legend('Md = 0','Md = 50','Md = 100','Md = 150','Md = 200');
grid on

%% ************************Bd变化时的力位跟踪曲线************************%% 
t2 = Data_Save_t_2;
X2 = Data_Save_X_2;
F2 = Data_Save_F_2;
m2 = numel(t2);
figure()
for i2 = 1:m2
    plot(t2{i2},X2{i2},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('位置 P/mm');
title('Md = 0.5,Kd = 0');
legend('Bd = 35','Bd = 45','Bd = 55','Bd = 65','Bd = 75','Bd = 100');
grid on

figure()
for i2 = 1:m2
    plot(t2{i2},F2{i2},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('接触力 F/N');
title('Md = 0.5,Kd = 0');
legend('Bd = 35','Bd = 45','Bd = 55','Bd = 65','Bd = 75','Bd = 100');
grid on

%% ************************Kd变化时的力位跟踪曲线************************%% 
t3 = Data_Save_t_3;
X3 = Data_Save_X_3;
F3 = Data_Save_F_3;
m3 = numel(t3);
figure()
for i3 = 1:m3
    plot(t3{i3},X3{i3},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('位置 P/mm');
title('Md = 0.5,Bd = 55');
legend('Kd = 0','Kd = 0.1','Kd = 0.3','Kd = 0.5','Kd = 0.7','Kd = 1');
grid on

figure()
for i3 = 1:m3
    plot(t3{i3},F3{i3},'LineWidth',1);
    hold on
end
xlabel('时间 t/s');
ylabel('接触力 F/N');
title('Md = 0.5,Bd = 55');
legend('Kd = 0','Kd = 0.1','Kd = 0.3','Kd = 0.5','Kd = 0.7','Kd = 1');
grid on