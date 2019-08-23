manageSingleStrings <- function(text_s) {
  if (typeof(text_s) == 'language') return(as.character(as.expression(text_s)))
  if (typeof(text_s) == 'integer') return(paste0(as.character(as.expression(text_s)), 'L'))
  if (length(text_s) != 1) return(text_s)
  if (!is.character(text_s[1])) return(text_s)
  paste0('"', gsub('"', '\\"', text_s, fixed = TRUE), '"')
}
