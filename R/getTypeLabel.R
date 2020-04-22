getTypeLabel <- function(functionParameterName_o) {

  getAdj <- function(x_s, capitalize_b = FALSE) ifelse(grepl('^[aeiouy]', x_s, perl = TRUE), 'an', 'a')

  if (functionParameterName_o$isEllipsis()) return('additional arguments.')
  s <- functionParameterName_o$getTypeSuffix()

  tf <- wyz.code.offensiveProgramming::retrieveFactory()
  suffix <- NULL # nse data.table
  if (tf$checkSuffix(s))  {
    type <- tf$getType(s)
    kind <- if (tf$dt[suffix == s]$category %in% c(tf$type_classes$basic, tf$type_classes$numeric, tf$type_classes$math)) 'values' else 'objects'
  } else {
    type <- if (functionParameterName_o$isPolymorphic()) 'variable type' else 'unknown'
    kind <- 'objects'
  }

  lu <- functionParameterName_o$getLengthSuffix()
  ll <- functionParameterName_o$getLengthModifier()
  constraint <- if (is.na(lu)) 'unconstrained' else {
    if (!is.na(ll))  {
      paste0('length-',
             switch(ll, 'n' = paste('1 or', lu), 'l' = paste(lu, 'or less'), 'm' = paste(lu, 'or more'))
      )
    } else {
      if (lu == 1L) 'single' else paste0('length-', lu)
    }
  }

  be <- beautify()
  single <- !is.na(lu) && is.na(ll) && lu == 1L
  paste0(getAdj(constraint, TRUE), ' ', constraint, ' ',
         if (type == 'list') be$italicCode(type) else
           paste0(ifelse(single, '', paste(be$italicCode('vector'), 'of ')), be$italicCode(type), ' ',
                  ifelse(single, substr(kind, 1L, nchar(kind) - 1L), kind)
           ),
         ' representing the ', paste(tolower(gsub('([A-Z]+)', ' \\1', functionParameterName_o$getParameterName(), perl = TRUE)))
  )
}
