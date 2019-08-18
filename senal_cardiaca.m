function senal_cardiaca()
limit_x=[0 0.06 0.09 0.18 0.19 0.22 0.25 0.265 0.4 0.51 0.58 0.65 0.68 0.7];
n=3000;
x=linspace(0,0.7,n);
p=2;
x1=linspace(0,limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=3;
x2=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=4;
x3=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=5;
x4=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=6;
x5=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=7;
x6=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=8;
x7=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=9;
x8=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=10;
x9=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=11;
x10=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=12;
x11=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=13;
x12=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));
p=14;
x13=linspace(limit_x(p-1),limit_x(p),round((limit_x(p)-limit_x(p-1))/0.7*n ));

close
%P
p1=[0,0];
p2=[0.06,0.175];
p3=[0.06*2,0.1];
A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
b=[p1(2);p2(2);p3(2)];
s=A\b;
%x1=linspace(0,0.06,50);
y1=s(1)*x1.^2+s(2)*x1+s(3);
%2da parabola
p1=[0.09,0];
p2=[0.06,0.175];
p3=[0.03,0];
A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
b=[p1(2);p2(2);p3(2)];
s=A\b;
%x2=linspace(0.06,0.09,50);
y2=s(1)*x2.^2+s(2)*x2+s(3);
%0s en segmento PR
%x3=linspace(0.09,0.18,25);
y3=x3.*0;
%recta QR
p1=[0.18,0];
p2=[0.19,-0.1];
A=[p1(1) 1;p2(1) 1];
b=[p1(2);p2(2)];
s=A\b;
%x4=linspace(0.18,0.19,25);
y4=s(1)*x4+s(2);
%recta RS
p1=[0.19,-0.1];
p2=[0.22,0.9];
A=[p1(1) 1;p2(1) 1];
b=[p1(2);p2(2)];
s=A\b;
%x5=linspace(0.19,0.22,50);
y5=s(1)*x5+s(2);
%recta RS 2
p1=[0.22,0.9];
p2=[0.25,-0.3];
A=[p1(1) 1;p2(1) 1];
b=[p1(2);p2(2)];
s=A\b;
%x6=linspace(0.22,0.25,50);
y6=s(1)*x6+s(2);
%recta RS 3
p1=[0.25,-0.3];
p2=[0.265,0];
A=[p1(1) 1;p2(1) 1];
b=[p1(2);p2(2)];
s=A\b;
%x7=linspace(0.25,0.265,25);
y7=s(1)*x7+s(2);
%0s en segmento ST
%x8=linspace(0.265,0.4,50);
y8=x8.*0;
%parábola T
    %P
    p1=[0.4,0];
    p2=[0.51,0.23];
    p3=[0.4+(0.51-0.4)*2,0.2];
    A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
    b=[p1(2);p2(2);p3(2)];
    s=A\b;
    %x9=linspace(0.4,0.51,50);
    y9=s(1)*x9.^2+s(2)*x9+s(3);
    %2da parabola
    p1=[(0.51-0.58)/2+0.51,0.1];
    p2=[0.51,0.23];
    p3=[0.58,0];
    A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
    b=[p1(2);p2(2);p3(2)];
    s=A\b;
    %x10=linspace(0.51,0.58,50);
    y10=s(1)*x10.^2+s(2)*x10+s(3);
%0s en segmento TU
%x11=linspace(0.58,0.65,50);
y11=x11.*0;
%parábola U
    %P
    p1=[0.65,0];
    p2=[0.68,0.05];
    p3=[0.65+(0.68-0.65)*2,0.04];
    A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
    b=[p1(2);p2(2);p3(2)];
    s=A\b;
    %x12=linspace(0.65,0.68,25);
    y12=s(1)*x12.^2+s(2)*x12+s(3);
    %2da parabola
    p1=[(0.68-0.65)/2+0.68,0.025];
    p2=[0.68,0.05];
    p3=[0.7,0];
    A=[p1(1)^2 p1(1) 1;p2(1)^2 p2(1) 1;p3(1)^2 p3(1) 1];
    b=[p1(2);p2(2);p3(2)];
    s=A\b;
    %x13=linspace(0.68,0.7,25);
    y13=s(1)*x13.^2+s(2)*x13+s(3);

y=[y1 y2 y3 y4 y5 y6 y7 y8 y9 y10 y11 y12 y13];

%escalamiento en y de 0 a 255
y=y+0.3;
y=round(y*255/1.2);

x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13];
plot(x,y)
grid on
grid minor
[~,n]=size(x);
clc
for k=1:n
    fprintf('%i, ',y(k))
end
Y1=abs(fft(y));
figure
 plot(Y1);