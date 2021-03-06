% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_stan.R
\name{fit_stan}
\alias{fit_stan}
\title{fit_stan is the primary function which calls pre-written stan scripts for time series data.}
\usage{
fit_stan(
  y,
  x = NA,
  model_name = NA,
  est_drift = FALSE,
  est_mean = FALSE,
  P = 1,
  Q = 1,
  mcmc_list = list(n_mcmc = 1000, n_burn = 500, n_chain = 3, n_thin = 1),
  family = "gaussian",
  est_nu = FALSE,
  marss = list(states = NULL, obsVariances = NULL, proVariances = NULL, trends = NULL),
  map_estimation = FALSE,
  hessian = FALSE,
  ...
)
}
\arguments{
\item{y}{The response variable (numeric)}

\item{x}{The predictors, either a vector or matrix}

\item{model_name}{The specific name of the model to be fitted. Currently supported are 'regression', 'ar', 'rw', 'ma', 'ss_ar' (state space univariate AR), or 'ss_rw' (state space univariate random walk).}

\item{est_drift}{Whether or not to estimate a drift parameter (default = FALSE). Only applicable to the rw and ar models.}

\item{est_mean}{Whether to estimate a mean or not (for state space autoregressive model only)}

\item{P}{The order of the ar model, with minimum value = 1 (default).}

\item{Q}{The order of the ma model, with minimum value = 1 (default).}

\item{mcmc_list}{A list of MCMC control parameters. These include the number of 'iterations' (default = 1000), burn in or warmup (default = 500), chains (default = 3), and thinning (default = 1)}

\item{family}{A named distribution for the observation model, defaults to gaussian}

\item{est_nu}{Boolean, whether to model process deviations as Student-t or not (default).}

\item{marss}{A named list containing the following elements for specifying marss models: (states=NULL, obsVariances=NULL, proVariances=NULL, trends=NULL}

\item{map_estimation}{Whether to do maximum a posteriori estimation via [rstan::optimizing()] (defualts to FALSE)}

\item{hessian}{Whether to return hessian if map_estimation is TRUE via [rstan::optimizing()]}

\item{...}{Any other arguments passed to [rstan::sampling()].}
}
\value{
an object of class 'rstan'
}
\description{
fit_stan is the primary function which calls pre-written stan scripts for time series data.
}
