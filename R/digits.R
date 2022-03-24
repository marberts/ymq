digits <- function(x) {
  x <- abs(trunc(as.numeric(x)))
  res <- replace(log10(x), x == 0, 0) + 1
  as.integer(res)
}
