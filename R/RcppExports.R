# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Obtain credible sets from a matrix of posterior probabilities
#'
#' @param pp Matrix of posterior probabilities (one row for each simulation)
#' @param iCV A vector of the indices of the CV
#' @param threshold The threshold to use to generate the credible set
#' @export
credsetmat <- function(pp, iCV, threshold) {
    .Call('_corrcoverage_credsetmat', PACKAGE = 'corrcoverage', pp, iCV, threshold)
}

#' Obtain pp from a matrix of Zj and ERR
#'
#' @param Zj vector of ...
#' @return pp Matrix of posterior probabilities (one row for each simulation)
#' @export
zj_pp_c <- function(zm, nrep, ERR, r) {
    .Call('_corrcoverage_zj_pp_c', PACKAGE = 'corrcoverage', zm, nrep, ERR, r)
}

#' Obtain pp from a matrix of Zj and ERR
#'
#' @param Zj vector of ...
#' @return pp Matrix of posterior probabilities (one row for each simulation)
#' @export
zj_pp_arma <- function(Zj, sigma, nrep, ERR, r) {
    .Call('_corrcoverage_zj_pp_arma', PACKAGE = 'corrcoverage', Zj, sigma, nrep, ERR, r)
}

#' Obtain pp from a matrix of Zj and ERR
#'
#' @param Zj vector of ...
#' @return pp Matrix of posterior probabilities (one row for each simulation)
#' @export
zj_pp_arma2 <- function(zm, nrep, ERR, r) {
    .Call('_corrcoverage_zj_pp_arma2', PACKAGE = 'corrcoverage', zm, nrep, ERR, r)
}

