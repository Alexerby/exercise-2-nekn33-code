// *********************************
// Question 5: The First Stage
// *********************************

use "exercise_2.dta", clear

capture mkdir "results"
capture mkdir "results/question_5"

capture log close
log using "results/question_5/question_5.log", replace

// 1. The Plot (First Stage Relationship)
twoway (scatter prot logmort, mlabel(shortnam) mlabsize(vsmall) msymbol(circle_hollow) mcolor(black)) ///
       (lfit prot logmort, lcolor(black)), ///
    title("First-Stage: Mortality vs. Institutions", size(medium)) ///
    xtitle("Log of Settler Mortality") ///
    ytitle("Protection Against Expropriation Index") ///
    graphregion(color(white))

graph export "results/question_5/plot_first_stage.png", as(png) replace

// 2. The Regression (First Stage OLS)
regress prot logmort
