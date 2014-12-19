\name{References CDC}
\alias{cdc.hgt}
\alias{cdc.wgt}
\alias{cdc.bmi}

\docType{data}
\title{Reference tables from CDC 2000}
\description{
Reference tables from CDC 2000}
\usage{
data(cdc.hgt)
data(cdc.wgt)
data(cdc.bmi)
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
The models were fitted by the LMS model. Parameters are stored as 
type \code{LMS}. Tabulated values are point ages.

The naming conventions are as follows:
    \describe{
        \item{\code{cdc.hgt}}{Combined length/height (cm) for Age, 0-20 years.
        Measures <2 years apply to length (lying), while ages >= 2 years 
        apply to height, or stature (standing).}
        \item{\code{cdc.wgt}}{Weight (kg) for Age, 0-20 years.}
        \item{\code{cdc.bmi}}{Body Mass Index (kg/m2) for Age, 2-20 years)}
    }
}


\source{
Kuczmarski RJ, Ogden CL, Guo SS, Grummer-Strawn LM, Flegal KM,
Mei Z, Wei R, Curtin LR, Roche AF, Johnson CL. 
2000 CDC growth charts for the United States: methods and development. 
\emph{Vital Health Stat}, 2002, \bold{11}, 246, 1-190.
}

\seealso{\code{\link{nl4.wgt}}, \code{\link{nl4.hgt}}, \code{\link{nl4.bmi}}, 
  \code{\link{who.wgt}}}

\keyword{datasets}

