// *********************************
// Question 4: Reduced Form Plot & Regression
// *********************************
use "exercise_2.dta", clear

capture mkdir "results"
capture mkdir "results/question_4"

capture log close
log using "results/question_4/question_4.log", replace

// The Plot
twoway (scatter lgdp logmort, mlabel(shortnam) mlabsize(vsmall) mlabpos(3) msymbol(circle_hollow) mcolor(black)) ///
       (lfit lgdp logmort, lcolor(black) lwidth(medium)), ///
    title("Reduced Form: Settler Mortality and GDP", size(medium)) ///
    xtitle("Log of Settler Mortality") ytitle("Log GDP per capita (1995)") ///
    legend(order(1 "Countries" 2 "Linear Fit") region(lcolor(none))) ///
    graphregion(color(white)) plotregion(color(white))

graph export "results/question_4/plot_gdp_mortality.png", as(png) replace

display "--- OLS MAGNITUDE FOR REDUCED FORM ---"
regress lgdp logmort

log close

log close
