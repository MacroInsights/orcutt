#' Summary method for Cochrane-Orcutt estimation
#'
#' Constructs a summary object for a fitted Cochrane-Orcutt model, including coefficient estimates,
#' standard errors, t-values, p-values, and model statistics.
#'
#' @param object An object of class \code{orcutt}.
#' @param ... Additional arguments (currently unused).
#' @return An object of class \code{summary.orcutt}, containing:
#' \describe{
#'   \item{call}{The model call.}
#'   \item{coefficients}{A matrix with estimates, standard errors, t-values, and p-values.}
#'   \item{stat}{A vector of model summary statistics.}
#'   \item{DW.t}{Durbin-Watson statistics.}
#' }
#' @export
summary.orcutt <- function(object, ...) {
    TAB <- cbind(
        Estimate = coef(object),
        StdErr = object$std.error,
        t.value = round(object$t.value, 3),
        p.value = object$p.value
    )
    colnames(TAB) <- c("Estimate", "Std. Error", "t value", "Pr(>|t|)")

    stat <- c(
        round(object$rse, 4),
        object$df.residual,
        round(object$r.squared, 4),
        round(object$adj.r.squared, 4),
        round(object$Fs[1], 1),
        object$rank,
        object$Fs[2]
    )

    res <- list(
        call = object$call,
        coefficients = TAB,
        stat = stat,
        DW.t = object$DW
    )

    class(res) <- "summary.orcutt"
    res
}
