% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fitting_plots.R
\name{fitting_plots}
\alias{fitting_plots}
\title{Rootograms plots - Multivariate CMP}
\usage{
fitting_plots(fit, type = "rootogram", S = 100)
}
\arguments{
\item{fit}{An element from `mcmc_cmp`}

\item{type}{Wheter to do a bar plot or a rootogram}

\item{S}{Optional. Indicates the number of posterior samples used (Default 100)}
}
\value{
No return value, called for plotting only
}
\description{
Rootograms plots - Multivariate CMP
}
\examples{
\donttest{
  n = 50; J = 2
  X = list(matrix(rnorm(3*n), ncol = 3), matrix(rnorm(3*n), ncol = 3))
  beta <- list(c(1,0.1, 1), c(0, 0.5, -0.5))
  mu <- exp(prod_list(X, beta))
  y = matrix(rpois(n = length(mu), lambda = mu), nrow = n)
  fit <- mcmc_cmp(y, X, S = 1000, nburn = 1000, scale_cov_b = 0.8,
  scale_cov_beta = 0.04, scale_cov_gamma = 0.06)
  fitting_plots(fit)
}
}
