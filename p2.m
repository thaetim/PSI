%% - CZÊŒÆ PIERWSZA
close all; clear all; clc;

%Dane wejœciowe - wektory jednokolumnowe
%Litery G, J, oraz M do Z zosta³y pominiête dla uproszczenia
 
%         A a B b C c D d E e F f H h I i K k L l
iData = [ 0 0 1 1 0 0 1 0 1 0 1 0 1 1 1 1 1 1 1 1;
          1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 0 0 0 0;
          1 1 1 0 1 0 1 0 1 1 1 1 0 0 0 0 0 0 0 0;
          1 0 0 0 1 0 0 1 1 0 1 0 0 0 0 0 1 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
          1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
          0 1 1 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
          1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
          1 0 1 1 1 0 1 0 1 1 1 1 1 1 1 1 1 1 1 1;
          1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 1 0 0 0;
          1 1 1 1 0 1 0 1 1 1 1 1 1 1 0 0 0 1 0 0;
          1 1 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0;
          1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
          1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0;
          0 1 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
          1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
          1 0 1 1 0 0 1 0 1 0 1 1 1 1 1 1 1 1 1 1;
          0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1;
          0 1 1 1 1 1 1 1 1 1 0 0 0 1 0 0 0 1 1 1;
          0 1 0 0 1 0 0 1 1 0 0 0 0 0 0 0 1 0 1 0;
          1 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;];
      
%Dane testowe:
A = [ 0; 1; 1; 1; 0; 1; 0; 0; 0; 1; 1; 1; 1; 1; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1 ];
a = [ 0; 1; 1; 0; 0; 0; 0; 0; 1; 0; 0; 1; 1; 1; 0; 1; 0; 0; 1; 0; 0; 1; 1; 1; 1 ];
B = [ 1; 1; 1; 0; 0; 1; 0; 0; 1; 0; 1; 1; 1; 0; 0; 1; 0; 0; 1; 0; 1; 1; 1; 0; 0 ];
b = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0; 1; 0; 0; 1; 0; 1; 1; 1; 0; 0 ];
C = [ 0; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 0; 1; 1; 1; 0 ];
c = [ 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 1; 0; 0; 1; 0; 0; 0; 0; 0; 1; 1; 0; 0 ];
D = [ 1; 1; 1; 0; 0; 1; 0; 0; 1; 0; 1; 0; 0; 1; 0; 1; 0; 0; 1; 0; 1; 1; 1; 0; 0 ];
d = [ 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 1; 1; 1; 0; 1; 0; 0; 1; 0; 0; 1; 1; 1; 0 ];
E = [ 1; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 0 ];
e = [ 0; 1; 1; 0; 0; 1; 0; 0; 1; 0; 1; 1; 1; 0; 0; 1; 0; 0; 0; 0; 0; 1; 1; 0; 0 ];
F = [ 1; 1; 1; 1; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0 ];
f = [ 0; 1; 1; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0 ];
H = [ 1; 0; 0; 0; 1; 1; 0; 0; 0; 1; 1; 1; 1; 1; 1; 1; 0; 0; 0; 1; 1; 0; 0; 0; 1 ];
h = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0; 1; 0; 1; 0; 0; 1; 0; 1; 0; 0 ];
I = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0 ];
i = [ 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0 ];
K = [ 1; 0; 0; 1; 0; 1; 0; 1; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 0; 0; 1; 0; 0; 1; 0 ];
k = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 1; 0; 0; 1; 1; 0; 0; 0; 1; 0; 1; 0; 0 ];
L = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 1; 0 ];
l = [ 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 0; 0; 0; 0; 1; 1; 1; 0; 0 ];

%Dane wyjœciowe (1 - wielka litera, 0 - ma³a litera)
 
%         A a B b C c D d E e F f H h I i K k L l
oData = [ 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ];

%PR - zakres wartoœci -> matryca 5x5 = 25 wejœæ
PR=[01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;];
PR2= [0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
      0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; ];
S = 1; %liczba neuronów w sieci

%net - struktura zawieraj¹ca parametry sieci
%net=newp(PR2,S);
net=newlin(PR,S);

%newp - Tworzenie jednowarstwowej sieci z twardymi perceptronami
%newlin - Tworzenie jednowarstwowej sieci z neuronami linowymi

% Parametry:
% Maksymalna liczba epok trwania treningu
net.trainParam.epochs = 100000;

% B³¹d œredniokwadratowy
net.trainParam.goal = 0.1;
% Wspó³czynnik uczenia
net.trainParam.mu = 0.1;
%Przed treningiem
Przed_treningiem_dane=sim(net,iData);
%Trening
net=train(net,iData,oData);

%% - CZÊŒÆ DRUGA
%Po treningu - sieæ gotowa do kategoryzowania liter
Po_treningu_dane=sim(net,A);
%Dane wyjœciowe nie s¹ ca³kowite - ¿eby podaæ wynik potrzebne bêdzie przybli¿enie
if round(Po_treningu_dane)==0
    disp('mala litera')
else
    disp('Duza litera')
end;

disp(Po_treningu_dane)