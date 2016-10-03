# neuropsychology
An R Toolbox for Psychologists, Neuropsychologists and Neuroscientists

|Name|neuropsychology|
|----------------|---|
|Status|![](https://img.shields.io/badge/status-stable-brightgreen.svg)|
|Latest Version|![](https://img.shields.io/badge/version-0.2.4-brightgreen.svg)|
|Authors|Dominique Makowski|
|CRAN|https://CRAN.R-project.org/package=neuropsychology|
|Manual|https://cran.r-project.org/web/packages/neuropsychology/neuropsychology.pdf|
---
## Installation

- To get the stable version (`0.1.0`) From CRAN, run the following commands in your R console:

```R
install.packages("neuropsychology")
library("neuropsychology")
```

- To get the latest development version (`0.2.4`), run the following:

```R
install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R")
library("neuropsychology")
```

If it doesn't work, try [updating R](https://www.google.fr/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=update%20r).


---
## Feature Examples

### Use a data set
```R
df <- personality
```
Available datasets are:
- personality

See the description of each dataset by typing `?nameofthedataset` (e.g., `?personality`) in the console.

### Compare a patient's score with the parent population
Your patient has an IQ of 78. What does it mean? You'd like to insert a plot in your report? Use the `assess()` fucntion, that compares your patient's score with the mean and standard deviation of your test (for the IQ, 100 and 15, respecetively).

```R
assess(score=78, mean=100, sd=15)
```
<p align="left"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/assess_plot.png" width="700"></p>
You can also compare it to a custom parent distribution if you have the data. For example, your patient is 27 and you want to see where it stands compared to the participants of the `personality` dataset. You can also change the colours. See `?assess` for more documentation.
```R
assess(score=27, distribution=personality$Age)
```
```R
"The participant (score = 27) is positioned at 0.02 standard deviations from the mean (M = 26.8, SD = 10.59). 
The participant's score is greater than 74.42 % of the general population."
```
<p align="left"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/assess_plot2.png" width="700"></p>
To save the plot:
```R
plot <- assess(score=27, distribution=personality$Age)
ggsave("assess_plot.png", plot)
```


### Get a correlation plot and table with significance stars
```R
cortable(personality)
```
This function will automatically select the numeric columns of your dataframe and show a correlation table with significance stars.
You can adjust the p value by applying different corrections or change the type of correlation type (Spearman's or Pearson's). You can also view the result in RStudio or save it as a .csv file to open it in excel. Run `?cortable` for documentation.

<p align="left"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/cortable_plot.png" width="700"></p>

### Describe a dataframe
```R
describe(personality)
```
This function prints a nice summary of your dataframe. Note that you can also group the descriptions by a factor using the "group" argument. See `?describe` for more documentation.

You can also pipe the selection and filtering process using the power of dplyr:
```R
personality %>%
  filter(Mood_Disorder=="Absence") %>%
  select(Sex, Antagonism, Negative_Affect, Extraversion) %>%
  describe(group="Sex")
```
```R
Description of F 
 Numeric 
                mean median  var   sd valid.n
Antagonism      1.71    1.6 1.05 1.02     941
Negative_Affect 3.38    3.4 1.98 1.41     941
Extraversion    3.43    3.5 2.21 1.49     941

Description of M 
 Numeric 
                mean median  var   sd valid.n
Antagonism      2.37   2.20 1.56 1.25     245
Negative_Affect 2.65   2.60 1.74 1.32     245
Extraversion    3.27   3.25 2.30 1.52     245
```

### A brain- or head-shaped wordcloud
First, create a folder with several PDFs (journal articles for example, but you can also use your own specific word list). Add an R script in it and run the following code.
```R
braincloud()
```

<p align="left"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/braincloud.png" width="700"></p>


---
## Contribute
Want to add features? Correct bugs? You're more than welcome to contribute :)

Check this tutorial ([French](https://github.com/neuropsychology/Courses/blob/master/Programing/Github/Contribute-FR.md) or [English](https://github.com/neuropsychology/Courses/blob/master/Programing/Github/Contribute-EN.md)) to see how to submit your changes on github.

---
## Citation
Run the following commands to see the proper citation entry in APA6 or Bibtex format:
```R
library("neuropsychology")
citation("neuropsychology")
```
