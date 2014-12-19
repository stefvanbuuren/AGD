\name{References NL3}
\alias{nl3.bmi}

\docType{data}
\title{Reference tables from Third Dutch Growth Study 1980}
\description{
Reference table from the Third Dutch Growth Study 1980}
\usage{
data(nl3.bmi)
}
\format{
  A data frame with seven variables:
  \describe{
    \item{\code{pop}}{Study Population}
    \item{\code{sub}}{Subpopulation, e.g. ethnicity or age group (for \code{nl4.wfh})}
    \item{\code{sex}}{Sex (M,F)}
    \item{\code{x}}{Decimal age (0-21 years) or Height (for \code{nl4.wfh})}
    \item{\code{L}}{Lambda (skewness) curve}
    \item{\code{M}}{Median curve}
    \item{\code{S}}{Coefficient of Variation curve}
  }
}
\details{
The model was fitted by the LMS model. Parameters are stored as 
type \code{LMS}. Tabulated values are point ages.

Height follows a normal distribution, with all lambda parameters set equal to 1.
The standard deviation (in cm) is obtained as \code{S*M}.

The naming conventions are as follows:
    \describe{
        \item{\code{nl4.hgt}}{Length/Height (cm) for Age}
        \item{\code{nl4.wgt}}{Weight (kg) for Age}
        \item{\code{nl4.wfh}}{Weight (kg) for Height (cm)}
        \item{\code{nl4.bmi}}{Head circumference (cm) for Age}
        \item{\code{nl4.lgl}}{Leg Length (cm) for Age}
        \item{\code{nl4.hip}}{Hip circumference (cm) for Age}
        \item{\code{nl4.wst}}{Waist circumference (cm) for Age}
        \item{\code{nl4.whr}}{Waist/Hip ratio for Age}
        \item{\code{nl4.sit}}{Sitting Height for Age}
        \item{\code{nl4.shh}}{Sitting Height/Height ratio for Age}
    }
}


\source{
Fredriks, A.M,, van Buuren, S., Burgmeijer, R.J., Meulmeester JF, Beuker, R.J., Brugman, E., Roede, M.J., Verloove-Vanhorick, S.P., Wit, J.M. (2000) 
Continuing positive secular growth change in The Netherlands 1955-1997. 
\emph{Pediatric Research}, \bold{47}, 316-323.
\url{http://www.stefvanbuuren.nl/publications/Continuing secular - Ped Res 2000.pdf}

Fredriks, A.M., van Buuren, S., Wit, J.M., Verloove-Vanhorick, S.P. (2000). 
Body index measurements in 1996-7 compared with 1980. 
\emph{Archives of Disease in Childhood}, \bold{82}, 107-112.
\url{http://www.stefvanbuuren.nl/publications/Body index - ADC 2000.pdf}
}

\seealso{\code{\link{cdc.wgt}}, \code{\link{who.wgt}}}

\keyword{datasets}

