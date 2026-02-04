
// *****************************************************************************
// Question 10
// *****************************************************************************

use "exercise_2.dta", clear

// Check if mortality predicts European descent
regress euro logmort

// Adding euro as exogeneous control
ivregress 2sls lgdp euro (prot = logmort)
