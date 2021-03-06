\name{convert}
\alias{m2q}
\alias{q2m}

\title{
Convert YYYYMM to YYYYQQ.
}

\description{
Use \code{m2q()} to turn YYYYMM into YYYYQQ and \code{q2m()} to turn YYYYQQ into the first YYYYMM.
}

\usage{
m2q(x)
q2m(x)
}

\arguments{
  \item{x}{An integer vector of year months of the form YYYYMM, or year quarters of the form YYYYQQ.}
}

\value{
For \code{q2m()}, an integer vector of the form YYYYMM; for \code{mq2()}, an integer vector of the form YYYYQQ.
}

\examples{
m2q(202103)
q2m(202103)

# Represent as the third month of the quarter
q2m(202103) \%+m\% 2L

# Represent as YYYYMMDD
q2m(202103) * 100L + 1L
}
