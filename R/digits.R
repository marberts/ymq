digits <- function(x) {
  x <- abs(trunc(as.numeric(x)))
  replace(floor(log10(x)), x == 0, 0) + 1
}
