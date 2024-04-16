library(metan)
data<- read.csv("hydro3.csv")
model=gamem(data,
            gen = GEN,
            rep = REP,
            resp = everything())
#BLUPs for genotypes
a=gmd(model,"blupg")
#print(a,n=150)
#Compute the MGIDI index
#cor(a, use = "complete.obs")
aku <- mgidi(model)
mgidi_index <- mgidi(model)
plot(mgidi_index)
#plot the contribution of each factor on the MGIDI index
p1=plot(aku, type = "contribution")
p2=plot(aku)
p1+p2
