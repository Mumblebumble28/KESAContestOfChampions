pdf(file='MemberGrowth.pdf')
x <- 1:(ncol(ratings)-1)
for (i in 1:nrow(ratings)){plot(x=x,y=ratings[i,-1],type="l",main=ratings[i,1],xlab="Dates", ylab="Rating")}
dev.off()

for(i in 1:nrow(memdata2)){memdata2[i,$growth1] <- {memdata2[i,6] - memdata2[i, 5]}}

for(i in 1:nrow(memdata3))
  {
  memdata3$growth[i] <- as.numeric(memdata3[i,4]) - as.numeric(memdata3[i,3])
  memdata3$growth2[i] <- as.numeric(memdata3[i,5]) - as.numeric(memdata3[i,4])
  memdata3$growth3[i] <- as.numeric(memdata3[i,6]) - as.numeric(memdata3[i,5])
  memdata3$growth4[i] <- as.numeric(memdata3[i,7]) - as.numeric(memdata3[i,6])
  memdata3$growth5[i] <- as.numeric(memdata3[i,8]) - as.numeric(memdata3[i,7])
  memdata3$growth6[i] <- as.numeric(memdata3[i,9]) - as.numeric(memdata3[i,8])
  memdata3$growth7[i] <- as.numeric(memdata3[i,10]) - as.numeric(memdata3[i,9])
  memdata3$growth8[i] <- as.numeric(memdata3[i,11]) - as.numeric(memdata3[i,10])
  memdata3$growth9[i] <- as.numeric(memdata3[i,12]) - as.numeric(memdata3[i,11])
  memdata3$growth10[i] <- as.numeric(memdata3[i,13]) - as.numeric(memdata3[i,12])
}

 pdf("ConsolidatedSummonerGrowth.pdf")
 plot(xax, yax, type="l", col="red", main="Summoner Growth", ylim = c(0,5000), axes = FALSE, xlab="Day Captured", ylab="Points")
 axis(side=1, at=c(0:10))
 axis(side=2, at=seq(0, 5000, by=200))
 lines(xax, yax2, col="green")
 lines(xax, yax3, col="black")
 lines(xax, yax4, col="blue")
 lines(xax, yax5, col="purple")
 legend("topright", 
        inset = .05, 
        cex = 1, 
        title = "Legend", 
        c(memdata3$Name[1:5]), 
        lty = c(1,1), 
        lwd = c(1,1), 
        col=c("red","green","black","blue","purple"), 
        bg="grey96")
 dev.off()