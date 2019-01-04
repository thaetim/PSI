close all; clear all; clc;
INX = -2:0.2:2;
%INX = -5.12:0.1:5.12;
INY = -1*transpose(INX);

TEST = zeros(length(INX));
INPUT = [1:(length(INX)^2);1:(length(INX)^2)];
WANTED = [1:(length(INX)^2)];
for ky=1:length(INY)
    for kx=1:length(INX)
            INPUT(1,(ky-1)*length(INX)+kx)=INX(kx);
            INPUT(2,(ky-1)*length(INX)+kx)=INY(ky);
            WANTED((ky-1)*length(INX)+kx)=RastrignTest3D(INX(kx),INY(ky));
    end
end

net = feedforwardnet(5);
net.trainFcn = 'traingd'; %algorytm wstecznej propagacji
net.trainParam.lr = 0.5; %wsp. uczenia
net.trainParam.mc = 1; %bezwladnosc
net = train(net, INPUT, WANTED);

OUTPUT=sim(net,INPUT);
OUT=zeros(length(INX));
OUTPUT2=rastrigin_neural2(INPUT);
OUT2=zeros(length(INX));
for ky=1:length(INY)
    for kx=1:length(INX)
            TEST(kx,ky)=RastrignTest3D(INX(kx),INY(ky));
            OUT(kx,ky)=OUTPUT((ky-1)*length(INX)+kx);
            OUT2(kx,ky)=OUTPUT2((ky-1)*length(INX)+kx);
    end
end

subplot(1,3,1),surf(TEST);zlim([-1000,3500]);
subplot(1,3,2),surf(OUT);zlim([-1000,3500]);
subplot(1,3,3),surf(OUT2);zlim([-1000,3500]);