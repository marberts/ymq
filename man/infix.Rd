\name{infix}
\alias{\%+m\%}
\alias{\%-m\%}
\alias{\%m-m\%}
\alias{\%m:m\%}
\alias{\%+q\%} 
\alias{\%-q\%}
\alias{\%q-q\%}
\alias{\%q:q\%} 

\title{
Infix operators to work with integers representing year months (YYYYMM) and year quarters (YYYYQQ).
}

\description{
  \itemize{
    \item{\code{\%+m\%} and \code{\%-m\%} add/subtract months for year months.}
    \item{\code{\%m-m\%} finds the difference (in months) between year months.}
    \item{\code{\%m:m\%} generates a sequence of year months.}
    \item{Switching 'm' for 'q' does the same for year quarters.}
  }
}

\usage{
e1 \%+m\% e2
e1 \%-m\% e2
e1 \%m-m\% e2
e1 \%m:m\% e2

e1 \%+q\% e2
e1 \%-q\% e2
e1 \%q-q\% e2
e1 \%q:q\% e2
}

\arguments{
  \item{e1, e2}{An integer vector of year months of the form YYYYMM, or year quarters of the form YYYYQQ.}
}

\value{
An integer vector of the form YYYYMM, or YYYYQQ.
}

\examples{
# Add or subtract months/quarters
202101 \%+m\% 13
202101 \%-m\% 13
202101 \%+q\% 5
202101 \%-q\% 5

# Find the difference
202101 \%m-m\% 202202
202202 \%q-q\% 202101

# Make a sequence
202101 \%m:m\% 202202
202101 \%q:q\% 202202
}
