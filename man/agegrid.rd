\name{ageGrid}
\alias{ageGrid}
\title{Creates an age grid according to a specified format.}
\description{
  Creates an age grid according to a specified format.
}
\usage{
    ageGrid(grid = "compact")
}

\arguments{
  \item{grid}{A character string specifying one of the following:
    \code{"compact"}, \code{"classic"}, \code{"extensive"}, \code{"0-104w"}, 
    \code{"0-24m"}, \code{"0-21y"}, \code{"0-21yd"} or \code{"0-21yc"}. 
  The default is \code{"compact"}, which produces an age grid between 0 and 21 years 
  with 95 points.}
}

\value{
  A list with five components: \code{format}, \code{year}, \code{month}, 
  \code{week} and \code{day} containing the age grid in different units.
  }

\author{Stef van Buuren, 2010}

\examples{

age <- ageGrid("classic")$year

}


\keyword{distribution} 

