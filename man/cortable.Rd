\name{cortable}
\alias{cortable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Correlation plot and table with significance stars.
%%  ~~function to do ... ~~
}
\description{
Get a correlation plot and table with significance stars.
}
\usage{
cortable(df,
        returns="both",
        correction="holm",
        type="pearson",
        iamaboringperson=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{A dataframe.}
  \item{returns}{"table", "plot" or "both". Returns a table, a ggplot plot or a list with both.}
  \item{correction}{"none", "holm" for holm-bonferroni (default), "fdr" for False Discovery Rate.}
  \item{type}{"pearson" for Pearson's, "partial" for partial correlations and "spearman" for Spearman's.}
\item{iamaboringperson}{Are you?}
}
\details{
 \samp{cortable} displays a correlation matrix or table, and a plot. Note that you can save the table under a .csv format to easily integrate it in your documents. Moreover, you can customize the plot's theme and featuers as it is in ggplot2's format.
}
\value{
\item{result}{Either The table in the format of a dataframe or the plot in the format of a ggplot's plot. Depending on the "returns" argument.}
}
\author{Dominique Makowski and Bertolt}
\examples{
require(neuropsychology)

df <- personality

cortable(df)

# Extract the table
table <- cortable(df, returns="table")

# Extract the plot
plot <- cortable(df, returns="plot")

# Save table
write.csv(table, "correlation_table.csv")

# Save plot
ggplot2::ggsave("mycorrplot.png", plot)
}

%\keyword{ ~correlation table }% __ONLY ONE__ keyword per line
