getObjectSignature <- function(object_) {
  on <- getRObjectClassKind(object_)
  if (is.na(on)) return(NA)

  cn <- getObjectClassNames(object_)
  fn <- guardExecution({get(cn$classname)})
  if (on == 'R6') fn <- get(cn$classname)$new
  if (!is.function(fn))
    abort('unable to retrieve object signature for object', strBracket(cn$classname))
  fo <- formals(fn)
  ag <- sapply(seq_len(length(fo)), function(k) {
    paste(names(fo[k]), ifelse(is.symbol(fo[[k]]), '',
                               paste('=', manageSingleStrings(fo[[k]]))))
  }, simplify = FALSE )
  paste0(cn$classname, strParenthesis(strJoin(normalizeSpaces(ag), ', ')))
}
