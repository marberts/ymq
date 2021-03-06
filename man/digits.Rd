\name{digits}
\alias{digits}

\title{
Number of integer digits
}

\description{
Count the number of integer digits in a number.
}

\usage{
digits(x)
}

\arguments{
  \item{x}{A numeric vector.}
}

\value{
An integer vector giving the number of integer digits in \code{x}.
}

\examples{
digits(100)
digits(100.1)
digits(-0.1)
}
