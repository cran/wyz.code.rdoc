normalizeSpaces <- function(text_s) {
  p <- '[\\s\\b]'
  gsub(paste0('^', p, '+', '|', p, '+', '$'), '',
       gsub(paste0(p, '+'), ' ', text_s, perl = TRUE),
       perl = TRUE)
}
