library(GAPIT3) # devtools::install_github("jiabowang/GAPIT3",force=TRUE)
#
setwd("D:/gitfolder/AGILE_LDP_Seed/")
#
myG <- read.csv("Data/GWAS/myG_LDP.csv", header = F)
#
myY_LDP <- read.csv("Data/GWAS/myY_LDP.csv")
myY_BELT_Su18 <- read.csv("Data/GWAS/myY_BELT_Su18.csv")
myY_BELT_Su17 <- read.csv("Data/GWAS/myY_BELT_Su17.csv")
myY_BELT_Ro17 <- read.csv("Data/GWAS/myY_BELT_Ro17.csv")
myY_BELT_Mo17 <- read.csv("Data/GWAS/myY_BELT_Mo17.csv")
myY_BELT_It17 <- read.csv("Data/GWAS/myY_BELT_It17.csv")
myY_BELT_Sp17 <- read.csv("Data/GWAS/myY_BELT_Sp17.csv")
#
setwd("D:/gitfolder/AGILE_LDP_Seed/GWAS_Results_LDP")
#
myY_LDP[,c(1,3)]
#
myY_LDP2 <- myY_LDP[!is.na(myY_LDP$Cotyledon.Color_LDP),]
#
myGAPIT <- GAPIT(
  Y = myY_LDP2, G = myG, CV = myY_LDP2[,c(1,3)], PCA.total = 0,
  model = c("MLM","FarmCPU", "BLINK"),
  Phenotype.View = F, Random.model = F
)
#
myGAPIT <- GAPIT(
  Y = myY_BELT_Su18, G = myG, PCA.total = 4,
  model = c("MLM","FarmCPU", "BLINK"),
  Phenotype.View = F, Random.model = F
)
#
myGAPIT <- GAPIT(
  Y = myY_BELT_Su17, G = myG, PCA.total = 4,
  model = c("MLM","FarmCPU", "BLINK"),
  Phenotype.View = F, Random.model = F
)
