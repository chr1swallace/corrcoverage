% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extra_functions.R
\name{est_mu}
\alias{est_mu}
\title{Estimate the true effect at the causal variant}
\usage{
est_mu(z, f, N0, N1, W = 0.2)
}
\arguments{
\item{z}{Vector of marginal Z-scores}

\item{f}{Minor allele frequencies}

\item{N0}{Number of controls}

\item{N1}{Number of cases}

\item{W}{Prior for the standard deviation of the effect size parameter, beta, default 0.2}
}
\value{
Estimate of the true effect at the causal variant
}
\examples{

nsnps <- 100
z_scores <- rnorm(nsnps, 0, 3) # simulate a vector of Z-scores
N0 <- 5000 # number of controls
N1 <- 5000 # number of cases

maf <- runif(nsnps, 0.05, 0.5)

est_mu(z = z_scores, f = maf, N0 = N0, N1 = N1)

}
\author{
Anna Hutchinson
}
