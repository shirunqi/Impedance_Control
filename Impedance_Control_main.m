%% Copyright (c) 2019. 
%% All rights reserved.
%% Author:SRQ

clc
clear all
close all

%% 期望阻抗模型参数设置
Md = [0,50,100,150,200];
Bd = [35,45,55,65,75,100];
Kd = [0,0.1,0.3,0.5,0.7,1];

%% ************************Md、Bd、Kd参数特性仿真************************%% 
%% 固定Bd、Kd，选择不同的Md进行仿真
n1 = numel(Md); % 计算Md中元素数量
Data_Save_t_1 =  cell(1,n1); % 利用元胞数组保存时间（每组元素个数不同）
Data_Save_X_1 =  cell(1,n1); % 利用元胞数组保存位置
Data_Save_F_1 =  cell(1,n1); % 利用元胞数组保存接触力
Bd1 = 55; Kd1 = 0; % 固定Bd、Kd
for i = 1:n1
    Md1 = Md(i);
    Md0 = Md1; Bd0 = Bd1; Kd0 = Kd1; % 为Simulink中参数赋值
    sim('Position_Based_Impedance_Control'); % 运行Simulink仿真框图
    Data_Save_t_1{i} = tout; Data_Save_X_1{i} = X; Data_Save_F_1{i} = F; % 保存数据
end

%% 固定Md、Kd，选择不同的Bd进行仿真
n2 = numel(Bd); % 计算Bd中元素数量
Data_Save_t_2 =  cell(1,n2); % 利用元胞数组保存时间（每组元素个数不同）
Data_Save_X_2 =  cell(1,n2); % 利用元胞数组保存位置
Data_Save_F_2 =  cell(1,n2); % 利用元胞数组保存接触力
Md2 = 0.5; Kd2 = 0; % 固定Md、Kd
for i = 1:n2
    Bd2 = Bd(i);  
    Md0 = Md2; Bd0 = Bd2; Kd0 = Kd2; % 为Simulink中参数赋值
    sim('Position_Based_Impedance_Control'); % 运行Simulink仿真框图
    Data_Save_t_2{i} = tout; Data_Save_X_2{i} = X; Data_Save_F_2{i} = F; % 保存数据
end
%% 固定Md、Bd，选择不同的Kd进行仿真
n3 = numel(Kd); % 计算Kd中元素数量
Data_Save_t_3 =  cell(1,n3); % 利用元胞数组保存时间（每组元素个数不同）
Data_Save_X_3 =  cell(1,n3); % 利用元胞数组保存位置
Data_Save_F_3 =  cell(1,n3); % 利用元胞数组保存接触力
Md3 = 0.5; Bd3 = 55; % 固定Md、Bd
for i = 1:n3
    Kd3 = Kd(i);  
    Md0 = Md3; Bd0 = Bd3; Kd0 = Kd3; % 为Simulink中参数赋值
    sim('Position_Based_Impedance_Control'); % 运行Simulink仿真框图
    Data_Save_t_3{i} = tout; Data_Save_X_3{i} = X; Data_Save_F_3{i} = F; % 保存数据
end

%% 保存数据
save Data_Save_t_1; save Data_Save_X_1; save Data_Save_F_1;
save Data_Save_t_2; save Data_Save_X_2; save Data_Save_F_2;
save Data_Save_t_3; save Data_Save_X_3; save Data_Save_F_3;

%% 画图
Plot_Figure;