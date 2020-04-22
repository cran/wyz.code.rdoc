shortcuts <- function(arguments_s = character(), doubleEscape_b_1 = TRUE) {

  valuesToNamedList <- function(values_l) {
    names(values_l) <- tolower(as.character(values_l))
    values_l[order(names(values_l))]
  }

  doubleEscape <- function(..., function_f_1) {
    result <- do.call(function_f_1, list(...))
    if (doubleEscape_b_1) return(gsub('\\', '\\\\', result, fixed = TRUE))
    result
  }

  doubleEscapeItalic <- function(...) doubleEscape(..., function_f_1 = b$italicCode)
  doubleEscapeBold <- function(...) doubleEscape(..., function_f_1 = b$boldCode)

  b <- beautify()
  list(
    doc = lapply(valuesToNamedList(list('R', 'dots', 'ldots')),
                 function(e) generateMarkup(keyword_s_1 =  e)),
    constant = lapply(valuesToNamedList(list(NULL, TRUE, FALSE)), doubleEscapeItalic),
    types = lapply(valuesToNamedList(list('vector', 'list', 'function', 'boolean',
                                          'logical', 'character', 'array',
                                          'environment', 'S3', 'S4', 'R6', 'RC',
                                          'numeric', 'table', 'raw', 'warning',
                                          'error', 'simpleError',
                                          'string', 'integer', 'double', 'complex',
                                          'data.frame', 'matrix', 'data.table')),
                                     doubleEscapeItalic),
    arg = sapply(arguments_s, doubleEscapeBold, simplify = FALSE)
  )
}