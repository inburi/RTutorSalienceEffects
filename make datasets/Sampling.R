# code used for sampling of all datasets except the Business Accounts dataset

a=foreign::read.dta("nameOfOriginalDataset.dta")

#sampling
un=unique(a$id_rate_code)
smpl=sample((unique(a$id_rate_code)),size=length(un)*(1/45))
smpldf=a[a$id_rate_code %in% smpl,]


foreign::write.dta(smpldf,"nameOfSampledDataset.dta") 
#foreign::read.dta() for reading the sampled dataset

#---------------------------------------------------------------------------

#code used for sampling the Business Accounts dataset ("ABP_RESTAT_Business.dta")

a=foreign::read.dta("ABP_RESTAT_Business.dta")
a$id_rate_code = paste0(a$id,a$rate_code) #add non existent id_rate_code column

#sampling
un=unique(a$id_rate_code)
smpl=sample((unique(a$id_rate_code)),size=length(un)*(1/45))
smpldf=a[a$id_rate_code %in% smpl,]

haven::write_dta(smpldf,"nameOfSampledDataset.dta")
#readstata13::read.dta13() for reading the sampled dataset



