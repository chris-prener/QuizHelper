// ==========================================================================

// quizHelper.do

// ==========================================================================

// clear workspace
clear all

// set more behavior off
set more off

// ==========================================================================

// define the number of questions in the quiz
set obs 25

// ==========================================================================

// define lower bound of uniform distribution
local a = 1

// define upper bound of uniform distribution
local b = 4

// generate correct answers to questions
generate value = floor((`b'-`a'+1)*runiform()+`a')
label variable value "correct value (1-4)"

// ==========================================================================

// convert values to letters
generate str1 answer = ""
replace answer = "a" if value == 1
replace answer = "b" if value == 2
replace answer = "c" if value == 3
replace answer = "d" if value == 4
label variable answer "correct answer (a-d)"

// ==========================================================================

// tabulate distribution of answers
tabulate answer

// list questions and associated answers
list answer

// ==========================================================================

// set more behavior on
set more on

// ==========================================================================
