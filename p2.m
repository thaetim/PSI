%% - CZʌ� PIERWSZA
close all; clear all; clc;

%Dane wej�ciowe - wektory jednokolumnowe
%Litery G, J, oraz M do Z zosta�y pomini�te dla uproszczenia
 
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

%Dane wyj�ciowe (1 - wielka litera, 0 - ma�a litera)
 
%         A a B b C c D d E e F f H h I i K k L l
oData = [ 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 ];

%PR - zakres warto�ci -> matryca 5x5 = 25 wej��
PR=[01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;01;];
PR2= [0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;
      0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; ];
S = 1; %liczba neuron�w w sieci

%net - struktura zawieraj�ca parametry sieci
%net=newp(PR2,S);
net=newlin(PR,S);

%newp - Tworzenie jednowarstwowej sieci z twardymi perceptronami
%newlin - Tworzenie jednowarstwowej sieci z neuronami linowymi

% Parametry:
% Maksymalna liczba epok trwania treningu
net.trainParam.epochs = 100000;

% B��d �redniokwadratowy
net.trainParam.goal = 0.1;
% Wsp�czynnik uczenia
net.trainParam.mu = 0.1;
%Przed treningiem
Przed_treningiem_dane=sim(net,iData);
%Trening
net=train(net,iData,oData);

%% - CZʌ� DRUGA
%Po treningu - sie� gotowa do kategoryzowania liter
Po_treningu_dane=sim(net,A);
%Dane wyj�ciowe nie s� ca�kowite - �eby poda� wynik potrzebne b�dzie przybli�enie
if round(Po_treningu_dane)==0
    disp('mala litera')
else
    disp('Duza litera')
end;

disp(Po_treningu_dane)