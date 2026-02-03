// *********************************
//
// Question 2: High-Quality Plotting
//
// *********************************

clear all
capture log close
capture mkdir "results/question_2"

log using "results/question_2/question_2.log", replace
use "exercise_2.dta", clear

regress lgdp prot

// Improved Plotting Code
twoway (scatter lgdp prot, 
        mlabel(shortnam) 
        mlabsize(vsmall)                // Smaller text for cleaner look
        mlabposition(3)                 // Place labels to the right of dots
        msymbol(circle_hollow)          // Hollow circles look more academic
        mcolor(black)) ///              // Professional black/white style
       (lfit lgdp prot, lcolor(black) lwidth(medium)),
    title("Relationship between Property Rights and GDP", size(medium)) 
    xtitle("Protection Against Expropriation (Average 1985-1995)")
    ytitle("Log GDP per capita (1995)")
    legend(order(1 "Countries" 2 "OLS Regression Line") region(lcolor(none)))
    graphregion(color(white))           // Remove gray background
    plotregion(color(white))

// Export
graph export "results/question_2/plot_gdp_prot.png", as(png) width(2000) replace

log close 
exit
