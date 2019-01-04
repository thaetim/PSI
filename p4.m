close all; clear all; clc;

start=[zeros(25,1),ones(25,1)];
n_out=25;
net = newff(start, n_out, {'tansig'}, 'trainlm', 'learnh');


%reprezentacja binarna 4 emotikonow dla tablicy 8x4
           %:):O:(:| 
IN =       [ 0 0 0 0
             0 0 0 0   
             0 0 0 0  
             0 0 0 0
             0 0 0 0
             0 0 0 0
             1 1 1 1 
             0 0 0 0 
             1 1 1 1
             0 0 0 0
             0 0 0 0
             0 0 0 0
             0 0 0 0
             0 0 0 0
             0 0 0 0
             1 0 0 0 
             0 1 1 1
             0 1 1 1 
             0 1 1 1
             1 0 0 0
             0 0 1 0
             1 1 0 0
             1 1 0 0
             1 1 0 0
             0 0 1 0
             ];
%zmienna okreslajaca trafienie w danego emotikona
OUT =     [1 0 0 0 ;  %:)
           0 1 0 0 ;  %:O
           0 0 1 0 ;  %:(
           0 0 0 1 ]; %:|
           
        
%PARAMETRY ALGORYTMU HEBBA
lp.dr = 0.5;%wspolczynnik zapominania
lp.lr = 0.33;%wspolczynnik uczenia

%PARAMETRY TRENINGU SIECI:
net.trainParam.epochs = 100;%maksymalna ilosc epok
net.trainParam.goal = 0.001;%cel wydajnosci
net.trainParam.lr=0.1;%wspolczynnik uczenia

%dostosowanie parametrów sieci do metody Hebba
wHebb = learnh([], IN, [], [], OUT, [], [], [], [], [], lp, []);

net = train(net, IN, wHebb');

%dane testowe
a_test=[0;0;0;0;0;
        0;1;0;1;0; 
        0;0;0;0;0;
        1;0;0;0;1;     
        0;1;1;1;0]; %:)          
          
b_test=[0;0;0;0;0;
        0;1;0;1;0; 
        0;0;0;0;0;
        0;1;1;1;0; 
        0;1;1;1;0;]; %:O
          
c_test=[0;0;0;0;0;
        0;1;0;1;0; 
        0;0;0;0;0;
        0;1;1;1;0;
        1;0;0;0;1;]; %:(
          
d_test=[0;0;0;0;0;
        0;1;0;1;0; 
        0;0;0;0;0;
        0;1;1;1;0;
        0;0;0;0;0;]; %:|
                  
F1 = wHebb;
%symulacja
F2 = sim(net, a_test);

disp(':) = '), disp(sum(F1(1, ':')));
disp(':O = '), disp(sum(F1(2, ':')));
disp(':( = '), disp(sum(F1(3, ':')));  
disp(':| = '), disp(sum(F1(4, ':')));

disp(':) = '), disp(F2(1)); 
disp(':O = '), disp(F2(2));
disp(':( = '), disp(F2(3)); 
disp(':| = '), disp(F2(4));

