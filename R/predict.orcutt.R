#' Predict method for Cochrane-Orcutt estimation
#'
#' Returns the fitted values from a Cochrane-Orcutt model object.
#'
#' @param object An object of class \code{orcutt}.
#' @param ... Additional arguments (currently unused).
#' @return A numeric vector of fitted values.
#' @export
predict.orcutt <- function(object, ...) {
    return(object$fitted.values)
}
