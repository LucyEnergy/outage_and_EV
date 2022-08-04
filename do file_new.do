
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
//Heterogeneous impact(two-month lag) 
*NCV vs FHV
reghdfe lnncv l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnncv l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l2.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*Southern vs Northern
reghdfe lnBPHEV l2.outaget lngdp if Southern==0, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if Southern==0, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outaget lngdp if Southern==1, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if Southern==1, absorb( i.month#i.city i.year#i.city) vce(cluster city)
*GDP high vs low
reghdfe lnBPHEV l2.outaget lngdp if GDP_high==0, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if GDP_high==0, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outaget lngdp if GDP_high==1, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp if GDP_high==1, absorb(i.month#i.city i.year#i.city) vce(cluster city)
//Heterogeneous impact(one-month lag) 
*NCV vs FHV
reghdfe lnncv l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnncv l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l1.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnfhv l1.outageh lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*Southern vs Northern
reghdfe lnBPHEV l1.outaget lngdp if Southern==0, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp if Southern==0, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outaget lngdp if Southern==1, absorb( i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp if Southern==1, absorb( i.month#i.city i.year#i.city) vce(cluster city)
*GDP high vs low
reghdfe lnBPHEV l1.outaget lngdp if GDP_high==0, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp if GDP_high==0, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outaget lngdp if GDP_high==1, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp if GDP_high==1, absorb(i.month#i.city i.year#i.city) vce(cluster city)
//control of charge pile
reghdfe lnBPHEV l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
//Statistical test for heterogeneity analysis
gen region=outaget*Southern
gen region1=outageh*Southern
reghdfe lnBPHEV l2.region l2.outaget lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.region1 l2.outageh lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
gen economy=outaget*GDP_high
gen economy1=outageh*GDP_high
reghdfe lnBPHEV l2.economy l2.outaget lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.economy1 l2.outageh lngdp , absorb(i.month#i.city i.year#i.city) vce(cluster city)
//different time lags
reghdfe lnBPHEV outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l3.outaget lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l3.outageh lngdp lncp, absorb(i.month#i.city i.year#i.city) vce(cluster city)

// four model specifications
*liner
reghdfe BPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*semi-log
reghdfe lnBPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*double log
gen l2outageh=l2.outageh
reghdfe lnBPHEV lnl2outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
*exponential relation
gen el2outaget=exp(l2outaget)
reghdfe BPHEV el2outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)

//link test
*liner
qui reghdfe BPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
linktest
*semi-log
qui reghdfe lnBPHEV l2.outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
linktest
*double log
qui reghdfe lnBPHEV lnl2outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
linktest
*exponential relation
qui reghdfe BPHEV el2outaget lngdp, absorb(i.month#i.city i.year#i.city) vce(cluster city)
linktest

// panel unit root test
bysort city:egen time1=count(city)
drop if time1!=23
egen time2=group(Time)
 xtset city time2
*HT
xtunitroot ht lnBPHEV
xtunitroot ht lnbev
xtunitroot ht lnPHEV,demean
xtunitroot ht outaget
xtunitroot ht outageh
xtunitroot ht lncp
gen dlncharge=d.lncp
xtunitroot ht dlncharge
xtunitroot ht lngdp

*IPS
xtunitroot ips lnBPHEV,lag(5)
xtunitroot ips lnbev,lag(5)
xtunitroot ips lnPHEV,lag(5) demean
xtunitroot ips outaget ,lag(5)
xtunitroot ips outageh ,lag(5)
xtunitroot ips lncp,lag(5)
xtunitroot ips dlncharge,lag(5)
xtunitroot ips lngdp,lag(5) demean

// EV charging station (first order difference) added as a control variable
reghdfe lnBPHEV l2.outaget lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outaget lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outaget lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outageh lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outageh lngdp dlncharge , absorb(i.month#i.city i.year#i.city) vce(cluster city)

//cointegration test 
xtcointtest pedroni lnBPHEV l2.outaget lngdp dlncharge, trend demean
xtcointtest kao lnBPHEV l2.outaget lngdp dlncharge, demean

//Granger non-causality test
*two-month lag
gen l2outaget=l2.outaget
gen l2outageh=l2.outageh
xtgcause lnBPHEV l2outaget if l2outaget!=.
xtgcause lnPHEV l2outaget if l2outaget!=.
xtgcause lnbev l2outaget if l2outaget!=.
xtgcause lnBPHEV l2outageh if l2outageh!=.
xtgcause lnPHEV l2outageh if l2outageh!=.
xtgcause lnbev l2outageh if l2outageh!=.
xtgcause l2outaget lnBPHEV if l2outaget!=.
xtgcause l2outaget lnPHEV if l2outaget!=.,lag(2)
xtgcause l2outaget lnbev if l2outaget!=.,lag(2)
xtgcause l2outageh lnBPHEV if l2outageh!=.
xtgcause l2outageh lnPHEV if l2outageh!=.
xtgcause l2outageh lnbev if l2outageh!=.
*one-month lag
gen l1outaget=l1.outaget
xtgcause lnBPHEV l1outaget if l1outaget!=.,lag(2)
xtgcause lnPHEV l1outaget if l1outaget!=.
xtgcause lnbev l1outaget if l1outaget!=.,lag(2)
xtgcause lnBPHEV l1outageh if l1outageh!=.,lag(2)
xtgcause lnPHEV l1outageh if l1outageh!=.
xtgcause lnbev l1outageh if l1outageh!=.,lag(2)
xtgcause l1outaget lnBPHEV if l2outaget!=.,lag(2)
xtgcause l1outaget lnPHEV if l1outaget!=.
xtgcause l1outaget lnbev if l1outaget!=.
xtgcause l1outageh lnBPHEV if l1outageh!=.
xtgcause l1outageh lnPHEV if l1outageh!=.,lag(2)
xtgcause l1outageh lnbev if l1outageh!=.

//COVID-19 and supply chian
gen supplychian=l1.lockdown
reghdfe lnBPHEV l1.outaget lngdp lockdown supplychain, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l1.outageh lngdp lockdown supplychain, absorb(i.month#i.city i.year#i.city) vce(cluster city) 
reghdfe lnBPHEV l2.outaget lngdp lockdown supplychain, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnBPHEV l2.outageh lngdp lockdown supplychain, absorb(i.month#i.city i.year#i.city) vce(cluster city)

//Mandatory notices
reghdfe lnBPHEV l2.outaget lngdp l1.mandatorynotice, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnbev l2.outaget lngdp l1.mandatorynotice, absorb(i.month#i.city i.year#i.city) vce(cluster city)
reghdfe lnPHEV l2.outaget lngdp l1.mandatorynotice, absorb(i.month#i.city i.year#i.city) vce(cluster city)

