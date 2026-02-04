// *****************************************************************************
// Question 8: 2SLS with Controls
// *****************************************************************************

use "exercise_2.dta", clear

capture mkdir "results/question_8"
capture log close
log using "results/question_8/question_8.log", replace

// Base IV (to compare with manual results in Q7)
ivregress 2sls lgdp (prot = logmort)
estat firststage

// IV with Latitude
ivregress 2sls lgdp latitude (prot = logmort)
estat firststage

log close
