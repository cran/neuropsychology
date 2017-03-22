# neuropsychology
An R Toolbox for Psychologists, Neuropsychologists and Neuroscientists.

<p align="left">
<a href="https://github.com/neuropsychology/neuropsychology.R/blob/master/README.md#compare-a-patients-score-with-the-parent-population">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/assess_plot.png" height="150"></a>
<a href="https://github.com/neuropsychology/neuropsychology.R/blob/master/README.md#create-a-braincloud">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/braincloud1.png" height="150"></a>
<a href="https://github.com/neuropsychology/neuropsychology.R/blob/master/README.md#get-a-correlation-plot-and-table-with-significance-stars">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/cortable_plot.png" height="150"></a>
<a href="https://github.com/neuropsychology/neuropsychology.R/blob/master/README.md#create-a-braincloud">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/braincloud2.png" height="150"></a>
</p>

<!---
|Name|neuropsychology|
|----------------|---|
|Status|![](https://travis-ci.org/neuropsychology/neuropsychology.R.svg?branch=master)|
-->
|Name|neuropsychology|
|----------------|---|
|Stable Version|[![](https://img.shields.io/badge/version-0.3.0-brightgreen.svg)](https://CRAN.R-project.org/package=neuropsychology)|
|Latest Version|[![](https://img.shields.io/badge/version-0.5.0-brightgreen.svg)](https://github.com/neuropsychology/neuropsychology.R)|
|Documentation|[![Rdoc](http://www.rdocumentation.org/badges/version/neuropsychology)](http://www.rdocumentation.org/packages/neuropsychology)|
|Downloads|[![](http://cranlogs.r-pkg.org/badges/neuropsychology)](http://www.r-pkg.org/pkg/neuropsychology)|
|Authors|[![](https://img.shields.io/badge/CV-D._Makowski-purple.svg?colorB=9C27B0)](https://cdn.rawgit.com/neuropsychology/Organization/master/CVs/DominiqueMakowski.pdf)|


---
## Installation

- To get the stable version (`0.3.0`) From CRAN, run the following commands in your R console:

```R
install.packages("neuropsychology")
library("neuropsychology")
```


- To get the latest development version (`0.5.0`), run the following:

```R
install.packages("devtools")
library("devtools")
install_github("neuropsychology/neuropsychology.R")
library("neuropsychology")
```

If it doesn't work, try [updating R](https://www.google.fr/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=update%20r). If the problem persists, create an [issue](https://github.com/neuropsychology/neuropsychology.R/issues).


---
## Feature Examples

<!---
### Use a data set
```R
df <- personality
```
Available datasets are:
- personality
- ASQ

See the description of each dataset by typing `?nameofthedataset` (e.g., `?personality`) in the console.
-->

### Create a braincloud
A wordcloud containing the most reccurent words of one or several papers. First, create a folder with several PDFs (journal articles for example, but you can also use your own specific word list). Add an R script in it and run one of the following:
```R
braincloud()
braincloud(image="brain1", text.size=0.6, colours.replicate=FALSE)
```

<p align="left">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/braincloud1.png" width="400">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/braincloud2.png" width="400">
</p>

*Note: these brainclouds are based on the work of [Dr. Robin Carhart-Harris](http://www.imperial.ac.uk/people/r.carhart-harris).*

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

write.csv(cortable(personality), "mytable.csv") # Save the table
ggsave("corplot.png", cortable(personality)) # Save the plot
```
This function will automatically select the numeric columns of your dataframe and show a correlation table with significance stars.
You can adjust the p value by applying different corrections or change the type of correlation type (Spearman's, Pearson's or partial correlations). You can also view the result in RStudio or save it as a .csv file to open it in excel. Run `?cortable` for documentation.

<p align="left"><img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/cortable_plot.png" width="700">
<img src="https://github.com/neuropsychology/neuropsychology.R/blob/master/tests/testthat/cortable.png" width="850">
</p>




---
## Contribute
- You need some help? You found a bug? You would like to request a new feature? 
  Just open an [issue](https://github.com/neuropsychology/neuropsychology.R/issues) :relaxed:
- Want to add yourself a feature? Correct a bug? You're more than welcome to contribute!
  Check this tutorial ([French](https://github.com/neuropsychology/Courses/blob/master/Programing/Github/Contribute-FR.md) or [English](https://github.com/neuropsychology/Courses/blob/master/Programing/Github/Contribute-EN.md)) to see how to submit your changes on github.
- Check [this style guide](http://handsondatascience.com/StyleO.pdf) to write R code with style.

---
## Citation
Run the following commands to see the proper citation entry in APA6 or Bibtex format:
```R
library("neuropsychology")
citation("neuropsychology")
```
*Note: The authors do not give any warranty. If this software causes your keyboard to blow up, your brain to liquefy, your toilet to clog or a zombie plague to leak, the authors CANNOT IN ANY WAY be held responsible.*
