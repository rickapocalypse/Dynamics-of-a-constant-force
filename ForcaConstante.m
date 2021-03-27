clc
clear all
m = 0.1 ;  %kg
F = 1;    %Forca em newtons
t0 = 0;
tf = 50;
dt = 0.1;
n = tf/dt;
v0 = 0;
v(1) = v0;
t(1) = t0;
for i=1 : n
 vn=v(i);
 tn=t(i);
 v(1+i) = v(i) + (F/m)*dt;
 t(1+i) = t(i) + dt;
end
v1=v0 + (F/m)*t;
erro = v - v1;
plot(t,v,'y')
hold on
plot(t,v1)
erro(end)