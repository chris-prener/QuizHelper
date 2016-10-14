# QuizHelper

### Purpose
The enclosed script `quizHelper.do` executes a series of Stata commands that create a list of *correct* responses for multiple choice answers on a quiz or an exam.

### Use
Assuming you are using a standard format for a multiple choice quiz (four possible answers lettered 'a' through 'd'), the script `quizHelper.do` requires editing on only one line - line 13:
```Stata
set obs 25
```
This line sets the number of observations (i.e. the number of questions) for the quiz. To make the quiz shorter or longer, edit the integer value on this line so that it corresponds with the length of your quiz.

### Details
To generate the correct answers, uses a pseudo-random number function adapted from the [Stata Blog](http://blog.stata.com/2012/07/18/using-statas-random-number-generators-part-1/). The `runiform` command draws values from a uniform distribution over the values [0,1] (see `help runiform` or follow [this link](http://www.stata.com/help.cgi?runiform() for additional details)). These are altered with the function
```
floor((`b'-`a'+1)*runiform()+`a')
```
to generate integer values between `a` and `b` where `a=1` and `b=4` (again assuming four possible answers lettered 'a' through 'b').

### Repository Contents
This repository contains files for:
  - quizHelper.do
  - LICENSE.md
  - README.md
  - .gitignore

### About Christopher Prener, PhD
[Christopher Prener](http://chrisprener.net) (Ph.D., Northeastern University, 2015) is an urban and medical sociologist with an interest in mixed methods research designs that incorporate spatial data. His dissertation examined the effect of neighborhood context and conditions on emergency medical services work, particularly with patients who have mental illnesses or substance use disorders. He is also part of a research team examining the effect of literacy on mental health service use and recovery. He is an Assistant Professor in the Department of Sociology and Anthropology at Saint Louis University. More details are available at [his website](http://www.chrisprener.net) and he can be contacted at [prenercg@slu.edu](mailto:prenercg@slu.edu).
