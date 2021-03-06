% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pime.oob.replicate.R
\name{pime.oob.replicate}
\alias{pime.oob.replicate}
\title{Replicated random forests}
\usage{
pime.oob.replicate(prev.list, variable, bootstrap, parallel = TRUE)
}
\arguments{
\item{prev.list}{List of phyloseq objects. Output of \code{\link{pime.prevalence}}}

\item{variable}{Variable to run the model}

\item{bootstrap}{Number to run repetitions}

\item{parallel}{Whether to run parallel or not. Default TRUE}
}
\description{
This function is part of the error detection step. It performs a random forests classification, with
\code{\link{ranger}}, and computes the OOB error for n replications in each prevalence
interval without randomizing the sample labels. Returns a results table with prediction error and a boxplot.
}
\examples{
phylist=pime.split.by.variable(restroom, "Environment")
prevalences=pime.prevalence(phylist)
set.seed(42)
tab=pime.oob.replicate(prevalences, "Environment", bootstrap=10, parallel=TRUE)
tab$Plot
tab$'Results table'
}
