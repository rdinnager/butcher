% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/butcher-package.R
\docType{package}
\name{butcher-package}
\alias{butcher-package}
\alias{_PACKAGE}
\title{Reduce the Size of Modeling Objects}
\description{
Reduce the size of modeling objects after fitting. These parsed-down
versions of the original modeling object have been tested to work with their
respective \code{predict} functions. Future iterations of this package
should support additional analysis functions outside of just \code{predict}.

This package provides five S3 generics:
\itemize{
  \item \code{\link{axe_call}} To remove the call object.
  \item \code{\link{axe_ctrl}} To remove controls associated with training.
  \item \code{\link{axe_data}} To remove the original data.
  \item \code{\link{axe_env}} To remove inherited environments.
  \item \code{\link{axe_fitted}} To remove fitted values.
}

These specific attributes of the model objects are chosen as they are
often not required for downstream data analysis functions to work and
are often the heaviest components of the fitted object. By calling
the wrapper function \code{butcher}, all the sub-axe functions listed above
are executed on the model object, returning a butchered model object that has
an additional \code{butcher} class assignment. If only a specific \code{axe_}
function is called, the axed model object will also have the same addition
of a \code{butcher} class assignment.
}
\seealso{
Useful links:
\itemize{
  \item \url{https://butcher.tidymodels.org/}
  \item \url{https://github.com/tidymodels/butcher}
  \item Report bugs at \url{https://github.com/tidymodels/butcher/issues}
}

}
\author{
\strong{Maintainer}: Davis Vaughan \email{davis@rstudio.com}

Authors:
\itemize{
  \item Joyce Cahoon \email{joyceyu48@gmail.com} (\href{https://orcid.org/0000-0001-7217-4702}{ORCID})
  \item Max Kuhn \email{max@rstudio.com}
  \item Alex Hayes \email{alexpghayes@gmail.com}
}

Other contributors:
\itemize{
  \item RStudio [copyright holder, funder]
}

}
\keyword{internal}
