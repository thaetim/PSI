close all; clear all; clc;
%dwuelementowy perceptron
net=newp([0 1; -2 2],1);
W=[0 0 1 1; 0 1 0 1];
T=[0 1 1 0]; %T=[0 1 1 1]; T=[1 1 1 0]; T=[0 0 0 1]

%inicjalizacja domyœlna
net=init(net);

sym_przed=sim(net,W)

%max iloœæ epok - iteracji
net.trainParam.epochs=20;
net=train(net,W,T);
sym_po = sim(net,W)
