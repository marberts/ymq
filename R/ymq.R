#---- Helpers ----
year <- function(x) x %/% 100L

period <- function(x) x %% 100L - 1L

#---- Function factories ----
yyyyxx <- function(n) {
  force(n)
  function(y, x) {
    (y + x %/% n) * 100L + (x %% n) + 1L
  }
}

add <- function(n) {
  yqm <- yyyyxx(n)
  function(e1, e2) {
    e1 <- as.integer(e1)
    yqm(year(e1), period(e1) + as.integer(e2))
  }
}

diff <- function(n) {
  force(n)
  function(e1, e2) {
    e1 <- as.integer(e1)
    e2 <- as.integer(e2)
    (year(e1) - year(e2)) * n + period(e1) - period(e2)
  }
}

colon <- function(n) {
  yqm <- yyyyxx(n)
  function(e1, e2) {
    e1 <- as.integer(e1)
    e2 <- as.integer(e2)
    res <- (year(e1) * n + period(e1)):(year(e2) * n + period(e2))
    yqm(0, res)
  }
}

#---- Infix operators ----
`%+m%` <- add(12L)

`%-m%` <- function(e1, e2) e1 %+m% -as.integer(e2)

`%m-m%` <- diff(12L)

`%m:m%` <- colon(12L)

`%+q%` <- add(4L)

`%-q%` <- function(e1, e2) e1 %+q% -as.integer(e2)

`%q-q%` <- diff(4L)

`%q:q%` <- colon(4L)

#---- Convert ----
yyyymm <- yyyyxx(12L)

yyyyqq <- yyyyxx(4L)

m2q <- function(x) {
  x <- as.integer(x)
  yyyyqq(year(x), period(x) %/% 3L)
}

q2m <- function(x) {
  x <- as.integer(x)
  yyyymm(year(x), period(x) * 3L)
}
