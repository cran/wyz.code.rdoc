getObjectFunctionSignatures <- function(object_, allNames_b = FALSE) {
  on <- getRObjectClassKind(object_)
  if (is.na(on)) return(NA)
  cn <- getObjectClassNames(object_)$classname
  sapply(getObjectFunctionNames(object_, allNames_b), function(f) {
    fa <-  switch(on,
                  'environment' = object_[[f]],
                  'R6' = object_[[f]],
                  'S4' = getMethod(f, signature = cn),
                  'S3' = get(paste0(f, '.', cn), mode = 'function'),
                  'RC' = eval(parse(text = paste0(cn, '$def@refMethods[["', f, '"]]')))
    )
    fo <- formals(fa)
    ag <- sapply(seq_len(length(fo)), function(k) {
      paste(names(fo[k]), ifelse(is.symbol(fo[[k]]), '',
                                 paste('=', manageSingleStrings(fo[[k]]))))
    }, simplify = FALSE )
    paste0(f, strParenthesis(normalizeSpaces(strJoin(ag, ', '))))
  }, simplify = FALSE)
}