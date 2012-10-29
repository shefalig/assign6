x=0:50;
y1=binopdf(x,50,0.3);
y2=poisspdf(x,15);
y3=normpdf(x,15,sqrt(10.5));
x1=rotdim(x,-1);
a1=rotdim(y1,-1);
b1=rotdim(y2,-1);
c1=rotdim(y3,-1);
t=horzcat(x1,a1,b1,c1);
save ("output.dat","t");
s11=binornd(50,0.3,1000);
s12=binornd(50,0.3,10000);
s13=binornd(50,0.3,100000);
s14=binornd(50,0.3,1000000);

s21=poissrnd(15,1000);
s22=poissrnd(15,10000);
s23=poissrnd(15,100000);
s24=poissrnd(15,1000000);

s31=normrnd(15,sqrt(10.5),1000);
s32=normrnd(15,sqrt(10.5),10000);
s33=normrnd(15,sqrt(10.5),100000);
s34=normrnd(15,sqrt(10.5),1000000);

s11_1=rotdim(s11,-1);
s12_1=rotdim(s12,-1);
s13_1=rotdim(s13,-1);
s14_1=rotdim(s14,-1);
s21_1=rotdim(s21,-1);
s22_1=rotdim(s22,-1);
s23_1=rotdim(s23,-1);
s24_1=rotdim(s24,-1);
s31_1=rotdim(s31,-1);
s32_1=rotdim(s32,-1);
s33_1=rotdim(s33,-1);
s34_1=rotdim(s34,-1);
t2=horzcat(s11_1,s12_1,s13_1,s14_1,s21_1,s22_1,s23_1,s24_1,s31_1,s32_1,s33_1,s34_1);
save ("output2.dat","t2");