x<-0:50
y1<-dbinom(x,50,0.3)
y2<-dpois(x,15)
y3<-dnorm(x,15,sqrt(10.5))
lst<-list(x,y1,y2,y3)
lns <- sapply(lst, length)
n <- length(lst)
ans <- as.data.frame(matrix(nrow = max(lns), ncol = n))
for(i in 1:n){
    ans[1:lns[i], i] <- lst[[i]]
}
write.table(ans, file = "output1.dat", na = "", row.names = FALSE)
s11<-rbinom(1000,50,0.3);
s12<-rbinom(10000,50,0.3);
s13<-rbinom(100000,50,0.3);
s14<-rbinom(1000000,50,0.3);

s21<-rpois(1000,15)
s22<-rpois(10000,15)
s23<-rpois(100000,15)
s24<-rpois(1000000,15)

s31<-rnorm(1000,15,sqrt(10.5))
s32<-rnorm(10000,15,sqrt(10.5))
s33<-rnorm(100000,15,sqrt(10.5))
s34<-rnorm(1000000,15,sqrt(10.5))
lst<-list(s11,s12,s13,s14,s21,s22,s23,s24,s31,s32,s33,s34)
lns <- sapply(lst, length)
n <- length(lst)
ans <- as.data.frame(matrix(nrow = max(lns), ncol = n))
for(i in 1:n){
    ans[1:lns[i], i] <- lst[[i]]
}
write.table(ans, file = "output2.dat", na = "", row.names = FALSE)


lst<-list(y1,y2,y3,s11,s12,s13,s14,s21,s22,s23,s24,s31,s32,s33,s34)
lns <- sapply(lst, length)
n <- length(lst)
ans <- as.data.frame(matrix(nrow = max(lns), ncol = n))
for(i in 1:n){
    ans[1:lns[i], i] <- lst[[i]]
}
write.table(ans, file = "output3.dat", na = "", row.names = FALSE)

