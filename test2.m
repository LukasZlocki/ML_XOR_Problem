P = [ 0 0 1 1 ;   % wejscie sieci
      0 1 0 1 ]
T = [ 0 1 1 0]  % zadane wyjscia sieci


% paramtery do recznej zmiany
% e1 - blad sredniokwadratowy(MSE1), dla warstwy 1, po osiagnieciu ktorego przerywamy uczenie
% e2 - blad sredniokwadratowy(MSE1), dla warstwy 1, po osiagnieciu ktorego przerywamy uczenie
e1 = input ("Podaj blad MSE1, zalecane na test (0.00): ");
e2 = input ("Podaj blad MSE2, zalecane na test (0.00): ");


% przed uczeniem
[W1przed, W2przed] = init2 ( 2 , 2 , 1)   % najmniejsza dobra siec . jak dasz to to bedzie sie szybciej uczyc ( 2 , 2 , 1)
[Y1 , Y2a] = dzialaj2 (W1przed , W2przed , P (:,1));
[Y1 , Y2b] = dzialaj2 (W1przed , W2przed , P (:,2));
[Y1 , Y2c] = dzialaj2 (W1przed , W2przed , P (:,3));
[Y1 , Y2d] = dzialaj2 (W1przed , W2przed , P (:,4));
Yprzed = [ Y2a, Y2b, Y2c, Y2d ]

% po uczeniu
% po uczeniu
[W1po, W2po, MSE1, MSE2] = ucz2 (W1przed, W2przed, P, T, 5000, e1, e2)

[ Y1 , Y2a] = dzialaj2 (W1po , W2po , P (:,1));
[ Y1 , Y2b] = dzialaj2 (W1po , W2po , P (:,2));
[ Y1 , Y2c] = dzialaj2 (W1po , W2po , P (:,3));
[ Y1 , Y2d] = dzialaj2 (W1po , W2po , P (:,4));

Ypo = [ Y2a, Y2b, Y2c, Y2d]

%plot (MSE) % do wykresu bledu lukas
