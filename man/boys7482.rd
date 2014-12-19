\name{boys7482}
\alias{boys7482}
\docType{data}
\title{Growth of Dutch boys}
\description{
Height, weight, head circumference and puberty of 7482 Dutch boys.}
\usage{
data(boys7482)
}
\format{
  A data frame with 7482 rows on the following 9 variables:
  \describe{
    \item{\code{age}}{Decimal age (0-21 years)}
    \item{\code{hgt}}{Height (cm)}
    \item{\code{wgt}}{Weight (kg)}
    \item{\code{bmi}}{Body mass index}
    \item{\code{hc}}{Head circumference (cm)}
    \item{\code{gen}}{Genital Tanner stage (G1-G5)}
    \item{\code{phb}}{Pubic hair (Tanner P1-P6)}
    \item{\code{tv}}{Testicular volume (ml)}
    \item{\code{reg}}{Region (north, east, west, south, city)}
  }
}
\details{
The complete sample of cross-sectional data from boys 0-21 years used to construct the Dutch growth references 1997.
Variables \code{gen} and \code{phb} are ordered factors. \code{reg} is a factor.
Note: A 10\% sample from this data is available in data set \code{boys} in the \code{mice} package.

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

\author{Stef van Buuren, 2012}

\keyword{datasets}

