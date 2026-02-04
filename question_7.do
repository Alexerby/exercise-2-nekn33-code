
// *****************************************************************************
// Question 7
// *****************************************************************************

use "exercise_2.dta", clear

capture mkdir "results"
capture mkdir "results/question_7"

capture log close
log using "results/question_7/question_7.log", replace

// First Stage
regress prot logmort 
predict prothat

// Second Stage
regress lgdp prothat


log close
