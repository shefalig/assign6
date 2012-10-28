x<-0:50
y1<-dbinom(x,50,0.3)
y2<-dpois(x,15)
y3<-dnorm(x,15,sqrt(10.5))
a <- list()
a[[""]] <- x
a[[""]] <- y1
a[[""]] <- y2
a[[""]] <- y3
res<- do.call(rbind, a)
res1<-as.matrix(t(res))
write.table(res1, file = "output1.dat", sep = ",",col.names = NA)
s11=rbinom(1000,50,0.3);
s12=rbinom(10000,50,0.3);
s13=rbinom(100000,50,0.3);
s14=rbinom(1000000,50,0.3);
 

s21=rpois(1000,15)
s22=rpois(10000,15)
s23=rpois(100000,15)
s24=rpois(1000000,15)

s31=rnorm(1000,15,sqrt(10.5))
s32=rnorm(10000,15,sqrt(10.5))
s33=rnorm(100000,15,sqrt(10.5))
s34=rnorm(1000000,15,sqrt(10.5))
f <- list()
f[[""]] <- s11
f[[""]] <- s12
f[[""]] <- s13
f[[""]] <- s14
f[[""]] <- s21
f[[""]] <- s22
f[[""]] <- s23
f[[""]] <- s24
f[[""]] <- s31
f[[""]] <- s32
f[[""]] <- s33
f[[""]] <- s34
r<- do.call(rbind, f)
r1<-as.matrix(t(r))
write.table(r1, file = "output2.dat", sep = ",",col.names = NA)
