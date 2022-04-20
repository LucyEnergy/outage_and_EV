
xtset city Time
*BPHEV
reghdfe lnBPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*BEV
reghdfe lnbev l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*PHEV
reghdfe lnPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*Non-EV
reghdfe lnnonelec l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnnonelec l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnnonelec l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnnonelec l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*NCV vs FHV
reghdfe lnncv l2.outaget lngdp, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnncv l2.outageh lngdp, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l2.outaget lngdp, absorb(i.year i.city i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l2.outageh lngdp, absorb(i.year i.city i.month i.month#i.city i.year#i.city) vce(cluster city)
*Southern vs Northern
reghdfe lnBPHEV l2.outaget lngdp if Southern==0, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if Southern==0, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outaget lngdp if Southern==1, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if Southern==1, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
*GDP high vs low
reghdfe lnBPHEV l2.outaget lngdp if GDP_high==0, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if GDP_high==0, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outaget lngdp if GDP_high==1, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if GDP_high==1, absorb(i.month i.month#i.city i.year#i.city) vce(cluster city)
*control of charge pile
reghdfe lnBPHEV l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*Statistical test for heterogeneity analysis
gen region=outaget*Southern
gen region1=outageh*Southern
gen economy=outaget*GDP_high
gen economy1=outageh*GDP_high
//two month lag
reghdfe lnBPHEV l2.region l2.economy l2.outaget lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.region1 l2.economy1  l2.outageh lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
* different time lags
reghdfe lnBPHEV outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l3.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l3.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
