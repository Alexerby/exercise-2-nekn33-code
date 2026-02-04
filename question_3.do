
// *********************************
//
// Question 3:  Regr: log(GDP) ~ prot + latitude
//
// *********************************

clear all
capture log close

capture mkdir "results"
capture mkdir "results/question_3"

log using "results/question_3/question_3.log", replace

use "exercise_2.dta", clear

regress lgdp prot latitude

log close 
exit
