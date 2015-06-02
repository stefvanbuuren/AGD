# stores the built-in data for the AGD package
# 
# aggdata V0.30.r 
# Add Turkish and Morrocan references
# 11MAY2015: WHO added

library(foreign)

targetdir <- file.path(getwd(), "data")
indir <- file.path(getwd(), "references/data")

# boys7482 data
fileboys <- file.path(indir, "db7482-2.txt")
fileout <- file.path(targetdir, "boys7482.rda")
boys7482 <- read.table(file=fileboys, header=TRUE, sep="\t")[,1:9]
boys7482[,"reg"] <- factor(boys7482$reg,labels=c("north","east","west","south","city"))
boys7482$gen <- factor(boys7482$gen, labels=c("G1","G2","G3","G4","G5"), ordered=TRUE)
boys7482$phb <- factor(boys7482$phb, labels=c("P1","P2","P3","P4","P5","P6"), ordered=TRUE)
save(boys7482, file = fileout, compress = "xz")

# take 10% sample of Dutch boys data
set.seed(2623)
s <- sample(size=0.1*nrow(boys),x=nrow(boys))
boys10 <- boys[sort(s),]
# save(boys10,file=paste(targetdir,"boys10.rda",sep=""))
# Note: this dataset is already present in mice

# nl4.hgt.rda
lnj <- read.delim(file.path(indir, "lnj.txt"))
lnj <- rbind(lnj,lnj[nrow(lnj),]); lnj[nrow(lnj),1] <- 100
lnm <- read.delim(file.path(indir, "lnm.txt"))
lnm <- rbind(lnm,lnm[nrow(lnm),]); lnm[nrow(lnm),1] <- 100
ltj <- read.delim(file.path(indir, "ltj.txt"))
ltj <- rbind(ltj,ltj[nrow(ltj),]); ltj[nrow(ltj),1] <- 100
ltm <- read.delim(file.path(indir, "ltm.txt"))
ltm <- rbind(ltm,ltm[nrow(ltm),]); ltm[nrow(ltm),1] <- 100
lmj <- read.delim(file.path(indir, "lmj.txt"))
lmj <- rbind(lmj,lmj[nrow(lmj),]); lmj[nrow(lmj),1] <- 100
lmm <- read.delim(file.path(indir, "lmm.txt"))
lmm <- rbind(lmm,lmm[nrow(lmm),]); lmm[nrow(lmm),1] <- 100
g <- rbind(lnj,lnm,ltj,ltm,lmj,lmm)
nsex <- c(nrow(lnj),nrow(lnm),nrow(ltj),nrow(ltm),nrow(lmj),nrow(lmm))
nsub <- c(nrow(lnj)+nrow(lnm),nrow(ltj)+nrow(ltm),nrow(lmj)+nrow(lmm))
sex <- factor(rep(c(1,2,1,2,1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1:3,nsub),labels=c("N","T","M"))
pop <- "nl4"
nl4.hgt <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,4],M=g[,2],S=g[,3])
save(nl4.hgt, file = file.path(targetdir, "nl4.hgt.rda"), compress = "xz")

# read the NL4 wfa references (kg)
gnj <- read.delim(file.path(indir, "gnj.txt"))
gnj <- rbind(gnj,gnj[nrow(gnj),]); gnj[nrow(gnj),1] <- 100
gnm <- read.delim(file.path(indir, "gnm.txt"))
gnm <- rbind(gnm,gnm[nrow(gnm),]); gnm[nrow(gnm),1] <- 100
gtj <- read.delim(file.path(indir, "gtj.txt"))
gtj <- rbind(gtj,gtj[nrow(gtj),]); gtj[nrow(gtj),1] <- 100
gtm <- read.delim(file.path(indir, "gtm.txt"))
gtm <- rbind(gtm,gtm[nrow(gtm),]); gtm[nrow(gtm),1] <- 100
gmj <- read.delim(file.path(indir, "gmj.txt"))
gmj <- rbind(gmj,gmj[nrow(gmj),]); gmj[nrow(gmj),1] <- 100
gmm <- read.delim(file.path(indir, "gmm.txt"))
gmm <- rbind(gmm,gmm[nrow(gmm),]); gmm[nrow(gmm),1] <- 100

g <- rbind(gnj,gnm,gtj,gtm,gmj,gmm)
nsex <- c(nrow(gnj),nrow(gnm),nrow(gtj),nrow(gtm),nrow(gmj),nrow(gmm))
nsub <- c(nrow(gnj)+nrow(gnm),nrow(gtj)+nrow(gtm),nrow(gmj)+nrow(gmm))
sex <- factor(rep(c(1,2,1,2,1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1:3,nsub),labels=c("N","T","M"))
pop <- "nl4"
nl4.wgt <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,4],M=g[,2],S=g[,3])
save(nl4.wgt, file = file.path(targetdir, "nl4.wgt.rda"), compress = "xz")


# weight for height
rnjd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rnjd.txt",sep='\t',header=T,dec=",")
rnmd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rnmd.txt",sep='\t',header=T,dec=",")
rtjd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rtjd.txt",sep='\t',header=T,dec=",")
rtmd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rtmd.txt",sep='\t',header=T,dec=",")
rmjd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rmjd.txt",sep='\t',header=T,dec=",")
rmmd <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rmmd.txt",sep='\t',header=T,dec=",")
rnjc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rnjc.txt",sep='\t',header=T,dec=",")
rnmc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rnmc.txt",sep='\t',header=T,dec=",")
rtjc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rtjc.txt",sep='\t',header=T,dec=",")
rtmc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rtmc.txt",sep='\t',header=T,dec=",")
rmjc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rmjc.txt",sep='\t',header=T,dec=",")
rmmc <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\rmmc.txt",sep='\t',header=T,dec=",")

g <- rbind(rnjd,rnjc,rnmd,rnmc,
           rtjd,rtjc,rtmd,rtmc,
           rmjd,rmjc,rmmd,rmmc)
nsex <- c(nrow(rnjd)+nrow(rnjc),nrow(rnmd)+nrow(rnmc),
          nrow(rtjd)+nrow(rtjc),nrow(rtmd)+nrow(rtmc),
          nrow(rmjd)+nrow(rmjc),nrow(rmmd)+nrow(rmmc))
nsub <- c(nrow(rnjd),nrow(rnjc),nrow(rnmd),nrow(rnmc),
          nrow(rtjd),nrow(rtjc),nrow(rtmd),nrow(rtmc),
          nrow(rmjd),nrow(rmjc),nrow(rmmd),nrow(rmmc))
sex <- factor(rep(c(1,2,1,2,1,2),nsex), labels=c("M","F"))
sub <- factor(rep(c(1,2,1,2,3,4,3,4,5,6,5,6),nsub),
              labels=c("N16-","N16+","T16-","T16+","M16-","M16+"))
pop <- "nl4"
nl4.wfh <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,2],L=g[,3],M=g[,4],S=g[,5])
save(nl4.wfh,file=paste(targetdir,"nl4.wfh.rda",sep=""))



# head circumference (cm)
hnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hnj.txt",sep='\t',header=T)
hnj <- rbind(hnj,hnj[nrow(hnj),]); hnj[nrow(hnj),1] <- 100
hnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hnm.txt",sep='\t',header=T)
hnm <- rbind(hnm,hnm[nrow(hnm),]); hnm[nrow(hnm),1] <- 100
htj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\htj.txt",sep='\t',header=T)
htm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\htm.txt",sep='\t',header=T)
hmj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hmj.txt",sep='\t',header=T)
hmm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hmm.txt",sep='\t',header=T)
g <- rbind(hnj,hnm,htj,htm,hmj,hmm)
nsex <- c(nrow(hnj),nrow(hnm),nrow(htj),nrow(htm),nrow(hmj),nrow(hmm))
nsub <- c(nrow(hnj)+nrow(hnm),nrow(htj)+nrow(htm),nrow(hmj)+nrow(hmm))
sex <- factor(rep(c(1,2,1,2,1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1:3,nsub),labels=c("N","T","M"))
pop <- "nl4"
nl4.hdc <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,4],M=g[,2],S=g[,3])
save(nl4.hdc,file=paste(targetdir,"nl4.hdc.rda",sep=""))

# nl4 BMI (kg/m2)
bnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\bnj.txt",sep='\t',header=T)
bnj <- rbind(bnj,bnj[nrow(bnj),]); bnj[nrow(bnj),1] <- 100
bnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\bnm.txt",sep='\t',header=T)
bnm <- rbind(bnm,bnm[nrow(bnm),]); bnm[nrow(bnm),1] <- 100
btj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\btj.txt",sep='\t',header=T)
btj <- rbind(btj,btj[nrow(btj),]); btj[nrow(btj),1] <- 100
btm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\btm.txt",sep='\t',header=T)
btm <- rbind(btm,btm[nrow(btm),]); btm[nrow(btm),1] <- 100
bmj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\bmj.txt",sep='\t',header=T)
bmj <- rbind(bmj,bmj[nrow(bmj),]); bmj[nrow(bmj),1] <- 100
bmm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\bmm.txt",sep='\t',header=T)
bmm <- rbind(bmm,bmm[nrow(bmm),]); bmm[nrow(bmm),1] <- 100
names(bmj) <- names(btm)
names(bmm) <- names(btm)
g <- rbind(bnj,bnm,btj,btm,bmj,bmm)
nsex <- c(nrow(bnj),nrow(bnm),nrow(btj),nrow(btm),nrow(bmj),nrow(bmm))
nsub <- c(nrow(bnj)+nrow(bnm),nrow(btj)+nrow(btm),nrow(bmj)+nrow(bmm))
sex <- factor(rep(c(1,2,1,2,1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1:3,nsub),labels=c("N","T","M"))
pop <- "nl4"
nl4.bmi  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,4],M=g[,2],S=g[,3])
save(nl4.bmi ,file=paste(targetdir,"nl4.bmi.rda",sep=""))

# length legth
blnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\blnj.txt",sep='\t',header=T,dec=',')
blnj <- rbind(blnj,blnj[nrow(blnj),]); blnj[nrow(blnj),1] <- 100
blnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\blnm.txt",sep='\t',header=T,dec=',')
blnm <- rbind(blnm,blnm[nrow(blnm),]); blnm[nrow(blnm),1] <- 100
g <- rbind(blnj, blnm)
nsex <- c(nrow(blnj),nrow(blnm))
nsub <- c(nrow(blnj)+nrow(blnm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.lgl  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.lgl ,file=paste(targetdir,"nl4.lgl.rda",sep=""))

# hip circumference
hcnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hcnj.txt",sep='\t',header=T,dec=',')
hcnj <- rbind(hcnj,hcnj[nrow(hcnj),]); hcnj[nrow(hcnj),1] <- 100
hcnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\hcnm.txt",sep='\t',header=T,dec=',')
hcnm <- rbind(hcnm,hcnm[nrow(hcnm),]); hcnm[nrow(hcnm),1] <- 100
g <- rbind(hcnj, hcnm)
nsex <- c(nrow(hcnj),nrow(hcnm))
nsub <- c(nrow(hcnj)+nrow(hcnm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.hip  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.hip ,file=paste(targetdir,"nl4.hip.rda",sep=""))


# waist circumference
tnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\tnj.txt",sep='\t',header=T,dec=',')
tnj <- rbind(tnj,tnj[nrow(tnj),]); tnj[nrow(tnj),1] <- 100
tnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\tnm.txt",sep='\t',header=T,dec=',')
tnm <- rbind(tnm,tnm[nrow(tnm),]); tnm[nrow(tnm),1] <- 100
g <- rbind(tnj, tnm)
nsex <- c(nrow(tnj),nrow(tnm))
nsub <- c(nrow(tnj)+nrow(tnm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.wst  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.wst ,file=paste(targetdir,"nl4.wst.rda",sep=""))

# waist/hip ratio
thnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\thnj.txt",sep='\t',header=T,dec=',')
thnj <- rbind(thnj,thnj[nrow(thnj),]); thnj[nrow(thnj),1] <- 100
thnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\thnm.txt",sep='\t',header=T,dec=',')
thnm <- rbind(thnm,thnm[nrow(thnm),]); thnm[nrow(thnm),1] <- 100
g <- rbind(thnj, thnm)
nsex <- c(nrow(thnj),nrow(thnm))
nsub <- c(nrow(thnj)+nrow(thnm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.whr  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.whr ,file=paste(targetdir,"nl4.whr.rda",sep=""))


# sitting height
snj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\shnj.txt",sep='\t',header=T,dec=',')
snj <- rbind(snj,snj[nrow(snj),]); snj[nrow(snj),1] <- 100
snm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\shnm.txt",sep='\t',header=T,dec=',')
snm <- rbind(snm,snm[nrow(snm),]); snm[nrow(snm),1] <- 100
g <- rbind(snj, snm)
nsex <- c(nrow(snj),nrow(snm))
nsub <- c(nrow(snj)+nrow(snm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.sit  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.sit ,file=paste(targetdir,"nl4.sit.rda",sep=""))

# sitting height/height ratio
slnj <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\slnj.txt",sep='\t',header=T,dec=',')
slnj <- rbind(slnj,slnj[nrow(slnj),]); slnj[nrow(slnj),1] <- 100
slnm <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\AGD\\data\\slnm.txt",sep='\t',header=T,dec=',')
slnm <- rbind(slnm,slnm[nrow(slnm),]); slnm[nrow(slnm),1] <- 100
g <- rbind(slnj, slnm)
nsex <- c(nrow(slnj),nrow(slnm))
nsub <- c(nrow(slnj)+nrow(slnm))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- factor(rep(1,nsub),labels=c("N"))
pop <- "nl4"
nl4.shh  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,3],M=g[,4],S=g[,5])
save(nl4.shh ,file=paste(targetdir,"nl4.shh.rda",sep=""))


# NL3 1980 references BMI (kg/m2)
bnj3 <- read.table(file="S:\\projecten\\a-i\\Groeistat\\Kenniscentrum overgewicht\\BMI35\\R\\standards\\bnj80.251212log.txt",sep="\t",header=TRUE)
bnj3 <- rbind(bnj3,bnj3[nrow(bnj3),]); bnj3[nrow(bnj3),1] <- 100
bnm3 <- read.table(file="S:\\projecten\\a-i\\Groeistat\\Kenniscentrum overgewicht\\BMI35\\R\\standards\\bnm80.25105log.txt",sep="\t",header=TRUE)
bnm3 <- rbind(bnm3,bnm3[nrow(bnm3),]); bnm3[nrow(bnm3),1] <- 100

g <- rbind(bnj3,bnm3)
nsex <- c(nrow(bnj3),nrow(bnm3))
nsub <- c(nrow(bnj3)+nrow(bnm3))
sex <- factor(rep(c(1,2),nsex), labels=c("M","F"))
sub <- "N"
pop <- "nl3"
nl3.bmi  <- data.frame(pop=pop,sub=sub,sex=sex,x=g[,1],L=g[,2],M=g[,3],S=g[,4])
save(nl3.bmi ,file=paste(targetdir,"nl3.bmi.rda",sep=""))


# read the CDC hfa references (cm)
cdc.hgt <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\agd\\data\\cdc.lhfa.txt",sep='\t',header=T)
cdc.hgt <- as.data.frame(cdc.hgt)
cdc.hgt <- rbind(cdc.hgt[1:244,],cdc.hgt[244,],cdc.hgt[245:488,],cdc.hgt[488,])
cdc.hgt[245,2] <- 1200; cdc.hgt[490,2] <- 1200; 
cdc.hgt[,1] <- as.factor(cdc.hgt[,1])
levels(cdc.hgt[,1]) <- c("M","F")
cdc.hgt[,2] <- cdc.hgt[,2]/12
sub <- "N"
pop <- "US"
cdc.hgt <- data.frame(pop=pop, sub=sub, sex=cdc.hgt[,1], 
                      x=cdc.hgt[,2], L=cdc.hgt[,3], M=cdc.hgt[,4], 
                      S=cdc.hgt[,5])
# names(cdc.hgt) <- c("pop","sub","sex","x","L","M","S")
save(cdc.hgt,file=paste(targetdir,"cdc.hgt.rda",sep=""))


# read the CDC wfa references (kg)
cdc.wgt <- read.table(file="S:\\projecten\\a-i\\Groeistat\\Liverpool\\R\\cdcwfa.txt",sep='\t',header=T)
cdc.wgt <- as.data.frame(cdc.wgt)
cdc.wgt[,1] <- as.factor(cdc.wgt[,1])
levels(cdc.wgt[,1]) <- c("M","F")
sub <- "N"
pop <- "US"
names(cdc.wgt) <- c("sex","x","L","M","S")
cdc.wgt <- data.frame(pop=pop, sub=sub, cdc.wgt)
save(cdc.wgt,file=paste(targetdir,"cdc.wgt.rda",sep=""))


# CDC 2000 BMI (kg/m2)
cdc.bmi <- read.table(file="S:\\projecten\\a-i\\Groeistat\\NIHES\\2010\\R\\agd\\data\\cdc.bfa.txt",sep='\t',header=T)
cdc.bmi <- as.data.frame(cdc.bmi)
cdc.bmi[,1] <- as.factor(cdc.bmi[,1])
levels(cdc.bmi[,1]) <- c("M","F")
cdc.bmi[,2] <- cdc.bmi[,2]/12
cdc.bmi <- rbind(cdc.bmi[1:218,],cdc.bmi[218,],cdc.bmi[219:436,],cdc.bmi[436,])
cdc.bmi[219,2] <- 100; cdc.bmi[438,2] <- 100; 
names(cdc.bmi) <- c("sex","x","L","M","S")
sub <- "N"
pop <- "US"
cdc.bmi <- data.frame(pop=pop, sub=sub, cdc.bmi)
save(cdc.bmi,file=paste(targetdir,"cdc.bmi.rda",sep=""))



## who.hgt
part1 <- read.delim(file = file.path(indir, "lenanthro.txt"))
part2 <- read.delim(file = file.path(indir, "hfawho2007.txt"))
age <- c( round(part1$age / 365.25, 4),
		  round(part2$age/12, 4))
parts <- rbind(part1[,-6], part2)
who.hgt <- data.frame(pop = "who",
					  sub = "N",
					  sex = factor(ifelse(parts$sex == 1, "M", "F")),
					  x = age,
					  L = parts$l,
					  M = parts$m,
					  S = parts$s)
who.hgt <- rbind(who.hgt[who.hgt$sex == "M",],
				 who.hgt[who.hgt$sex == "F",])


## who.wgt
part1 <- read.delim(file = file.path(indir, "weianthro.txt"))
part2 <- read.delim(file = file.path(indir, "wfawho2007.txt"))
part3 <- read.delim(file = file.path(indir, "wfawho2007supplement.txt"),
					header = FALSE)
names(part3) <- c("age", "l", "m", "s")
part3 <- data.frame(sex = c(rep(1, 108), rep(2, 108)),
					part3)
age <- c( round(part1$age / 365.25, 4),
		  round(part2$age/12, 4),
		  round(part3[,2]/12, 4))
parts <- rbind(part1[,-6], part2, part3)
who.wgt <- data.frame(pop = "who",
					  sub = "N",
					  sex = factor(ifelse(parts$sex == 1, "M", "F")),
					  x = age,
					  L = parts$l,
					  M = parts$m,
					  S = parts$s)
who.wgt <- rbind(who.wgt[who.wgt$sex == "M",],
				 who.wgt[who.wgt$sex == "F",])

## bmi
part1 <- read.delim(file = file.path(indir, "bmianthro.txt"))
part2 <- read.delim(file = file.path(indir, "bfawho2007.txt"))
age <- c( round(part1$age / 365.25, 4),
		  round(part2$age/12, 4))
parts <- rbind(part1[,-6], part2)
who.bmi <- data.frame(pop = "who",
					  sub = "N",
					  sex = factor(ifelse(parts$sex == 1, "M", "F")),
					  x = age,
					  L = parts$l,
					  M = parts$m,
					  S = parts$s)
who.bmi <- rbind(who.bmi[who.bmi$sex == "M",],
				 who.bmi[who.bmi$sex == "F",])


## who.wfl
who <- read.delim(file = file.path(indir, "wflanthro.txt"))
who.wfl <- data.frame(pop = "who",
					  sub = "N",
					  sex = factor(ifelse(who$sex == 1, "M", "F")),
					  x = who$len,
					  L = who$l,
					  M = who$m,
					  S = who$s)

## who.wfh
who <- read.delim(file = file.path(indir, "wfhanthro.txt"))
who.wfh <- data.frame(pop = "who",
					  sub = "N",
					  sex = factor(ifelse(who$sex == 1, "M", "F")),
					  x = who$height,
					  L = who$l,
					  M = who$m,
					  S = who$s)

# save WHO refs
save(who.hgt, file = file.path(targetdir, "who.hgt.rda"), compress = "xz")
save(who.wgt, file = file.path(targetdir, "who.wgt.rda"), compress = "xz")
save(who.bmi, file = file.path(targetdir, "who.bmi.rda"), compress = "xz")
save(who.wfl, file = file.path(targetdir, "who.wfl.rda"), compress = "xz")
save(who.wfh, file = file.path(targetdir, "who.wfh.rda"), compress = "xz")


# prepare for rif format for import to clopus
who.hgtwgtbmi <- data.frame(
	x = who.hgt$x,
	ll = who.hgt$L,
	lm = who.hgt$M,
	ls = who.hgt$S,
	gl = who.wgt$L,
	gm = who.wgt$M,
	gs = who.wgt$S,
	bl = who.bmi$L,
	bm = who.bmi$M,
	bs = who.bmi$S
)
mwho2011 <- who.hgtwgtbmi[1:2026,]
wwho2011 <- who.hgtwgtbmi[2027:4052,]

mwho2011wfl <- who.wfl[1:651, c("x","L","M","S")]
wwho2011wfl <- who.wfl[652:1302, c("x","L","M","S")]

mwho2011wfh <- who.wfh[1:551, c("x","L","M","S")]
wwho2011wfh <- who.wfh[552:1102, c("x","L","M","S")]

targetdir <- path.expand("~/Project/Groeistat/diversen/ReferenceLibrary/data/References/Misc")

write.table(mwho2011, file = file.path(targetdir, "mwho2011.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)
write.table(wwho2011, file = file.path(targetdir, "wwho2011.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)
write.table(mwho2011wfl, file = file.path(targetdir, "mwho2011wfl.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)
write.table(wwho2011wfl, file = file.path(targetdir, "wwho2011wfl.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)
write.table(mwho2011wfh, file = file.path(targetdir, "mwho2011wfh.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)
write.table(wwho2011wfh, file = file.path(targetdir, "wwho2011wfh.txt"), sep = "\t",
			row.name = FALSE, quote = FALSE)

