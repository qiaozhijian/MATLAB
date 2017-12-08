dt=.1;
t=[0:dt:100];
x=cos(t);
[a,b]=xcorr(x,'unbiased');
plot(b*dt,a)