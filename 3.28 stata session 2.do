use http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1 
reg lsalary lsales
reg lsalary lsales
reg lsalary lsales
display  .2566717/.0345167
display  .2566717+ 2*.0345167
display  .2566717- 2*.0345167
use http://fmwww.bc.edu/ec-p/data/wooldridge/wage1
reg lwage educ
reg lwage educ if female==1
reg lwage educ if female==0
reg lwage educ if female>0
tabulate female
tab educ
tab wage
histogram wage
histogram wage, width(1) start(0)
histogram wage, width(1) start(0) frequency
histogram wage if female==1, width(1) start(0) frequency
histogram wage if female==0, width(1) start(0) frequency
histogram wage if female==0, width(1) start(0) frequency title("male")
histogram wage if female==0, width(1) start(0) fraction title("male")
histogram wage if smsa==0, width(1) start(0) fraction title("male")
histogram wage if smsa==1, width(1) start(0) fraction title("male")
histogram wage if smsa==1, width(1) start(0) fraction title("도시")
histogram wage, by(female) width(1) start(0) fraction
sum educ
generate educ_cat=.
browse educ*
replace educ_cat=0 if educ>=0 & educ<=6
replace educ_cat=0 if educ>6 & educ<=9
replace educ_cat=0 if educ>=0 & educ<=6
replace educ_cat=1 if educ>=0 & educ<=6
drop educ_cat
generate educ_cat=.
replace educ_cat=1 if educ>=0 & educ<=6
replace educ_cat=0 if educ>=0 & educ<=6
replace educ_cat=1 if educ>6 & educ<=9
replace educ_cat=2 if educ>9 & educ<=12
replace educ_cat=3 if educ>12 & educ<=16
replace educ_cat=4 if educ>16
tab  educ_cat
tab  educ educ_cat
tab  educ_cat
tab  female educ_cat
tab   educ_cat female
tab   educ_cat female, col
use http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1 
