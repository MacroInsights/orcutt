#' Title
#'
#' @param object An object of class \code{orcutt}.
#' @param ... Additional arguments (currently unused).
#'
#' @returns A numeric vector of fitted values.
#' @export
#'
#' @examples
#' model <- cochrane.orcutt(lm(y ~ x, data = icecream))
#' predict(model)
predict_orcutt <- function(object, ...) {
    return(object$fitted.values)
}
