


#pi tahmini kare ile

n_observation=10000
kare=matrix(runif(n_observation*2,-1,1),ncol=2)
plot(kare)
origine_uzalik=sqrt(kare[,1]^2+kare[,2]^2)

plot(kare,col=(origine_uzalik<=1)+1)

tahminipi=4*sum(origine_uzalik<=1)/n_observation

print(pi)
print(tahminipi)


#pi tahmini kup ile

n_observation=10000
kup=matrix(runif(n_observation*3,-1,1),ncol=3)
plot(kup)
origine_uzalikkup=sqrt(kup[,1]^2+kup[,2]^2+kup[,3]^2)

plot(kup,col=(origine_uzalikkup<=1)+1)

tahminipi=6*sum(origine_uzalikkup<=1)/n_observation

print(pi)
print(tahminipi)
