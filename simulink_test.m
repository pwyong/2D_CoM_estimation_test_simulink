%% 2D quadcopter
m=1.0;
g=9.8;
r=0.11;
bok=0.01;
Ixx=0.2;
Iyy=0.2;
Izz=0.01;
xc=0.01;
yc=0.01;
zc=-0.05;
CM=[yc r+yc yc -r+yc;
    r-xc -xc -r-xc -xc;
    -bok bok -bok bok;
    -1 -1 -1 -1];
invCM=inv(CM);
alpha=0.002;

%%
s=tf('s');
tau=1;
f=1/(tau*s+1);
bode(f)
