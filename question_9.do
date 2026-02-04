// *****************************************************************************
// Question 9: 2SLS Subsample Analysis (Africa vs. Rest of World)
// *****************************************************************************

use "exercise_2.dta", clear

capture mkdir "results/question_9"
capture log close
log using "results/question_9/question_9.log", replace

// Excluding African countries (africa == 0)
ivregress 2sls lgdp (prot = logmort) if africa == 0
estat firststage

// Only African countries (africa == 1)
ivregress 2sls lgdp (prot = logmort) if africa == 1
estat firststage

log close
