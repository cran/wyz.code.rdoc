sentensize <- function(x_s, ..., punctuationCharacter_s_1 = '.') {
  s <- normalizeSpaces(paste(x_s, ...))
  sapply(s, function(p) {
    n <- nchar(p)
    if (n == 0) return(p)
    last <- substr(p, n, n)
    if (last != punctuationCharacter_s_1) p <- paste0(p, punctuationCharacter_s_1)
    first <- substr(p, 1, 1)
    paste0(toupper(first), substring(p, 2))
  }, USE.NAMES = FALSE)
}
