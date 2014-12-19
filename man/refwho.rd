\name{References WHO}
\alias{who.wgt}

\docType{data}
\title{Reference tables from WHO 2006}
\description{
Reference tables from WHO 2006}
\usage{
data(who.wgt)
}
\format{
  A data frame with seven variables:
  \describe{
    \item{\code{pop}}{Study Population}
    \item{\code{sub}}{Subpopulation}
    \item{\code{sex}}{Sex (M,F)}
    \item{\code{x}}{Decimal age (0-5 years)}
    \item{\code{L}}{Lambda (skewness) curve}
    \item{\code{M}}{Median curve}
    \item{\code{S}}{Coefficient of Variation curve}
  }
}
\details{
The data were fitted by the LMS model. Parameters are stored as 
type \code{LMS}. Tabulated values are point ages. The ages cover 
0-5 years.

The naming conventions are as follows:
    \describe{
        \item{\code{who.wgt}}{Weight (kg) for Age}
    }
}


\source{
WHO Multicentre Growth Reference Study Group. 
WHO Child Growth Standards based on length/height, weight and age. 
\emph{Acta Paediatr}, Suppl. 2006, 450, 76-85.
}

\seealso{\code{\link{nl4.wgt}}, \code{\link{cdc.wgt}}}

\keyword{datasets}

